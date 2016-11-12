; ModuleID = './app/dialogs/file-save-dialog.bc'
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
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
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
%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._GimpPlugIn = type opaque
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpFileDialogState = type opaque
%struct._GimpFileDialog = type { %struct._GtkFileChooserDialog, %struct._GimpPlugInProcedure*, %struct._GimpImage*, i32, i32, i32, i32, %struct._GimpObject*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32 }
%struct._GtkFileChooserDialog = type { %struct._GtkDialog, %struct._GtkFileChooserDialogPrivate* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkFileChooserDialogPrivate = type opaque
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque
%struct._GtkFileChooser = type opaque
%struct._GimpMessageDialog = type { %struct._GimpDialog, %struct._GimpMessageBox* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque

@.str = private unnamed_addr constant [11 x i8] c"Save Image\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"gimp-file-save\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"gimp-file-save-dialog-state\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Export Image\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"gimp-file-export\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"_Export\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"gimp-file-export-dialog-state\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.file_save_dialog_new = private unnamed_addr constant [21 x i8] c"file_save_dialog_new\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"confirm-overwrite\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"file-quit\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Saving canceled\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Saving '%s' failed:\0A\0A%s\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"gimp-file-save-last-uri\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"gimp-file-export-last-uri\00", align 1
@gimp_log_flags = external global i32, align 4
@__func__.file_save_dialog_check_uri = private unnamed_addr constant [27 x i8] c"file_save_dialog_check_uri\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"URI = %s\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"basename = %s\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"selected save_proc: %s\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"URI save_proc: %s\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"basename save_proc: %s\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"basename has no valid extension\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"basename has no '.', trying to add extension\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"xcf\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"appending .%s to basename\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.29 = private unnamed_addr constant [55 x i8] c"set basename to %s, rerunning response and bailing out\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"save_proc has no extensions, continuing without\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"unable to figure save_proc, bailing out\00", align 1
@.str.32 = private unnamed_addr constant [78 x i8] c"basename has '.', but save_proc has no extensions, accepting random extension\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"no save_proc was selected from the list\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"basename has no useful extension, bailing out\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"use URI's proc '%s' so indirect saving works\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"<unnamed>\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"save_proc '%s' was selected from the list\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"however the basename's proc is '%s'\00", align 1
@.str.39 = private unnamed_addr constant [47 x i8] c"that's impossible for remote URIs, bailing out\00", align 1
@.str.40 = private unnamed_addr constant [183 x i8] c"Saving remote files needs to determine the file format from the file extension. Please enter a file extension that matches the selected file format or enter no file extension at all.\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"ask the user if she really wants that filename\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"%s: EEEEEEK\00", align 1
@.str.43 = private unnamed_addr constant [48 x i8] c"The given filename cannot be used for exporting\00", align 1
@.str.44 = private unnamed_addr constant [138 x i8] c"You can use this dialog to export to various file formats. If you want to save the image to the GIMP XCF format, use File\E2\86\92Save instead.\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"Take me to the Save dialog\00", align 1
@.str.46 = private unnamed_addr constant [45 x i8] c"The given filename cannot be used for saving\00", align 1
@.str.47 = private unnamed_addr constant [107 x i8] c"You can use this dialog to save to the GIMP XCF format. Use File\E2\86\92Export to export to other file formats.\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"Take me to the Export dialog\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"Extension Mismatch\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"gimp-warning\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"<a href=\22other-dialog\22>%s</a>\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"activate-link\00", align 1
@.str.55 = private unnamed_addr constant [146 x i8] c"The given filename does not have any known file extension. Please enter a known file extension or select a file format from the file format list.\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"gimp-question\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.58 = private unnamed_addr constant [62 x i8] c"The given file extension does not match the chosen file type.\00", align 1
@.str.59 = private unnamed_addr constant [54 x i8] c"Do you want to save the image using this name anyway?\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @file_save_dialog_new(%struct._Gimp* %gimp, i32 %export) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %export.addr = alloca i32, align 4
  %dialog = alloca %struct._GtkWidget*, align 8
  %state = alloca %struct._GimpFileDialogState*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %export, i32* %export.addr, align 4
  %0 = load i32, i32* %export.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* @gimp_file_dialog_new(%struct._Gimp* %1, i32 1, i8* %call, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %3 = bitcast %struct._Gimp* %2 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 80)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  %5 = bitcast i8* %call3 to %struct._GimpFileDialogState*
  store %struct._GimpFileDialogState* %5, %struct._GimpFileDialogState** %state, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)) #5
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)) #5
  %call6 = call %struct._GtkWidget* @gimp_file_dialog_new(%struct._Gimp* %6, i32 2, i8* %call4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* %call5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %dialog, align 8
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = bitcast %struct._Gimp* %7 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %call8 = call i8* @g_object_get_data(%struct._GObject* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0))
  %10 = bitcast i8* %call8 to %struct._GimpFileDialogState*
  store %struct._GimpFileDialogState* %10, %struct._GimpFileDialogState** %state, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %12 = bitcast %struct._Gimp* %11 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %12, %struct._GTypeInstance** %__inst, align 8
  %call9 = call i64 @gimp_get_type() #6
  store i64 %call9, i64* %__t, align 8
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool10 = icmp ne %struct._GTypeInstance* %13, null
  br i1 %tobool10, label %if.else.12, label %if.then.11

if.then.11:                                       ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.19

if.else.12:                                       ; preds = %do.body
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool13 = icmp ne %struct._GTypeClass* %15, null
  br i1 %tobool13, label %land.lhs.true, label %if.else.16

land.lhs.true:                                    ; preds = %if.else.12
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %17, i32 0, i32 0
  %18 = load i64, i64* %g_type, align 8
  %19 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %18, %19
  br i1 %cmp, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.18

if.else.16:                                       ; preds = %land.lhs.true, %if.else.12
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %21 = load i64, i64* %__t, align 8
  %call17 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %20, i64 %21) #7
  store i32 %call17, i32* %__r, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.11
  %22 = load i32, i32* %__r, align 4
  store i32 %22, i32* %tmp
  %23 = load i32, i32* %tmp
  %tobool20 = icmp ne i32 %23, 0
  br i1 %tobool20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.end.19
  br label %if.end.23

if.else.22:                                       ; preds = %if.end.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.file_save_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end.23
  %24 = load %struct._GimpFileDialogState*, %struct._GimpFileDialogState** %state, align 8
  %tobool24 = icmp ne %struct._GimpFileDialogState* %24, null
  br i1 %tobool24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %do.end
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_file_dialog_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call26)
  %27 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpFileDialog*
  %28 = load %struct._GimpFileDialogState*, %struct._GimpFileDialogState** %state, align 8
  call void @gimp_file_dialog_set_state(%struct._GimpFileDialog* %27, %struct._GimpFileDialogState* %28)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %do.end
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %32 = bitcast %struct._Gimp* %31 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._Gimp*)* @file_save_dialog_confirm_overwrite to void ()*), i8* %32, void (i8*, %struct._GClosure*)* null, i32 0)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %34 = bitcast %struct._GtkWidget* %33 to i8*
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %36 = bitcast %struct._Gimp* %35 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._Gimp*)* @file_save_dialog_response to void ()*), i8* %36, void (i8*, %struct._GClosure*)* null, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* %37, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.else.22
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %38
}

