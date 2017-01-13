; ModuleID = './libgimp/gimpexport.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ExportAction = type { void (i32, i32*)*, void (i32, i32*)*, i8*, [2 x i8*], i32 }
%struct._GSList = type { i8*, %struct._GSList* }
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
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }

@.str = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_export_image = private unnamed_addr constant [18 x i8] c"gimp_export_image\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"*image_ID > -1 && *drawable_ID > -1\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"GIMP_INTERACTIVE_EXPORT\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.4 = private unnamed_addr constant [81 x i8] c"You are about to save a layer mask as %s.\0AThis will not save the visible layers.\00", align 1
@.str.5 = private unnamed_addr constant [96 x i8] c"You are about to save a channel (saved selection) as %s.\0AThis will not save the visible layers.\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%s: unknown drawable type!\00", align 1
@export_action_flatten = internal global %struct.ExportAction { void (i32, i32*)* @export_flatten, void (i32, i32*)* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* null], i32 0 }, align 8
@export_action_add_alpha = internal global %struct.ExportAction { void (i32, i32*)* @export_add_alpha, void (i32, i32*)* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i8* null], i32 0 }, align 8
@export_action_merge_single = internal global %struct.ExportAction { void (i32, i32*)* @export_merge, void (i32, i32*)* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), i8* null], i32 0 }, align 8
@export_action_animate_or_merge = internal global %struct.ExportAction { void (i32, i32*)* @export_merge, void (i32, i32*)* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0)], i32 0 }, align 8
@export_action_animate_or_flatten = internal global %struct.ExportAction { void (i32, i32*)* @export_flatten, void (i32, i32*)* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0)], i32 0 }, align 8
@export_action_merge = internal global %struct.ExportAction { void (i32, i32*)* @export_merge, void (i32, i32*)* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), i8* null], i32 0 }, align 8
@export_action_merge_or_flatten = internal global %struct.ExportAction { void (i32, i32*)* @export_flatten, void (i32, i32*)* @export_merge, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0)], i32 1 }, align 8
@export_action_apply_masks = internal global %struct.ExportAction { void (i32, i32*)* @export_apply_masks, void (i32, i32*)* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i8* null], i32 0 }, align 8
@export_action_convert_indexed_or_grayscale = internal global %struct.ExportAction { void (i32, i32*)* @export_convert_indexed, void (i32, i32*)* @export_convert_grayscale, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.30, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0)], i32 0 }, align 8
@export_action_convert_indexed = internal global %struct.ExportAction { void (i32, i32*)* @export_convert_indexed, void (i32, i32*)* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.34, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.31, i32 0, i32 0), i8* null], i32 0 }, align 8
@export_action_convert_grayscale = internal global %struct.ExportAction { void (i32, i32*)* @export_convert_grayscale, void (i32, i32*)* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.35, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0), i8* null], i32 0 }, align 8
@export_action_convert_bitmap = internal global %struct.ExportAction { void (i32, i32*)* @export_convert_bitmap, void (i32, i32*)* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.36, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.37, i32 0, i32 0), i8* null], i32 0 }, align 8
@export_action_convert_rgb_or_indexed = internal global %struct.ExportAction { void (i32, i32*)* @export_convert_rgb, void (i32, i32*)* @export_convert_indexed, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.38, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.31, i32 0, i32 0)], i32 0 }, align 8
@export_action_convert_rgb = internal global %struct.ExportAction { void (i32, i32*)* @export_convert_rgb, void (i32, i32*)* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i8* null], i32 0 }, align 8
@export_action_convert_rgb_or_grayscale = internal global %struct.ExportAction { void (i32, i32*)* @export_convert_rgb, void (i32, i32*)* @export_convert_grayscale, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0)], i32 0 }, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"Export Image as \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"_Export\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@__func__.confirm_save_dialog = private unnamed_addr constant [20 x i8] c"confirm_save_dialog\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"message != NULL\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"format_name != NULL\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Confirm Save\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"gimp-export-image-confirm\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"gimp-export-confirm-dialog\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Confirm\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"gtk-dialog-warning\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"%s plug-in can't handle transparency\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Flatten Image\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"%s plug-in needs an alpha channel\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"Add Alpha Channel\00", align 1
@.str.22 = private unnamed_addr constant [55 x i8] c"%s plug-in can't handle layer offsets, size or opacity\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Merge Visible Layers\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"%s plug-in can only handle layers as animation frames\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Save as Animation\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"%s plug-in can't handle layers\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"%s plug-in can't handle layer masks\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Apply Layer Masks\00", align 1
@.str.30 = private unnamed_addr constant [55 x i8] c"%s plug-in can only handle grayscale or indexed images\00", align 1
@.str.31 = private unnamed_addr constant [78 x i8] c"Convert to Indexed using default settings\0A(Do it manually to tune the result)\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Convert to Grayscale\00", align 1
@.str.33 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"%s plug-in can only handle indexed images\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"%s plug-in can only handle grayscale images\00", align 1
@.str.36 = private unnamed_addr constant [61 x i8] c"%s plug-in can only handle bitmap (two color) indexed images\00", align 1
@.str.37 = private unnamed_addr constant [85 x i8] c"Convert to Indexed using bitmap default settings\0A(Do it manually to tune the result)\00", align 1
@.str.38 = private unnamed_addr constant [50 x i8] c"%s plug-in  can only handle RGB or indexed images\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"Convert to RGB\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"%s plug-in can only handle RGB images\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"%s plug-in can only handle RGB or grayscale images\00", align 1
@__func__.export_dialog = private unnamed_addr constant [14 x i8] c"export_dialog\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"actions != NULL\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"Export File\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"gimp-export-image\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"gimp-export-dialog\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"_Ignore\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"gtk-dialog-info\00", align 1
@.str.48 = private unnamed_addr constant [86 x i8] c"Your image should be exported before it can be saved as %s for the following reasons:\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.50 = private unnamed_addr constant [56 x i8] c"The export conversion won't modify your original image.\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* %format_name, i32 %capabilities) #0 {
entry:
  %retval = alloca i32, align 4
  %image_ID.addr = alloca i32*, align 8
  %drawable_ID.addr = alloca i32*, align 8
  %format_name.addr = alloca i8*, align 8
  %capabilities.addr = alloca i32, align 4
  %actions = alloca %struct._GSList*, align 8
  %type = alloca i32, align 4
  %i = alloca i32, align 4
  %n_layers = alloca i32, align 4
  %layers = alloca i32*, align 8
  %interactive = alloca i32, align 4
  %added_flatten = alloca i32, align 4
  %has_layer_masks = alloca i32, align 4
  %background_has_alpha = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %n_children = alloca i32, align 4
  %children = alloca i32*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %n_colors = alloca i32, align 4
  %list = alloca %struct._GSList*, align 8
  store i32* %image_ID, i32** %image_ID.addr, align 8
  store i32* %drawable_ID, i32** %drawable_ID.addr, align 8
  store i8* %format_name, i8** %format_name.addr, align 8
  store i32 %capabilities, i32* %capabilities.addr, align 4
  store %struct._GSList* null, %struct._GSList** %actions, align 8
  store i32 0, i32* %interactive, align 4
  store i32 0, i32* %added_flatten, align 4
  store i32 0, i32* %has_layer_masks, align 4
  store i32 1, i32* %background_has_alpha, align 4
  store i32 0, i32* %retval1, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32*, i32** %image_ID.addr, align 8
  %1 = load i32, i32* %0, align 4
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32*, i32** %drawable_ID.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp2 = icmp sgt i32 %3, -1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_export_image, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load i32, i32* %capabilities.addr, align 4
  %and = and i32 %4, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.end
  %5 = load i32, i32* %capabilities.addr, align 4
  %or = or i32 %5, 16
  store i32 %or, i32* %capabilities.addr, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %do.end
  %6 = load i32, i32* %capabilities.addr, align 4
  %and5 = and i32 %6, 64
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.4
  %7 = load i32, i32* %capabilities.addr, align 4
  %or8 = or i32 %7, 32
  store i32 %or8, i32* %capabilities.addr, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.4
  %8 = load i32, i32* %capabilities.addr, align 4
  %and10 = and i32 %8, 128
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.9
  %9 = load i32, i32* %capabilities.addr, align 4
  %or13 = or i32 %9, 32
  store i32 %or13, i32* %capabilities.addr, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.9
  %10 = load i32, i32* %capabilities.addr, align 4
  %and15 = and i32 %10, 32
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.14
  %11 = load i32, i32* %capabilities.addr, align 4
  %or18 = or i32 %11, 16
  store i32 %or18, i32* %capabilities.addr, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.14
  %12 = load i8*, i8** %format_name.addr, align 8
  %tobool20 = icmp ne i8* %12, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.24

