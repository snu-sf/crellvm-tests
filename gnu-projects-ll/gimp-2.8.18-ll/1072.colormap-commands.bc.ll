; ModuleID = './app/actions/colormap-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._GimpColormapEditor = type { %struct._GimpImageEditor, %struct._GtkWidget*, i32, %struct._PangoLayout*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpImageEditor = type { %struct._GimpEditor, %struct._GimpContext*, %struct._GimpImage* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpEditorPrivate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
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
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._PangoLayout = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpViewableDialog = type { %struct._GimpDialog, %struct._GimpContext*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpColorDialog = type { %struct._GimpViewableDialog, i32, %struct._GtkWidget*, [12 x %struct._GtkWidget*] }

@.str = private unnamed_addr constant [24 x i8] c"Edit colormap entry #%d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Edit Colormap Entry\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"gimp-colormap\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"gimp-colormap-editor-color-dialog\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"description\00", align 1

; Function Attrs: nounwind uwtable
define void @colormap_edit_color_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpColormapEditor*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %colormap = alloca i8*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %desc = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %3 = bitcast i8* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_colormap_editor_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpColormapEditor*
  store %struct._GimpColormapEditor* %4, %struct._GimpColormapEditor** %editor, align 8
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call i8* @gimp_image_get_colormap(%struct._GimpImage* %5)
  store i8* %call3, i8** %colormap, align 8
  %6 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %col_index = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %6, i32 0, i32 2
  %7 = load i32, i32* %col_index, align 4
  %mul = mul nsw i32 %7, 3
  %idxprom = sext i32 %mul to i64
  %8 = load i8*, i8** %colormap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %10 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %col_index4 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %10, i32 0, i32 2
  %11 = load i32, i32* %col_index4, align 4
  %mul5 = mul nsw i32 %11, 3
  %add = add nsw i32 %mul5, 1
  %idxprom6 = sext i32 %add to i64
  %12 = load i8*, i8** %colormap, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 %idxprom6
  %13 = load i8, i8* %arrayidx7, align 1
  %14 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %col_index8 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %14, i32 0, i32 2
  %15 = load i32, i32* %col_index8, align 4
  %mul9 = mul nsw i32 %15, 3
  %add10 = add nsw i32 %mul9, 2
  %idxprom11 = sext i32 %add10 to i64
  %16 = load i8*, i8** %colormap, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %16, i64 %idxprom11
  %17 = load i8, i8* %arrayidx12, align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %color, i8 zeroext %9, i8 zeroext %13, i8 zeroext %17, i8 zeroext -1)
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0)) #5
  %18 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %col_index14 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %18, i32 0, i32 2
  %19 = load i32, i32* %col_index14, align 4
  %call15 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call13, i32 %19)
  store i8* %call15, i8** %desc, align 8
  %20 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %color_dialog = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %20, i32 0, i32 7
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  %tobool16 = icmp ne %struct._GtkWidget* %21, null
  br i1 %tobool16, label %if.else, label %if.then.17

if.then.17:                                       ; preds = %if.end
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %23 = bitcast %struct._GimpImage* %22 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_viewable_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call18)
  %24 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpViewable*
  %25 = load i8*, i8** %data.addr, align 8
  %call20 = call %struct._GimpContext* @action_data_get_context(i8* %25)
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #5
  %26 = load i8*, i8** %desc, align 8
  %27 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %28 = bitcast %struct._GimpColormapEditor* %27 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_widget_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call22)
  %29 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkWidget*
  %call24 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %call25 = call %struct._GtkWidget* @gimp_color_dialog_new(%struct._GimpViewable* %24, %struct._GimpContext* %call20, i8* %call21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* %26, %struct._GtkWidget* %29, %struct._GimpDialogFactory* %call24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), %struct._GimpRGB* %color, i32 0, i32 0)
  %30 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %color_dialog26 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %30, i32 0, i32 7
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %color_dialog26, align 8
  %31 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %color_dialog27 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %31, i32 0, i32 7
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog27, align 8
  %33 = bitcast %struct._GtkWidget* %32 to i8*
  %34 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %color_dialog28 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %34, i32 0, i32 7
  %35 = bitcast %struct._GtkWidget** %color_dialog28 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* %35, void (i8*, %struct._GClosure*)* null, i32 0)
  %36 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %color_dialog30 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %36, i32 0, i32 7
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog30, align 8
  %38 = bitcast %struct._GtkWidget* %37 to i8*
  %39 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %40 = bitcast %struct._GimpColormapEditor* %39 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorDialog*, %struct._GimpRGB*, i32, %struct._GimpColormapEditor*)* @colormap_edit_color_update to void ()*), i8* %40, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.42