declare %struct._GtkWidget* @gimp_file_dialog_new(%struct._Gimp*, i32, i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #3

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @gimp_file_dialog_set_state(%struct._GimpFileDialog*, %struct._GimpFileDialogState*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_file_dialog_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @file_save_dialog_confirm_overwrite(%struct._GtkWidget* %save_dialog, %struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca i32, align 4
  %save_dialog.addr = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %dialog = alloca %struct._GimpFileDialog*, align 8
  store %struct._GtkWidget* %save_dialog, %struct._GtkWidget** %save_dialog.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileDialog*
  store %struct._GimpFileDialog* %2, %struct._GimpFileDialog** %dialog, align 8
  %3 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call2 = call i32 @file_save_dialog_no_overwrite_confirmation(%struct._GimpFileDialog* %3, %struct._Gimp* %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal void @file_save_dialog_response(%struct._GtkWidget* %save_dialog, i32 %response_id, %struct._Gimp* %gimp) #0 {
entry:
  %save_dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %dialog = alloca %struct._GimpFileDialog*, align 8
  %uri = alloca i8*, align 8
  %basename = alloca i8*, align 8
  %save_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._GtkWidget* %save_dialog, %struct._GtkWidget** %save_dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileDialog*
  store %struct._GimpFileDialog* %2, %struct._GimpFileDialog** %dialog, align 8
  %3 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %export = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %3, i32 0, i32 5
  %4 = load i32, i32* %export, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = bitcast %struct._Gimp* %5 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %8 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %call3 = call %struct._GimpFileDialogState* @gimp_file_dialog_get_state(%struct._GimpFileDialog* %8)
  %9 = bitcast %struct._GimpFileDialogState* %call3 to i8*
  call void @g_object_set_data_full(%struct._GObject* %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i8* %9, void (i8*)* bitcast (void (%struct._GimpFileDialogState*)* @gimp_file_dialog_state_destroy to void (i8*)*))
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %11 = bitcast %struct._Gimp* %10 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 80)
  %12 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %13 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %call5 = call %struct._GimpFileDialogState* @gimp_file_dialog_get_state(%struct._GimpFileDialog* %13)
  %14 = bitcast %struct._GimpFileDialogState* %call5 to i8*
  call void @g_object_set_data_full(%struct._GObject* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0), i8* %14, void (i8*)* bitcast (void (%struct._GimpFileDialogState*)* @gimp_file_dialog_state_destroy to void (i8*)*))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp ne i32 %15, -5
  br i1 %cmp, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %16 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %busy = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %16, i32 0, i32 12
  %17 = load i32, i32* %busy, align 4
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.then.6
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %18)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.6
  br label %return

if.end.10:                                        ; preds = %if.end
  %19 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %20 = bitcast %struct._GimpFileDialog* %19 to i8*
  %call11 = call i8* @g_object_ref(i8* %20)
  %21 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %image = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %21, i32 0, i32 2
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %23 = bitcast %struct._GimpImage* %22 to i8*
  %call12 = call i8* @g_object_ref(i8* %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog.addr, align 8
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call13 = call i32 @file_save_dialog_check_uri(%struct._GtkWidget* %24, %struct._Gimp* %25, i8** %uri, i8** %basename, %struct._GimpPlugInProcedure** %save_proc)
  switch i32 %call13, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.14
    i32 2, label %sw.bb.59
  ]

sw.bb:                                            ; preds = %if.end.10
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end.10
  %26 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  call void @gimp_file_dialog_set_sensitive(%struct._GimpFileDialog* %26, i32 0)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog.addr, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_progress_interface_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call15)
  %29 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpProgress*
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %31 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %image17 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %31, i32 0, i32 2
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image17, align 8
  %33 = load i8*, i8** %uri, align 8
  %34 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %35 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %save_a_copy = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %35, i32 0, i32 4
  %36 = load i32, i32* %save_a_copy, align 4
  %tobool18 = icmp ne i32 %36, 0
  br i1 %tobool18, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %sw.bb.14
  %37 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %export19 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %37, i32 0, i32 5
  %38 = load i32, i32* %export19, align 4
  %tobool20 = icmp ne i32 %38, 0
  %lnot = xor i1 %tobool20, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb.14
  %39 = phi i1 [ false, %sw.bb.14 ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %39 to i32
  %40 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %export21 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %40, i32 0, i32 5
  %41 = load i32, i32* %export21, align 4
  %call22 = call i32 @file_save_dialog_save_image(%struct._GimpProgress* %29, %struct._Gimp* %30, %struct._GimpImage* %32, i8* %33, %struct._GimpPlugInProcedure* %34, i32 0, i32 %land.ext, i32 0, i32 %41, i32 0)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.58

if.then.24:                                       ; preds = %land.end
  %42 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %save_a_copy25 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %42, i32 0, i32 4
  %43 = load i32, i32* %save_a_copy25, align 4
  %tobool26 = icmp ne i32 %43, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.then.24
  %44 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %image28 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %44, i32 0, i32 2
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image28, align 8
  %46 = load i8*, i8** %uri, align 8
  call void @gimp_image_set_save_a_copy_uri(%struct._GimpImage* %45, i8* %46)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.then.24
  %47 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %export30 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %47, i32 0, i32 5
  %48 = load i32, i32* %export30, align 4
  %tobool31 = icmp ne i32 %48, 0
  br i1 %tobool31, label %if.else.37, label %if.then.32

if.then.32:                                       ; preds = %if.end.29
  %49 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %image33 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %49, i32 0, i32 2
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image33, align 8
  %gimp34 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %50, i32 0, i32 1
  %51 = load %struct._Gimp*, %struct._Gimp** %gimp34, align 8
  %52 = bitcast %struct._Gimp* %51 to %struct._GTypeInstance*
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 80)
  %53 = bitcast %struct._GTypeInstance* %call35 to %struct._GObject*
  %54 = load i8*, i8** %uri, align 8
  %call36 = call noalias i8* @g_strdup(i8* %54)
  call void @g_object_set_data_full(%struct._GObject* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i8* %call36, void (i8*)* @g_free)
  br label %if.end.42

if.else.37:                                       ; preds = %if.end.29
  %55 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %image38 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %55, i32 0, i32 2
  %56 = load %struct._GimpImage*, %struct._GimpImage** %image38, align 8
  %gimp39 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %56, i32 0, i32 1
  %57 = load %struct._Gimp*, %struct._Gimp** %gimp39, align 8
  %58 = bitcast %struct._Gimp* %57 to %struct._GTypeInstance*
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 80)
  %59 = bitcast %struct._GTypeInstance* %call40 to %struct._GObject*
  %60 = load i8*, i8** %uri, align 8
  %call41 = call noalias i8* @g_strdup(i8* %60)
  call void @g_object_set_data_full(%struct._GObject* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i8* %call41, void (i8*)* @g_free)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.37, %if.then.32
  %61 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %image43 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %61, i32 0, i32 2
  %62 = load %struct._GimpImage*, %struct._GimpImage** %image43, align 8
  call void @gimp_image_flush(%struct._GimpImage* %62)
  %63 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %close_after_saving = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %63, i32 0, i32 6
  %64 = load i32, i32* %close_after_saving, align 4
  %tobool44 = icmp ne i32 %64, 0
  br i1 %tobool44, label %land.lhs.true, label %if.end.57

land.lhs.true:                                    ; preds = %if.end.42
  %65 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %display_to_close = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %65, i32 0, i32 7
  %66 = load %struct._GimpObject*, %struct._GimpObject** %display_to_close, align 8
  %tobool45 = icmp ne %struct._GimpObject* %66, null
  br i1 %tobool45, label %if.then.46, label %if.end.57

if.then.46:                                       ; preds = %land.lhs.true
  %67 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %display_to_close47 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %67, i32 0, i32 7
  %68 = load %struct._GimpObject*, %struct._GimpObject** %display_to_close47, align 8
  %69 = bitcast %struct._GimpObject* %68 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_display_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call48)
  %70 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %70, %struct._GimpDisplay** %display, align 8
  %71 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool50 = icmp ne %struct._GimpDisplay* %71, null
  br i1 %tobool50, label %land.lhs.true.51, label %if.end.56

land.lhs.true.51:                                 ; preds = %if.then.46
  %72 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call52 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %72)
  %call53 = call i32 @gimp_image_is_dirty(%struct._GimpImage* %call52)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.51
  %73 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @gimp_display_close(%struct._GimpDisplay* %73)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %land.lhs.true.51, %if.then.46
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %land.lhs.true, %if.end.42
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %74)
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %land.end
  %75 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %75)
  %76 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %76)
  %77 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  call void @gimp_file_dialog_set_sensitive(%struct._GimpFileDialog* %77, i32 1)
  br label %sw.epilog

