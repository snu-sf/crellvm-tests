; ModuleID = './app/actions/palette-editor-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._GimpPaletteEditor = type { %struct._GimpDataEditor, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GimpPaletteEntry*, float, i32, i32, i32 }
%struct._GimpDataEditor = type { %struct._GimpEditor, %struct._GimpDataFactory*, %struct._GimpContext*, i32, %struct._GimpData*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
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
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type opaque
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type { %struct._GimpData, %struct._GList*, i32, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpPaletteEntry = type { %struct._GimpRGB, i8*, i32 }
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

@.str = private unnamed_addr constant [19 x i8] c"Edit Palette Color\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"gtk-select-color\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Edit Color Palette Entry\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"gimp-palette-editor-color-dialog\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"update\00", align 1

; Function Attrs: nounwind uwtable
define void @palette_editor_edit_color_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpPaletteEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteEditor*
  store %struct._GimpPaletteEditor* %2, %struct._GimpPaletteEditor** %editor, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %5, %struct._GimpDataEditor** %data_editor, align 8
  %6 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data_editable = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %6, i32 0, i32 5
  %7 = load i32, i32* %data_editable, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %8, i32 0, i32 5
  %9 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %color, align 8
  %tobool4 = icmp ne %struct._GimpPaletteEntry* %9, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %10 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data5 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %10, i32 0, i32 4
  %11 = load %struct._GimpData*, %struct._GimpData** %data5, align 8
  %12 = bitcast %struct._GimpData* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_palette_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpPalette*
  store %struct._GimpPalette* %13, %struct._GimpPalette** %palette, align 8
  %14 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color_dialog = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %14, i32 0, i32 4
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  %tobool8 = icmp ne %struct._GtkWidget* %15, null
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %16 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %17 = bitcast %struct._GimpPalette* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_viewable_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpViewable*
  %19 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %19, i32 0, i32 2
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #4
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0)) #4
  %21 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %22 = bitcast %struct._GimpPaletteEditor* %21 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call14)
  %23 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  %call16 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %24 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color17 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %24, i32 0, i32 5
  %25 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %color17, align 8
  %color18 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %25, i32 0, i32 0
  %call19 = call %struct._GtkWidget* @gimp_color_dialog_new(%struct._GimpViewable* %18, %struct._GimpContext* %20, i8* %call12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* %call13, %struct._GtkWidget* %23, %struct._GimpDialogFactory* %call16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), %struct._GimpRGB* %color18, i32 0, i32 0)
  %26 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color_dialog20 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %26, i32 0, i32 4
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %color_dialog20, align 8
  %27 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color_dialog21 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %27, i32 0, i32 4
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog21, align 8
  %29 = bitcast %struct._GtkWidget* %28 to i8*
  %30 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color_dialog22 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %30, i32 0, i32 4
  %31 = bitcast %struct._GtkWidget** %color_dialog22 to i8*
  %call23 = call i64 @g_signal_connect_data(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* %31, void (i8*, %struct._GClosure*)* null, i32 0)
  %32 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color_dialog24 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %32, i32 0, i32 4
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog24, align 8
  %34 = bitcast %struct._GtkWidget* %33 to i8*
  %35 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %36 = bitcast %struct._GimpPaletteEditor* %35 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorDialog*, %struct._GimpRGB*, i32, %struct._GimpPaletteEditor*)* @palette_editor_edit_color_update to void ()*), i8* %36, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.37

if.else:                                          ; preds = %if.end
  %37 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color_dialog26 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %37, i32 0, i32 4
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog26, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_viewable_dialog_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call27)
  %40 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpViewableDialog*
  %41 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %42 = bitcast %struct._GimpPalette* %41 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_viewable_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call29)
  %43 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpViewable*
  %44 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context31 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %44, i32 0, i32 2
  %45 = load %struct._GimpContext*, %struct._GimpContext** %context31, align 8
  call void @gimp_viewable_dialog_set_viewable(%struct._GimpViewableDialog* %40, %struct._GimpViewable* %43, %struct._GimpContext* %45)
  %46 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color_dialog32 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %46, i32 0, i32 4
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog32, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_color_dialog_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call33)
  %49 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpColorDialog*
  %50 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color35 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %50, i32 0, i32 5
  %51 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %color35, align 8
  %color36 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %51, i32 0, i32 0
  call void @gimp_color_dialog_set_color(%struct._GimpColorDialog* %49, %struct._GimpRGB* %color36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.9
  %52 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color_dialog38 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %52, i32 0, i32 4
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog38, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_window_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call39)
  %55 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %55)
  br label %return

return:                                           ; preds = %if.end.37, %if.then
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_editor_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_data_editor_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_get_type() #2

declare %struct._GtkWidget* @gimp_color_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GimpDialogFactory*, i8*, %struct._GimpRGB*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #1

