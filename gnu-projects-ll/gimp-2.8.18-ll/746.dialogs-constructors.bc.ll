; ModuleID = './app/dialogs/dialogs-constructors.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type opaque
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
%struct._GimpUIManager = type opaque
%struct._GimpMenuFactory = type opaque

@.str = private unnamed_addr constant [13 x i8] c"GIMP Message\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"gimp-toolbox\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"<Toolbox>\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"gimp-dock\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"<Dock>\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"<Gradients>\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"/gradients-popup\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"gradients\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"<Palettes>\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"/palettes-popup\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"palettes\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"<Layers>\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"/layers-popup\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"<Channels>\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"/channels-popup\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"<Vectors>\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"/vectors-popup\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_image_new_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GtkWidget* @image_new_dialog_new(%struct._GimpContext* %0)
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @image_new_dialog_new(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_file_open_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GtkWidget* @file_open_dialog_new(%struct._Gimp* %1)
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @file_open_dialog_new(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_file_open_location_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GtkWidget* @file_open_location_dialog_new(%struct._Gimp* %1)
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @file_open_location_dialog_new(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_file_save_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GtkWidget* @file_save_dialog_new(%struct._Gimp* %1, i32 0)
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @file_save_dialog_new(%struct._Gimp*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_file_export_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GtkWidget* @file_save_dialog_new(%struct._Gimp* %1, i32 1)
  ret %struct._GtkWidget* %call
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_preferences_get(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GtkWidget* @preferences_dialog_create(%struct._Gimp* %1)
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @preferences_dialog_create(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_keyboard_shortcuts_get(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GtkWidget* @keyboard_shortcuts_dialog_new(%struct._Gimp* %1)
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @keyboard_shortcuts_dialog_new(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_input_devices_get(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GtkWidget* @input_devices_dialog_new(%struct._Gimp* %1)
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @input_devices_dialog_new(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_module_get(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GtkWidget* @module_dialog_new(%struct._Gimp* %1)
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @module_dialog_new(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_palette_import_get(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GtkWidget* @palette_import_dialog_new(%struct._GimpContext* %0)
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @palette_import_dialog_new(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_tips_get(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GtkWidget* @tips_dialog_create(%struct._Gimp* %1)
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @tips_dialog_create(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_about_get(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GtkWidget* @about_dialog_create(%struct._GimpContext* %0)
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @about_dialog_create(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_error_get(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* @gimp_error_dialog_new(i8* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_error_dialog_new(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_close_all_get(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GtkWidget* @close_all_dialog_new(%struct._Gimp* %1)
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @close_all_dialog_new(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_quit_get(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GtkWidget* @quit_dialog_new(%struct._Gimp* %1)
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @quit_dialog_new(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_toolbox_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %2 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager.addr, align 8
  %call = call %struct._GtkWidget* @gimp_toolbox_new(%struct._GimpDialogFactory* %0, %struct._GimpContext* %1, %struct._GimpUIManager* %2)
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @gimp_toolbox_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_toolbox_dock_window_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GtkWidget* @gimp_dock_window_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 1, %struct._GimpDialogFactory* %0, %struct._GimpContext* %1)
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @gimp_dock_window_new(i8*, i8*, i32, %struct._GimpDialogFactory*, %struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_dock_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %call = call %struct._GtkWidget* @gimp_menu_dock_new()
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @gimp_menu_dock_new() #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_dock_window_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GtkWidget* @gimp_dock_window_new(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct._GimpDialogFactory* %0, %struct._GimpContext* %1)
  ret %struct._GtkWidget* %call
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_tool_options_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %2 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %2)
  %call1 = call %struct._GtkWidget* @gimp_tool_options_editor_new(%struct._Gimp* %1, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_tool_options_editor_new(%struct._Gimp*, %struct._GimpMenuFactory*) #1

declare %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_device_status_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GtkWidget* @gimp_device_status_new(%struct._Gimp* %1)
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @gimp_device_status_new(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_error_console_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %2 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %2)
  %call1 = call %struct._GtkWidget* @gimp_error_console_new(%struct._Gimp* %1, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_error_console_new(%struct._Gimp*, %struct._GimpMenuFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_cursor_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %0)
  %call1 = call %struct._GtkWidget* @gimp_cursor_view_new(%struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_cursor_view_new(%struct._GimpMenuFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_image_list_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %images = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 26
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %images, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %view_size.addr, align 4
  %5 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %5)
  %call1 = call %struct._GtkWidget* @gimp_image_view_new(i32 0, %struct._GimpContainer* %2, %struct._GimpContext* %3, i32 %4, i32 1, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_image_view_new(i32, %struct._GimpContainer*, %struct._GimpContext*, i32, i32, %struct._GimpMenuFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_brush_list_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 37
  %2 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %view_size.addr, align 4
  %5 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %5)
  %call1 = call %struct._GtkWidget* @gimp_brush_factory_view_new(i32 0, %struct._GimpDataFactory* %2, %struct._GimpContext* %3, i32 1, i32 %4, i32 1, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_brush_factory_view_new(i32, %struct._GimpDataFactory*, %struct._GimpContext*, i32, i32, i32, %struct._GimpMenuFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_dynamics_list_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %dynamics_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 38
  %2 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %dynamics_factory, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %view_size.addr, align 4
  %5 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %5)
  %call1 = call %struct._GtkWidget* @gimp_dynamics_factory_view_new(i32 0, %struct._GimpDataFactory* %2, %struct._GimpContext* %3, i32 %4, i32 1, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_dynamics_factory_view_new(i32, %struct._GimpDataFactory*, %struct._GimpContext*, i32, i32, %struct._GimpMenuFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_pattern_list_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pattern_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 39
  %2 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %pattern_factory, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %view_size.addr, align 4
  %5 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %5)
  %call1 = call %struct._GtkWidget* @gimp_pattern_factory_view_new(i32 0, %struct._GimpDataFactory* %2, %struct._GimpContext* %3, i32 %4, i32 1, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_pattern_factory_view_new(i32, %struct._GimpDataFactory*, %struct._GimpContext*, i32, i32, %struct._GimpMenuFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_gradient_list_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 40
  %2 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %view_size.addr, align 4
  %5 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %5)
  %call1 = call %struct._GtkWidget* @gimp_data_factory_view_new(i32 0, %struct._GimpDataFactory* %2, %struct._GimpContext* %3, i32 %4, i32 1, %struct._GimpMenuFactory* %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_data_factory_view_new(i32, %struct._GimpDataFactory*, %struct._GimpContext*, i32, i32, %struct._GimpMenuFactory*, i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_palette_list_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 41
  %2 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %view_size.addr, align 4
  %5 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %5)
  %call1 = call %struct._GtkWidget* @gimp_data_factory_view_new(i32 0, %struct._GimpDataFactory* %2, %struct._GimpContext* %3, i32 %4, i32 1, %struct._GimpMenuFactory* %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0))
  ret %struct._GtkWidget* %call1
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_font_list_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %fonts = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 36
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %view_size.addr, align 4
  %5 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %5)
  %call1 = call %struct._GtkWidget* @gimp_font_view_new(i32 0, %struct._GimpContainer* %2, %struct._GimpContext* %3, i32 %4, i32 1, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_font_view_new(i32, %struct._GimpContainer*, %struct._GimpContext*, i32, i32, %struct._GimpMenuFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_buffer_list_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %named_buffers = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 35
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %named_buffers, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %view_size.addr, align 4
  %5 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %5)
  %call1 = call %struct._GtkWidget* @gimp_buffer_view_new(i32 0, %struct._GimpContainer* %2, %struct._GimpContext* %3, i32 %4, i32 1, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_buffer_view_new(i32, %struct._GimpContainer*, %struct._GimpContext*, i32, i32, %struct._GimpMenuFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_tool_preset_list_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_preset_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 42
  %2 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %tool_preset_factory, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %view_size.addr, align 4
  %5 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %5)
  %call1 = call %struct._GtkWidget* @gimp_tool_preset_factory_view_new(i32 0, %struct._GimpDataFactory* %2, %struct._GimpContext* %3, i32 %4, i32 1, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_tool_preset_factory_view_new(i32, %struct._GimpDataFactory*, %struct._GimpContext*, i32, i32, %struct._GimpMenuFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_document_list_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %documents = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 47
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %documents, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %view_size.addr, align 4
  %5 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %5)
  %call1 = call %struct._GtkWidget* @gimp_document_view_new(i32 0, %struct._GimpContainer* %2, %struct._GimpContext* %3, i32 %4, i32 0, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_document_view_new(i32, %struct._GimpContainer*, %struct._GimpContext*, i32, i32, %struct._GimpMenuFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_template_list_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %templates = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 48
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %templates, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %view_size.addr, align 4
  %5 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %5)
  %call1 = call %struct._GtkWidget* @gimp_template_view_new(i32 0, %struct._GimpContainer* %2, %struct._GimpContext* %3, i32 %4, i32 0, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_template_view_new(i32, %struct._GimpContainer*, %struct._GimpContext*, i32, i32, %struct._GimpMenuFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_image_grid_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %images = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 26
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %images, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %view_size.addr, align 4
  %5 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %5)
  %call1 = call %struct._GtkWidget* @gimp_image_view_new(i32 1, %struct._GimpContainer* %2, %struct._GimpContext* %3, i32 %4, i32 1, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_brush_grid_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 37
  %2 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %view_size.addr, align 4
  %5 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %5)
  %call1 = call %struct._GtkWidget* @gimp_brush_factory_view_new(i32 1, %struct._GimpDataFactory* %2, %struct._GimpContext* %3, i32 1, i32 %4, i32 1, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_pattern_grid_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pattern_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 39
  %2 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %pattern_factory, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %view_size.addr, align 4
  %5 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %5)
  %call1 = call %struct._GtkWidget* @gimp_pattern_factory_view_new(i32 1, %struct._GimpDataFactory* %2, %struct._GimpContext* %3, i32 %4, i32 1, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_gradient_grid_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 40
  %2 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %view_size.addr, align 4
  %5 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %5)
  %call1 = call %struct._GtkWidget* @gimp_data_factory_view_new(i32 1, %struct._GimpDataFactory* %2, %struct._GimpContext* %3, i32 %4, i32 1, %struct._GimpMenuFactory* %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  ret %struct._GtkWidget* %call1
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_palette_grid_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 41
  %2 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %view_size.addr, align 4
  %5 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %5)
  %call1 = call %struct._GtkWidget* @gimp_data_factory_view_new(i32 1, %struct._GimpDataFactory* %2, %struct._GimpContext* %3, i32 %4, i32 1, %struct._GimpMenuFactory* %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0))
  ret %struct._GtkWidget* %call1
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_font_grid_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %fonts = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 36
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %view_size.addr, align 4
  %5 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %5)
  %call1 = call %struct._GtkWidget* @gimp_font_view_new(i32 1, %struct._GimpContainer* %2, %struct._GimpContext* %3, i32 %4, i32 1, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_buffer_grid_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %named_buffers = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 35
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %named_buffers, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %view_size.addr, align 4
  %5 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %5)
  %call1 = call %struct._GtkWidget* @gimp_buffer_view_new(i32 1, %struct._GimpContainer* %2, %struct._GimpContext* %3, i32 %4, i32 1, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_document_grid_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %documents = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 47
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %documents, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %view_size.addr, align 4
  %5 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %5)
  %call1 = call %struct._GtkWidget* @gimp_document_view_new(i32 1, %struct._GimpContainer* %2, %struct._GimpContext* %3, i32 %4, i32 0, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_template_grid_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %templates = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 48
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %templates, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load i32, i32* %view_size.addr, align 4
  %5 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %5)
  %call1 = call %struct._GtkWidget* @gimp_template_view_new(i32 1, %struct._GimpContainer* %2, %struct._GimpContext* %3, i32 %4, i32 0, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_layer_list_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load i32, i32* %view_size.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 1
  %3 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %layer_preview_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %3, i32 0, i32 43
  %4 = load i32, i32* %layer_preview_size, align 4
  store i32 %4, i32* %view_size.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i64 @gimp_layer_tree_view_get_type() #5
  %5 = load i32, i32* %view_size.addr, align 4
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call1 = call %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext* %6)
  %7 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call2 = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %7)
  %call3 = call %struct._GtkWidget* @gimp_item_tree_view_new(i64 %call, i32 %5, i32 2, %struct._GimpImage* %call1, %struct._GimpMenuFactory* %call2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0))
  ret %struct._GtkWidget* %call3
}

declare %struct._GtkWidget* @gimp_item_tree_view_new(i64, i32, i32, %struct._GimpImage*, %struct._GimpMenuFactory*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_tree_view_get_type() #3

declare %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_channel_list_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load i32, i32* %view_size.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 1
  %3 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %layer_preview_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %3, i32 0, i32 43
  %4 = load i32, i32* %layer_preview_size, align 4
  store i32 %4, i32* %view_size.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i64 @gimp_channel_tree_view_get_type() #5
  %5 = load i32, i32* %view_size.addr, align 4
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call1 = call %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext* %6)
  %7 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call2 = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %7)
  %call3 = call %struct._GtkWidget* @gimp_item_tree_view_new(i64 %call, i32 %5, i32 1, %struct._GimpImage* %call1, %struct._GimpMenuFactory* %call2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0))
  ret %struct._GtkWidget* %call3
}

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_tree_view_get_type() #3

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_vectors_list_view_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load i32, i32* %view_size.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 1
  %3 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %layer_preview_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %3, i32 0, i32 43
  %4 = load i32, i32* %layer_preview_size, align 4
  store i32 %4, i32* %view_size.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i64 @gimp_vectors_tree_view_get_type() #5
  %5 = load i32, i32* %view_size.addr, align 4
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call1 = call %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext* %6)
  %7 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call2 = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %7)
  %call3 = call %struct._GtkWidget* @gimp_item_tree_view_new(i64 %call, i32 %5, i32 1, %struct._GimpImage* %call1, %struct._GimpMenuFactory* %call2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0))
  ret %struct._GtkWidget* %call3
}

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_tree_view_get_type() #3

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_colormap_editor_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %0)
  %call1 = call %struct._GtkWidget* @gimp_colormap_editor_new(%struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_colormap_editor_new(%struct._GimpMenuFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_histogram_editor_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %call = call %struct._GtkWidget* @gimp_histogram_editor_new()
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @gimp_histogram_editor_new() #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_selection_editor_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %0)
  %call1 = call %struct._GtkWidget* @gimp_selection_editor_new(%struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_selection_editor_new(%struct._GimpMenuFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_undo_editor_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 1
  %2 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %3 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %3)
  %call1 = call %struct._GtkWidget* @gimp_undo_editor_new(%struct._GimpCoreConfig* %2, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_undo_editor_new(%struct._GimpCoreConfig*, %struct._GimpMenuFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_sample_point_editor_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %0)
  %call1 = call %struct._GtkWidget* @gimp_sample_point_editor_new(%struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_sample_point_editor_new(%struct._GimpMenuFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_navigation_editor_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %0)
  %call1 = call %struct._GtkWidget* @gimp_navigation_editor_new(%struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_navigation_editor_new(%struct._GimpMenuFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_color_editor_new(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GtkWidget* @gimp_color_editor_new(%struct._GimpContext* %0)
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @gimp_color_editor_new(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_brush_editor_get(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %1)
  %call1 = call %struct._GtkWidget* @gimp_brush_editor_new(%struct._GimpContext* %0, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_brush_editor_new(%struct._GimpContext*, %struct._GimpMenuFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_dynamics_editor_get(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %1)
  %call1 = call %struct._GtkWidget* @gimp_dynamics_editor_new(%struct._GimpContext* %0, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_dynamics_editor_new(%struct._GimpContext*, %struct._GimpMenuFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_gradient_editor_get(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %1)
  %call1 = call %struct._GtkWidget* @gimp_gradient_editor_new(%struct._GimpContext* %0, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_gradient_editor_new(%struct._GimpContext*, %struct._GimpMenuFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_palette_editor_get(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %1)
  %call1 = call %struct._GtkWidget* @gimp_palette_editor_new(%struct._GimpContext* %0, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_palette_editor_new(%struct._GimpContext*, %struct._GimpMenuFactory*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_tool_preset_editor_get(%struct._GimpDialogFactory* %factory, %struct._GimpContext* %context, %struct._GimpUIManager* %ui_manager, i32 %view_size) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
  %view_size.addr = alloca i32, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %1)
  %call1 = call %struct._GtkWidget* @gimp_tool_preset_editor_new(%struct._GimpContext* %0, %struct._GimpMenuFactory* %call)
  ret %struct._GtkWidget* %call1
}

declare %struct._GtkWidget* @gimp_tool_preset_editor_new(%struct._GimpContext*, %struct._GimpMenuFactory*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