sw.bb.59:                                         ; preds = %if.end.10
  %78 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %busy60 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %78, i32 0, i32 12
  store i32 1, i32* %busy60, align 4
  %79 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %80 = bitcast %struct._GimpFileDialog* %79 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_dialog_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call61)
  %81 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkDialog*
  call void @gtk_dialog_response(%struct._GtkDialog* %81, i32 -23)
  %82 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %busy63 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %82, i32 0, i32 12
  store i32 0, i32* %busy63, align 4
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %83)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.10, %sw.bb.59, %if.end.58, %sw.bb
  %84 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %image64 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %84, i32 0, i32 2
  %85 = load %struct._GimpImage*, %struct._GimpImage** %image64, align 8
  %86 = bitcast %struct._GimpImage* %85 to i8*
  call void @g_object_unref(i8* %86)
  %87 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %88 = bitcast %struct._GimpFileDialog* %87 to i8*
  call void @g_object_unref(i8* %88)
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @file_save_dialog_save_image(%struct._GimpProgress* %progress, %struct._Gimp* %gimp, %struct._GimpImage* %image, i8* %uri, %struct._GimpPlugInProcedure* %save_proc, i32 %run_mode, i32 %change_saved_state, i32 %export_backward, i32 %export_forward, i32 %verbose_cancel) #0 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %uri.addr = alloca i8*, align 8
  %save_proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %run_mode.addr = alloca i32, align 4
  %change_saved_state.addr = alloca i32, align 4
  %export_backward.addr = alloca i32, align 4
  %export_forward.addr = alloca i32, align 4
  %verbose_cancel.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %list = alloca %struct._GList*, align 8
  %success = alloca i32, align 4
  %filename = alloca i8*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store %struct._GimpPlugInProcedure* %save_proc, %struct._GimpPlugInProcedure** %save_proc.addr, align 8
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store i32 %change_saved_state, i32* %change_saved_state.addr, align 4
  store i32 %export_backward, i32* %export_backward.addr, align 4
  store i32 %export_forward, i32* %export_forward.addr, align 4
  store i32 %verbose_cancel, i32* %verbose_cancel.addr, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  store i32 0, i32* %success, align 4
  %call = call %struct._GList* @gimp_action_groups_from_name(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GList* %call, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %0 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8
  %3 = bitcast i8* %2 to %struct._GimpActionGroup*
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool1 = icmp ne %struct._GList* %4, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 1
  %6 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %6, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %9 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %10 = load i8*, i8** %uri.addr, align 8
  %11 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc.addr, align 8
  %12 = load i32, i32* %run_mode.addr, align 4
  %13 = load i32, i32* %change_saved_state.addr, align 4
  %14 = load i32, i32* %export_backward.addr, align 4
  %15 = load i32, i32* %export_forward.addr, align 4
  %call2 = call i32 @file_save(%struct._Gimp* %7, %struct._GimpImage* %8, %struct._GimpProgress* %9, i8* %10, %struct._GimpPlugInProcedure* %11, i32 %12, i32 %13, i32 %14, i32 %15, %struct._GError** %error)
  store i32 %call2, i32* %status, align 4
  %16 = load i32, i32* %status, align 4
  switch i32 %16, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %for.end
  store i32 1, i32* %success, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %for.end
  %17 = load i32, i32* %verbose_cancel.addr, align 4
  %tobool4 = icmp ne i32 %17, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.3
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %19 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %20 = bitcast %struct._GimpProgress* %19 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %18, %struct._GObject* %21, i32 0, i8* %call6)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.3
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  %22 = load i8*, i8** %uri.addr, align 8
  %call7 = call i8* @file_utils_uri_display_name(i8* %22)
  store i8* %call7, i8** %filename, align 8
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %24 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %25 = bitcast %struct._GimpProgress* %24 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0)) #5
  %27 = load i8*, i8** %filename, align 8
  %28 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %28, i32 0, i32 2
  %29 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %23, %struct._GObject* %26, i32 2, i8* %call9, i8* %27, i8* %29)
  call void @g_clear_error(%struct._GError** %error)
  %30 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %30)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb
  %call10 = call %struct._GList* @gimp_action_groups_from_name(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GList* %call10, %struct._GList** %list, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %cond.end.20, %sw.epilog
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool12 = icmp ne %struct._GList* %31, null
  br i1 %tobool12, label %for.body.13, label %for.end.22

for.body.13:                                      ; preds = %for.cond.11
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %data14 = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 0
  %33 = load i8*, i8** %data14, align 8
  %34 = bitcast i8* %33 to %struct._GimpActionGroup*
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 1)
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.13
  %35 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool16 = icmp ne %struct._GList* %35, null
  br i1 %tobool16, label %cond.true.17, label %cond.false.19

cond.true.17:                                     ; preds = %for.inc.15
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %next18 = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 1
  %37 = load %struct._GList*, %struct._GList** %next18, align 8
  br label %cond.end.20

cond.false.19:                                    ; preds = %for.inc.15
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.17
  %cond21 = phi %struct._GList* [ %37, %cond.true.17 ], [ null, %cond.false.19 ]
  store %struct._GList* %cond21, %struct._GList** %list, align 8
  br label %for.cond.11

for.end.22:                                       ; preds = %for.cond.11
  %38 = load i32, i32* %success, align 4
  ret i32 %38
}

declare %struct._GList* @gimp_action_groups_from_name(i8*) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare i32 @file_save(%struct._Gimp*, %struct._GimpImage*, %struct._GimpProgress*, i8*, %struct._GimpPlugInProcedure*, i32, i32, i32, i32, %struct._GError**) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare i8* @file_utils_uri_display_name(i8*) #1

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #1

declare void @g_clear_error(%struct._GError**) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @file_save_dialog_no_overwrite_confirmation(%struct._GimpFileDialog* %dialog, %struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca i32, align 4
  %dialog.addr = alloca %struct._GimpFileDialog*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %uri_will_change = alloca i32, align 4
  %unknown_ext = alloca i32, align 4
  %uri = alloca i8*, align 8
  %basename = alloca i8*, align 8
  %basename_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %save_proc = alloca %struct._GimpPlugInProcedure*, align 8
  store %struct._GimpFileDialog* %dialog, %struct._GimpFileDialog** %dialog.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 0, i32* %uri_will_change, align 4
  store i32 0, i32* %unknown_ext, align 4
  store i8* null, i8** %uri, align 8
  store i8* null, i8** %basename, align 8
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %basename_proc, align 8
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %save_proc, align 8
  %0 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %call = call i8* @file_save_dialog_get_uri(%struct._GimpFileDialog* %0)
  store i8* %call, i8** %uri, align 8
  %1 = load i8*, i8** %uri, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %uri, align 8
  %call1 = call i8* @file_utils_uri_display_basename(i8* %2)
  store i8* %call1, i8** %basename, align 8
  %3 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %file_proc = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %3, i32 0, i32 1
  %4 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  store %struct._GimpPlugInProcedure* %4, %struct._GimpPlugInProcedure** %save_proc, align 8
  %5 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call2 = call %struct._GSList* @file_save_dialog_get_procs(%struct._GimpFileDialog* %5, %struct._Gimp* %6)
  %7 = load i8*, i8** %basename, align 8
  %call3 = call %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList* %call2, i8* %7, %struct._GError** null)
  store %struct._GimpPlugInProcedure* %call3, %struct._GimpPlugInProcedure** %basename_proc, align 8
  %8 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %basename_proc, align 8
  %tobool4 = icmp ne %struct._GimpPlugInProcedure* %8, null
  br i1 %tobool4, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %9 = load i8*, i8** %basename, align 8
  %call5 = call i8* @strchr(i8* %9, i32 46) #7
  %tobool6 = icmp ne i8* %call5, null
  br i1 %tobool6, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %10 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %tobool7 = icmp ne %struct._GimpPlugInProcedure* %10, null
  br i1 %tobool7, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.rhs
  %11 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %extensions_list = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %11, i32 0, i32 19
  %12 = load %struct._GSList*, %struct._GSList** %extensions_list, align 8
  %tobool8 = icmp ne %struct._GSList* %12, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %13 = phi i1 [ true, %land.rhs ], [ %tobool8, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true, %if.end
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %if.end ], [ %13, %lor.end ]
  %land.ext = zext i1 %14 to i32
  store i32 %land.ext, i32* %uri_will_change, align 4
  %15 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %tobool9 = icmp ne %struct._GimpPlugInProcedure* %15, null
  br i1 %tobool9, label %land.end.12, label %land.rhs.10

