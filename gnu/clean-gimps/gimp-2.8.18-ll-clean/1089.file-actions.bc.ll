; ModuleID = './app/actions/file-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i8* }
%struct._GimpEnumActionEntry = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i8* }
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionGroupPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
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
%struct._GimpContext = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpAction = type { %struct._GtkAction, %struct._GimpContext*, %struct._GimpRGB*, %struct._GimpViewable*, i32, i32 }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDrawable = type opaque

@.str = private unnamed_addr constant [12 x i8] c"file-action\00", align 1
@file_actions = internal constant [10 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @file_open_cmd_callback to void ()*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @file_open_as_layers_cmd_callback to void ()*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @file_open_location_cmd_callback to void ()*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @file_create_template_cmd_callback to void ()*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @file_revert_cmd_callback to void ()*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @file_close_all_cmd_callback to void ()*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.59, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @file_quit_cmd_callback to void ()*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i32 0, i32 0) }], align 16
@file_save_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.69, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.72, i32 0, i32 0), i32 2, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.74, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.76, i32 0, i32 0), i32 3, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.78, i32 0, i32 0), i32 5, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.79, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.81, i32 0, i32 0), i32 6, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.82, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.85, i32 0, i32 0), i32 4, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.86, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [22 x i8] c"file-open-recent-%02d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"<primary>%d\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"<primary>0\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"reorder\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"file-save\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"file-save-as\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"file-save-a-copy\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"file-revert\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"file-export-to\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"file-overwrite\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"file-export\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"file-create-template\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Export to %s\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Over_write %s\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Export\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"file-close-all\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"file-menu\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"_File\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"file-create-menu\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Crea_te\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"file-open-recent-menu\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"Open _Recent\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"file-open\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"_Open...\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"Open an image file\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"gimp-file-open\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"file-open-as-layers\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"gimp-layer\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"Op_en as Layers...\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"<primary><alt>O\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"Open an image file as layers\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"gimp-file-open-as-layer\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"file-open-location\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"gimp-web\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"Open _Location...\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"Open an image file from a specified location\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"gimp-file-open-location\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"Create Template...\00", align 1
@.str.44 = private unnamed_addr constant [38 x i8] c"Create a new template from this image\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"gimp-file-save-as-template\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"gtk-revert-to-saved\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"Re_vert\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"Reload the image file from disk\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"gimp-file-revert\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"Close all\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"<primary><shift>W\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"Close all opened images\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"gimp-file-close-all\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"file-quit\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"gtk-quit\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"_Quit\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"<primary>Q\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"Quit the GNU Image Manipulation Program\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"gimp-file-quit\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"_Save\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"<primary>S\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"Save this image\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"gimp-file-save\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"gtk-save-as\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"Save _As...\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"<primary><shift>S\00", align 1
@.str.69 = private unnamed_addr constant [38 x i8] c"Save this image with a different name\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"gimp-file-save-as\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"Save a Cop_y...\00", align 1
@.str.72 = private unnamed_addr constant [104 x i8] c"Save a copy of this image, without affecting the source file (if any) or the current state of the image\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"gimp-file-save-a-copy\00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"file-save-and-close\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"Save and Close...\00", align 1
@.str.76 = private unnamed_addr constant [37 x i8] c"Save this image and close its window\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"<primary>E\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"Export the image again\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"gimp-file-export-to\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"Over_write\00", align 1
@.str.81 = private unnamed_addr constant [64 x i8] c"Export the image back to the imported file in the import format\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"gimp-file-overwrite\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"Export As...\00", align 1
@.str.84 = private unnamed_addr constant [18 x i8] c"<primary><shift>E\00", align 1
@.str.85 = private unnamed_addr constant [61 x i8] c"Export the image to various file formats such as PNG or JPEG\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"gimp-file-export\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"tooltip\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"viewable\00", align 1