if.else:                                          ; preds = %if.end
  %41 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %color_dialog32 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %41, i32 0, i32 7
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog32, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_viewable_dialog_get_type() #4
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call33)
  %44 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpViewableDialog*
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %46 = bitcast %struct._GimpImage* %45 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_viewable_get_type() #4
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call35)
  %47 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpViewable*
  %48 = load i8*, i8** %data.addr, align 8
  %call37 = call %struct._GimpContext* @action_data_get_context(i8* %48)
  call void @gimp_viewable_dialog_set_viewable(%struct._GimpViewableDialog* %44, %struct._GimpViewable* %47, %struct._GimpContext* %call37)
  %49 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %color_dialog38 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %49, i32 0, i32 7
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog38, align 8
  %51 = bitcast %struct._GtkWidget* %50 to i8*
  %52 = load i8*, i8** %desc, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* %52, i8* null)
  %53 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %color_dialog39 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %53, i32 0, i32 7
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog39, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_color_dialog_get_type() #4
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call40)
  %56 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpColorDialog*
  call void @gimp_color_dialog_set_color(%struct._GimpColorDialog* %56, %struct._GimpRGB* %color)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.17
  %57 = load i8*, i8** %desc, align 8
  call void @g_free(i8* %57)
  %58 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor, align 8
  %color_dialog43 = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %58, i32 0, i32 7
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog43, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_window_get_type() #4
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call44)
  %61 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %61)
  br label %return

return:                                           ; preds = %if.end.42, %if.then
  ret void
}

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_colormap_editor_get_type() #2

declare i8* @gimp_image_get_colormap(%struct._GimpImage*) #1

declare void @gimp_rgba_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare %struct._GtkWidget* @gimp_color_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GimpDialogFactory*, i8*, %struct._GimpRGB*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare %struct._GimpContext* @action_data_get_context(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #1

; Function Attrs: nounwind uwtable
define internal void @colormap_edit_color_update(%struct._GimpColorDialog* %dialog, %struct._GimpRGB* %color, i32 %state, %struct._GimpColormapEditor* %editor) #0 {
entry:
  %dialog.addr = alloca %struct._GimpColorDialog*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %state.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpColormapEditor*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpColorDialog* %dialog, %struct._GimpColorDialog** %dialog.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpColormapEditor* %editor, %struct._GimpColormapEditor** %editor.addr, align 8
  %0 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpColormapEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageEditor*
  %image2 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %2, i32 0, i32 2
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  store %struct._GimpImage* %3, %struct._GimpImage** %image, align 8
  %4 = load i32, i32* %state.addr, align 4
  switch i32 %4, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.3
    i32 1, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %6 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %col_index = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %6, i32 0, i32 2
  %7 = load i32, i32* %col_index, align 4
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_image_set_colormap_entry(%struct._GimpImage* %5, i32 %7, %struct._GimpRGB* %8, i32 1)
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %9)
  br label %sw.bb.4

sw.bb.4:                                          ; preds = %entry, %sw.bb.3
  %10 = load %struct._GimpColormapEditor*, %struct._GimpColormapEditor** %editor.addr, align 8
  %color_dialog = getelementptr inbounds %struct._GimpColormapEditor, %struct._GimpColormapEditor* %10, i32 0, i32 7
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %11)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.4, %sw.bb
  ret void
}

declare void @gimp_viewable_dialog_set_viewable(%struct._GimpViewableDialog*, %struct._GimpViewable*, %struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_dialog_get_type() #2

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_color_dialog_set_color(%struct._GimpColorDialog*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_dialog_get_type() #2

declare void @g_free(i8*) #1

declare void @gtk_window_present(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

; Function Attrs: nounwind uwtable
define void @colormap_add_color_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.10

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GimpImage* @action_data_get_image(i8* %2)
  store %struct._GimpImage* %call1, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool2 = icmp ne %struct._GimpImage* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.10

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call i32 @gimp_image_get_colormap_size(%struct._GimpImage* %4)
  %cmp = icmp slt i32 %call5, 256
  br i1 %cmp, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end.4
  %5 = load i32, i32* %value.addr, align 4
  %tobool7 = icmp ne i32 %5, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.6
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %6, %struct._GimpRGB* %color)
  br label %if.end.9

if.else:                                          ; preds = %if.then.6
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %7, %struct._GimpRGB* %color)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_add_colormap_entry(%struct._GimpImage* %8, %struct._GimpRGB* %color)
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %9)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then, %if.then.3, %if.end.9, %if.end.4
  ret void
}

declare i32 @gimp_image_get_colormap_size(%struct._GimpImage*) #1

declare void @gimp_context_get_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_image_add_colormap_entry(%struct._GimpImage*, %struct._GimpRGB*) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_editor_get_type() #2

declare void @gimp_image_set_colormap_entry(%struct._GimpImage*, i32, %struct._GimpRGB*, i32) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