land.rhs.10:                                      ; preds = %land.end
  %16 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %basename_proc, align 8
  %tobool11 = icmp ne %struct._GimpPlugInProcedure* %16, null
  %lnot = xor i1 %tobool11, true
  br label %land.end.12

land.end.12:                                      ; preds = %land.rhs.10, %land.end
  %17 = phi i1 [ false, %land.end ], [ %lnot, %land.rhs.10 ]
  %land.ext13 = zext i1 %17 to i32
  store i32 %land.ext13, i32* %unknown_ext, align 4
  %18 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %18)
  %19 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %19)
  %20 = load i32, i32* %uri_will_change, align 4
  %tobool14 = icmp ne i32 %20, 0
  br i1 %tobool14, label %lor.end.17, label %lor.rhs.15

lor.rhs.15:                                       ; preds = %land.end.12
  %21 = load i32, i32* %unknown_ext, align 4
  %tobool16 = icmp ne i32 %21, 0
  br label %lor.end.17

lor.end.17:                                       ; preds = %lor.rhs.15, %land.end.12
  %22 = phi i1 [ true, %land.end.12 ], [ %tobool16, %lor.rhs.15 ]
  %lor.ext = zext i1 %22 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end.17, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i8* @file_save_dialog_get_uri(%struct._GimpFileDialog* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct._GimpFileDialog*, align 8
  %uri = alloca i8*, align 8
  store %struct._GimpFileDialog* %dialog, %struct._GimpFileDialog** %dialog.addr, align 8
  %0 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %1 = bitcast %struct._GimpFileDialog* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  %call2 = call i8* @gtk_file_chooser_get_uri(%struct._GtkFileChooser* %2)
  store i8* %call2, i8** %uri, align 8
  %3 = load i8*, i8** %uri, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %uri, align 8
  %call3 = call i64 @strlen(i8* %4) #7
  %tobool4 = icmp ne i64 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %5)
  store i8* null, i8** %uri, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i8*, i8** %uri, align 8
  ret i8* %6
}

declare i8* @file_utils_uri_display_basename(i8*) #1

declare %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList*, i8*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @file_save_dialog_get_procs(%struct._GimpFileDialog* %dialog, %struct._Gimp* %gimp) #0 {
entry:
  %dialog.addr = alloca %struct._GimpFileDialog*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._GimpFileDialog* %dialog, %struct._GimpFileDialog** %dialog.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog.addr, align 8
  %export = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %0, i32 0, i32 5
  %1 = load i32, i32* %export, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 25
  %3 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %save_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %3, i32 0, i32 6
  %4 = load %struct._GSList*, %struct._GSList** %save_procs, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager1 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 25
  %6 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager1, align 8
  %export_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %6, i32 0, i32 7
  %7 = load %struct._GSList*, %struct._GSList** %export_procs, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %4, %cond.true ], [ %7, %cond.false ]
  ret %struct._GSList* %cond
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare i8* @gtk_file_chooser_get_uri(%struct._GtkFileChooser*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

declare %struct._GimpFileDialogState* @gimp_file_dialog_get_state(%struct._GimpFileDialog*) #1

declare void @gimp_file_dialog_state_destroy(%struct._GimpFileDialogState*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i8* @g_object_ref(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @file_save_dialog_check_uri(%struct._GtkWidget* %save_dialog, %struct._Gimp* %gimp, i8** %ret_uri, i8** %ret_basename, %struct._GimpPlugInProcedure** %ret_save_proc) #0 {
entry:
  %retval = alloca i32, align 4
  %save_dialog.addr = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %ret_uri.addr = alloca i8**, align 8
  %ret_basename.addr = alloca i8**, align 8
  %ret_save_proc.addr = alloca %struct._GimpPlugInProcedure**, align 8
  %dialog = alloca %struct._GimpFileDialog*, align 8
  %uri = alloca i8*, align 8
  %basename = alloca i8*, align 8
  %save_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %uri_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %basename_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %ext = alloca i8*, align 8
  %ext_basename = alloca i8*, align 8
  %utf8 = alloca i8*, align 8
  store %struct._GtkWidget* %save_dialog, %struct._GtkWidget** %save_dialog.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8** %ret_uri, i8*** %ret_uri.addr, align 8
  store i8** %ret_basename, i8*** %ret_basename.addr, align 8
  store %struct._GimpPlugInProcedure** %ret_save_proc, %struct._GimpPlugInProcedure*** %ret_save_proc.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileDialog*
  store %struct._GimpFileDialog* %2, %struct._GimpFileDialog** %dialog, align 8
  %3 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %call2 = call i8* @file_save_dialog_get_uri(%struct._GimpFileDialog* %3)
  store i8* %call2, i8** %uri, align 8
  %4 = load i8*, i8** %uri, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %uri, align 8
  %call3 = call i8* @file_utils_uri_display_basename(i8* %5)
  store i8* %call3, i8** %basename, align 8
  %6 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %file_proc = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %6, i32 0, i32 1
  %7 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  store %struct._GimpPlugInProcedure* %7, %struct._GimpPlugInProcedure** %save_proc, align 8
  %8 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call4 = call %struct._GSList* @file_save_dialog_get_procs(%struct._GimpFileDialog* %8, %struct._Gimp* %9)
  %10 = load i8*, i8** %uri, align 8
  %call5 = call %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList* %call4, i8* %10, %struct._GError** null)
  store %struct._GimpPlugInProcedure* %call5, %struct._GimpPlugInProcedure** %uri_proc, align 8
  %11 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call6 = call %struct._GSList* @file_save_dialog_get_procs(%struct._GimpFileDialog* %11, %struct._Gimp* %12)
  %13 = load i8*, i8** %basename, align 8
  %call7 = call %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList* %call6, i8* %13, %struct._GError** null)
  store %struct._GimpPlugInProcedure* %call7, %struct._GimpPlugInProcedure** %basename_proc, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %14 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %14, 64
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.body
  %15 = load i8*, i8** %uri, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0), i32 294, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %16 = load i32, i32* @gimp_log_flags, align 4
  %and12 = and i32 %16, 64
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.body.11
  %17 = load i8*, i8** %basename, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0), i32 295, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* %17)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %do.body.11
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %18 = load i32, i32* @gimp_log_flags, align 4
  %and18 = and i32 %18, 64
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %do.body.17
  %19 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %tobool21 = icmp ne %struct._GimpPlugInProcedure* %19, null
  br i1 %tobool21, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.20
  %20 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %20, i32 0, i32 4
  %21 = load i8*, i8** %menu_label, align 8
  %tobool22 = icmp ne i8* %21, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %22 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %menu_label23 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %22, i32 0, i32 4
  %23 = load i8*, i8** %menu_label23, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then.20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %23, %cond.true ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), %cond.false ]
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0), i32 298, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0), i8* %cond)
  br label %if.end.24

if.end.24:                                        ; preds = %cond.end, %do.body.17
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %24 = load i32, i32* @gimp_log_flags, align 4
  %and27 = and i32 %24, 64
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %do.body.26
  %25 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %uri_proc, align 8
  %tobool30 = icmp ne %struct._GimpPlugInProcedure* %25, null
  br i1 %tobool30, label %cond.true.31, label %cond.false.33