land.lhs.true.21:                                 ; preds = %if.end.19
  %call = call i8* @g_getenv(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  %tobool22 = icmp ne i8* %call, null
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.21
  store i32 1, i32* %interactive, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true.21, %if.end.19
  %13 = load i32, i32* %interactive, align 4
  %tobool25 = icmp ne i32 %13, 0
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.50

land.lhs.true.26:                                 ; preds = %if.end.24
  %14 = load i32*, i32** %drawable_ID.addr, align 8
  %15 = load i32, i32* %14, align 4
  %call27 = call i32 @gimp_item_is_layer(i32 %15)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.50, label %land.lhs.true.29

land.lhs.true.29:                                 ; preds = %land.lhs.true.26
  %16 = load i32, i32* %capabilities.addr, align 4
  %and30 = and i32 %16, 32
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.end.50, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true.29
  %17 = load i32*, i32** %drawable_ID.addr, align 8
  %18 = load i32, i32* %17, align 4
  %call33 = call i32 @gimp_item_is_layer_mask(i32 %18)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.else.38

if.then.35:                                       ; preds = %if.then.32
  %call36 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i32 0, i32 0)) #4
  %19 = load i8*, i8** %format_name.addr, align 8
  %call37 = call i32 @confirm_save_dialog(i8* %call36, i8* %19)
  store i32 %call37, i32* %retval1, align 4
  br label %if.end.46

if.else.38:                                       ; preds = %if.then.32
  %20 = load i32*, i32** %drawable_ID.addr, align 8
  %21 = load i32, i32* %20, align 4
  %call39 = call i32 @gimp_item_is_channel(i32 %21)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.else.44

if.then.41:                                       ; preds = %if.else.38
  %call42 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.5, i32 0, i32 0)) #4
  %22 = load i8*, i8** %format_name.addr, align 8
  %call43 = call i32 @confirm_save_dialog(i8* %call42, i8* %22)
  store i32 %call43, i32* %retval1, align 4
  br label %if.end.45

if.else.44:                                       ; preds = %if.else.38
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_export_image, i32 0, i32 0))
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.44, %if.then.41
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.35
  %23 = load i32, i32* %retval1, align 4
  %cmp47 = icmp eq i32 %23, 0
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.46
  store i32 0, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.end.46
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %land.lhs.true.29, %land.lhs.true.26, %if.end.24
  %24 = load i32*, i32** %image_ID.addr, align 8
  %25 = load i32, i32* %24, align 4
  %call51 = call i32* @gimp_image_get_layers(i32 %25, i32* %n_layers)
  store i32* %call51, i32** %layers, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.50
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %n_layers, align 4
  %cmp52 = icmp slt i32 %26, %27
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load i32*, i32** %layers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %29, i64 %idxprom
  %30 = load i32, i32* %arrayidx, align 4
  %call53 = call i32 @gimp_drawable_has_alpha(i32 %30)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.61

if.then.55:                                       ; preds = %for.body
  %31 = load i32, i32* %capabilities.addr, align 4
  %and56 = and i32 %31, 16
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.end.60, label %if.then.58

if.then.58:                                       ; preds = %if.then.55
  %32 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call59 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %32, i8* bitcast (%struct.ExportAction* @export_action_flatten to i8*))
  store %struct._GSList* %call59, %struct._GSList** %actions, align 8
  store i32 1, i32* %added_flatten, align 4
  br label %for.end

if.end.60:                                        ; preds = %if.then.55
  br label %if.end.75

if.else.61:                                       ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %n_layers, align 4
  %sub = sub nsw i32 %34, 1
  %cmp62 = icmp eq i32 %33, %sub
  br i1 %cmp62, label %land.lhs.true.63, label %if.end.69

land.lhs.true.63:                                 ; preds = %if.else.61
  %35 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %35 to i64
  %36 = load i32*, i32** %layers, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %36, i64 %idxprom64
  %37 = load i32, i32* %arrayidx65, align 4
  %call66 = call i32 @gimp_item_get_visible(i32 %37)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %land.lhs.true.63
  store i32 0, i32* %background_has_alpha, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %land.lhs.true.63, %if.else.61
  %38 = load i32, i32* %capabilities.addr, align 4
  %and70 = and i32 %38, 256
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.end.69
  %39 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call73 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %39, i8* bitcast (%struct.ExportAction* @export_action_add_alpha to i8*))
  store %struct._GSList* %call73, %struct._GSList** %actions, align 8
  br label %for.end

if.end.74:                                        ; preds = %if.end.69
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.60
  br label %for.inc

for.inc:                                          ; preds = %if.end.75
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.72, %if.then.58, %for.cond
  %41 = load i32, i32* %added_flatten, align 4
  %tobool76 = icmp ne i32 %41, 0
  br i1 %tobool76, label %if.end.90, label %if.then.77

if.then.77:                                       ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.87, %if.then.77
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %n_layers, align 4
  %cmp79 = icmp slt i32 %42, %43
  br i1 %cmp79, label %for.body.80, label %for.end.89

for.body.80:                                      ; preds = %for.cond.78
  %44 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %44 to i64
  %45 = load i32*, i32** %layers, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %45, i64 %idxprom81
  %46 = load i32, i32* %arrayidx82, align 4
  %call83 = call i32 @gimp_layer_get_mask(i32 %46)
  %cmp84 = icmp ne i32 %call83, -1
  br i1 %cmp84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %for.body.80
  store i32 1, i32* %has_layer_masks, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %for.body.80
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86
  %47 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %47, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond.78

for.end.89:                                       ; preds = %for.cond.78
  br label %if.end.90

if.end.90:                                        ; preds = %for.end.89, %for.end
  %48 = load i32, i32* %added_flatten, align 4
  %tobool91 = icmp ne i32 %48, 0
  br i1 %tobool91, label %if.end.180, label %if.then.92

if.then.92:                                       ; preds = %if.end.90
  %49 = load i32*, i32** %layers, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %49, i64 0
  %50 = load i32, i32* %arrayidx93, align 4
  %call94 = call i32* @gimp_item_get_children(i32 %50, i32* %n_children)
  store i32* %call94, i32** %children, align 8
  %51 = load i32, i32* %n_layers, align 4
  %cmp95 = icmp eq i32 %51, 1
  br i1 %cmp95, label %land.lhs.true.96, label %if.else.128

land.lhs.true.96:                                 ; preds = %if.then.92
  %52 = load i32*, i32** %children, align 8
  %tobool97 = icmp ne i32* %52, null
  br i1 %tobool97, label %if.else.128, label %land.lhs.true.98

land.lhs.true.98:                                 ; preds = %land.lhs.true.96
  %53 = load i32*, i32** %drawable_ID.addr, align 8
  %54 = load i32, i32* %53, align 4
  %call99 = call i32 @gimp_item_is_layer(i32 %54)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %land.lhs.true.101, label %if.else.128

land.lhs.true.101:                                ; preds = %land.lhs.true.98
  %55 = load i32, i32* %capabilities.addr, align 4
  %and102 = and i32 %55, 32
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %if.else.128, label %if.then.104

if.then.104:                                      ; preds = %land.lhs.true.101
  %56 = load i32*, i32** %drawable_ID.addr, align 8
  %57 = load i32, i32* %56, align 4
  %call105 = call i32 @gimp_drawable_offsets(i32 %57, i32* %offset_x, i32* %offset_y)
  %58 = load i32*, i32** %drawable_ID.addr, align 8
  %59 = load i32, i32* %58, align 4
  %call106 = call double @gimp_layer_get_opacity(i32 %59)
  %cmp107 = fcmp olt double %call106, 1.000000e+02
  br i1 %cmp107, label %if.then.119, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.104
  %60 = load i32*, i32** %image_ID.addr, align 8
  %61 = load i32, i32* %60, align 4
  %call108 = call i32 @gimp_image_width(i32 %61)
  %62 = load i32*, i32** %drawable_ID.addr, align 8
  %63 = load i32, i32* %62, align 4
  %call109 = call i32 @gimp_drawable_width(i32 %63)
  %cmp110 = icmp ne i32 %call108, %call109
  br i1 %cmp110, label %if.then.119, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %lor.lhs.false
  %64 = load i32*, i32** %image_ID.addr, align 8
  %65 = load i32, i32* %64, align 4
  %call112 = call i32 @gimp_image_height(i32 %65)
  %66 = load i32*, i32** %drawable_ID.addr, align 8
  %67 = load i32, i32* %66, align 4
  %call113 = call i32 @gimp_drawable_height(i32 %67)
  %cmp114 = icmp ne i32 %call112, %call113
  br i1 %cmp114, label %if.then.119, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %lor.lhs.false.111
  %68 = load i32, i32* %offset_x, align 4
  %tobool116 = icmp ne i32 %68, 0
  br i1 %tobool116, label %if.then.119, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %lor.lhs.false.115
  %69 = load i32, i32* %offset_y, align 4
  %tobool118 = icmp ne i32 %69, 0
  br i1 %tobool118, label %if.then.119, label %if.end.127

if.then.119:                                      ; preds = %lor.lhs.false.117, %lor.lhs.false.115, %lor.lhs.false.111, %lor.lhs.false, %if.then.104
  %70 = load i32, i32* %capabilities.addr, align 4
  %and120 = and i32 %70, 16
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %if.then.122, label %if.else.124