; Function Attrs: nounwind uwtable
define void @file_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %entries = alloca %struct._GimpEnumActionEntry*, align 8
  %n_entries = alloca i32, align 4
  %i = alloca i32, align 4
  %action = alloca %struct._GtkAction*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([10 x %struct._GimpActionEntry], [10 x %struct._GimpActionEntry]* @file_actions, i32 0, i32 0), i32 10)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @file_save_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @file_save_cmd_callback to void ()*))
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 1
  %4 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %5 = bitcast %struct._GimpCoreConfig* %4 to %struct._GTypeInstance*
  %call = call i64 @gimp_gui_config_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGuiConfig*
  %last_opened_size = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %6, i32 0, i32 13
  %7 = load i32, i32* %last_opened_size, align 4
  store i32 %7, i32* %n_entries, align 4
  %8 = load i32, i32* %n_entries, align 4
  %conv = sext i32 %8 to i64
  %call2 = call noalias i8* @g_malloc0_n(i64 %conv, i64 56)
  %9 = bitcast i8* %call2 to %struct._GimpEnumActionEntry*
  store %struct._GimpEnumActionEntry* %9, %struct._GimpEnumActionEntry** %entries, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %n_entries, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %add = add nsw i32 %12, 1
  %call4 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 %add)
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries, align 8
  %arrayidx = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %14, i64 %idxprom
  %name = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx, i32 0, i32 0
  store i8* %call4, i8** %name, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %15 to i64
  %16 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %16, i64 %idxprom5
  %stock_id = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx6, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8** %stock_id, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %17 to i64
  %18 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries, align 8
  %arrayidx8 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %18, i64 %idxprom7
  %name9 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx8, i32 0, i32 0
  %19 = load i8*, i8** %name9, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %20 to i64
  %21 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %21, i64 %idxprom10
  %label = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx11, i32 0, i32 2
  store i8* %19, i8** %label, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %22 to i64
  %23 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %23, i64 %idxprom12
  %tooltip = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx13, i32 0, i32 4
  store i8* null, i8** %tooltip, align 8
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %25 to i64
  %26 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %26, i64 %idxprom14
  %value = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx15, i32 0, i32 5
  store i32 %24, i32* %value, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %27 to i64
  %28 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %28, i64 %idxprom16
  %value_variable = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx17, i32 0, i32 6
  store i32 0, i32* %value_variable, align 4
  %29 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %29, 9
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %add20 = add nsw i32 %30, 1
  %call21 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 %add20)
  %31 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %31 to i64
  %32 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %32, i64 %idxprom22
  %accelerator = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx23, i32 0, i32 3
  store i8* %call21, i8** %accelerator, align 8
  br label %if.end.34

if.else:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %cmp24 = icmp eq i32 %33, 9
  br i1 %cmp24, label %if.then.26, label %if.else.30

if.then.26:                                       ; preds = %if.else
  %34 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %34 to i64
  %35 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %35, i64 %idxprom27
  %accelerator29 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx28, i32 0, i32 3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8** %accelerator29, align 8
  br label %if.end

if.else.30:                                       ; preds = %if.else
  %36 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %36 to i64
  %37 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries, align 8
  %arrayidx32 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %37, i64 %idxprom31
  %accelerator33 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx32, i32 0, i32 3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8** %accelerator33, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.30, %if.then.26
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %40 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries, align 8
  %41 = load i32, i32* %n_entries, align 4
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %39, i8* null, %struct._GimpEnumActionEntry* %40, i32 %41, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @file_open_recent_cmd_callback to void ()*))
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.63, %for.end
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %n_entries, align 4
  %cmp36 = icmp slt i32 %42, %43
  br i1 %cmp36, label %for.body.38, label %for.end.65