cond.true.31:                                     ; preds = %if.then.29
  %26 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %uri_proc, align 8
  %menu_label32 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %26, i32 0, i32 4
  %27 = load i8*, i8** %menu_label32, align 8
  br label %cond.end.34

cond.false.33:                                    ; preds = %if.then.29
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.31
  %cond35 = phi i8* [ %27, %cond.true.31 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), %cond.false.33 ]
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0), i32 300, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i8* %cond35)
  br label %if.end.36

if.end.36:                                        ; preds = %cond.end.34, %do.body.26
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %do.body.38

do.body.38:                                       ; preds = %do.end.37
  %28 = load i32, i32* @gimp_log_flags, align 4
  %and39 = and i32 %28, 64
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.51

if.then.41:                                       ; preds = %do.body.38
  %29 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %basename_proc, align 8
  %tobool42 = icmp ne %struct._GimpPlugInProcedure* %29, null
  br i1 %tobool42, label %land.lhs.true.43, label %cond.false.48

land.lhs.true.43:                                 ; preds = %if.then.41
  %30 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %basename_proc, align 8
  %menu_label44 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %30, i32 0, i32 4
  %31 = load i8*, i8** %menu_label44, align 8
  %tobool45 = icmp ne i8* %31, null
  br i1 %tobool45, label %cond.true.46, label %cond.false.48

cond.true.46:                                     ; preds = %land.lhs.true.43
  %32 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %basename_proc, align 8
  %menu_label47 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %32, i32 0, i32 4
  %33 = load i8*, i8** %menu_label47, align 8
  br label %cond.end.49

cond.false.48:                                    ; preds = %land.lhs.true.43, %if.then.41
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.46
  %cond50 = phi i8* [ %33, %cond.true.46 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), %cond.false.48 ]
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0), i32 303, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), i8* %cond50)
  br label %if.end.51

if.end.51:                                        ; preds = %cond.end.49, %do.body.38
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %34 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %basename_proc, align 8
  %tobool53 = icmp ne %struct._GimpPlugInProcedure* %34, null
  br i1 %tobool53, label %if.end.142, label %if.then.54

if.then.54:                                       ; preds = %do.end.52
  br label %do.body.55

do.body.55:                                       ; preds = %if.then.54
  %35 = load i32, i32* @gimp_log_flags, align 4
  %and56 = and i32 %35, 64
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %do.body.55
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0), i32 308, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %do.body.55
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  %36 = load i8*, i8** %basename, align 8
  %call61 = call i8* @strchr(i8* %36, i32 46) #7
  %tobool62 = icmp ne i8* %call61, null
  br i1 %tobool62, label %if.else.125, label %if.then.63

if.then.63:                                       ; preds = %do.end.60
  store i8* null, i8** %ext, align 8
  br label %do.body.64

do.body.64:                                       ; preds = %if.then.63
  %37 = load i32, i32* @gimp_log_flags, align 4
  %and65 = and i32 %37, 64
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %do.body.64
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0), i32 314, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %do.body.64
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  %38 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %tobool70 = icmp ne %struct._GimpPlugInProcedure* %38, null
  br i1 %tobool70, label %if.else, label %land.lhs.true.71

land.lhs.true.71:                                 ; preds = %do.end.69
  %39 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %export = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %39, i32 0, i32 5
  %40 = load i32, i32* %export, align 4
  %tobool72 = icmp ne i32 %40, 0
  br i1 %tobool72, label %if.else, label %if.then.73

if.then.73:                                       ; preds = %land.lhs.true.71
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8** %ext, align 8
  br label %if.end.80

if.else:                                          ; preds = %land.lhs.true.71, %do.end.69
  %41 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %tobool74 = icmp ne %struct._GimpPlugInProcedure* %41, null
  br i1 %tobool74, label %land.lhs.true.75, label %if.end.79

land.lhs.true.75:                                 ; preds = %if.else
  %42 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %extensions_list = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %42, i32 0, i32 19
  %43 = load %struct._GSList*, %struct._GSList** %extensions_list, align 8
  %tobool76 = icmp ne %struct._GSList* %43, null
  br i1 %tobool76, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %land.lhs.true.75
  %44 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %extensions_list78 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %44, i32 0, i32 19
  %45 = load %struct._GSList*, %struct._GSList** %extensions_list78, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %45, i32 0, i32 0
  %46 = load i8*, i8** %data, align 8
  store i8* %46, i8** %ext, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %land.lhs.true.75, %if.else
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.73
  %47 = load i8*, i8** %ext, align 8
  %tobool81 = icmp ne i8* %47, null
  br i1 %tobool81, label %if.then.82, label %if.else.101

if.then.82:                                       ; preds = %if.end.80
  br label %do.body.83

do.body.83:                                       ; preds = %if.then.82
  %48 = load i32, i32* @gimp_log_flags, align 4
  %and84 = and i32 %48, 64
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %do.body.83
  %49 = load i8*, i8** %ext, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0), i32 330, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0), i8* %49)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %do.body.83
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  %50 = load i8*, i8** %basename, align 8
  %51 = load i8*, i8** %ext, align 8
  %call89 = call noalias i8* (i8*, ...) @g_strconcat(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8* %51, i8* null)
  store i8* %call89, i8** %ext_basename, align 8
  %52 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %52)
  %53 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %53)
  %54 = load i8*, i8** %ext_basename, align 8
  store i8* %54, i8** %basename, align 8
  %55 = load i8*, i8** %basename, align 8
  %call90 = call noalias i8* @g_filename_to_utf8(i8* %55, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call90, i8** %utf8, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog.addr, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_file_chooser_get_type() #6
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call91)
  %58 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkFileChooser*
  %59 = load i8*, i8** %utf8, align 8
  call void @gtk_file_chooser_set_current_name(%struct._GtkFileChooser* %58, i8* %59)
  %60 = load i8*, i8** %utf8, align 8
  call void @g_free(i8* %60)
  br label %do.body.93

do.body.93:                                       ; preds = %do.end.88
  %61 = load i32, i32* @gimp_log_flags, align 4
  %and94 = and i32 %61, 64
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %do.body.93
  %62 = load i8*, i8** %basename, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0), i32 346, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.29, i32 0, i32 0), i8* %62)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %do.body.93
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog.addr, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_dialog_get_type() #6
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call99)
  %65 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkDialog*
  call void @gtk_dialog_response(%struct._GtkDialog* %65, i32 -5)
  %66 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %66)
  store i32 0, i32* %retval
  br label %return

if.else.101:                                      ; preds = %if.end.80
  br label %do.body.102

do.body.102:                                      ; preds = %if.else.101
  %67 = load i32, i32* @gimp_log_flags, align 4
  %and103 = and i32 %67, 64
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %do.body.102
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0), i32 360, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %do.body.102
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.106
  %68 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  store %struct._GimpPlugInProcedure* %68, %struct._GimpPlugInProcedure** %basename_proc, align 8
  %69 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %uri_proc, align 8
  %tobool108 = icmp ne %struct._GimpPlugInProcedure* %69, null
  br i1 %tobool108, label %if.end.110, label %if.then.109

if.then.109:                                      ; preds = %do.end.107
  %70 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %basename_proc, align 8
  store %struct._GimpPlugInProcedure* %70, %struct._GimpPlugInProcedure** %uri_proc, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %do.end.107
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110
  %71 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %basename_proc, align 8
  %tobool112 = icmp ne %struct._GimpPlugInProcedure* %71, null
  br i1 %tobool112, label %if.end.124, label %if.then.113

if.then.113:                                      ; preds = %if.end.111
  br label %do.body.114

do.body.114:                                      ; preds = %if.then.113
  %72 = load i32, i32* @gimp_log_flags, align 4
  %and115 = and i32 %72, 64
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %do.body.114
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0), i32 374, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %do.body.114
  br label %do.end.119