if.then.122:                                      ; preds = %if.then.119
  %71 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call123 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %71, i8* bitcast (%struct.ExportAction* @export_action_merge_single to i8*))
  store %struct._GSList* %call123, %struct._GSList** %actions, align 8
  br label %if.end.126

if.else.124:                                      ; preds = %if.then.119
  %72 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call125 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %72, i8* bitcast (%struct.ExportAction* @export_action_flatten to i8*))
  store %struct._GSList* %call125, %struct._GSList** %actions, align 8
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.124, %if.then.122
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %lor.lhs.false.117
  br label %if.end.172

if.else.128:                                      ; preds = %land.lhs.true.101, %land.lhs.true.98, %land.lhs.true.96, %if.then.92
  %73 = load i32, i32* %n_layers, align 4
  %cmp129 = icmp sgt i32 %73, 1
  br i1 %cmp129, label %if.then.130, label %if.else.156

if.then.130:                                      ; preds = %if.else.128
  %74 = load i32, i32* %capabilities.addr, align 4
  %and131 = and i32 %74, 64
  %tobool132 = icmp ne i32 %and131, 0
  br i1 %tobool132, label %if.then.133, label %if.else.143

if.then.133:                                      ; preds = %if.then.130
  %75 = load i32, i32* %background_has_alpha, align 4
  %tobool134 = icmp ne i32 %75, 0
  br i1 %tobool134, label %if.then.138, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %if.then.133
  %76 = load i32, i32* %capabilities.addr, align 4
  %and136 = and i32 %76, 256
  %tobool137 = icmp ne i32 %and136, 0
  br i1 %tobool137, label %if.then.138, label %if.else.140

if.then.138:                                      ; preds = %lor.lhs.false.135, %if.then.133
  %77 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call139 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %77, i8* bitcast (%struct.ExportAction* @export_action_animate_or_merge to i8*))
  store %struct._GSList* %call139, %struct._GSList** %actions, align 8
  br label %if.end.142

if.else.140:                                      ; preds = %lor.lhs.false.135
  %78 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call141 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %78, i8* bitcast (%struct.ExportAction* @export_action_animate_or_flatten to i8*))
  store %struct._GSList* %call141, %struct._GSList** %actions, align 8
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.140, %if.then.138
  br label %if.end.155

if.else.143:                                      ; preds = %if.then.130
  %79 = load i32, i32* %capabilities.addr, align 4
  %and144 = and i32 %79, 32
  %tobool145 = icmp ne i32 %and144, 0
  br i1 %tobool145, label %if.end.154, label %if.then.146

if.then.146:                                      ; preds = %if.else.143
  %80 = load i32, i32* %capabilities.addr, align 4
  %and147 = and i32 %80, 256
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %if.then.149, label %if.else.151

if.then.149:                                      ; preds = %if.then.146
  %81 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call150 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %81, i8* bitcast (%struct.ExportAction* @export_action_merge to i8*))
  store %struct._GSList* %call150, %struct._GSList** %actions, align 8
  br label %if.end.153

if.else.151:                                      ; preds = %if.then.146
  %82 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call152 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %82, i8* bitcast (%struct.ExportAction* @export_action_merge_or_flatten to i8*))
  store %struct._GSList* %call152, %struct._GSList** %actions, align 8
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.151, %if.then.149
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.else.143
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.end.142
  br label %if.end.171

if.else.156:                                      ; preds = %if.else.128
  %83 = load i32*, i32** %children, align 8
  %tobool157 = icmp ne i32* %83, null
  br i1 %tobool157, label %if.then.158, label %if.end.170

if.then.158:                                      ; preds = %if.else.156
  %84 = load i32, i32* %capabilities.addr, align 4
  %and159 = and i32 %84, 32
  %tobool160 = icmp ne i32 %and159, 0
  br i1 %tobool160, label %if.end.169, label %if.then.161

if.then.161:                                      ; preds = %if.then.158
  %85 = load i32, i32* %capabilities.addr, align 4
  %and162 = and i32 %85, 256
  %tobool163 = icmp ne i32 %and162, 0
  br i1 %tobool163, label %if.then.164, label %if.else.166

if.then.164:                                      ; preds = %if.then.161
  %86 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call165 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %86, i8* bitcast (%struct.ExportAction* @export_action_merge to i8*))
  store %struct._GSList* %call165, %struct._GSList** %actions, align 8
  br label %if.end.168

if.else.166:                                      ; preds = %if.then.161
  %87 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call167 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %87, i8* bitcast (%struct.ExportAction* @export_action_merge_or_flatten to i8*))
  store %struct._GSList* %call167, %struct._GSList** %actions, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.166, %if.then.164
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.then.158
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.else.156
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.end.155
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.end.127
  %88 = load i32*, i32** %children, align 8
  %89 = bitcast i32* %88 to i8*
  call void @g_free(i8* %89)
  %90 = load i32, i32* %has_layer_masks, align 4
  %tobool173 = icmp ne i32 %90, 0
  br i1 %tobool173, label %land.lhs.true.174, label %if.end.179

land.lhs.true.174:                                ; preds = %if.end.172
  %91 = load i32, i32* %capabilities.addr, align 4
  %and175 = and i32 %91, 128
  %tobool176 = icmp ne i32 %and175, 0
  br i1 %tobool176, label %if.end.179, label %if.then.177

if.then.177:                                      ; preds = %land.lhs.true.174
  %92 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call178 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %92, i8* bitcast (%struct.ExportAction* @export_action_apply_masks to i8*))
  store %struct._GSList* %call178, %struct._GSList** %actions, align 8
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.177, %land.lhs.true.174, %if.end.172
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %if.end.90
  %93 = load i32*, i32** %layers, align 8
  %94 = bitcast i32* %93 to i8*
  call void @g_free(i8* %94)
  %95 = load i32*, i32** %image_ID.addr, align 8
  %96 = load i32, i32* %95, align 4
  %call181 = call i32 @gimp_image_base_type(i32 %96)
  store i32 %call181, i32* %type, align 4
  %97 = load i32, i32* %type, align 4
  switch i32 %97, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.212
    i32 2, label %sw.bb.243
  ]

sw.bb:                                            ; preds = %if.end.180
  %98 = load i32, i32* %capabilities.addr, align 4
  %and182 = and i32 %98, 1
  %tobool183 = icmp ne i32 %and182, 0
  br i1 %tobool183, label %if.end.211, label %if.then.184

if.then.184:                                      ; preds = %sw.bb
  %99 = load i32, i32* %capabilities.addr, align 4
  %and185 = and i32 %99, 4
  %tobool186 = icmp ne i32 %and185, 0
  br i1 %tobool186, label %land.lhs.true.187, label %if.else.192

land.lhs.true.187:                                ; preds = %if.then.184
  %100 = load i32, i32* %capabilities.addr, align 4
  %and188 = and i32 %100, 2
  %tobool189 = icmp ne i32 %and188, 0
  br i1 %tobool189, label %if.then.190, label %if.else.192

if.then.190:                                      ; preds = %land.lhs.true.187
  %101 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call191 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %101, i8* bitcast (%struct.ExportAction* @export_action_convert_indexed_or_grayscale to i8*))
  store %struct._GSList* %call191, %struct._GSList** %actions, align 8
  br label %if.end.210

if.else.192:                                      ; preds = %land.lhs.true.187, %if.then.184
  %102 = load i32, i32* %capabilities.addr, align 4
  %and193 = and i32 %102, 4
  %tobool194 = icmp ne i32 %and193, 0
  br i1 %tobool194, label %if.then.195, label %if.else.197

if.then.195:                                      ; preds = %if.else.192
  %103 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call196 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %103, i8* bitcast (%struct.ExportAction* @export_action_convert_indexed to i8*))
  store %struct._GSList* %call196, %struct._GSList** %actions, align 8
  br label %if.end.209

if.else.197:                                      ; preds = %if.else.192
  %104 = load i32, i32* %capabilities.addr, align 4
  %and198 = and i32 %104, 2
  %tobool199 = icmp ne i32 %and198, 0
  br i1 %tobool199, label %if.then.200, label %if.else.202

if.then.200:                                      ; preds = %if.else.197
  %105 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call201 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %105, i8* bitcast (%struct.ExportAction* @export_action_convert_grayscale to i8*))
  store %struct._GSList* %call201, %struct._GSList** %actions, align 8
  br label %if.end.208

if.else.202:                                      ; preds = %if.else.197
  %106 = load i32, i32* %capabilities.addr, align 4
  %and203 = and i32 %106, 8
  %tobool204 = icmp ne i32 %and203, 0
  br i1 %tobool204, label %if.then.205, label %if.end.207

if.then.205:                                      ; preds = %if.else.202
  %107 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call206 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %107, i8* bitcast (%struct.ExportAction* @export_action_convert_bitmap to i8*))
  store %struct._GSList* %call206, %struct._GSList** %actions, align 8
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.205, %if.else.202
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %if.then.200
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.195
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.then.190
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %sw.bb
  br label %sw.epilog