for.body.38:                                      ; preds = %for.cond.35
  %44 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %45 to i64
  %46 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %46, i64 %idxprom39
  %name41 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx40, i32 0, i32 0
  %47 = load i8*, i8** %name41, align 8
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %44, i8* %47, i32 0)
  %48 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %49 to i64
  %50 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries, align 8
  %arrayidx43 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %50, i64 %idxprom42
  %name44 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx43, i32 0, i32 0
  %51 = load i8*, i8** %name44, align 8
  call void @gimp_action_group_set_action_always_show_image(%struct._GimpActionGroup* %48, i8* %51, i32 1)
  %52 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %53 = bitcast %struct._GimpActionGroup* %52 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_action_group_get_type() #4
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call45)
  %54 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkActionGroup*
  %55 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %55 to i64
  %56 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries, align 8
  %arrayidx48 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %56, i64 %idxprom47
  %name49 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx48, i32 0, i32 0
  %57 = load i8*, i8** %name49, align 8
  %call50 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %54, i8* %57)
  store %struct._GtkAction* %call50, %struct._GtkAction** %action, align 8
  %58 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %59 = bitcast %struct._GtkAction* %58 to i8*
  %60 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp51 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %60, i32 0, i32 1
  %61 = load %struct._Gimp*, %struct._Gimp** %gimp51, align 8
  %call52 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %61)
  call void (i8*, i8*, ...) @g_object_set(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._GimpContext* %call52, i8* null)
  %62 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %62 to i64
  %63 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries, align 8
  %arrayidx54 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %63, i64 %idxprom53
  %name55 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx54, i32 0, i32 0
  %64 = load i8*, i8** %name55, align 8
  call void @g_free(i8* %64)
  %65 = load i32, i32* %i, align 4
  %cmp56 = icmp slt i32 %65, 9
  br i1 %cmp56, label %if.then.58, label %if.end.62

if.then.58:                                       ; preds = %for.body.38
  %66 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %66 to i64
  %67 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries, align 8
  %arrayidx60 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %67, i64 %idxprom59
  %accelerator61 = getelementptr inbounds %struct._GimpEnumActionEntry, %struct._GimpEnumActionEntry* %arrayidx60, i32 0, i32 3
  %68 = load i8*, i8** %accelerator61, align 8
  call void @g_free(i8* %68)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.58, %for.body.38
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %69 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %69, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.35