do.end.119:                                       ; preds = %if.end.118
  %73 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %74 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %75 = load i8*, i8** %basename, align 8
  %call120 = call i32 @file_save_dialog_switch_dialogs(%struct._GimpFileDialog* %73, %struct._Gimp* %74, i8* %75)
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %do.end.119
  %76 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %76)
  %77 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %77)
  store i32 2, i32* %retval
  br label %return

if.end.123:                                       ; preds = %do.end.119
  %78 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %78)
  %79 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %79)
  store i32 0, i32* %retval
  br label %return

if.end.124:                                       ; preds = %if.end.111
  br label %if.end.141

if.else.125:                                      ; preds = %do.end.60
  %80 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %tobool126 = icmp ne %struct._GimpPlugInProcedure* %80, null
  br i1 %tobool126, label %land.lhs.true.127, label %if.end.140

land.lhs.true.127:                                ; preds = %if.else.125
  %81 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %extensions_list128 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %81, i32 0, i32 19
  %82 = load %struct._GSList*, %struct._GSList** %extensions_list128, align 8
  %tobool129 = icmp ne %struct._GSList* %82, null
  br i1 %tobool129, label %if.end.140, label %if.then.130

if.then.130:                                      ; preds = %land.lhs.true.127
  br label %do.body.131

do.body.131:                                      ; preds = %if.then.130
  %83 = load i32, i32* @gimp_log_flags, align 4
  %and132 = and i32 %83, 64
  %tobool133 = icmp ne i32 %and132, 0
  br i1 %tobool133, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %do.body.131
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0), i32 394, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.134, %do.body.131
  br label %do.end.136

do.end.136:                                       ; preds = %if.end.135
  %84 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  store %struct._GimpPlugInProcedure* %84, %struct._GimpPlugInProcedure** %basename_proc, align 8
  %85 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %uri_proc, align 8
  %tobool137 = icmp ne %struct._GimpPlugInProcedure* %85, null
  br i1 %tobool137, label %if.end.139, label %if.then.138

if.then.138:                                      ; preds = %do.end.136
  %86 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %basename_proc, align 8
  store %struct._GimpPlugInProcedure* %86, %struct._GimpPlugInProcedure** %uri_proc, align 8
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.138, %do.end.136
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %land.lhs.true.127, %if.else.125
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.end.124
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %do.end.52
  %87 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %tobool143 = icmp ne %struct._GimpPlugInProcedure* %87, null
  br i1 %tobool143, label %if.else.177, label %if.then.144

if.then.144:                                      ; preds = %if.end.142
  br label %do.body.145

do.body.145:                                      ; preds = %if.then.144
  %88 = load i32, i32* @gimp_log_flags, align 4
  %and146 = and i32 %88, 64
  %tobool147 = icmp ne i32 %and146, 0
  br i1 %tobool147, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %do.body.145
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0), i32 409, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.148, %do.body.145
  br label %do.end.150

do.end.150:                                       ; preds = %if.end.149
  %89 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %basename_proc, align 8
  %tobool151 = icmp ne %struct._GimpPlugInProcedure* %89, null
  br i1 %tobool151, label %if.end.163, label %if.then.152

if.then.152:                                      ; preds = %do.end.150
  br label %do.body.153

do.body.153:                                      ; preds = %if.then.152
  %90 = load i32, i32* @gimp_log_flags, align 4
  %and154 = and i32 %90, 64
  %tobool155 = icmp ne i32 %and154, 0
  br i1 %tobool155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %do.body.153
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0), i32 414, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.156, %do.body.153
  br label %do.end.158

do.end.158:                                       ; preds = %if.end.157
  %91 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %92 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %93 = load i8*, i8** %basename, align 8
  %call159 = call i32 @file_save_dialog_switch_dialogs(%struct._GimpFileDialog* %91, %struct._Gimp* %92, i8* %93)
  %tobool160 = icmp ne i32 %call159, 0
  br i1 %tobool160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %do.end.158
  %94 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %94)
  %95 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %95)
  store i32 2, i32* %retval
  br label %return

if.end.162:                                       ; preds = %do.end.158
  %96 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %96)
  %97 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %97)
  store i32 0, i32* %retval
  br label %return

if.end.163:                                       ; preds = %do.end.150
  br label %do.body.164

do.body.164:                                      ; preds = %if.end.163
  %98 = load i32, i32* @gimp_log_flags, align 4
  %and165 = and i32 %98, 64
  %tobool166 = icmp ne i32 %and165, 0
  br i1 %tobool166, label %if.then.167, label %if.end.175

if.then.167:                                      ; preds = %do.body.164
  %99 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %uri_proc, align 8
  %menu_label168 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %99, i32 0, i32 4
  %100 = load i8*, i8** %menu_label168, align 8
  %tobool169 = icmp ne i8* %100, null
  br i1 %tobool169, label %cond.true.170, label %cond.false.172

cond.true.170:                                    ; preds = %if.then.167
  %101 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %uri_proc, align 8
  %menu_label171 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %101, i32 0, i32 4
  %102 = load i8*, i8** %menu_label171, align 8
  br label %cond.end.173

cond.false.172:                                   ; preds = %if.then.167
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.false.172, %cond.true.170
  %cond174 = phi i8* [ %102, %cond.true.170 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), %cond.false.172 ]
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0), i32 431, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.35, i32 0, i32 0), i8* %cond174)
  br label %if.end.175

if.end.175:                                       ; preds = %cond.end.173, %do.body.164
  br label %do.end.176

do.end.176:                                       ; preds = %if.end.175
  %103 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %uri_proc, align 8
  store %struct._GimpPlugInProcedure* %103, %struct._GimpPlugInProcedure** %save_proc, align 8
  br label %if.end.244

if.else.177:                                      ; preds = %if.end.142
  br label %do.body.178

do.body.178:                                      ; preds = %if.else.177
  %104 = load i32, i32* @gimp_log_flags, align 4
  %and179 = and i32 %104, 64
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %if.then.181, label %if.end.189

if.then.181:                                      ; preds = %do.body.178
  %105 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %menu_label182 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %105, i32 0, i32 4
  %106 = load i8*, i8** %menu_label182, align 8
  %tobool183 = icmp ne i8* %106, null
  br i1 %tobool183, label %cond.true.184, label %cond.false.186

cond.true.184:                                    ; preds = %if.then.181
  %107 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %menu_label185 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %107, i32 0, i32 4
  %108 = load i8*, i8** %menu_label185, align 8
  br label %cond.end.187

cond.false.186:                                   ; preds = %if.then.181
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.186, %cond.true.184
  %cond188 = phi i8* [ %108, %cond.true.184 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), %cond.false.186 ]
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0), i32 439, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i32 0, i32 0), i8* %cond188)
  br label %if.end.189

if.end.189:                                       ; preds = %cond.end.187, %do.body.178
  br label %do.end.190

do.end.190:                                       ; preds = %if.end.189
  %109 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %110 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %basename_proc, align 8
  %cmp = icmp ne %struct._GimpPlugInProcedure* %109, %110
  br i1 %cmp, label %if.then.191, label %if.else.226

if.then.191:                                      ; preds = %do.end.190
  br label %do.body.192

do.body.192:                                      ; preds = %if.then.191
  %111 = load i32, i32* @gimp_log_flags, align 4
  %and193 = and i32 %111, 64
  %tobool194 = icmp ne i32 %and193, 0
  br i1 %tobool194, label %if.then.195, label %if.end.202

if.then.195:                                      ; preds = %do.body.192
  %112 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %basename_proc, align 8
  %tobool196 = icmp ne %struct._GimpPlugInProcedure* %112, null
  br i1 %tobool196, label %cond.true.197, label %cond.false.199

cond.true.197:                                    ; preds = %if.then.195
  %113 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %basename_proc, align 8
  %menu_label198 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %113, i32 0, i32 4
  %114 = load i8*, i8** %menu_label198, align 8
  br label %cond.end.200