sw.bb.212:                                        ; preds = %if.end.180
  %108 = load i32, i32* %capabilities.addr, align 4
  %and213 = and i32 %108, 2
  %tobool214 = icmp ne i32 %and213, 0
  br i1 %tobool214, label %if.end.242, label %if.then.215

if.then.215:                                      ; preds = %sw.bb.212
  %109 = load i32, i32* %capabilities.addr, align 4
  %and216 = and i32 %109, 1
  %tobool217 = icmp ne i32 %and216, 0
  br i1 %tobool217, label %land.lhs.true.218, label %if.else.223

land.lhs.true.218:                                ; preds = %if.then.215
  %110 = load i32, i32* %capabilities.addr, align 4
  %and219 = and i32 %110, 4
  %tobool220 = icmp ne i32 %and219, 0
  br i1 %tobool220, label %if.then.221, label %if.else.223

if.then.221:                                      ; preds = %land.lhs.true.218
  %111 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call222 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %111, i8* bitcast (%struct.ExportAction* @export_action_convert_rgb_or_indexed to i8*))
  store %struct._GSList* %call222, %struct._GSList** %actions, align 8
  br label %if.end.241

if.else.223:                                      ; preds = %land.lhs.true.218, %if.then.215
  %112 = load i32, i32* %capabilities.addr, align 4
  %and224 = and i32 %112, 1
  %tobool225 = icmp ne i32 %and224, 0
  br i1 %tobool225, label %if.then.226, label %if.else.228

if.then.226:                                      ; preds = %if.else.223
  %113 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call227 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %113, i8* bitcast (%struct.ExportAction* @export_action_convert_rgb to i8*))
  store %struct._GSList* %call227, %struct._GSList** %actions, align 8
  br label %if.end.240

if.else.228:                                      ; preds = %if.else.223
  %114 = load i32, i32* %capabilities.addr, align 4
  %and229 = and i32 %114, 4
  %tobool230 = icmp ne i32 %and229, 0
  br i1 %tobool230, label %if.then.231, label %if.else.233

if.then.231:                                      ; preds = %if.else.228
  %115 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call232 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %115, i8* bitcast (%struct.ExportAction* @export_action_convert_indexed to i8*))
  store %struct._GSList* %call232, %struct._GSList** %actions, align 8
  br label %if.end.239

if.else.233:                                      ; preds = %if.else.228
  %116 = load i32, i32* %capabilities.addr, align 4
  %and234 = and i32 %116, 8
  %tobool235 = icmp ne i32 %and234, 0
  br i1 %tobool235, label %if.then.236, label %if.end.238

if.then.236:                                      ; preds = %if.else.233
  %117 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call237 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %117, i8* bitcast (%struct.ExportAction* @export_action_convert_bitmap to i8*))
  store %struct._GSList* %call237, %struct._GSList** %actions, align 8
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.236, %if.else.233
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %if.then.231
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.then.226
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.then.221
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %sw.bb.212
  br label %sw.epilog

sw.bb.243:                                        ; preds = %if.end.180
  %118 = load i32, i32* %capabilities.addr, align 4
  %and244 = and i32 %118, 4
  %tobool245 = icmp ne i32 %and244, 0
  br i1 %tobool245, label %if.end.277, label %if.then.246

if.then.246:                                      ; preds = %sw.bb.243
  %119 = load i32, i32* %capabilities.addr, align 4
  %and247 = and i32 %119, 1
  %tobool248 = icmp ne i32 %and247, 0
  br i1 %tobool248, label %land.lhs.true.249, label %if.else.254

land.lhs.true.249:                                ; preds = %if.then.246
  %120 = load i32, i32* %capabilities.addr, align 4
  %and250 = and i32 %120, 2
  %tobool251 = icmp ne i32 %and250, 0
  br i1 %tobool251, label %if.then.252, label %if.else.254

if.then.252:                                      ; preds = %land.lhs.true.249
  %121 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call253 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %121, i8* bitcast (%struct.ExportAction* @export_action_convert_rgb_or_grayscale to i8*))
  store %struct._GSList* %call253, %struct._GSList** %actions, align 8
  br label %if.end.276

if.else.254:                                      ; preds = %land.lhs.true.249, %if.then.246
  %122 = load i32, i32* %capabilities.addr, align 4
  %and255 = and i32 %122, 1
  %tobool256 = icmp ne i32 %and255, 0
  br i1 %tobool256, label %if.then.257, label %if.else.259

if.then.257:                                      ; preds = %if.else.254
  %123 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call258 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %123, i8* bitcast (%struct.ExportAction* @export_action_convert_rgb to i8*))
  store %struct._GSList* %call258, %struct._GSList** %actions, align 8
  br label %if.end.275

if.else.259:                                      ; preds = %if.else.254
  %124 = load i32, i32* %capabilities.addr, align 4
  %and260 = and i32 %124, 2
  %tobool261 = icmp ne i32 %and260, 0
  br i1 %tobool261, label %if.then.262, label %if.else.264

if.then.262:                                      ; preds = %if.else.259
  %125 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call263 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %125, i8* bitcast (%struct.ExportAction* @export_action_convert_grayscale to i8*))
  store %struct._GSList* %call263, %struct._GSList** %actions, align 8
  br label %if.end.274

if.else.264:                                      ; preds = %if.else.259
  %126 = load i32, i32* %capabilities.addr, align 4
  %and265 = and i32 %126, 8
  %tobool266 = icmp ne i32 %and265, 0
  br i1 %tobool266, label %if.then.267, label %if.end.273

if.then.267:                                      ; preds = %if.else.264
  %127 = load i32*, i32** %image_ID.addr, align 8
  %128 = load i32, i32* %127, align 4
  %call268 = call i8* @gimp_image_get_colormap(i32 %128, i32* %n_colors)
  call void @g_free(i8* %call268)
  %129 = load i32, i32* %n_colors, align 4
  %cmp269 = icmp sgt i32 %129, 2
  br i1 %cmp269, label %if.then.270, label %if.end.272

if.then.270:                                      ; preds = %if.then.267
  %130 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call271 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %130, i8* bitcast (%struct.ExportAction* @export_action_convert_bitmap to i8*))
  store %struct._GSList* %call271, %struct._GSList** %actions, align 8
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.270, %if.then.267
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %if.else.264
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.273, %if.then.262
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %if.then.257
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.then.252
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.276, %sw.bb.243
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.180, %if.end.277, %if.end.242, %if.end.211
  %131 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %tobool278 = icmp ne %struct._GSList* %131, null
  br i1 %tobool278, label %if.then.279, label %if.else.286

if.then.279:                                      ; preds = %sw.epilog
  %132 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %call280 = call %struct._GSList* @g_slist_reverse(%struct._GSList* %132)
  store %struct._GSList* %call280, %struct._GSList** %actions, align 8
  %133 = load i32, i32* %interactive, align 4
  %tobool281 = icmp ne i32 %133, 0
  br i1 %tobool281, label %if.then.282, label %if.else.284

if.then.282:                                      ; preds = %if.then.279
  %134 = load %struct._GSList*, %struct._GSList** %actions, align 8
  %135 = load i8*, i8** %format_name.addr, align 8
  %call283 = call i32 @export_dialog(%struct._GSList* %134, i8* %135)
  store i32 %call283, i32* %retval1, align 4
  br label %if.end.285

if.else.284:                                      ; preds = %if.then.279
  store i32 2, i32* %retval1, align 4
  br label %if.end.285

if.end.285:                                       ; preds = %if.else.284, %if.then.282
  br label %if.end.287

if.else.286:                                      ; preds = %sw.epilog
  store i32 1, i32* %retval1, align 4
  br label %if.end.287

if.end.287:                                       ; preds = %if.else.286, %if.end.285
  %136 = load i32, i32* %retval1, align 4
  %cmp288 = icmp eq i32 %136, 2
  br i1 %cmp288, label %if.then.289, label %if.end.298

if.then.289:                                      ; preds = %if.end.287
  %137 = load i32*, i32** %image_ID.addr, align 8
  %138 = load i32, i32* %137, align 4
  %call290 = call i32 @gimp_image_duplicate(i32 %138)
  %139 = load i32*, i32** %image_ID.addr, align 8
  store i32 %call290, i32* %139, align 4
  %140 = load i32*, i32** %image_ID.addr, align 8
  %141 = load i32, i32* %140, align 4
  %call291 = call i32 @gimp_image_get_active_layer(i32 %141)
  %142 = load i32*, i32** %drawable_ID.addr, align 8
  store i32 %call291, i32* %142, align 4
  %143 = load i32*, i32** %image_ID.addr, align 8
  %144 = load i32, i32* %143, align 4
  %call292 = call i32 @gimp_image_undo_disable(i32 %144)
  %145 = load %struct._GSList*, %struct._GSList** %actions, align 8
  store %struct._GSList* %145, %struct._GSList** %list, align 8
  br label %for.cond.293

for.cond.293:                                     ; preds = %for.inc.296, %if.then.289
  %146 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool294 = icmp ne %struct._GSList* %146, null
  br i1 %tobool294, label %for.body.295, label %for.end.297