for.end.65:                                       ; preds = %for.cond.35
  %70 = load %struct._GimpEnumActionEntry*, %struct._GimpEnumActionEntry** %entries, align 8
  %71 = bitcast %struct._GimpEnumActionEntry* %70 to i8*
  call void @g_free(i8* %71)
  %72 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp66 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %72, i32 0, i32 1
  %73 = load %struct._Gimp*, %struct._Gimp** %gimp66, align 8
  %documents = getelementptr inbounds %struct._Gimp, %struct._Gimp* %73, i32 0, i32 47
  %74 = load %struct._GimpContainer*, %struct._GimpContainer** %documents, align 8
  %75 = bitcast %struct._GimpContainer* %74 to i8*
  %76 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %77 = bitcast %struct._GimpActionGroup* %76 to i8*
  %call67 = call i64 @g_signal_connect_object(i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpImagefile*, %struct._GimpActionGroup*)* @file_actions_last_opened_update to void ()*), i8* %77, i32 0)
  %78 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp68 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %78, i32 0, i32 1
  %79 = load %struct._Gimp*, %struct._Gimp** %gimp68, align 8
  %documents69 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %79, i32 0, i32 47
  %80 = load %struct._GimpContainer*, %struct._GimpContainer** %documents69, align 8
  %81 = bitcast %struct._GimpContainer* %80 to i8*
  %82 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %83 = bitcast %struct._GimpActionGroup* %82 to i8*
  %call70 = call i64 @g_signal_connect_object(i8* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpImagefile*, %struct._GimpActionGroup*)* @file_actions_last_opened_update to void ()*), i8* %83, i32 0)
  %84 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp71 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %84, i32 0, i32 1
  %85 = load %struct._Gimp*, %struct._Gimp** %gimp71, align 8
  %documents72 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %85, i32 0, i32 47
  %86 = load %struct._GimpContainer*, %struct._GimpContainer** %documents72, align 8
  %87 = bitcast %struct._GimpContainer* %86 to i8*
  %88 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %89 = bitcast %struct._GimpActionGroup* %88 to i8*
  %call73 = call i64 @g_signal_connect_object(i8* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpImagefile*, i32, %struct._GimpActionGroup*)* @file_actions_last_opened_reorder to void ()*), i8* %89, i32 0)
  %90 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp74 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %90, i32 0, i32 1
  %91 = load %struct._Gimp*, %struct._Gimp** %gimp74, align 8
  %documents75 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %91, i32 0, i32 47
  %92 = load %struct._GimpContainer*, %struct._GimpContainer** %documents75, align 8
  %93 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @file_actions_last_opened_update(%struct._GimpContainer* %92, %struct._GimpImagefile* null, %struct._GimpActionGroup* %93)
  %94 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp76 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %94, i32 0, i32 1
  %95 = load %struct._Gimp*, %struct._Gimp** %gimp76, align 8
  %images = getelementptr inbounds %struct._Gimp, %struct._Gimp* %95, i32 0, i32 26
  %96 = load %struct._GimpContainer*, %struct._GimpContainer** %images, align 8
  %97 = bitcast %struct._GimpContainer* %96 to i8*
  %98 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %99 = bitcast %struct._GimpActionGroup* %98 to i8*
  %call77 = call i64 @g_signal_connect_object(i8* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpObject*, %struct._GimpActionGroup*)* @file_actions_close_all_update to void ()*), i8* %99, i32 0)
  %100 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp78 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %100, i32 0, i32 1
  %101 = load %struct._Gimp*, %struct._Gimp** %gimp78, align 8
  %images79 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %101, i32 0, i32 26
  %102 = load %struct._GimpContainer*, %struct._GimpContainer** %images79, align 8
  %103 = bitcast %struct._GimpContainer* %102 to i8*
  %104 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %105 = bitcast %struct._GimpActionGroup* %104 to i8*
  %call80 = call i64 @g_signal_connect_object(i8* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpObject*, %struct._GimpActionGroup*)* @file_actions_close_all_update to void ()*), i8* %105, i32 0)
  %106 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp81 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %106, i32 0, i32 1
  %107 = load %struct._Gimp*, %struct._Gimp** %gimp81, align 8
  %displays = getelementptr inbounds %struct._Gimp, %struct._Gimp* %107, i32 0, i32 31
  %108 = load %struct._GimpContainer*, %struct._GimpContainer** %displays, align 8
  %109 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @file_actions_close_all_update(%struct._GimpContainer* %108, %struct._GimpObject* null, %struct._GimpActionGroup* %109)
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup*, i8*, %struct._GimpEnumActionEntry*, i32, void ()*) #1

declare void @file_save_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #2

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @file_open_recent_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @gimp_action_group_set_action_visible(%struct._GimpActionGroup*, i8*, i32) #1

declare void @gimp_action_group_set_action_always_show_image(%struct._GimpActionGroup*, i8*, i32) #1

declare %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_action_group_get_type() #2