; Function Attrs: nounwind uwtable
define internal void @palette_editor_edit_color_update(%struct._GimpColorDialog* %dialog, %struct._GimpRGB* %color, i32 %state, %struct._GimpPaletteEditor* %editor) #0 {
entry:
  %dialog.addr = alloca %struct._GimpColorDialog*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %state.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpPaletteEditor*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  store %struct._GimpColorDialog* %dialog, %struct._GimpColorDialog** %dialog.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpPaletteEditor* %editor, %struct._GimpPaletteEditor** %editor.addr, align 8
  %0 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpPaletteEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  %data = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %2, i32 0, i32 4
  %3 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %4 = bitcast %struct._GimpData* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_palette_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPalette*
  store %struct._GimpPalette* %5, %struct._GimpPalette** %palette, align 8
  %6 = load i32, i32* %state.addr, align 4
  switch i32 %6, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.4
    i32 1, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %7 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color5 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %7, i32 0, i32 5
  %8 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %color5, align 8
  %tobool = icmp ne %struct._GimpPaletteEntry* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.4
  %9 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color6 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %9, i32 0, i32 5
  %10 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %color6, align 8
  %color7 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %10, i32 0, i32 0
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %12 = bitcast %struct._GimpRGB* %color7 to i8*
  %13 = bitcast %struct._GimpRGB* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  %14 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %15 = bitcast %struct._GimpPalette* %14 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_data_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.4
  br label %sw.bb.10

sw.bb.10:                                         ; preds = %entry, %if.end
  %17 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor.addr, align 8
  %color_dialog = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %17, i32 0, i32 4
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %18)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.10, %sw.bb
  ret void
}

declare void @gimp_viewable_dialog_set_viewable(%struct._GimpViewableDialog*, %struct._GimpViewable*, %struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_dialog_get_type() #2

declare void @gimp_color_dialog_set_color(%struct._GimpColorDialog*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_dialog_get_type() #2

declare void @gtk_window_present(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

; Function Attrs: nounwind uwtable
define void @palette_editor_new_color_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpPaletteEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteEditor*
  store %struct._GimpPaletteEditor* %2, %struct._GimpPaletteEditor** %editor, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %5, %struct._GimpDataEditor** %data_editor, align 8
  %6 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data_editable = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %6, i32 0, i32 5
  %7 = load i32, i32* %data_editable, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data4 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %8, i32 0, i32 4
  %9 = load %struct._GimpData*, %struct._GimpData** %data4, align 8
  %10 = bitcast %struct._GimpData* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_palette_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPalette*
  store %struct._GimpPalette* %11, %struct._GimpPalette** %palette, align 8
  %12 = load i32, i32* %value.addr, align 4
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %13 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %13, i32 0, i32 2
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %14, %struct._GimpRGB* %color)
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %context9 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %15, i32 0, i32 2
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context9, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %16, %struct._GimpRGB* %color)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  %17 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call10 = call %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette* %17, i32 -1, i8* null, %struct._GimpRGB* %color)
  %18 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color11 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %18, i32 0, i32 5
  store %struct._GimpPaletteEntry* %call10, %struct._GimpPaletteEntry** %color11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  ret void
}

declare void @gimp_context_get_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette*, i32, i8*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define void @palette_editor_delete_color_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpPaletteEditor*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteEditor*
  store %struct._GimpPaletteEditor* %2, %struct._GimpPaletteEditor** %editor, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_editor_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %5, %struct._GimpDataEditor** %data_editor, align 8
  %6 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data_editable = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %6, i32 0, i32 5
  %7 = load i32, i32* %data_editable, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %8, i32 0, i32 5
  %9 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %color, align 8
  %tobool4 = icmp ne %struct._GimpPaletteEntry* %9, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %data5 = getelementptr inbounds %struct._GimpDataEditor, %struct._GimpDataEditor* %10, i32 0, i32 4
  %11 = load %struct._GimpData*, %struct._GimpData** %data5, align 8
  %12 = bitcast %struct._GimpData* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_palette_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpPalette*
  store %struct._GimpPalette* %13, %struct._GimpPalette** %palette, align 8
  %14 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %15 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %color8 = getelementptr inbounds %struct._GimpPaletteEditor, %struct._GimpPaletteEditor* %15, i32 0, i32 5
  %16 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %color8, align 8
  call void @gimp_palette_delete_entry(%struct._GimpPalette* %14, %struct._GimpPaletteEntry* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @gimp_palette_delete_entry(%struct._GimpPalette*, %struct._GimpPaletteEntry*) #1

; Function Attrs: nounwind uwtable
define void @palette_editor_zoom_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpPaletteEditor*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaletteEditor*
  store %struct._GimpPaletteEditor* %2, %struct._GimpPaletteEditor** %editor, align 8
  %3 = load %struct._GimpPaletteEditor*, %struct._GimpPaletteEditor** %editor, align 8
  %4 = load i32, i32* %value.addr, align 4
  call void @gimp_palette_editor_zoom(%struct._GimpPaletteEditor* %3, i32 %4)
  ret void
}

declare void @gimp_palette_editor_zoom(%struct._GimpPaletteEditor*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_data_dirty(%struct._GimpData*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