for.body.295:                                     ; preds = %for.cond.293
  %147 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %147, i32 0, i32 0
  %148 = load i8*, i8** %data, align 8
  %149 = bitcast i8* %148 to %struct.ExportAction*
  %150 = load i32*, i32** %image_ID.addr, align 8
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %drawable_ID.addr, align 8
  call void @export_action_perform(%struct.ExportAction* %149, i32 %151, i32* %152)
  br label %for.inc.296

for.inc.296:                                      ; preds = %for.body.295
  %153 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %153, i32 0, i32 1
  %154 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %154, %struct._GSList** %list, align 8
  br label %for.cond.293

for.end.297:                                      ; preds = %for.cond.293
  br label %if.end.298

if.end.298:                                       ; preds = %for.end.297, %if.end.287
  %155 = load %struct._GSList*, %struct._GSList** %actions, align 8
  call void @g_slist_free(%struct._GSList* %155)
  %156 = load i32, i32* %retval1, align 4
  store i32 %156, i32* %retval
  br label %return

return:                                           ; preds = %if.end.298, %if.then.48, %if.else
  %157 = load i32, i32* %retval
  ret i32 %157
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_getenv(i8*) #1

declare i32 @gimp_item_is_layer(i32) #1

declare i32 @gimp_item_is_layer_mask(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @confirm_save_dialog(i8* %message, i8* %format_name) #0 {
entry:
  %retval = alloca i32, align 4
  %message.addr = alloca i8*, align 8
  %format_name.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %text = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  store i8* %message, i8** %message.addr, align 8
  store i8* %format_name, i8** %format_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %message.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.confirm_save_dialog, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %1 = load i8*, i8** %format_name.addr, align 8
  %cmp3 = icmp ne i8* %1, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.confirm_save_dialog, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %call = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0)) #4
  %call8 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0)) #4
  %call9 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 -6, i8* %call8, i32 -5, i8* null)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %dialog, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_dialog_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call10)
  %4 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %4, i32 -5, i32 -6, i32 -1)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_window_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call12)
  %7 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %7, i32 0)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_window_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call14)
  %10 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %10)
  %call16 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %hbox, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_dialog_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call17)
  %13 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkDialog*
  %call19 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %13)
  %14 = bitcast %struct._GtkWidget* %call19 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call20)
  %15 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %15, %struct._GtkWidget* %16, i32 1, i32 1, i32 0)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_container_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call22)
  %19 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %19, i32 12)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call24 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i32 6)
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %image, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_misc_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call25)
  %23 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %23, float 5.000000e-01, float 0.000000e+00)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_box_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call27)
  %26 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkBox*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %26, %struct._GtkWidget* %27, i32 0, i32 0, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %call29 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %main_vbox, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call30)
  %31 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %31, %struct._GtkWidget* %32, i32 0, i32 0, i32 0)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %34 = load i8*, i8** %message.addr, align 8
  %35 = load i8*, i8** %format_name.addr, align 8
  %call32 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %34, i8* %35)
  store i8* %call32, i8** %text, align 8
  %36 = load i8*, i8** %text, align 8
  %call33 = call %struct._GtkWidget* @gtk_label_new(i8* %36)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %label, align 8
  %37 = load i8*, i8** %text, align 8
  call void @g_free(i8* %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_label_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call34)
  %40 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %40, i32 15, double 1.200000e+00, i32 4, i32 700, i32 -1)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_misc_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call36)
  %43 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %43, float 0.000000e+00, float 0.000000e+00)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_label_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call38)
  %46 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %46, i32 1)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_label_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call40)
  %49 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkLabel*
  call void @gtk_label_set_justify(%struct._GtkLabel* %49, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_box_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call42)
  %52 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkBox*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %52, %struct._GtkWidget* %53, i32 0, i32 0, i32 0)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %55)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_dialog_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call44)
  %58 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpDialog*
  %call46 = call i32 @gimp_dialog_run(%struct._GimpDialog* %58)
  switch i32 %call46, label %sw.default [
    i32 -5, label %sw.bb
  ]

sw.bb:                                            ; preds = %do.end.7
  store i32 2, i32* %retval1, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.7
  store i32 0, i32* %retval1, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %59)
  %60 = load i32, i32* %retval1, align 4
  store i32 %60, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.else.5, %if.else
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #2

declare i32 @gimp_item_is_channel(i32) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i32* @gimp_image_get_layers(i32, i32*) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #1

declare i32 @gimp_item_get_visible(i32) #1

declare i32 @gimp_layer_get_mask(i32) #1

declare i32* @gimp_item_get_children(i32, i32*) #1

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

declare double @gimp_layer_get_opacity(i32) #1

declare i32 @gimp_image_width(i32) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_image_height(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare void @g_free(i8*) #1

declare i32 @gimp_image_base_type(i32) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

declare %struct._GSList* @g_slist_reverse(%struct._GSList*) #1

; Function Attrs: nounwind uwtable
define internal i32 @export_dialog(%struct._GSList* %actions, i8* %format_name) #0 {
entry:
  %retval = alloca i32, align 4
  %actions.addr = alloca %struct._GSList*, align 8
  %format_name.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %list = alloca %struct._GSList*, align 8
  %text = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %action = alloca %struct.ExportAction*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %radio_group = alloca %struct._GSList*, align 8
  store %struct._GSList* %actions, %struct._GSList** %actions.addr, align 8
  store i8* %format_name, i8** %format_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GSList*, %struct._GSList** %actions.addr, align 8
  %cmp = icmp ne %struct._GSList* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.export_dialog, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %1 = load i8*, i8** %format_name.addr, align 8
  %cmp3 = icmp ne i8* %1, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.export_dialog, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %call = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0)) #4
  %call8 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0)) #4
  %call9 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #4
  %call10 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), i8* %call8, i32 -9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 -6, i8* %call9, i32 -5, i8* null)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %dialog, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_dialog_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call11)
  %4 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %4, i32 -9, i32 -5, i32 -6, i32 -1)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_window_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call13)
  %7 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %7, i32 0)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_window_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call15)
  %10 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %10)
  %call17 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %hbox, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_dialog_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call18)
  %13 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkDialog*
  %call20 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %13)
  %14 = bitcast %struct._GtkWidget* %call20 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call21)
  %15 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %15, %struct._GtkWidget* %16, i32 1, i32 1, i32 0)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_container_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call23)
  %19 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %19, i32 12)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call25 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0), i32 6)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %image, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_misc_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call26)
  %23 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %23, float 5.000000e-01, float 0.000000e+00)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call28)
  %26 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %26, %struct._GtkWidget* %27, i32 0, i32 0, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %call30 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %main_vbox, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call31)
  %31 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %31, %struct._GtkWidget* %32, i32 0, i32 0, i32 0)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %call33 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.48, i32 0, i32 0)) #4
  %34 = load i8*, i8** %format_name.addr, align 8
  %call34 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call33, i8* %34)
  store i8* %call34, i8** %text, align 8
  %35 = load i8*, i8** %text, align 8
  %call35 = call %struct._GtkWidget* @gtk_label_new(i8* %35)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %label, align 8
  %36 = load i8*, i8** %text, align 8
  call void @g_free(i8* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_label_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call36)
  %39 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %39, i32 15, double 1.200000e+00, i32 -1)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_misc_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call38)
  %42 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %42, float 0.000000e+00, float 0.000000e+00)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_label_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call40)
  %45 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %45, i32 1)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_label_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call42)
  %48 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkLabel*
  call void @gtk_label_set_justify(%struct._GtkLabel* %48, i32 0)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_box_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call44)
  %51 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkBox*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %51, %struct._GtkWidget* %52, i32 0, i32 0, i32 0)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %54 = load %struct._GSList*, %struct._GSList** %actions.addr, align 8
  store %struct._GSList* %54, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.7
  %55 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %55, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %56, i32 0, i32 0
  %57 = load i8*, i8** %data, align 8
  %58 = bitcast i8* %57 to %struct.ExportAction*
  store %struct.ExportAction* %58, %struct.ExportAction** %action, align 8
  %59 = load %struct.ExportAction*, %struct.ExportAction** %action, align 8
  %reason = getelementptr inbounds %struct.ExportAction, %struct.ExportAction* %59, i32 0, i32 2
  %60 = load i8*, i8** %reason, align 8
  %call46 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* %60) #4
  %61 = load i8*, i8** %format_name.addr, align 8
  %call47 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call46, i8* %61)
  store i8* %call47, i8** %text, align 8
  %62 = load i8*, i8** %text, align 8
  %call48 = call %struct._GtkWidget* @gimp_frame_new(i8* %62)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %frame, align 8
  %63 = load i8*, i8** %text, align 8
  call void @g_free(i8* %63)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_box_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call49)
  %66 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkBox*
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %66, %struct._GtkWidget* %67, i32 0, i32 0, i32 0)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %68)
  %call51 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %vbox, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_container_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call52)
  %71 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkContainer*
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %71, %struct._GtkWidget* %72)
  %73 = load %struct.ExportAction*, %struct.ExportAction** %action, align 8
  %possibilities = getelementptr inbounds %struct.ExportAction, %struct.ExportAction* %73, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %possibilities, i32 0, i64 0
  %74 = load i8*, i8** %arrayidx, align 8
  %tobool54 = icmp ne i8* %74, null
  br i1 %tobool54, label %land.lhs.true, label %if.else.97