declare void @g_object_set(i8*, i8*, ...) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare void @g_free(i8*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @file_actions_last_opened_update(%struct._GimpContainer* %container, %struct._GimpImagefile* %unused, %struct._GimpActionGroup* %group) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %unused.addr = alloca %struct._GimpImagefile*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %num_documents = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %action = alloca %struct._GtkAction*, align 8
  %name = alloca i8*, align 8
  %imagefile = alloca %struct._GimpImagefile*, align 8
  %uri = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %basename = alloca i8*, align 8
  %escaped = alloca i8*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpImagefile* %unused, %struct._GimpImagefile** %unused.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 1
  %2 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %3 = bitcast %struct._GimpCoreConfig* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_gui_config_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGuiConfig*
  %last_opened_size = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %4, i32 0, i32 13
  %5 = load i32, i32* %last_opened_size, align 4
  store i32 %5, i32* %n, align 4
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call2 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %6)
  store i32 %call2, i32* %num_documents, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, 1
  %call3 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 %add)
  store i8* %call3, i8** %name, align 8
  %10 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %11 = bitcast %struct._GimpActionGroup* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_action_group_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkActionGroup*
  %13 = load i8*, i8** %name, align 8
  %call6 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %12, i8* %13)
  store %struct._GtkAction* %call6, %struct._GtkAction** %action, align 8
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %num_documents, align 4
  %cmp7 = icmp slt i32 %14, %15
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %17 = load i32, i32* %i, align 4
  %call8 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %16, i32 %17)
  %18 = bitcast %struct._GimpObject* %call8 to %struct._GimpImagefile*
  store %struct._GimpImagefile* %18, %struct._GimpImagefile** %imagefile, align 8
  %19 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %20 = bitcast %struct._GtkAction* %19 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_action_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call9)
  %21 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpAction*
  %viewable = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %21, i32 0, i32 3
  %22 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %23 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %24 = bitcast %struct._GimpImagefile* %23 to %struct._GimpViewable*
  %cmp11 = icmp ne %struct._GimpViewable* %22, %24
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %25 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %26 = bitcast %struct._GimpImagefile* %25 to i8*
  %call13 = call i8* @gimp_object_get_name(i8* %26)
  store i8* %call13, i8** %uri, align 8
  %27 = load i8*, i8** %uri, align 8
  %call14 = call i8* @file_utils_uri_display_name(i8* %27)
  store i8* %call14, i8** %filename, align 8
  %28 = load i8*, i8** %uri, align 8
  %call15 = call i8* @file_utils_uri_display_basename(i8* %28)
  store i8* %call15, i8** %basename, align 8
  %29 = load i8*, i8** %basename, align 8
  %call16 = call noalias i8* @gimp_escape_uline(i8* %29)
  store i8* %call16, i8** %escaped, align 8
  %30 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %30)
  %31 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %32 = bitcast %struct._GtkAction* %31 to i8*
  %33 = load i8*, i8** %escaped, align 8
  %34 = load i8*, i8** %filename, align 8
  %35 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i32 0, i32 0), i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), %struct._GimpImagefile* %35, i8* null)
  %36 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %36)
  %37 = load i8*, i8** %escaped, align 8
  call void @g_free(i8* %37)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  br label %if.end.17

if.else:                                          ; preds = %for.body
  %38 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %39 = bitcast %struct._GtkAction* %38 to i8*
  %40 = load i8*, i8** %name, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i8* null, i8* null)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.end
  %41 = load i8*, i8** %name, align 8
  call void @g_free(i8* %41)
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @file_actions_last_opened_reorder(%struct._GimpContainer* %container, %struct._GimpImagefile* %unused1, i32 %unused2, %struct._GimpActionGroup* %group) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %unused1.addr = alloca %struct._GimpImagefile*, align 8
  %unused2.addr = alloca i32, align 4
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpImagefile* %unused1, %struct._GimpImagefile** %unused1.addr, align 8
  store i32 %unused2, i32* %unused2.addr, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = load %struct._GimpImagefile*, %struct._GimpImagefile** %unused1.addr, align 8
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @file_actions_last_opened_update(%struct._GimpContainer* %0, %struct._GimpImagefile* %1, %struct._GimpActionGroup* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @file_actions_close_all_update(%struct._GimpContainer* %images, %struct._GimpObject* %unused, %struct._GimpActionGroup* %group) #0 {
entry:
  %images.addr = alloca %struct._GimpContainer*, align 8
  %unused.addr = alloca %struct._GimpObject*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %n_displays = alloca i32, align 4
  %sensitive = alloca i32, align 4
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpContainer* %images, %struct._GimpContainer** %images.addr, align 8
  store %struct._GimpObject* %unused, %struct._GimpObject** %unused.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %displays = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 31
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %displays, align 8
  store %struct._GimpContainer* %2, %struct._GimpContainer** %container, align 8
  %3 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %3)
  store i32 %call, i32* %n_displays, align 4
  %4 = load i32, i32* %n_displays, align 4
  %cmp = icmp sgt i32 %4, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %sensitive, align 4
  %5 = load i32, i32* %n_displays, align 4
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call3 = call %struct._GimpObject* @gimp_container_get_first_child(%struct._GimpContainer* %6)
  %7 = bitcast %struct._GimpObject* %call3 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_display_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %8, %struct._GimpDisplay** %display, align 8
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call6 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %9)
  %tobool = icmp ne %struct._GimpImage* %call6, null
  br i1 %tobool, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  store i32 0, i32* %sensitive, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %10 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %11 = load i32, i32* %sensitive, align 4
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i32 %11)
  ret void
}