cond.false.199:                                   ; preds = %if.then.195
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.199, %cond.true.197
  %cond201 = phi i8* [ %114, %cond.true.197 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), %cond.false.199 ]
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0), i32 444, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i32 0, i32 0), i8* %cond201)
  br label %if.end.202

if.end.202:                                       ; preds = %cond.end.200, %do.body.192
  br label %do.end.203

do.end.203:                                       ; preds = %if.end.202
  %115 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %uri_proc, align 8
  %116 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %basename_proc, align 8
  %cmp204 = icmp ne %struct._GimpPlugInProcedure* %115, %116
  br i1 %cmp204, label %if.then.205, label %if.else.214

if.then.205:                                      ; preds = %do.end.203
  br label %do.body.206

do.body.206:                                      ; preds = %if.then.205
  %117 = load i32, i32* @gimp_log_flags, align 4
  %and207 = and i32 %117, 64
  %tobool208 = icmp ne i32 %and207, 0
  br i1 %tobool208, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %do.body.206
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0), i32 449, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.209, %do.body.206
  br label %do.end.211

do.end.211:                                       ; preds = %if.end.210
  %118 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog.addr, align 8
  %120 = bitcast %struct._GtkWidget* %119 to %struct._GTypeInstance*
  %call212 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 80)
  %121 = bitcast %struct._GTypeInstance* %call212 to %struct._GObject*
  %call213 = call i8* @gettext(i8* getelementptr inbounds ([183 x i8], [183 x i8]* @.str.40, i32 0, i32 0)) #5
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %118, %struct._GObject* %121, i32 1, i8* %call213)
  %122 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %122)
  %123 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %123)
  store i32 0, i32* %retval
  br label %return

if.else.214:                                      ; preds = %do.end.203
  br label %do.body.215

do.body.215:                                      ; preds = %if.else.214
  %124 = load i32, i32* @gimp_log_flags, align 4
  %and216 = and i32 %124, 64
  %tobool217 = icmp ne i32 %and216, 0
  br i1 %tobool217, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %do.body.215
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0), i32 467, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.218, %do.body.215
  br label %do.end.220

do.end.220:                                       ; preds = %if.end.219
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog.addr, align 8
  %126 = load i8*, i8** %uri, align 8
  %call221 = call i32 @file_save_dialog_use_extension(%struct._GtkWidget* %125, i8* %126)
  %tobool222 = icmp ne i32 %call221, 0
  br i1 %tobool222, label %if.end.224, label %if.then.223

if.then.223:                                      ; preds = %do.end.220
  %127 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %127)
  %128 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %128)
  store i32 0, i32* %retval
  br label %return

if.end.224:                                       ; preds = %do.end.220
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224
  br label %if.end.243

if.else.226:                                      ; preds = %do.end.190
  %129 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %130 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %uri_proc, align 8
  %cmp227 = icmp ne %struct._GimpPlugInProcedure* %129, %130
  br i1 %cmp227, label %if.then.228, label %if.end.242

if.then.228:                                      ; preds = %if.else.226
  br label %do.body.229

do.body.229:                                      ; preds = %if.then.228
  %131 = load i32, i32* @gimp_log_flags, align 4
  %and230 = and i32 %131, 64
  %tobool231 = icmp ne i32 %and230, 0
  br i1 %tobool231, label %if.then.232, label %if.end.240

if.then.232:                                      ; preds = %do.body.229
  %132 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %uri_proc, align 8
  %menu_label233 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %132, i32 0, i32 4
  %133 = load i8*, i8** %menu_label233, align 8
  %tobool234 = icmp ne i8* %133, null
  br i1 %tobool234, label %cond.true.235, label %cond.false.237

cond.true.235:                                    ; preds = %if.then.232
  %134 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %uri_proc, align 8
  %menu_label236 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %134, i32 0, i32 4
  %135 = load i8*, i8** %menu_label236, align 8
  br label %cond.end.238

cond.false.237:                                   ; preds = %if.then.232
  br label %cond.end.238

cond.end.238:                                     ; preds = %cond.false.237, %cond.true.235
  %cond239 = phi i8* [ %135, %cond.true.235 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), %cond.false.237 ]
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0), i32 484, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.35, i32 0, i32 0), i8* %cond239)
  br label %if.end.240

if.end.240:                                       ; preds = %cond.end.238, %do.body.229
  br label %do.end.241

do.end.241:                                       ; preds = %if.end.240
  %136 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %uri_proc, align 8
  store %struct._GimpPlugInProcedure* %136, %struct._GimpPlugInProcedure** %save_proc, align 8
  br label %if.end.242

if.end.242:                                       ; preds = %do.end.241, %if.else.226
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.end.225
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %do.end.176
  %137 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %tobool245 = icmp ne %struct._GimpPlugInProcedure* %137, null
  br i1 %tobool245, label %if.end.247, label %if.then.246

if.then.246:                                      ; preds = %if.end.244
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_save_dialog_check_uri, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.247:                                       ; preds = %if.end.244
  %138 = load i8*, i8** %uri, align 8
  %139 = load i8**, i8*** %ret_uri.addr, align 8
  store i8* %138, i8** %139, align 8
  %140 = load i8*, i8** %basename, align 8
  %141 = load i8**, i8*** %ret_basename.addr, align 8
  store i8* %140, i8** %141, align 8
  %142 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %143 = load %struct._GimpPlugInProcedure**, %struct._GimpPlugInProcedure*** %ret_save_proc.addr, align 8
  store %struct._GimpPlugInProcedure* %142, %struct._GimpPlugInProcedure** %143, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.247, %if.then.246, %if.then.223, %do.end.211, %if.end.162, %if.then.161, %if.end.123, %if.then.122, %do.end.98, %if.then
  %144 = load i32, i32* %retval
  ret i32 %144
}