land.lhs.true:                                    ; preds = %for.body
  %75 = load %struct.ExportAction*, %struct.ExportAction** %action, align 8
  %possibilities55 = getelementptr inbounds %struct.ExportAction, %struct.ExportAction* %75, i32 0, i32 3
  %arrayidx56 = getelementptr inbounds [2 x i8*], [2 x i8*]* %possibilities55, i32 0, i64 1
  %76 = load i8*, i8** %arrayidx56, align 8
  %tobool57 = icmp ne i8* %76, null
  br i1 %tobool57, label %if.then.58, label %if.else.97

if.then.58:                                       ; preds = %land.lhs.true
  store %struct._GSList* null, %struct._GSList** %radio_group, align 8
  %77 = load %struct._GSList*, %struct._GSList** %radio_group, align 8
  %78 = load %struct.ExportAction*, %struct.ExportAction** %action, align 8
  %possibilities59 = getelementptr inbounds %struct.ExportAction, %struct.ExportAction* %78, i32 0, i32 3
  %arrayidx60 = getelementptr inbounds [2 x i8*], [2 x i8*]* %possibilities59, i32 0, i64 0
  %79 = load i8*, i8** %arrayidx60, align 8
  %call61 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* %79) #4
  %call62 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %77, i8* %call61)
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %button, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_bin_get_type() #5
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call63)
  %82 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkBin*
  %call65 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %82)
  %83 = bitcast %struct._GtkWidget* %call65 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_label_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call66)
  %84 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkLabel*
  call void @gtk_label_set_justify(%struct._GtkLabel* %84, i32 0)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_radio_button_get_type() #5
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call68)
  %87 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkRadioButton*
  %call70 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %87)
  store %struct._GSList* %call70, %struct._GSList** %radio_group, align 8
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_box_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call71)
  %90 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkBox*
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %90, %struct._GtkWidget* %91, i32 0, i32 0, i32 0)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %93 = bitcast %struct._GtkWidget* %92 to i8*
  %94 = load %struct.ExportAction*, %struct.ExportAction** %action, align 8
  %choice = getelementptr inbounds %struct.ExportAction, %struct.ExportAction* %94, i32 0, i32 4
  %95 = bitcast i32* %choice to i8*
  %call73 = call i64 @g_signal_connect_data(i8* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @export_toggle_callback to void ()*), i8* %95, void (i8*, %struct._GClosure*)* null, i32 0)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_toggle_button_get_type() #5
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call74)
  %98 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkToggleButton*
  %99 = load %struct.ExportAction*, %struct.ExportAction** %action, align 8
  %choice76 = getelementptr inbounds %struct.ExportAction, %struct.ExportAction* %99, i32 0, i32 4
  %100 = load i32, i32* %choice76, align 4
  %cmp77 = icmp eq i32 %100, 0
  %conv = zext i1 %cmp77 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %98, i32 %conv)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %101)
  %102 = load %struct._GSList*, %struct._GSList** %radio_group, align 8
  %103 = load %struct.ExportAction*, %struct.ExportAction** %action, align 8
  %possibilities78 = getelementptr inbounds %struct.ExportAction, %struct.ExportAction* %103, i32 0, i32 3
  %arrayidx79 = getelementptr inbounds [2 x i8*], [2 x i8*]* %possibilities78, i32 0, i64 1
  %104 = load i8*, i8** %arrayidx79, align 8
  %call80 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* %104) #4
  %call81 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %102, i8* %call80)
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %button, align 8
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_bin_get_type() #5
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call82)
  %107 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkBin*
  %call84 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %107)
  %108 = bitcast %struct._GtkWidget* %call84 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_label_get_type() #5
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call85)
  %109 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkLabel*
  call void @gtk_label_set_justify(%struct._GtkLabel* %109, i32 0)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %111 = bitcast %struct._GtkWidget* %110 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_radio_button_get_type() #5
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call87)
  %112 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkRadioButton*
  %call89 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %112)
  store %struct._GSList* %call89, %struct._GSList** %radio_group, align 8
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_box_get_type() #5
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call90)
  %115 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkBox*
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %115, %struct._GtkWidget* %116, i32 0, i32 0, i32 0)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_toggle_button_get_type() #5
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call92)
  %119 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkToggleButton*
  %120 = load %struct.ExportAction*, %struct.ExportAction** %action, align 8
  %choice94 = getelementptr inbounds %struct.ExportAction, %struct.ExportAction* %120, i32 0, i32 4
  %121 = load i32, i32* %choice94, align 4
  %cmp95 = icmp eq i32 %121, 1
  %conv96 = zext i1 %cmp95 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %119, i32 %conv96)
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %122)
  br label %if.end.116

if.else.97:                                       ; preds = %land.lhs.true, %for.body
  %123 = load %struct.ExportAction*, %struct.ExportAction** %action, align 8
  %possibilities98 = getelementptr inbounds %struct.ExportAction, %struct.ExportAction* %123, i32 0, i32 3
  %arrayidx99 = getelementptr inbounds [2 x i8*], [2 x i8*]* %possibilities98, i32 0, i64 0
  %124 = load i8*, i8** %arrayidx99, align 8
  %tobool100 = icmp ne i8* %124, null
  br i1 %tobool100, label %if.then.101, label %if.end.115

if.then.101:                                      ; preds = %if.else.97
  %125 = load %struct.ExportAction*, %struct.ExportAction** %action, align 8
  %possibilities102 = getelementptr inbounds %struct.ExportAction, %struct.ExportAction* %125, i32 0, i32 3
  %arrayidx103 = getelementptr inbounds [2 x i8*], [2 x i8*]* %possibilities102, i32 0, i64 0
  %126 = load i8*, i8** %arrayidx103, align 8
  %call104 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* %126) #4
  %call105 = call %struct._GtkWidget* @gtk_label_new(i8* %call104)
  store %struct._GtkWidget* %call105, %struct._GtkWidget** %label, align 8
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %128 = bitcast %struct._GtkWidget* %127 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_misc_get_type() #5
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call106)
  %129 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %129, float 0.000000e+00, float 0.000000e+00)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %131 = bitcast %struct._GtkWidget* %130 to %struct._GTypeInstance*
  %call108 = call i64 @gtk_label_get_type() #5
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call108)
  %132 = bitcast %struct._GTypeInstance* %call109 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %132, i32 1)
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call110 = call i64 @gtk_label_get_type() #5
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call110)
  %135 = bitcast %struct._GTypeInstance* %call111 to %struct._GtkLabel*
  call void @gtk_label_set_justify(%struct._GtkLabel* %135, i32 0)
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %137 = bitcast %struct._GtkWidget* %136 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_box_get_type() #5
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call112)
  %138 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkBox*
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %138, %struct._GtkWidget* %139, i32 0, i32 0, i32 0)
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %140)
  %141 = load %struct.ExportAction*, %struct.ExportAction** %action, align 8
  %choice114 = getelementptr inbounds %struct.ExportAction, %struct.ExportAction* %141, i32 0, i32 4
  store i32 0, i32* %choice114, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.101, %if.else.97
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.then.58
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %142)
  br label %for.inc

for.inc:                                          ; preds = %if.end.116
  %143 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool117 = icmp ne %struct._GSList* %143, null
  br i1 %tobool117, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %144 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %144, i32 0, i32 1
  %145 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %145, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call118 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.50, i32 0, i32 0)) #4
  %call119 = call %struct._GtkWidget* @gtk_label_new(i8* %call118)
  store %struct._GtkWidget* %call119, %struct._GtkWidget** %label, align 8
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %147 = bitcast %struct._GtkWidget* %146 to %struct._GTypeInstance*
  %call120 = call i64 @gtk_label_get_type() #5
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call120)
  %148 = bitcast %struct._GTypeInstance* %call121 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %148, i32 3, i32 2, i32 -1)
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %150 = bitcast %struct._GtkWidget* %149 to %struct._GTypeInstance*
  %call122 = call i64 @gtk_misc_get_type() #5
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call122)
  %151 = bitcast %struct._GTypeInstance* %call123 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %151, float 0.000000e+00, float 0.000000e+00)
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %153 = bitcast %struct._GtkWidget* %152 to %struct._GTypeInstance*
  %call124 = call i64 @gtk_label_get_type() #5
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %153, i64 %call124)
  %154 = bitcast %struct._GTypeInstance* %call125 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %154, i32 1)
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %156 = bitcast %struct._GtkWidget* %155 to %struct._GTypeInstance*
  %call126 = call i64 @gtk_label_get_type() #5
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %156, i64 %call126)
  %157 = bitcast %struct._GTypeInstance* %call127 to %struct._GtkLabel*
  call void @gtk_label_set_justify(%struct._GtkLabel* %157, i32 0)
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %159 = bitcast %struct._GtkWidget* %158 to %struct._GTypeInstance*
  %call128 = call i64 @gtk_box_get_type() #5
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call128)
  %160 = bitcast %struct._GTypeInstance* %call129 to %struct._GtkBox*
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %160, %struct._GtkWidget* %161, i32 0, i32 0, i32 0)
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %162)
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %163)
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %165 = bitcast %struct._GtkWidget* %164 to %struct._GTypeInstance*
  %call130 = call i64 @gimp_dialog_get_type() #5
  %call131 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %165, i64 %call130)
  %166 = bitcast %struct._GTypeInstance* %call131 to %struct._GimpDialog*
  %call132 = call i32 @gimp_dialog_run(%struct._GimpDialog* %166)
  switch i32 %call132, label %sw.default [
    i32 -5, label %sw.bb
    i32 -9, label %sw.bb.133
  ]