; Function Attrs: nounwind uwtable
define void @file_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %source = alloca i8*, align 8
  %export = alloca i8*, align 8
  %show_overwrite = alloca i32, align 4
  %label = alloca i8*, align 8
  %label40 = alloca i8*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._Gimp* @action_data_get_gimp(i8* %0)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %1 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GimpImage* @action_data_get_image(i8* %1)
  store %struct._GimpImage* %call1, %struct._GimpImage** %image, align 8
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  store i8* null, i8** %source, align 8
  store i8* null, i8** %export, align 8
  store i32 0, i32* %show_overwrite, align 4
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %3)
  store %struct._GimpDrawable* %call2, %struct._GimpDrawable** %drawable, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call i8* @gimp_image_get_imported_uri(%struct._GimpImage* %4)
  store i8* %call3, i8** %source, align 8
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call i8* @gimp_image_get_exported_uri(%struct._GimpImage* %5)
  store i8* %call4, i8** %export, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %source, align 8
  %tobool5 = icmp ne i8* %6, null
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 25
  %8 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %9 = load i8*, i8** %source, align 8
  %call6 = call i32 @gimp_plug_in_manager_uri_has_exporter(%struct._GimpPlugInManager* %8, i8* %9)
  %tobool7 = icmp ne i32 %call6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %10 = phi i1 [ false, %if.end ], [ %tobool7, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  store i32 %land.ext, i32* %show_overwrite, align 4
  %11 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp = icmp ne %struct._GimpDrawable* %12, null
  %conv = zext i1 %cmp to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 %conv)
  %13 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp8 = icmp ne %struct._GimpDrawable* %14, null
  %conv9 = zext i1 %cmp8 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 %conv9)
  %15 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp10 = icmp ne %struct._GimpDrawable* %16, null
  %conv11 = zext i1 %cmp10 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i32 %conv11)
  %17 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool12 = icmp ne %struct._GimpImage* %18, null
  br i1 %tobool12, label %land.rhs.13, label %land.end.17

land.rhs.13:                                      ; preds = %land.end
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call14 = call i8* @gimp_image_get_uri(%struct._GimpImage* %19)
  %tobool15 = icmp ne i8* %call14, null
  br i1 %tobool15, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.13
  %20 = load i8*, i8** %source, align 8
  %tobool16 = icmp ne i8* %20, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.13
  %21 = phi i1 [ true, %land.rhs.13 ], [ %tobool16, %lor.rhs ]
  br label %land.end.17

land.end.17:                                      ; preds = %lor.end, %land.end
  %22 = phi i1 [ false, %land.end ], [ %21, %lor.end ]
  %land.ext18 = zext i1 %22 to i32
  %cmp19 = icmp ne i32 %land.ext18, 0
  %conv20 = zext i1 %cmp19 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 %conv20)
  %23 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp21 = icmp ne %struct._GimpDrawable* %24, null
  %conv22 = zext i1 %cmp21 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 %conv22)
  %25 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %26 = load i32, i32* %show_overwrite, align 4
  %tobool23 = icmp ne i32 %26, 0
  %lnot = xor i1 %tobool23, true
  %lnot.ext = zext i1 %lnot to i32
  %cmp24 = icmp ne i32 %lnot.ext, 0
  %conv25 = zext i1 %cmp24 to i32
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 %conv25)
  %27 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %28 = load i32, i32* %show_overwrite, align 4
  %cmp26 = icmp ne i32 %28, 0
  %conv27 = zext i1 %cmp26 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 %conv27)
  %29 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %30 = load i32, i32* %show_overwrite, align 4
  %cmp28 = icmp ne i32 %30, 0
  %conv29 = zext i1 %cmp28 to i32
  call void @gimp_action_group_set_action_visible(%struct._GimpActionGroup* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 %conv29)
  %31 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp30 = icmp ne %struct._GimpDrawable* %32, null
  %conv31 = zext i1 %cmp30 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 %conv31)
  %33 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp32 = icmp ne %struct._GimpImage* %34, null
  %conv33 = zext i1 %cmp32 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), i32 %conv33)
  %35 = load i8*, i8** %export, align 8
  %tobool34 = icmp ne i8* %35, null
  br i1 %tobool34, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %land.end.17
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)) #5
  %36 = load i8*, i8** %export, align 8
  %call37 = call i8* @file_actions_create_label(i8* %call36, i8* %36)
  store i8* %call37, i8** %label, align 8
  %37 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %38 = load i8*, i8** %label, align 8
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* %38)
  %39 = load i8*, i8** %label, align 8
  call void @g_free(i8* %39)
  br label %if.end.46