declare void @gimp_file_dialog_set_sensitive(%struct._GimpFileDialog*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #3

declare void @gimp_image_set_save_a_copy_uri(%struct._GimpImage*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #3

declare i32 @gimp_image_is_dirty(%struct._GimpImage*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare void @gimp_display_close(%struct._GimpDisplay*) #1

declare void @gtk_dialog_response(%struct._GtkDialog*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @g_object_unref(i8*) #1

declare void @gimp_log(i32, i8*, i32, i8*, ...) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare noalias i8* @g_filename_to_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

declare void @gtk_file_chooser_set_current_name(%struct._GtkFileChooser*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @file_save_dialog_switch_dialogs(%struct._GimpFileDialog* %file_dialog, %struct._Gimp* %gimp, i8* %basename) #0 {
entry:
  %file_dialog.addr = alloca %struct._GimpFileDialog*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %basename.addr = alloca i8*, align 8
  %proc_in_other_group = alloca %struct._GimpPlugInProcedure*, align 8
  %switch_dialogs = alloca i32, align 4
  %dialog = alloca %struct._GtkWidget*, align 8
  %primary = alloca i8*, align 8
  %message = alloca i8*, align 8
  %link = alloca i8*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %markup = alloca i8*, align 8
  store %struct._GimpFileDialog* %file_dialog, %struct._GimpFileDialog** %file_dialog.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %basename, i8** %basename.addr, align 8
  store i32 0, i32* %switch_dialogs, align 4
  %0 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %file_dialog.addr, align 8
  %export = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %0, i32 0, i32 5
  %1 = load i32, i32* %export, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 25
  %3 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %save_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %3, i32 0, i32 6
  %4 = load %struct._GSList*, %struct._GSList** %save_procs, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager1 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 25
  %6 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager1, align 8
  %export_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %6, i32 0, i32 7
  %7 = load %struct._GSList*, %struct._GSList** %export_procs, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %4, %cond.true ], [ %7, %cond.false ]
  %8 = load i8*, i8** %basename.addr, align 8
  %call = call %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList* %cond, i8* %8, %struct._GError** null)
  store %struct._GimpPlugInProcedure* %call, %struct._GimpPlugInProcedure** %proc_in_other_group, align 8
  %9 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc_in_other_group, align 8
  %tobool2 = icmp ne %struct._GimpPlugInProcedure* %9, null
  br i1 %tobool2, label %if.then, label %if.else.51

if.then:                                          ; preds = %cond.end
  %10 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %file_dialog.addr, align 8
  %export3 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %10, i32 0, i32 5
  %11 = load i32, i32* %export3, align 4
  %tobool4 = icmp ne i32 %11, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.43, i32 0, i32 0)) #5
  store i8* %call6, i8** %primary, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.44, i32 0, i32 0)) #5
  store i8* %call7, i8** %message, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0)) #5
  store i8* %call8, i8** %link, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.46, i32 0, i32 0)) #5
  store i8* %call9, i8** %primary, align 8
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.47, i32 0, i32 0)) #5
  store i8* %call10, i8** %message, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i32 0, i32 0)) #5
  store i8* %call11, i8** %link, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0)) #5
  %12 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %file_dialog.addr, align 8
  %13 = bitcast %struct._GimpFileDialog* %12 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_widget_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call13)
  %14 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkWidget*
  %call15 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %call12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0), %struct._GtkWidget* %14, i32 2, void (i8*, i8*)* @gimp_standard_help_func, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %dialog, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_message_dialog_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call16)
  %17 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %17, i32 0, i32 1
  %18 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %19 = load i8*, i8** %primary, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i8* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_message_dialog_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call18)
  %22 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpMessageDialog*
  %box20 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %22, i32 0, i32 1
  %23 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box20, align 8
  %24 = load i8*, i8** %message, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i8* %24)
  %25 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %file_dialog.addr, align 8
  %save_a_copy = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %25, i32 0, i32 4
  %26 = load i32, i32* %save_a_copy, align 4
  %tobool21 = icmp ne i32 %26, 0
  br i1 %tobool21, label %if.end.36, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %27 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %file_dialog.addr, align 8
  %close_after_saving = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %27, i32 0, i32 6
  %28 = load i32, i32* %close_after_saving, align 4
  %tobool22 = icmp ne i32 %28, 0
  br i1 %tobool22, label %if.end.36, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true
  %29 = load i8*, i8** %link, align 8
  %call24 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.53, i32 0, i32 0), i8* %29)
  store i8* %call24, i8** %markup, align 8
  %30 = load i8*, i8** %markup, align 8
  %call25 = call %struct._GtkWidget* @gtk_label_new(i8* %30)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %label, align 8
  %31 = load i8*, i8** %markup, align 8
  call void @g_free(i8* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_label_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call26)
  %34 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkLabel*
  call void @gtk_label_set_use_markup(%struct._GtkLabel* %34, i32 1)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_misc_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call28)
  %37 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %37, float 0.000000e+00, float 5.000000e-01)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_message_dialog_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call30)
  %40 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpMessageDialog*
  %box32 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %40, i32 0, i32 1
  %41 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box32, align 8
  %42 = bitcast %struct._GimpMessageBox* %41 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_box_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call33)
  %43 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkBox*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %43, %struct._GtkWidget* %44, i32 0, i32 0, i32 0)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %45)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %49 = bitcast %struct._GtkWidget* %48 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, i8*, %struct._GtkDialog*)* @file_save_other_dialog_activated to void ()*), i8* %49, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.23, %land.lhs.true, %if.end
  %50 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %file_dialog.addr, align 8
  %51 = bitcast %struct._GimpFileDialog* %50 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_dialog_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call37)
  %52 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkDialog*
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %52, i32 -6, i32 0)
  %53 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %file_dialog.addr, align 8
  %54 = bitcast %struct._GimpFileDialog* %53 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_dialog_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call39)
  %55 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkDialog*
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %55, i32 -5, i32 0)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %57 = bitcast %struct._GtkWidget* %56 to i8*
  %call41 = call i8* @g_object_ref(i8* %57)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_dialog_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call42)
  %60 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpDialog*
  %call44 = call i32 @gimp_dialog_run(%struct._GimpDialog* %60)
  %cmp = icmp eq i32 %call44, -23
  br i1 %cmp, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.36
  store i32 1, i32* %switch_dialogs, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.36
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %61)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %63 = bitcast %struct._GtkWidget* %62 to i8*
  call void @g_object_unref(i8* %63)
  %64 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %file_dialog.addr, align 8
  %65 = bitcast %struct._GimpFileDialog* %64 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_dialog_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call47)
  %66 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkDialog*
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %66, i32 -6, i32 1)
  %67 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %file_dialog.addr, align 8
  %68 = bitcast %struct._GimpFileDialog* %67 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_dialog_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call49)
  %69 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkDialog*
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %69, i32 -5, i32 1)
  br label %if.end.54

if.else.51:                                       ; preds = %cond.end
  %70 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %71 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %file_dialog.addr, align 8
  %72 = bitcast %struct._GimpFileDialog* %71 to %struct._GTypeInstance*
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 80)
  %73 = bitcast %struct._GTypeInstance* %call52 to %struct._GObject*
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.55, i32 0, i32 0)) #5
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %70, %struct._GObject* %73, i32 1, i8* %call53)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.end.46
  %74 = load i32, i32* %switch_dialogs, align 4
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define internal i32 @file_save_dialog_use_extension(%struct._GtkWidget* %save_dialog, i8* %uri) #0 {
entry:
  %save_dialog.addr = alloca %struct._GtkWidget*, align 8
  %uri.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %use_name = alloca i32, align 4
  store %struct._GtkWidget* %save_dialog, %struct._GtkWidget** %save_dialog.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i32 0, i32* %use_name, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0)) #5
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog.addr, align 8
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), %struct._GtkWidget* %0, i32 2, void (i8*, i8*)* @gimp_standard_help_func, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %3, i32 -5, i32 -6, i32 -1)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_message_dialog_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %6, i32 0, i32 1
  %7 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.58, i32 0, i32 0)) #5
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %7, i8* %call6)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_message_dialog_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpMessageDialog*
  %box9 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %10, i32 0, i32 1
  %11 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box9, align 8
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.59, i32 0, i32 0)) #5
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %11, i8* %call10)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_dialog_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkDialog*
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %14, i32 -6, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_dialog_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkDialog*
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %17, i32 -5, i32 0)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %call15 = call i8* @g_object_ref(i8* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_dialog_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call16)
  %22 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpDialog*
  %call18 = call i32 @gimp_dialog_run(%struct._GimpDialog* %22)
  %cmp = icmp eq i32 %call18, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %use_name, align 4
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  call void @g_object_unref(i8* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog.addr, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_dialog_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkDialog*
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %28, i32 -6, i32 1)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog.addr, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_dialog_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkDialog*
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %31, i32 -5, i32 1)
  %32 = load i32, i32* %use_name, align 4
  ret i32 %32
}

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare %struct._GtkWidget* @gimp_message_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_message_dialog_get_type() #3

declare void @gimp_message_box_set_text(%struct._GimpMessageBox*, i8*, ...) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_label_set_use_markup(%struct._GtkLabel*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal i32 @file_save_other_dialog_activated(%struct._GtkWidget* %label, i8* %uri, %struct._GtkDialog* %dialog) #0 {
entry:
  %label.addr = alloca %struct._GtkWidget*, align 8
  %uri.addr = alloca i8*, align 8
  %dialog.addr = alloca %struct._GtkDialog*, align 8
  store %struct._GtkWidget* %label, %struct._GtkWidget** %label.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store %struct._GtkDialog* %dialog, %struct._GtkDialog** %dialog.addr, align 8
  %0 = load %struct._GtkDialog*, %struct._GtkDialog** %dialog.addr, align 8
  call void @gtk_dialog_response(%struct._GtkDialog* %0, i32 -23)
  ret i32 1
}

declare void @gtk_dialog_set_response_sensitive(%struct._GtkDialog*, i32, i32) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