sw.bb:                                            ; preds = %for.end
  store i32 2, i32* %retval1, align 4
  br label %sw.epilog

sw.bb.133:                                        ; preds = %for.end
  store i32 1, i32* %retval1, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  store i32 0, i32* %retval1, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.133, %sw.bb
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %167)
  %168 = load i32, i32* %retval1, align 4
  store i32 %168, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.else.5, %if.else
  %169 = load i32, i32* %retval
  ret i32 %169
}

declare i32 @gimp_image_duplicate(i32) #1

declare i32 @gimp_image_get_active_layer(i32) #1

declare i32 @gimp_image_undo_disable(i32) #1

; Function Attrs: nounwind uwtable
define internal void @export_action_perform(%struct.ExportAction* %action, i32 %image_ID, i32* %drawable_ID) #0 {
entry:
  %action.addr = alloca %struct.ExportAction*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32*, align 8
  store %struct.ExportAction* %action, %struct.ExportAction** %action.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32* %drawable_ID, i32** %drawable_ID.addr, align 8
  %0 = load %struct.ExportAction*, %struct.ExportAction** %action.addr, align 8
  %call = call void (i32, i32*)* @export_action_get_func(%struct.ExportAction* %0)
  %1 = load i32, i32* %image_ID.addr, align 4
  %2 = load i32*, i32** %drawable_ID.addr, align 8
  call void %call(i32 %1, i32* %2)
  ret void
}

declare void @g_slist_free(%struct._GSList*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_export_dialog_new(i8* %format_name, i8* %role, i8* %help_id) #0 {
entry:
  %format_name.addr = alloca i8*, align 8
  %role.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %title = alloca i8*, align 8
  store i8* %format_name, i8** %format_name.addr, align 8
  store i8* %role, i8** %role.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %button, align 8
  %call = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0)) #4
  %0 = load i8*, i8** %format_name.addr, align 8
  %call1 = call noalias i8* (i8*, ...) @g_strconcat(i8* %call, i8* %0, i8* null)
  store i8* %call1, i8** %title, align 8
  %1 = load i8*, i8** %title, align 8
  %2 = load i8*, i8** %role.addr, align 8
  %3 = load i8*, i8** %help_id.addr, align 8
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %1, i8* %2, %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 -6, i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_dialog_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDialog*
  %call5 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #4
  %call6 = call %struct._GtkWidget* @gimp_dialog_add_button(%struct._GimpDialog* %6, i8* %call5, i32 -5)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %button, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_button_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkButton*
  %call9 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 4)
  call void @gtk_button_set_image(%struct._GtkButton* %9, %struct._GtkWidget* %call9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_dialog_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %12, i32 -5, i32 -6, i32 -1)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_window_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %15)
  %16 = load i8*, i8** %title, align 8
  call void @g_free(i8* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  ret %struct._GtkWidget* %17
}

declare noalias i8* @g_strconcat(i8*, ...) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare %struct._GtkWidget* @gimp_dialog_add_button(%struct._GimpDialog*, i8*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_button_set_image(%struct._GtkButton*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #3

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_dialog_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkDialog*
  %call2 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %2)
  ret %struct._GtkWidget* %call2
}

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare void @gtk_label_set_line_wrap(%struct._GtkLabel*, i32) #1