if.else:                                          ; preds = %land.end.17
  %40 = load i32, i32* %show_overwrite, align 4
  %tobool38 = icmp ne i32 %40, 0
  br i1 %tobool38, label %if.then.39, label %if.else.43

if.then.39:                                       ; preds = %if.else
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0)) #5
  %41 = load i8*, i8** %source, align 8
  %call42 = call i8* @file_actions_create_label(i8* %call41, i8* %41)
  store i8* %call42, i8** %label40, align 8
  %42 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %43 = load i8*, i8** %label40, align 8
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* %43)
  %44 = load i8*, i8** %label40, align 8
  call void @g_free(i8* %44)
  br label %if.end.45

if.else.43:                                       ; preds = %if.else
  %45 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0)) #5
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* %call44)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.then.39
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.35
  %46 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp47 = icmp ne %struct._GimpImage* %47, null
  %conv48 = zext i1 %cmp47 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i32 %conv48)
  ret void
}

declare %struct._Gimp* @action_data_get_gimp(i8*) #1

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare i8* @gimp_image_get_imported_uri(%struct._GimpImage*) #1

declare i8* @gimp_image_get_exported_uri(%struct._GimpImage*) #1

declare i32 @gimp_plug_in_manager_uri_has_exporter(%struct._GimpPlugInManager*, i8*) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare i8* @gimp_image_get_uri(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define internal i8* @file_actions_create_label(i8* %format, i8* %uri) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %uri.addr = alloca i8*, align 8
  %basename = alloca i8*, align 8
  %escaped_basename = alloca i8*, align 8
  %label = alloca i8*, align 8
  store i8* %format, i8** %format.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  %0 = load i8*, i8** %uri.addr, align 8
  %call = call i8* @file_utils_uri_display_basename(i8* %0)
  store i8* %call, i8** %basename, align 8
  %1 = load i8*, i8** %basename, align 8
  %call1 = call noalias i8* @gimp_escape_uline(i8* %1)
  store i8* %call1, i8** %escaped_basename, align 8
  %2 = load i8*, i8** %format.addr, align 8
  %3 = load i8*, i8** %escaped_basename, align 8
  %call2 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %2, i8* %3)
  store i8* %call2, i8** %label, align 8
  %4 = load i8*, i8** %escaped_basename, align 8
  call void @g_free(i8* %4)
  %5 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %5)
  %6 = load i8*, i8** %label, align 8
  ret i8* %6
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @gimp_action_group_set_action_label(%struct._GimpActionGroup*, i8*, i8*) #1

declare void @file_open_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @file_open_as_layers_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @file_open_location_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @file_create_template_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @file_revert_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @file_close_all_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @file_quit_cmd_callback(%struct._GtkAction*, i8*) #1

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #1

declare %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_action_get_type() #2

declare i8* @gimp_object_get_name(i8*) #1

declare i8* @file_utils_uri_display_name(i8*) #1

declare i8* @file_utils_uri_display_basename(i8*) #1

declare noalias i8* @gimp_escape_uline(i8*) #1

declare %struct._GimpObject* @gimp_container_get_first_child(%struct._GimpContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #2

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