declare void @gtk_label_set_justify(%struct._GtkLabel*, i32) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @export_flatten(i32 %image_ID, i32* %drawable_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32*, align 8
  %flattened = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32* %drawable_ID, i32** %drawable_ID.addr, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i32 @gimp_image_flatten(i32 %0)
  store i32 %call, i32* %flattened, align 4
  %1 = load i32, i32* %flattened, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %flattened, align 4
  %3 = load i32*, i32** %drawable_ID.addr, align 8
  store i32 %2, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gimp_image_flatten(i32) #1

; Function Attrs: nounwind uwtable
define internal void @export_add_alpha(i32 %image_ID, i32* %drawable_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32*, align 8
  %nlayers = alloca i32, align 4
  %i = alloca i32, align 4
  %layers = alloca i32*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32* %drawable_ID, i32** %drawable_ID.addr, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i32* @gimp_image_get_layers(i32 %0, i32* %nlayers)
  store i32* %call, i32** %layers, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %nlayers, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %layers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %call1 = call i32 @gimp_drawable_has_alpha(i32 %5)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load i32*, i32** %layers, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  %call4 = call i32 @gimp_layer_add_alpha(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32*, i32** %layers, align 8
  %11 = bitcast i32* %10 to i8*
  call void @g_free(i8* %11)
  ret void
}

declare i32 @gimp_layer_add_alpha(i32) #1

; Function Attrs: nounwind uwtable
define internal void @export_merge(i32 %image_ID, i32* %drawable_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32*, align 8
  %nlayers = alloca i32, align 4
  %nvisible = alloca i32, align 4
  %i = alloca i32, align 4
  %layers = alloca i32*, align 8
  %merged = alloca i32, align 4
  %transp = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32* %drawable_ID, i32** %drawable_ID.addr, align 8
  store i32 0, i32* %nvisible, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i32* @gimp_image_get_layers(i32 %0, i32* %nlayers)
  store i32* %call, i32** %layers, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %nlayers, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %layers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %call1 = call i32 @gimp_item_get_visible(i32 %5)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %nvisible, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %nvisible, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc2 = add nsw i32 %7, 1
  store i32 %inc2, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %nvisible, align 4
  %cmp3 = icmp sle i32 %8, 1
  br i1 %cmp3, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %for.end
  %9 = load i32, i32* %image_ID.addr, align 4
  %10 = load i32, i32* %image_ID.addr, align 4
  %call5 = call i32 @gimp_image_width(i32 %10)
  %11 = load i32, i32* %image_ID.addr, align 4
  %call6 = call i32 @gimp_image_height(i32 %11)
  %12 = load i32*, i32** %drawable_ID.addr, align 8
  %13 = load i32, i32* %12, align 4
  %call7 = call i32 @gimp_drawable_type(i32 %13)
  %or = or i32 %call7, 1
  %call8 = call i32 @gimp_layer_new(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i32 %call5, i32 %call6, i32 %or, double 1.000000e+02, i32 0)
  store i32 %call8, i32* %transp, align 4
  %14 = load i32, i32* %image_ID.addr, align 4
  %15 = load i32, i32* %transp, align 4
  %call9 = call i32 @gimp_image_insert_layer(i32 %14, i32 %15, i32 -1, i32 1)
  %16 = load i32, i32* %image_ID.addr, align 4
  %call10 = call i32 @gimp_selection_none(i32 %16)
  %17 = load i32, i32* %transp, align 4
  %call11 = call i32 @gimp_edit_clear(i32 %17)
  %18 = load i32, i32* %nvisible, align 4
  %inc12 = add nsw i32 %18, 1
  store i32 %inc12, i32* %nvisible, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.4, %for.end
  %19 = load i32, i32* %nvisible, align 4
  %cmp14 = icmp sgt i32 %19, 1
  br i1 %cmp14, label %if.then.15, label %if.end.33

if.then.15:                                       ; preds = %if.end.13
  %20 = load i32*, i32** %layers, align 8
  %21 = bitcast i32* %20 to i8*
  call void @g_free(i8* %21)
  %22 = load i32, i32* %image_ID.addr, align 4
  %call16 = call i32 @gimp_image_merge_visible_layers(i32 %22, i32 1)
  store i32 %call16, i32* %merged, align 4
  %23 = load i32, i32* %merged, align 4
  %cmp17 = icmp ne i32 %23, -1
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.15
  %24 = load i32, i32* %merged, align 4
  %25 = load i32*, i32** %drawable_ID.addr, align 8
  store i32 %24, i32* %25, align 4
  br label %if.end.19

if.else:                                          ; preds = %if.then.15
  br label %return

if.end.19:                                        ; preds = %if.then.18
  %26 = load i32, i32* %image_ID.addr, align 4
  %call20 = call i32* @gimp_image_get_layers(i32 %26, i32* %nlayers)
  store i32* %call20, i32** %layers, align 8
  %27 = load i32, i32* %merged, align 4
  %call21 = call i32 @gimp_drawable_width(i32 %27)
  %28 = load i32, i32* %image_ID.addr, align 4
  %call22 = call i32 @gimp_image_width(i32 %28)
  %cmp23 = icmp ne i32 %call21, %call22
  br i1 %cmp23, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %29 = load i32, i32* %merged, align 4
  %call24 = call i32 @gimp_drawable_height(i32 %29)
  %30 = load i32, i32* %image_ID.addr, align 4
  %call25 = call i32 @gimp_image_height(i32 %30)
  %cmp26 = icmp ne i32 %call24, %call25
  br i1 %cmp26, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %lor.lhs.false, %if.end.19
  %31 = load i32, i32* %merged, align 4
  %call28 = call i32 @gimp_drawable_offsets(i32 %31, i32* %off_x, i32* %off_y)
  %32 = load i32, i32* %merged, align 4
  %33 = load i32, i32* %image_ID.addr, align 4
  %call29 = call i32 @gimp_image_width(i32 %33)
  %34 = load i32, i32* %image_ID.addr, align 4
  %call30 = call i32 @gimp_image_height(i32 %34)
  %35 = load i32, i32* %off_x, align 4
  %36 = load i32, i32* %off_y, align 4
  %call31 = call i32 @gimp_layer_resize(i32 %32, i32 %call29, i32 %call30, i32 %35, i32 %36)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.27, %lor.lhs.false
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.13
  store i32 0, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.45, %if.end.33
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %nlayers, align 4
  %cmp35 = icmp slt i32 %37, %38
  br i1 %cmp35, label %for.body.36, label %for.end.47

for.body.36:                                      ; preds = %for.cond.34
  %39 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %39 to i64
  %40 = load i32*, i32** %layers, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %40, i64 %idxprom37
  %41 = load i32, i32* %arrayidx38, align 4
  %42 = load i32*, i32** %drawable_ID.addr, align 8
  %43 = load i32, i32* %42, align 4
  %cmp39 = icmp ne i32 %41, %43
  br i1 %cmp39, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %for.body.36
  %44 = load i32, i32* %image_ID.addr, align 4
  %45 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %45 to i64
  %46 = load i32*, i32** %layers, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %46, i64 %idxprom41
  %47 = load i32, i32* %arrayidx42, align 4
  %call43 = call i32 @gimp_image_remove_layer(i32 %44, i32 %47)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %for.body.36
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44
  %48 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %48, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond.34

for.end.47:                                       ; preds = %for.cond.34
  %49 = load i32*, i32** %layers, align 8
  %50 = bitcast i32* %49 to i8*
  call void @g_free(i8* %50)
  br label %return

return:                                           ; preds = %for.end.47, %if.else
  ret void
}

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_drawable_type(i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare i32 @gimp_selection_none(i32) #1

declare i32 @gimp_edit_clear(i32) #1

declare i32 @gimp_image_merge_visible_layers(i32, i32) #1

declare i32 @gimp_layer_resize(i32, i32, i32, i32, i32) #1

declare i32 @gimp_image_remove_layer(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @export_apply_masks(i32 %image_ID, i32* %drawable_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32*, align 8
  %n_layers = alloca i32, align 4
  %layers = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32* %drawable_ID, i32** %drawable_ID.addr, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i32* @gimp_image_get_layers(i32 %0, i32* %n_layers)
  store i32* %call, i32** %layers, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n_layers, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %layers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %call1 = call i32 @gimp_layer_get_mask(i32 %5)
  %cmp2 = icmp ne i32 %call1, -1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i32*, i32** %layers, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4
  %call5 = call i32 @gimp_layer_remove_mask(i32 %8, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32*, i32** %layers, align 8
  %11 = bitcast i32* %10 to i8*
  call void @g_free(i8* %11)
  ret void
}

declare i32 @gimp_layer_remove_mask(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @export_convert_indexed(i32 %image_ID, i32* %drawable_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32*, align 8
  %nlayers = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32* %drawable_ID, i32** %drawable_ID.addr, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i32* @gimp_image_get_layers(i32 %0, i32* %nlayers)
  %1 = bitcast i32* %call to i8*
  call void @g_free(i8* %1)
  %2 = load i32, i32* %nlayers, align 4
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32*, i32** %drawable_ID.addr, align 8
  %4 = load i32, i32* %3, align 4
  %call1 = call i32 @gimp_drawable_has_alpha(i32 %4)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load i32, i32* %image_ID.addr, align 4
  %call2 = call i32 @gimp_image_convert_indexed(i32 %5, i32 0, i32 0, i32 255, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i32, i32* %image_ID.addr, align 4
  %call3 = call i32 @gimp_image_convert_indexed(i32 %6, i32 0, i32 0, i32 256, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @export_convert_grayscale(i32 %image_ID, i32* %drawable_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32* %drawable_ID, i32** %drawable_ID.addr, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i32 @gimp_image_convert_grayscale(i32 %0)
  ret void
}

declare i32 @gimp_image_convert_indexed(i32, i32, i32, i32, i32, i32, i8*) #1

declare i32 @gimp_image_convert_grayscale(i32) #1

; Function Attrs: nounwind uwtable
define internal void @export_convert_bitmap(i32 %image_ID, i32* %drawable_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32* %drawable_ID, i32** %drawable_ID.addr, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i32 @gimp_image_base_type(i32 %0)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %image_ID.addr, align 4
  %call1 = call i32 @gimp_image_convert_rgb(i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %image_ID.addr, align 4
  %call2 = call i32 @gimp_image_convert_indexed(i32 %2, i32 1, i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  ret void
}

declare i32 @gimp_image_convert_rgb(i32) #1

; Function Attrs: nounwind uwtable
define internal void @export_convert_rgb(i32 %image_ID, i32* %drawable_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32* %drawable_ID, i32** %drawable_ID.addr, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i32 @gimp_image_convert_rgb(i32 %0)
  ret void
}

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList*, i8*) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #3

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @export_toggle_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %choice = alloca i32*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %choice, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32*, i32** %choice, align 8
  store i32 0, i32* %5, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32*, i32** %choice, align 8
  store i32 1, i32* %6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

; Function Attrs: nounwind uwtable
define internal void (i32, i32*)* @export_action_get_func(%struct.ExportAction* %action) #0 {
entry:
  %retval = alloca void (i32, i32*)*, align 8
  %action.addr = alloca %struct.ExportAction*, align 8
  store %struct.ExportAction* %action, %struct.ExportAction** %action.addr, align 8
  %0 = load %struct.ExportAction*, %struct.ExportAction** %action.addr, align 8
  %choice = getelementptr inbounds %struct.ExportAction, %struct.ExportAction* %0, i32 0, i32 4
  %1 = load i32, i32* %choice, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ExportAction*, %struct.ExportAction** %action.addr, align 8
  %default_action = getelementptr inbounds %struct.ExportAction, %struct.ExportAction* %2, i32 0, i32 0
  %3 = load void (i32, i32*)*, void (i32, i32*)** %default_action, align 8
  %tobool = icmp ne void (i32, i32*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.ExportAction*, %struct.ExportAction** %action.addr, align 8
  %default_action1 = getelementptr inbounds %struct.ExportAction, %struct.ExportAction* %4, i32 0, i32 0
  %5 = load void (i32, i32*)*, void (i32, i32*)** %default_action1, align 8
  store void (i32, i32*)* %5, void (i32, i32*)** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load %struct.ExportAction*, %struct.ExportAction** %action.addr, align 8
  %choice2 = getelementptr inbounds %struct.ExportAction, %struct.ExportAction* %6, i32 0, i32 4
  %7 = load i32, i32* %choice2, align 4
  %cmp3 = icmp eq i32 %7, 1
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.8

land.lhs.true.4:                                  ; preds = %if.end
  %8 = load %struct.ExportAction*, %struct.ExportAction** %action.addr, align 8
  %alt_action = getelementptr inbounds %struct.ExportAction, %struct.ExportAction* %8, i32 0, i32 1
  %9 = load void (i32, i32*)*, void (i32, i32*)** %alt_action, align 8
  %tobool5 = icmp ne void (i32, i32*)* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %land.lhs.true.4
  %10 = load %struct.ExportAction*, %struct.ExportAction** %action.addr, align 8
  %alt_action7 = getelementptr inbounds %struct.ExportAction, %struct.ExportAction* %10, i32 0, i32 1
  %11 = load void (i32, i32*)*, void (i32, i32*)** %alt_action7, align 8
  store void (i32, i32*)* %11, void (i32, i32*)** %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true.4, %if.end
  store void (i32, i32*)* @export_void, void (i32, i32*)** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then
  %12 = load void (i32, i32*)*, void (i32, i32*)** %retval
  ret void (i32, i32*)* %12
}

; Function Attrs: nounwind uwtable
define internal void @export_void(i32 %image_ID, i32* %drawable_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32* %drawable_ID, i32** %drawable_ID.addr, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
