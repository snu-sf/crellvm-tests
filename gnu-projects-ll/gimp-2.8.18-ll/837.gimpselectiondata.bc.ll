; ModuleID = './app/widgets/gimpselectiondata.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkSelectionData = type { %struct._GdkAtom*, %struct._GdkAtom*, %struct._GdkAtom*, i32, i8*, i32, %struct._GdkDisplay* }
%struct._GdkAtom = type opaque
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GdkDrawable = type { %struct._GObject }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._cairo_font_options = type opaque
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GError = type { i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpCurve = type { %struct._GimpData, i32, i32, %struct._GimpVector2*, i32, double*, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpVector2 = type { double, double }
%struct._GimpConfig = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpToolOptions = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._TempBuf = type opaque
%struct._GimpBrushCache = type opaque
%struct._GimpPattern = type { %struct._GimpData, %struct._TempBuf* }
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
%struct._GimpPalette = type { %struct._GimpData, %struct._GList*, i32, i32 }
%struct._GimpFont = type opaque
%struct._GimpImagefile = type { %struct._GimpViewable }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_selection_data_set_uri_list = private unnamed_addr constant [33 x i8] c"gimp_selection_data_set_uri_list\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"selection != NULL\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"uri_list != NULL\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__func__.gimp_selection_data_get_uri_list = private unnamed_addr constant [33 x i8] c"gimp_selection_data_get_uri_list\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Received invalid file data!\00", align 1
@gimp_log_flags = external global i32, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"raw buffer >>%s<<\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"trying to convert \22%s\22 to an uri\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"file://\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"file:\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"The filename '%s' couldn't be converted to a valid URI:\0A\0A%s\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Invalid UTF-8\00", align 1
@__func__.gimp_selection_data_set_color = private unnamed_addr constant [30 x i8] c"gimp_selection_data_set_color\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@__func__.gimp_selection_data_get_color = private unnamed_addr constant [30 x i8] c"gimp_selection_data_get_color\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Received invalid color data!\00", align 1
@__func__.gimp_selection_data_set_stream = private unnamed_addr constant [31 x i8] c"gimp_selection_data_set_stream\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"stream != NULL\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"stream_length > 0\00", align 1
@__func__.gimp_selection_data_get_stream = private unnamed_addr constant [31 x i8] c"gimp_selection_data_get_stream\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"stream_length != NULL\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Received invalid data stream!\00", align 1
@__func__.gimp_selection_data_set_curve = private unnamed_addr constant [30 x i8] c"gimp_selection_data_set_curve\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"GIMP_IS_CURVE (curve)\00", align 1
@__func__.gimp_selection_data_get_curve = private unnamed_addr constant [30 x i8] c"gimp_selection_data_get_curve\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Received invalid curve data!\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"pasted curve\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"Received invalid curve data: %s\00", align 1
@__func__.gimp_selection_data_set_image = private unnamed_addr constant [30 x i8] c"gimp_selection_data_set_image\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@__func__.gimp_selection_data_get_image = private unnamed_addr constant [30 x i8] c"gimp_selection_data_get_image\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"%i:%i\00", align 1
@__func__.gimp_selection_data_set_component = private unnamed_addr constant [34 x i8] c"gimp_selection_data_set_component\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"%d:%d:%d\00", align 1
@__func__.gimp_selection_data_get_component = private unnamed_addr constant [34 x i8] c"gimp_selection_data_get_component\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"%i:%i:%i\00", align 1
@__func__.gimp_selection_data_set_item = private unnamed_addr constant [29 x i8] c"gimp_selection_data_set_item\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"GIMP_IS_ITEM (item)\00", align 1
@__func__.gimp_selection_data_get_item = private unnamed_addr constant [29 x i8] c"gimp_selection_data_get_item\00", align 1
@__func__.gimp_selection_data_set_object = private unnamed_addr constant [31 x i8] c"gimp_selection_data_set_object\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"GIMP_IS_OBJECT (object)\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"%d:%p:%s\00", align 1
@__func__.gimp_selection_data_get_brush = private unnamed_addr constant [30 x i8] c"gimp_selection_data_get_brush\00", align 1
@__func__.gimp_selection_data_get_pattern = private unnamed_addr constant [32 x i8] c"gimp_selection_data_get_pattern\00", align 1
@__func__.gimp_selection_data_get_gradient = private unnamed_addr constant [33 x i8] c"gimp_selection_data_get_gradient\00", align 1
@__func__.gimp_selection_data_get_palette = private unnamed_addr constant [32 x i8] c"gimp_selection_data_get_palette\00", align 1
@__func__.gimp_selection_data_get_font = private unnamed_addr constant [29 x i8] c"gimp_selection_data_get_font\00", align 1
@__func__.gimp_selection_data_get_buffer = private unnamed_addr constant [31 x i8] c"gimp_selection_data_get_buffer\00", align 1
@__func__.gimp_selection_data_get_imagefile = private unnamed_addr constant [34 x i8] c"gimp_selection_data_get_imagefile\00", align 1
@__func__.gimp_selection_data_get_template = private unnamed_addr constant [33 x i8] c"gimp_selection_data_get_template\00", align 1
@__func__.gimp_selection_data_get_tool_info = private unnamed_addr constant [34 x i8] c"gimp_selection_data_get_tool_info\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"%s: received invalid selection data\00", align 1
@.str.33 = private unnamed_addr constant [64 x i8] c"%s: received invalid selection data (doesn't validate as UTF-8)\00", align 1
@__func__.gimp_selection_data_get_name = private unnamed_addr constant [29 x i8] c"gimp_selection_data_get_name\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"name = '%s'\00", align 1
@__func__.gimp_selection_data_get_object = private unnamed_addr constant [31 x i8] c"gimp_selection_data_get_object\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"%i:%p:%n\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"pid = %d, addr = %p, name = '%s'\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"gimpselectiondata.c\00", align 1
@__func__.gimp_unescape_uri_string = private unnamed_addr constant [25 x i8] c"gimp_unescape_uri_string\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"out - result <= len\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_selection_data_set_uri_list(%struct._GtkSelectionData* %selection, %struct._GList* %uri_list) #0 {
entry:
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %uri_list.addr = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %vals = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._GList* %uri_list, %struct._GList** %uri_list.addr, align 8
  store i8* null, i8** %vals, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp = icmp ne %struct._GtkSelectionData* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_selection_data_set_uri_list, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GList*, %struct._GList** %uri_list.addr, align 8
  %cmp2 = icmp ne %struct._GList* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_selection_data_set_uri_list, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GList*, %struct._GList** %uri_list.addr, align 8
  store %struct._GList* %2, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.6
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %vals, align 8
  %tobool7 = icmp ne i8* %4, null
  br i1 %tobool7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %for.body
  %5 = load i8*, i8** %vals, align 8
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool9 = icmp ne %struct._GList* %9, null
  %cond = select i1 %tobool9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* null
  %call = call noalias i8* (i8*, ...) @g_strconcat(i8* %5, i8* %7, i8* %cond, i8* null)
  store i8* %call, i8** %tmp, align 8
  %10 = load i8*, i8** %vals, align 8
  call void @g_free(i8* %10)
  %11 = load i8*, i8** %tmp, align 8
  store i8* %11, i8** %vals, align 8
  br label %if.end.16

if.else.10:                                       ; preds = %for.body
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %data11 = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 0
  %13 = load i8*, i8** %data11, align 8
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %next12 = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %next12, align 8
  %tobool13 = icmp ne %struct._GList* %15, null
  %cond14 = select i1 %tobool13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* null
  %call15 = call noalias i8* (i8*, ...) @g_strconcat(i8* %13, i8* %cond14, i8* null)
  store i8* %call15, i8** %vals, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.10, %if.then.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %16, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %next18 = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %next18, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond19 = phi %struct._GList* [ %18, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond19, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %20 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call20 = call %struct._GdkAtom* @gtk_selection_data_get_target(%struct._GtkSelectionData* %20)
  %21 = load i8*, i8** %vals, align 8
  %22 = load i8*, i8** %vals, align 8
  %call21 = call i64 @strlen(i8* %22) #7
  %conv = trunc i64 %call21 to i32
  call void @gtk_selection_data_set(%struct._GtkSelectionData* %19, %struct._GdkAtom* %call20, i32 8, i8* %21, i32 %conv)
  %23 = load i8*, i8** %vals, align 8
  call void @g_free(i8* %23)
  br label %return

return:                                           ; preds = %for.end, %if.else.4, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare void @g_free(i8*) #1

declare void @gtk_selection_data_set(%struct._GtkSelectionData*, %struct._GdkAtom*, i32, i8*, i32) #1

declare %struct._GdkAtom* @gtk_selection_data_get_target(%struct._GtkSelectionData*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_selection_data_get_uri_list(%struct._GtkSelectionData* %selection) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %crap_list = alloca %struct._GList*, align 8
  %uri_list = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  %name_buffer = alloca [1024 x i8], align 16
  %name = alloca i8*, align 8
  %len = alloca i32, align 4
  %dnd_crap = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %hostname = alloca i8*, align 8
  %uri = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %start = alloca i8*, align 8
  %unescaped_filename = alloca i8*, align 8
  %local_filename = alloca i8*, align 8
  %escaped_filename = alloca i8*, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._GList* null, %struct._GList** %crap_list, align 8
  store %struct._GList* null, %struct._GList** %uri_list, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp = icmp ne %struct._GtkSelectionData* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_selection_data_get_uri_list, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call = call i32 @gtk_selection_data_get_length(%struct._GtkSelectionData* %1)
  store i32 %call, i32* %length, align 4
  %2 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call1 = call i32 @gtk_selection_data_get_format(%struct._GtkSelectionData* %2)
  %cmp2 = icmp ne i32 %call1, 8
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %3 = load i32, i32* %length, align 4
  %cmp3 = icmp slt i32 %3, 1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %do.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %4 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call6 = call i8* @gtk_selection_data_get_data(%struct._GtkSelectionData* %4)
  store i8* %call6, i8** %buffer, align 8
  store i8* %call6, i8** %data, align 8
  br label %do.body.7

do.body.7:                                        ; preds = %if.end.5
  %5 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %5, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.body.7
  %6 = load i8*, i8** %buffer, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_selection_data_get_uri_list, i32 0, i32 0), i32 126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* %6)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %do.body.7
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  br label %while.cond

while.cond:                                       ; preds = %if.end.48, %do.end.10
  %7 = load i8*, i8** %buffer, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %tobool11 = icmp ne i32 %conv, 0
  br i1 %tobool11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load i8*, i8** %buffer, align 8
  %10 = load i8*, i8** %data, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %11 = load i32, i32* %length, align 4
  %conv12 = sext i32 %11 to i64
  %cmp13 = icmp slt i64 %sub.ptr.sub, %conv12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp13, %land.rhs ]
  br i1 %12, label %while.body, label %while.end.49

while.body:                                       ; preds = %land.end
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %name_buffer, i32 0, i32 0
  store i8* %arraydecay, i8** %name, align 8
  store i32 0, i32* %len, align 4
  br label %while.cond.15

while.cond.15:                                    ; preds = %while.body.26, %while.body
  %13 = load i32, i32* %len, align 4
  %conv16 = sext i32 %13 to i64
  %cmp17 = icmp ult i64 %conv16, 1024
  br i1 %cmp17, label %land.lhs.true, label %land.end.25

land.lhs.true:                                    ; preds = %while.cond.15
  %14 = load i8*, i8** %buffer, align 8
  %15 = load i8, i8* %14, align 1
  %conv19 = sext i8 %15 to i32
  %tobool20 = icmp ne i32 %conv19, 0
  br i1 %tobool20, label %land.rhs.21, label %land.end.25

land.rhs.21:                                      ; preds = %land.lhs.true
  %16 = load i8*, i8** %buffer, align 8
  %17 = load i8, i8* %16, align 1
  %conv22 = sext i8 %17 to i32
  %cmp23 = icmp ne i32 %conv22, 10
  br label %land.end.25

land.end.25:                                      ; preds = %land.rhs.21, %land.lhs.true, %while.cond.15
  %18 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.15 ], [ %cmp23, %land.rhs.21 ]
  br i1 %18, label %while.body.26, label %while.end

while.body.26:                                    ; preds = %land.end.25
  %19 = load i8*, i8** %buffer, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %buffer, align 8
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %name, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr27, i8** %name, align 8
  store i8 %20, i8* %21, align 1
  %22 = load i32, i32* %len, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %len, align 4
  br label %while.cond.15

while.end:                                        ; preds = %land.end.25
  %23 = load i32, i32* %len, align 4
  %cmp28 = icmp eq i32 %23, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %while.end
  br label %while.end.49

if.end.31:                                        ; preds = %while.end
  %24 = load i8*, i8** %name, align 8
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 -1
  %25 = load i8, i8* %add.ptr, align 1
  %conv32 = sext i8 %25 to i32
  %cmp33 = icmp eq i32 %conv32, 13
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.31
  %26 = load i32, i32* %len, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %len, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.31
  %27 = load i32, i32* %len, align 4
  %cmp37 = icmp sgt i32 %27, 2
  br i1 %cmp37, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %if.end.36
  %28 = load %struct._GList*, %struct._GList** %crap_list, align 8
  %arraydecay40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %name_buffer, i32 0, i32 0
  %29 = load i32, i32* %len, align 4
  %conv41 = sext i32 %29 to i64
  %call42 = call noalias i8* @g_strndup(i8* %arraydecay40, i64 %conv41)
  %call43 = call %struct._GList* @g_list_prepend(%struct._GList* %28, i8* %call42)
  store %struct._GList* %call43, %struct._GList** %crap_list, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.39, %if.end.36
  %30 = load i8*, i8** %buffer, align 8
  %31 = load i8, i8* %30, align 1
  %tobool45 = icmp ne i8 %31, 0
  br i1 %tobool45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.44
  %32 = load i8*, i8** %buffer, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr47, i8** %buffer, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.44
  br label %while.cond

while.end.49:                                     ; preds = %if.then.30, %land.end
  %33 = load %struct._GList*, %struct._GList** %crap_list, align 8
  %tobool50 = icmp ne %struct._GList* %33, null
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %while.end.49
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.52:                                        ; preds = %while.end.49
  %34 = load %struct._GList*, %struct._GList** %crap_list, align 8
  store %struct._GList* %34, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.114, %if.end.52
  %35 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool53 = icmp ne %struct._GList* %35, null
  br i1 %tobool53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %data54 = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 0
  %37 = load i8*, i8** %data54, align 8
  store i8* %37, i8** %dnd_crap, align 8
  store i8* null, i8** %uri, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body.55

do.body.55:                                       ; preds = %for.body
  %38 = load i32, i32* @gimp_log_flags, align 4
  %and56 = and i32 %38, 4
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %do.body.55
  %39 = load i8*, i8** %dnd_crap, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_selection_data_get_uri_list, i32 0, i32 0), i32 169, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i8* %39)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %do.body.55
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  %40 = load i8*, i8** %dnd_crap, align 8
  %call61 = call noalias i8* @g_filename_from_uri(i8* %40, i8** %hostname, %struct._GError** null)
  store i8* %call61, i8** %filename, align 8
  %41 = load i8*, i8** %filename, align 8
  %tobool62 = icmp ne i8* %41, null
  br i1 %tobool62, label %if.then.63, label %if.else.65

if.then.63:                                       ; preds = %do.end.60
  %42 = load i8*, i8** %filename, align 8
  %43 = load i8*, i8** %hostname, align 8
  %call64 = call noalias i8* @g_filename_to_uri(i8* %42, i8* %43, %struct._GError** null)
  store i8* %call64, i8** %uri, align 8
  %44 = load i8*, i8** %hostname, align 8
  call void @g_free(i8* %44)
  %45 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %45)
  br label %if.end.109

if.else.65:                                       ; preds = %do.end.60
  %46 = load i8*, i8** %dnd_crap, align 8
  %call66 = call i32 @g_file_test(i8* %46, i32 16)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.else.70

if.then.68:                                       ; preds = %if.else.65
  %47 = load i8*, i8** %dnd_crap, align 8
  %call69 = call noalias i8* @g_filename_to_uri(i8* %47, i8* null, %struct._GError** null)
  store i8* %call69, i8** %uri, align 8
  br label %if.end.108

if.else.70:                                       ; preds = %if.else.65
  %48 = load i8*, i8** %dnd_crap, align 8
  store i8* %48, i8** %start, align 8
  %49 = load i8*, i8** %dnd_crap, align 8
  %call71 = call i32 @g_str_has_prefix(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0))
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then.73, label %if.else.75

if.then.73:                                       ; preds = %if.else.70
  %50 = load i8*, i8** %start, align 8
  %add.ptr74 = getelementptr inbounds i8, i8* %50, i64 7
  store i8* %add.ptr74, i8** %start, align 8
  br label %if.end.81

if.else.75:                                       ; preds = %if.else.70
  %51 = load i8*, i8** %dnd_crap, align 8
  %call76 = call i32 @g_str_has_prefix(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.else.75
  %52 = load i8*, i8** %start, align 8
  %add.ptr79 = getelementptr inbounds i8, i8* %52, i64 5
  store i8* %add.ptr79, i8** %start, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.else.75
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.73
  %53 = load i8*, i8** %start, align 8
  %54 = load i8*, i8** %dnd_crap, align 8
  %cmp82 = icmp ne i8* %53, %54
  br i1 %cmp82, label %if.then.84, label %if.else.105

if.then.84:                                       ; preds = %if.end.81
  %55 = load i8*, i8** %dnd_crap, align 8
  %call85 = call i8* @strstr(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #7
  %tobool86 = icmp ne i8* %call85, null
  br i1 %tobool86, label %if.then.87, label %if.else.93

if.then.87:                                       ; preds = %if.then.84
  %56 = load i8*, i8** %start, align 8
  %call88 = call i8* @gimp_unescape_uri_string(i8* %56, i32 -1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i32 0)
  store i8* %call88, i8** %unescaped_filename, align 8
  %57 = load i8*, i8** %unescaped_filename, align 8
  %call89 = call noalias i8* @g_filename_from_utf8(i8* %57, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call89, i8** %local_filename, align 8
  %58 = load i8*, i8** %local_filename, align 8
  %tobool90 = icmp ne i8* %58, null
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.then.87
  %59 = load i8*, i8** %unescaped_filename, align 8
  call void @g_free(i8* %59)
  %60 = load i8*, i8** %local_filename, align 8
  store i8* %60, i8** %unescaped_filename, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.then.87
  br label %if.end.95

if.else.93:                                       ; preds = %if.then.84
  %61 = load i8*, i8** %start, align 8
  %call94 = call noalias i8* @g_strdup(i8* %61)
  store i8* %call94, i8** %unescaped_filename, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.93, %if.end.92
  %62 = load i8*, i8** %unescaped_filename, align 8
  %call96 = call noalias i8* @g_filename_to_uri(i8* %62, i8* null, %struct._GError** %error)
  store i8* %call96, i8** %uri, align 8
  %63 = load i8*, i8** %uri, align 8
  %tobool97 = icmp ne i8* %63, null
  br i1 %tobool97, label %if.end.104, label %if.then.98

if.then.98:                                       ; preds = %if.end.95
  %64 = load i8*, i8** %unescaped_filename, align 8
  %call99 = call noalias i8* @g_strescape(i8* %64, i8* null)
  store i8* %call99, i8** %escaped_filename, align 8
  %call100 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i32 0, i32 0)) #5
  %65 = load i8*, i8** %escaped_filename, align 8
  %66 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %66, i32 0, i32 2
  %67 = load i8*, i8** %message, align 8
  %tobool101 = icmp ne i8* %67, null
  br i1 %tobool101, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.98
  %68 = load %struct._GError*, %struct._GError** %error, align 8
  %message102 = getelementptr inbounds %struct._GError, %struct._GError* %68, i32 0, i32 2
  %69 = load i8*, i8** %message102, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.98
  %call103 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %69, %cond.true ], [ %call103, %cond.false ]
  call void (i8*, ...) @g_message(i8* %call100, i8* %65, i8* %cond)
  %70 = load i8*, i8** %escaped_filename, align 8
  call void @g_free(i8* %70)
  call void @g_clear_error(%struct._GError** %error)
  %71 = load i8*, i8** %unescaped_filename, align 8
  call void @g_free(i8* %71)
  br label %for.inc

if.end.104:                                       ; preds = %if.end.95
  %72 = load i8*, i8** %unescaped_filename, align 8
  call void @g_free(i8* %72)
  br label %if.end.107

if.else.105:                                      ; preds = %if.end.81
  %73 = load i8*, i8** %dnd_crap, align 8
  %call106 = call noalias i8* @g_strdup(i8* %73)
  store i8* %call106, i8** %uri, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.105, %if.end.104
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.68
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.63
  %74 = load %struct._GList*, %struct._GList** %uri_list, align 8
  %75 = load i8*, i8** %uri, align 8
  %call110 = call %struct._GList* @g_list_prepend(%struct._GList* %74, i8* %75)
  store %struct._GList* %call110, %struct._GList** %uri_list, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.109, %cond.end
  %76 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool111 = icmp ne %struct._GList* %76, null
  br i1 %tobool111, label %cond.true.112, label %cond.false.113

cond.true.112:                                    ; preds = %for.inc
  %77 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %77, i32 0, i32 1
  %78 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.114

cond.false.113:                                   ; preds = %for.inc
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.113, %cond.true.112
  %cond115 = phi %struct._GList* [ %78, %cond.true.112 ], [ null, %cond.false.113 ]
  store %struct._GList* %cond115, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %79 = load %struct._GList*, %struct._GList** %crap_list, align 8
  call void @g_list_free_full(%struct._GList* %79, void (i8*)* @g_free)
  %80 = load %struct._GList*, %struct._GList** %uri_list, align 8
  store %struct._GList* %80, %struct._GList** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.51, %if.then.4, %if.else
  %81 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %81
}

declare i32 @gtk_selection_data_get_length(%struct._GtkSelectionData*) #1

declare i32 @gtk_selection_data_get_format(%struct._GtkSelectionData*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @gtk_selection_data_get_data(%struct._GtkSelectionData*) #1

declare void @gimp_log(i32, i8*, i32, i8*, ...) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare noalias i8* @g_strndup(i8*, i64) #1

declare noalias i8* @g_filename_from_uri(i8*, i8**, %struct._GError**) #1

declare noalias i8* @g_filename_to_uri(i8*, i8*, %struct._GError**) #1

declare i32 @g_file_test(i8*, i32) #1

declare i32 @g_str_has_prefix(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @gimp_unescape_uri_string(i8* %escaped, i32 %len, i8* %illegal_escaped_characters, i32 %ascii_must_not_be_escaped) #0 {
entry:
  %retval = alloca i8*, align 8
  %escaped.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %illegal_escaped_characters.addr = alloca i8*, align 8
  %ascii_must_not_be_escaped.addr = alloca i32, align 4
  %in = alloca i8*, align 8
  %in_end = alloca i8*, align 8
  %out = alloca i8*, align 8
  %result = alloca i8*, align 8
  %c = alloca i32, align 4
  store i8* %escaped, i8** %escaped.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %illegal_escaped_characters, i8** %illegal_escaped_characters.addr, align 8
  store i32 %ascii_must_not_be_escaped, i32* %ascii_must_not_be_escaped.addr, align 4
  %0 = load i8*, i8** %escaped.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load i8*, i8** %escaped.addr, align 8
  %call = call i64 @strlen(i8* %2) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len.addr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %3 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %3, 1
  %conv4 = sext i32 %add to i64
  %call5 = call noalias i8* @g_malloc(i64 %conv4)
  store i8* %call5, i8** %result, align 8
  %4 = load i8*, i8** %result, align 8
  store i8* %4, i8** %out, align 8
  %5 = load i8*, i8** %escaped.addr, align 8
  store i8* %5, i8** %in, align 8
  %6 = load i8*, i8** %escaped.addr, align 8
  %7 = load i32, i32* %len.addr, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %in_end, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %8 = load i8*, i8** %in, align 8
  %9 = load i8*, i8** %in_end, align 8
  %cmp6 = icmp ult i8* %8, %9
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %in, align 8
  %11 = load i8, i8* %10, align 1
  %conv8 = sext i8 %11 to i32
  store i32 %conv8, i32* %c, align 4
  %12 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %12, 37
  br i1 %cmp9, label %if.then.11, label %if.end.33

if.then.11:                                       ; preds = %for.body
  %13 = load i8*, i8** %in, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %13, i64 3
  %14 = load i8*, i8** %in_end, align 8
  %cmp13 = icmp ugt i8* %add.ptr12, %14
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.11
  br label %for.end

if.end.16:                                        ; preds = %if.then.11
  %15 = load i8*, i8** %in, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %15, i64 1
  %call18 = call i32 @unescape_character(i8* %add.ptr17)
  store i32 %call18, i32* %c, align 4
  %16 = load i32, i32* %c, align 4
  %cmp19 = icmp sle i32 %16, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.16
  br label %for.end

if.end.22:                                        ; preds = %if.end.16
  %17 = load i32, i32* %ascii_must_not_be_escaped.addr, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.22
  %18 = load i32, i32* %c, align 4
  %cmp23 = icmp sle i32 %18, 127
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true
  br label %for.end

if.end.26:                                        ; preds = %land.lhs.true, %if.end.22
  %19 = load i8*, i8** %illegal_escaped_characters.addr, align 8
  %20 = load i32, i32* %c, align 4
  %call27 = call i8* @strchr(i8* %19, i32 %20) #7
  %cmp28 = icmp ne i8* %call27, null
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.26
  br label %for.end

if.end.31:                                        ; preds = %if.end.26
  %21 = load i8*, i8** %in, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %add.ptr32, i8** %in, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.31, %for.body
  %22 = load i32, i32* %c, align 4
  %conv34 = trunc i32 %22 to i8
  %23 = load i8*, i8** %out, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %out, align 8
  store i8 %conv34, i8* %23, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %24 = load i8*, i8** %in, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr35, i8** %in, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.30, %if.then.25, %if.then.21, %if.then.15, %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %25 = load i8*, i8** %out, align 8
  %26 = load i8*, i8** %result, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %27 = load i32, i32* %len.addr, align 4
  %conv36 = sext i32 %27 to i64
  %cmp37 = icmp sle i64 %sub.ptr.sub, %conv36
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %do.body
  br label %if.end.40

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0), i32 846, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_unescape_uri_string, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0)) #8
  unreachable

if.end.40:                                        ; preds = %if.then.39
  br label %do.end

do.end:                                           ; preds = %if.end.40
  %28 = load i8*, i8** %out, align 8
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** %in, align 8
  %30 = load i8*, i8** %in_end, align 8
  %cmp41 = icmp ne i8* %29, %30
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %do.end
  %31 = load i8*, i8** %result, align 8
  call void @g_free(i8* %31)
  store i8* null, i8** %retval
  br label %return

if.end.44:                                        ; preds = %do.end
  %32 = load i8*, i8** %result, align 8
  store i8* %32, i8** %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then.43, %if.then
  %33 = load i8*, i8** %retval
  ret i8* %33
}

declare noalias i8* @g_filename_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

declare noalias i8* @g_strdup(i8*) #1

declare noalias i8* @g_strescape(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @g_clear_error(%struct._GError**) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define void @gimp_selection_data_set_color(%struct._GtkSelectionData* %selection, %struct._GimpRGB* %color) #0 {
entry:
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %vals = alloca [4 x i16], align 2
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %a = alloca i8, align 1
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp = icmp ne %struct._GtkSelectionData* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_selection_data_set_color, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp2 = icmp ne %struct._GimpRGB* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_selection_data_set_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* %2, i8* %r, i8* %g, i8* %b, i8* %a)
  %3 = load i8, i8* %r, align 1
  %conv = zext i8 %3 to i32
  %4 = load i8, i8* %r, align 1
  %conv7 = zext i8 %4 to i32
  %shl = shl i32 %conv7, 8
  %add = add nsw i32 %conv, %shl
  %conv8 = trunc i32 %add to i16
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %vals, i32 0, i64 0
  store i16 %conv8, i16* %arrayidx, align 2
  %5 = load i8, i8* %g, align 1
  %conv9 = zext i8 %5 to i32
  %6 = load i8, i8* %g, align 1
  %conv10 = zext i8 %6 to i32
  %shl11 = shl i32 %conv10, 8
  %add12 = add nsw i32 %conv9, %shl11
  %conv13 = trunc i32 %add12 to i16
  %arrayidx14 = getelementptr inbounds [4 x i16], [4 x i16]* %vals, i32 0, i64 1
  store i16 %conv13, i16* %arrayidx14, align 2
  %7 = load i8, i8* %b, align 1
  %conv15 = zext i8 %7 to i32
  %8 = load i8, i8* %b, align 1
  %conv16 = zext i8 %8 to i32
  %shl17 = shl i32 %conv16, 8
  %add18 = add nsw i32 %conv15, %shl17
  %conv19 = trunc i32 %add18 to i16
  %arrayidx20 = getelementptr inbounds [4 x i16], [4 x i16]* %vals, i32 0, i64 2
  store i16 %conv19, i16* %arrayidx20, align 2
  %9 = load i8, i8* %a, align 1
  %conv21 = zext i8 %9 to i32
  %10 = load i8, i8* %a, align 1
  %conv22 = zext i8 %10 to i32
  %shl23 = shl i32 %conv22, 8
  %add24 = add nsw i32 %conv21, %shl23
  %conv25 = trunc i32 %add24 to i16
  %arrayidx26 = getelementptr inbounds [4 x i16], [4 x i16]* %vals, i32 0, i64 3
  store i16 %conv25, i16* %arrayidx26, align 2
  %11 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %12 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call = call %struct._GdkAtom* @gtk_selection_data_get_target(%struct._GtkSelectionData* %12)
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %vals, i32 0, i32 0
  %13 = bitcast i16* %arraydecay to i8*
  call void @gtk_selection_data_set(%struct._GtkSelectionData* %11, %struct._GdkAtom* %call, i32 16, i8* %13, i32 8)
  br label %return

return:                                           ; preds = %do.end.6, %if.else.4, %if.else
  ret void
}

declare void @gimp_rgba_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_selection_data_get_color(%struct._GtkSelectionData* %selection, %struct._GimpRGB* %color) #0 {
entry:
  %retval = alloca i32, align 4
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %color_vals = alloca i16*, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp = icmp ne %struct._GtkSelectionData* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_selection_data_get_color, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp2 = icmp ne %struct._GimpRGB* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_selection_data_get_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call = call i32 @gtk_selection_data_get_format(%struct._GtkSelectionData* %2)
  %cmp7 = icmp ne i32 %call, 16
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.6
  %3 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call8 = call i32 @gtk_selection_data_get_length(%struct._GtkSelectionData* %3)
  %cmp9 = icmp ne i32 %call8, 8
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %do.end.6
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false
  %4 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call12 = call i8* @gtk_selection_data_get_data(%struct._GtkSelectionData* %4)
  %5 = bitcast i8* %call12 to i16*
  store i16* %5, i16** %color_vals, align 8
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %7 = load i16*, i16** %color_vals, align 8
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 0
  %8 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %8 to i32
  %shr = ashr i32 %conv, 8
  %conv13 = trunc i32 %shr to i8
  %9 = load i16*, i16** %color_vals, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %9, i64 1
  %10 = load i16, i16* %arrayidx14, align 2
  %conv15 = zext i16 %10 to i32
  %shr16 = ashr i32 %conv15, 8
  %conv17 = trunc i32 %shr16 to i8
  %11 = load i16*, i16** %color_vals, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %11, i64 2
  %12 = load i16, i16* %arrayidx18, align 2
  %conv19 = zext i16 %12 to i32
  %shr20 = ashr i32 %conv19, 8
  %conv21 = trunc i32 %shr20 to i8
  %13 = load i16*, i16** %color_vals, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %13, i64 3
  %14 = load i16, i16* %arrayidx22, align 2
  %conv23 = zext i16 %14 to i32
  %shr24 = ashr i32 %conv23, 8
  %conv25 = trunc i32 %shr24 to i8
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %6, i8 zeroext %conv13, i8 zeroext %conv17, i8 zeroext %conv21, i8 zeroext %conv25)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.else.4, %if.else
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare void @gimp_rgba_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

; Function Attrs: nounwind uwtable
define void @gimp_selection_data_set_stream(%struct._GtkSelectionData* %selection, i8* %stream, i64 %stream_length) #0 {
entry:
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %stream.addr = alloca i8*, align 8
  %stream_length.addr = alloca i64, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store i8* %stream, i8** %stream.addr, align 8
  store i64 %stream_length, i64* %stream_length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp = icmp ne %struct._GtkSelectionData* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_selection_data_set_stream, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %stream.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_selection_data_set_stream, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i64, i64* %stream_length.addr, align 8
  %cmp8 = icmp ugt i64 %2, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_selection_data_set_stream, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %3 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %4 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call = call %struct._GdkAtom* @gtk_selection_data_get_target(%struct._GtkSelectionData* %4)
  %5 = load i8*, i8** %stream.addr, align 8
  %6 = load i64, i64* %stream_length.addr, align 8
  %conv = trunc i64 %6 to i32
  call void @gtk_selection_data_set(%struct._GtkSelectionData* %3, %struct._GdkAtom* %call, i32 8, i8* %5, i32 %conv)
  br label %return

return:                                           ; preds = %do.end.12, %if.else.10, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gimp_selection_data_get_stream(%struct._GtkSelectionData* %selection, i64* %stream_length) #0 {
entry:
  %retval = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %stream_length.addr = alloca i64*, align 8
  %length = alloca i32, align 4
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store i64* %stream_length, i64** %stream_length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp = icmp ne %struct._GtkSelectionData* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_selection_data_get_stream, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i64*, i64** %stream_length.addr, align 8
  %cmp2 = icmp ne i64* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_selection_data_get_stream, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call = call i32 @gtk_selection_data_get_length(%struct._GtkSelectionData* %2)
  store i32 %call, i32* %length, align 4
  %3 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call7 = call i32 @gtk_selection_data_get_format(%struct._GtkSelectionData* %3)
  %cmp8 = icmp ne i32 %call7, 8
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.6
  %4 = load i32, i32* %length, align 4
  %cmp9 = icmp slt i32 %4, 1
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %do.end.6
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false
  %5 = load i32, i32* %length, align 4
  %conv = sext i32 %5 to i64
  %6 = load i64*, i64** %stream_length.addr, align 8
  store i64 %conv, i64* %6, align 8
  %7 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call12 = call i8* @gtk_selection_data_get_data(%struct._GtkSelectionData* %7)
  store i8* %call12, i8** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.else.4, %if.else
  %8 = load i8*, i8** %retval
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define void @gimp_selection_data_set_curve(%struct._GtkSelectionData* %selection, %struct._GimpCurve* %curve) #0 {
entry:
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %str = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp = icmp ne %struct._GtkSelectionData* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_selection_data_set_curve, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %2 = bitcast %struct._GimpCurve* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_get_type() #9
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else.3, label %if.then.2

if.then.2:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.3:                                        ; preds = %do.body.1
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.3
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.3
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_selection_data_set_curve, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %15 = bitcast %struct._GimpCurve* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_config_interface_get_type() #9
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpConfig*
  %call19 = call i8* @gimp_config_serialize_to_string(%struct._GimpConfig* %16, i8* null)
  store i8* %call19, i8** %str, align 8
  %17 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %18 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call20 = call %struct._GdkAtom* @gtk_selection_data_get_target(%struct._GtkSelectionData* %18)
  %19 = load i8*, i8** %str, align 8
  %20 = load i8*, i8** %str, align 8
  %call21 = call i64 @strlen(i8* %20) #7
  %conv = trunc i64 %call21 to i32
  call void @gtk_selection_data_set(%struct._GtkSelectionData* %17, %struct._GdkAtom* %call20, i32 8, i8* %19, i32 %conv)
  %21 = load i8*, i8** %str, align 8
  call void @g_free(i8* %21)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_curve_get_type() #4

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare i8* @gimp_config_serialize_to_string(%struct._GimpConfig*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #4

; Function Attrs: nounwind uwtable
define %struct._GimpCurve* @gimp_selection_data_get_curve(%struct._GtkSelectionData* %selection) #0 {
entry:
  %retval = alloca %struct._GimpCurve*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %curve = alloca %struct._GimpCurve*, align 8
  %length = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp = icmp ne %struct._GtkSelectionData* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_selection_data_get_curve, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpCurve* null, %struct._GimpCurve** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call = call i32 @gtk_selection_data_get_length(%struct._GtkSelectionData* %1)
  store i32 %call, i32* %length, align 4
  %2 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call1 = call i32 @gtk_selection_data_get_format(%struct._GtkSelectionData* %2)
  %cmp2 = icmp ne i32 %call1, 8
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %3 = load i32, i32* %length, align 4
  %cmp3 = icmp slt i32 %3, 1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %do.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0))
  store %struct._GimpCurve* null, %struct._GimpCurve** %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %call6 = call %struct._GimpData* @gimp_curve_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0))
  %4 = bitcast %struct._GimpData* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_curve_get_type() #9
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call7)
  %5 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpCurve*
  store %struct._GimpCurve* %5, %struct._GimpCurve** %curve, align 8
  %6 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %7 = bitcast %struct._GimpCurve* %6 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_config_interface_get_type() #9
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call9)
  %8 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpConfig*
  %9 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call11 = call i8* @gtk_selection_data_get_data(%struct._GtkSelectionData* %9)
  %10 = load i32, i32* %length, align 4
  %call12 = call i32 @gimp_config_deserialize_string(%struct._GimpConfig* %8, i8* %call11, i32 %10, i8* null, %struct._GError** %error)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.5
  %11 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %11, i32 0, i32 2
  %12 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i32 0, i32 0), i8* %12)
  call void @g_clear_error(%struct._GError** %error)
  %13 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %14 = bitcast %struct._GimpCurve* %13 to i8*
  call void @g_object_unref(i8* %14)
  store %struct._GimpCurve* null, %struct._GimpCurve** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.5
  %15 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  store %struct._GimpCurve* %15, %struct._GimpCurve** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.then.4, %if.else
  %16 = load %struct._GimpCurve*, %struct._GimpCurve** %retval
  ret %struct._GimpCurve* %16
}

declare %struct._GimpData* @gimp_curve_new(i8*) #1

declare i32 @gimp_config_deserialize_string(%struct._GimpConfig*, i8*, i32, i8*, %struct._GError**) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_selection_data_set_image(%struct._GtkSelectionData* %selection, %struct._GimpImage* %image) #0 {
entry:
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %str = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp = icmp ne %struct._GtkSelectionData* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_selection_data_set_image, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %2 = bitcast %struct._GimpImage* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #9
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else.3, label %if.then.2

if.then.2:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.3:                                        ; preds = %do.body.1
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.3
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.3
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_selection_data_set_image, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %call17 = call i32 @get_pid()
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call18 = call i32 @gimp_image_get_ID(%struct._GimpImage* %14)
  %call19 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %call17, i32 %call18)
  store i8* %call19, i8** %str, align 8
  %15 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %16 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call20 = call %struct._GdkAtom* @gtk_selection_data_get_target(%struct._GtkSelectionData* %16)
  %17 = load i8*, i8** %str, align 8
  %18 = load i8*, i8** %str, align 8
  %call21 = call i64 @strlen(i8* %18) #7
  %conv = trunc i64 %call21 to i32
  call void @gtk_selection_data_set(%struct._GtkSelectionData* %15, %struct._GdkAtom* %call20, i32 8, i8* %17, i32 %conv)
  %19 = load i8*, i8** %str, align 8
  call void @g_free(i8* %19)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #4

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @get_pid() #1

declare i32 @gimp_image_get_ID(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @gimp_selection_data_get_image(%struct._GtkSelectionData* %selection, %struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %str = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pid = alloca i32, align 4
  %ID = alloca i32, align 4
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #9
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_selection_data_get_image, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp12 = icmp ne %struct._GtkSelectionData* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_selection_data_get_image, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call17 = call i8* @gimp_selection_data_get_name(%struct._GtkSelectionData* %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_selection_data_get_image, i32 0, i32 0))
  store i8* %call17, i8** %str, align 8
  %15 = load i8*, i8** %str, align 8
  %tobool18 = icmp ne i8* %15, null
  br i1 %tobool18, label %if.then.19, label %if.end.30

if.then.19:                                       ; preds = %do.end.16
  %16 = load i8*, i8** %str, align 8
  %call22 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32* %pid, i32* %ID) #5
  %cmp23 = icmp eq i32 %call22, 2
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.29

land.lhs.true.24:                                 ; preds = %if.then.19
  %17 = load i32, i32* %pid, align 4
  %call25 = call i32 @get_pid()
  %cmp26 = icmp eq i32 %17, %call25
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %land.lhs.true.24
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %19 = load i32, i32* %ID, align 4
  %call28 = call %struct._GimpImage* @gimp_image_get_by_ID(%struct._Gimp* %18, i32 %19)
  store %struct._GimpImage* %call28, %struct._GimpImage** %retval
  br label %return

if.end.29:                                        ; preds = %land.lhs.true.24, %if.then.19
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %do.end.16
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.27, %if.else.14, %if.else.9
  %20 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %20
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #4

; Function Attrs: nounwind uwtable
define internal i8* @gimp_selection_data_get_name(%struct._GtkSelectionData* %selection, i8* %strfunc) #0 {
entry:
  %retval = alloca i8*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %strfunc.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store i8* %strfunc, i8** %strfunc.addr, align 8
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call = call i32 @gtk_selection_data_get_format(%struct._GtkSelectionData* %0)
  %cmp = icmp ne i32 %call, 8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call1 = call i32 @gtk_selection_data_get_length(%struct._GtkSelectionData* %1)
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i8*, i8** %strfunc.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0), i8* %2)
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call3 = call i8* @gtk_selection_data_get_data(%struct._GtkSelectionData* %3)
  store i8* %call3, i8** %name, align 8
  %4 = load i8*, i8** %name, align 8
  %call4 = call i32 @g_utf8_validate(i8* %4, i64 -1, i8** null)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %5 = load i8*, i8** %strfunc.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.33, i32 0, i32 0), i8* %5)
  store i8* null, i8** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %6 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %6, 4
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.body
  %7 = load i8*, i8** %name, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_selection_data_get_name, i32 0, i32 0), i32 727, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i8* %7)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %8 = load i8*, i8** %name, align 8
  store i8* %8, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.5, %if.then
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare %struct._GimpImage* @gimp_image_get_by_ID(%struct._Gimp*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_selection_data_set_component(%struct._GtkSelectionData* %selection, %struct._GimpImage* %image, i32 %channel) #0 {
entry:
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %channel.addr = alloca i32, align 4
  %str = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp = icmp ne %struct._GtkSelectionData* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_selection_data_set_component, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %2 = bitcast %struct._GimpImage* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #9
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else.3, label %if.then.2

if.then.2:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.3:                                        ; preds = %do.body.1
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.3
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.3
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_selection_data_set_component, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %call17 = call i32 @get_pid()
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call18 = call i32 @gimp_image_get_ID(%struct._GimpImage* %14)
  %15 = load i32, i32* %channel.addr, align 4
  %call19 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %call17, i32 %call18, i32 %15)
  store i8* %call19, i8** %str, align 8
  %16 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %17 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call20 = call %struct._GdkAtom* @gtk_selection_data_get_target(%struct._GtkSelectionData* %17)
  %18 = load i8*, i8** %str, align 8
  %19 = load i8*, i8** %str, align 8
  %call21 = call i64 @strlen(i8* %19) #7
  %conv = trunc i64 %call21 to i32
  call void @gtk_selection_data_set(%struct._GtkSelectionData* %16, %struct._GdkAtom* %call20, i32 8, i8* %18, i32 %conv)
  %20 = load i8*, i8** %str, align 8
  call void @g_free(i8* %20)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @gimp_selection_data_get_component(%struct._GtkSelectionData* %selection, %struct._Gimp* %gimp, i32* %channel) #0 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %channel.addr = alloca i32*, align 8
  %str = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pid = alloca i32, align 4
  %ID = alloca i32, align 4
  %ch = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32* %channel, i32** %channel.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #9
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_selection_data_get_component, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp12 = icmp ne %struct._GtkSelectionData* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_selection_data_get_component, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load i32*, i32** %channel.addr, align 8
  %tobool17 = icmp ne i32* %14, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end.16
  %15 = load i32*, i32** %channel.addr, align 8
  store i32 0, i32* %15, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %do.end.16
  %16 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call20 = call i8* @gimp_selection_data_get_name(%struct._GtkSelectionData* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_selection_data_get_component, i32 0, i32 0))
  store i8* %call20, i8** %str, align 8
  %17 = load i8*, i8** %str, align 8
  %tobool21 = icmp ne i8* %17, null
  br i1 %tobool21, label %if.then.22, label %if.end.40

if.then.22:                                       ; preds = %if.end.19
  %18 = load i8*, i8** %str, align 8
  %call26 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32* %pid, i32* %ID, i32* %ch) #5
  %cmp27 = icmp eq i32 %call26, 3
  br i1 %cmp27, label %land.lhs.true.28, label %if.end.39

land.lhs.true.28:                                 ; preds = %if.then.22
  %19 = load i32, i32* %pid, align 4
  %call29 = call i32 @get_pid()
  %cmp30 = icmp eq i32 %19, %call29
  br i1 %cmp30, label %if.then.31, label %if.end.39

if.then.31:                                       ; preds = %land.lhs.true.28
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %21 = load i32, i32* %ID, align 4
  %call33 = call %struct._GimpImage* @gimp_image_get_by_ID(%struct._Gimp* %20, i32 %21)
  store %struct._GimpImage* %call33, %struct._GimpImage** %image, align 8
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool34 = icmp ne %struct._GimpImage* %22, null
  br i1 %tobool34, label %land.lhs.true.35, label %if.end.38

land.lhs.true.35:                                 ; preds = %if.then.31
  %23 = load i32*, i32** %channel.addr, align 8
  %tobool36 = icmp ne i32* %23, null
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %land.lhs.true.35
  %24 = load i32, i32* %ch, align 4
  %25 = load i32*, i32** %channel.addr, align 8
  store i32 %24, i32* %25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %land.lhs.true.35, %if.then.31
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  store %struct._GimpImage* %26, %struct._GimpImage** %retval
  br label %return

if.end.39:                                        ; preds = %land.lhs.true.28, %if.then.22
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.19
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.end.38, %if.else.14, %if.else.9
  %27 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %27
}

; Function Attrs: nounwind uwtable
define void @gimp_selection_data_set_item(%struct._GtkSelectionData* %selection, %struct._GimpItem* %item) #0 {
entry:
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %str = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp = icmp ne %struct._GtkSelectionData* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_selection_data_set_item, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %2 = bitcast %struct._GimpItem* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #9
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else.3, label %if.then.2

if.then.2:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.3:                                        ; preds = %do.body.1
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.3
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.3
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_selection_data_set_item, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %call17 = call i32 @get_pid()
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call18 = call i32 @gimp_item_get_ID(%struct._GimpItem* %14)
  %call19 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %call17, i32 %call18)
  store i8* %call19, i8** %str, align 8
  %15 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %16 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call20 = call %struct._GdkAtom* @gtk_selection_data_get_target(%struct._GtkSelectionData* %16)
  %17 = load i8*, i8** %str, align 8
  %18 = load i8*, i8** %str, align 8
  %call21 = call i64 @strlen(i8* %18) #7
  %conv = trunc i64 %call21 to i32
  call void @gtk_selection_data_set(%struct._GtkSelectionData* %15, %struct._GdkAtom* %call20, i32 8, i8* %17, i32 %conv)
  %19 = load i8*, i8** %str, align 8
  call void @g_free(i8* %19)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #4

declare i32 @gimp_item_get_ID(%struct._GimpItem*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpItem* @gimp_selection_data_get_item(%struct._GtkSelectionData* %selection, %struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %str = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pid = alloca i32, align 4
  %ID = alloca i32, align 4
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #9
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_selection_data_get_item, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp12 = icmp ne %struct._GtkSelectionData* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_selection_data_get_item, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call17 = call i8* @gimp_selection_data_get_name(%struct._GtkSelectionData* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_selection_data_get_item, i32 0, i32 0))
  store i8* %call17, i8** %str, align 8
  %15 = load i8*, i8** %str, align 8
  %tobool18 = icmp ne i8* %15, null
  br i1 %tobool18, label %if.then.19, label %if.end.30

if.then.19:                                       ; preds = %do.end.16
  %16 = load i8*, i8** %str, align 8
  %call22 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32* %pid, i32* %ID) #5
  %cmp23 = icmp eq i32 %call22, 2
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.29

land.lhs.true.24:                                 ; preds = %if.then.19
  %17 = load i32, i32* %pid, align 4
  %call25 = call i32 @get_pid()
  %cmp26 = icmp eq i32 %17, %call25
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %land.lhs.true.24
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %19 = load i32, i32* %ID, align 4
  %call28 = call %struct._GimpItem* @gimp_item_get_by_ID(%struct._Gimp* %18, i32 %19)
  store %struct._GimpItem* %call28, %struct._GimpItem** %retval
  br label %return

if.end.29:                                        ; preds = %land.lhs.true.24, %if.then.19
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %do.end.16
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.27, %if.else.14, %if.else.9
  %20 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %20
}

declare %struct._GimpItem* @gimp_item_get_by_ID(%struct._Gimp*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_selection_data_set_object(%struct._GtkSelectionData* %selection, %struct._GimpObject* %object) #0 {
entry:
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %name = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %str = alloca i8*, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp = icmp ne %struct._GtkSelectionData* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_selection_data_set_object, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.25

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %2 = bitcast %struct._GimpObject* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_object_get_type() #9
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else.3, label %if.then.2

if.then.2:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.3:                                        ; preds = %do.body.1
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.3
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.3
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_selection_data_set_object, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.25

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %15 = bitcast %struct._GimpObject* %14 to i8*
  %call17 = call i8* @gimp_object_get_name(i8* %15)
  store i8* %call17, i8** %name, align 8
  %16 = load i8*, i8** %name, align 8
  %tobool18 = icmp ne i8* %16, null
  br i1 %tobool18, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %do.end.16
  %call21 = call i32 @get_pid()
  %17 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %18 = load i8*, i8** %name, align 8
  %call22 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %call21, %struct._GimpObject* %17, i8* %18)
  store i8* %call22, i8** %str, align 8
  %19 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %20 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call23 = call %struct._GdkAtom* @gtk_selection_data_get_target(%struct._GtkSelectionData* %20)
  %21 = load i8*, i8** %str, align 8
  %22 = load i8*, i8** %str, align 8
  %call24 = call i64 @strlen(i8* %22) #7
  %conv = trunc i64 %call24 to i32
  call void @gtk_selection_data_set(%struct._GtkSelectionData* %19, %struct._GdkAtom* %call23, i32 8, i8* %21, i32 %conv)
  %23 = load i8*, i8** %str, align 8
  call void @g_free(i8* %23)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.else.14, %if.then.19, %do.end.16
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #4

declare i8* @gimp_object_get_name(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpBrush* @gimp_selection_data_get_brush(%struct._GtkSelectionData* %selection, %struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpBrush*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #9
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_selection_data_get_brush, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp12 = icmp ne %struct._GtkSelectionData* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_selection_data_get_brush, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 37
  %16 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory, align 8
  %call17 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %16)
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call18 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %17)
  %call19 = call %struct._GimpData* @gimp_brush_get_standard(%struct._GimpContext* %call18)
  %18 = bitcast %struct._GimpData* %call19 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_object_get_type() #9
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call20)
  %19 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpObject*
  %call22 = call %struct._GimpObject* @gimp_selection_data_get_object(%struct._GtkSelectionData* %14, %struct._GimpContainer* %call17, %struct._GimpObject* %19)
  %20 = bitcast %struct._GimpObject* %call22 to %struct._GimpBrush*
  store %struct._GimpBrush* %20, %struct._GimpBrush** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %21 = load %struct._GimpBrush*, %struct._GimpBrush** %retval
  ret %struct._GimpBrush* %21
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpObject* @gimp_selection_data_get_object(%struct._GtkSelectionData* %selection, %struct._GimpContainer* %container, %struct._GimpObject* %additional) #0 {
entry:
  %retval = alloca %struct._GimpObject*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %additional.addr = alloca %struct._GimpObject*, align 8
  %str = alloca i8*, align 8
  %pid = alloca i32, align 4
  %object_addr = alloca i8*, align 8
  %name_offset = alloca i32, align 4
  %name = alloca i8*, align 8
  %object = alloca %struct._GimpObject*, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %additional, %struct._GimpObject** %additional.addr, align 8
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call = call i8* @gimp_selection_data_get_name(%struct._GtkSelectionData* %0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_selection_data_get_object, i32 0, i32 0))
  store i8* %call, i8** %str, align 8
  %1 = load i8*, i8** %str, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  store i32 0, i32* %name_offset, align 4
  %2 = load i8*, i8** %str, align 8
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32* %pid, i8** %object_addr, i32* %name_offset) #5
  %cmp = icmp sge i32 %call1, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.then
  %3 = load i32, i32* %pid, align 4
  %call2 = call i32 @get_pid()
  %cmp3 = icmp eq i32 %3, %call2
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.22

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %4 = load i32, i32* %name_offset, align 4
  %cmp5 = icmp sgt i32 %4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.22

if.then.6:                                        ; preds = %land.lhs.true.4
  %5 = load i8*, i8** %str, align 8
  %6 = load i32, i32* %name_offset, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %name, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %7 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %7, 4
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %do.body
  %8 = load i32, i32* %pid, align 4
  %9 = load i8*, i8** %object_addr, align 8
  %10 = load i8*, i8** %name, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_selection_data_get_object, i32 0, i32 0), i32 753, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i32 0, i32 0), i32 %8, i8* %9, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %11 = load %struct._GimpObject*, %struct._GimpObject** %additional.addr, align 8
  %tobool9 = icmp ne %struct._GimpObject* %11, null
  br i1 %tobool9, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %do.end
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GimpObject*, %struct._GimpObject** %additional.addr, align 8
  %14 = bitcast %struct._GimpObject* %13 to i8*
  %call11 = call i8* @gimp_object_get_name(i8* %14)
  %call12 = call i32 @strcmp(i8* %12, i8* %call11) #7
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %land.lhs.true.14, label %if.else

land.lhs.true.14:                                 ; preds = %land.lhs.true.10
  %15 = load i8*, i8** %object_addr, align 8
  %16 = load %struct._GimpObject*, %struct._GimpObject** %additional.addr, align 8
  %17 = bitcast %struct._GimpObject* %16 to i8*
  %cmp15 = icmp eq i8* %15, %17
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %land.lhs.true.14
  %18 = load %struct._GimpObject*, %struct._GimpObject** %additional.addr, align 8
  store %struct._GimpObject* %18, %struct._GimpObject** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.14, %land.lhs.true.10, %do.end
  %19 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %20 = load i8*, i8** %name, align 8
  %call17 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %19, i8* %20)
  store %struct._GimpObject* %call17, %struct._GimpObject** %object, align 8
  %21 = load i8*, i8** %object_addr, align 8
  %22 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %23 = bitcast %struct._GimpObject* %22 to i8*
  %cmp18 = icmp eq i8* %21, %23
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.else
  %24 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  store %struct._GimpObject* %24, %struct._GimpObject** %retval
  br label %return

if.end.20:                                        ; preds = %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %land.lhs.true.4, %land.lhs.true, %if.then
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %entry
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.19, %if.then.16
  %25 = load %struct._GimpObject*, %struct._GimpObject** %retval
  ret %struct._GimpObject* %25
}

declare %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory*) #1

declare %struct._GimpData* @gimp_brush_get_standard(%struct._GimpContext*) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpPattern* @gimp_selection_data_get_pattern(%struct._GtkSelectionData* %selection, %struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpPattern*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #9
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_selection_data_get_pattern, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GimpPattern* null, %struct._GimpPattern** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp12 = icmp ne %struct._GtkSelectionData* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_selection_data_get_pattern, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpPattern* null, %struct._GimpPattern** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pattern_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 39
  %16 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %pattern_factory, align 8
  %call17 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %16)
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call18 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %17)
  %call19 = call %struct._GimpData* @gimp_pattern_get_standard(%struct._GimpContext* %call18)
  %18 = bitcast %struct._GimpData* %call19 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_object_get_type() #9
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call20)
  %19 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpObject*
  %call22 = call %struct._GimpObject* @gimp_selection_data_get_object(%struct._GtkSelectionData* %14, %struct._GimpContainer* %call17, %struct._GimpObject* %19)
  %20 = bitcast %struct._GimpObject* %call22 to %struct._GimpPattern*
  store %struct._GimpPattern* %20, %struct._GimpPattern** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %21 = load %struct._GimpPattern*, %struct._GimpPattern** %retval
  ret %struct._GimpPattern* %21
}

declare %struct._GimpData* @gimp_pattern_get_standard(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpGradient* @gimp_selection_data_get_gradient(%struct._GtkSelectionData* %selection, %struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpGradient*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #9
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_selection_data_get_gradient, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GimpGradient* null, %struct._GimpGradient** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp12 = icmp ne %struct._GtkSelectionData* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_selection_data_get_gradient, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpGradient* null, %struct._GimpGradient** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 40
  %16 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
  %call17 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %16)
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call18 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %17)
  %call19 = call %struct._GimpData* @gimp_gradient_get_standard(%struct._GimpContext* %call18)
  %18 = bitcast %struct._GimpData* %call19 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_object_get_type() #9
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call20)
  %19 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpObject*
  %call22 = call %struct._GimpObject* @gimp_selection_data_get_object(%struct._GtkSelectionData* %14, %struct._GimpContainer* %call17, %struct._GimpObject* %19)
  %20 = bitcast %struct._GimpObject* %call22 to %struct._GimpGradient*
  store %struct._GimpGradient* %20, %struct._GimpGradient** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %21 = load %struct._GimpGradient*, %struct._GimpGradient** %retval
  ret %struct._GimpGradient* %21
}

declare %struct._GimpData* @gimp_gradient_get_standard(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpPalette* @gimp_selection_data_get_palette(%struct._GtkSelectionData* %selection, %struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpPalette*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #9
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_selection_data_get_palette, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp12 = icmp ne %struct._GtkSelectionData* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_selection_data_get_palette, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 41
  %16 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %call17 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %16)
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call18 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %17)
  %call19 = call %struct._GimpData* @gimp_palette_get_standard(%struct._GimpContext* %call18)
  %18 = bitcast %struct._GimpData* %call19 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_object_get_type() #9
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call20)
  %19 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpObject*
  %call22 = call %struct._GimpObject* @gimp_selection_data_get_object(%struct._GtkSelectionData* %14, %struct._GimpContainer* %call17, %struct._GimpObject* %19)
  %20 = bitcast %struct._GimpObject* %call22 to %struct._GimpPalette*
  store %struct._GimpPalette* %20, %struct._GimpPalette** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %21 = load %struct._GimpPalette*, %struct._GimpPalette** %retval
  ret %struct._GimpPalette* %21
}

declare %struct._GimpData* @gimp_palette_get_standard(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpFont* @gimp_selection_data_get_font(%struct._GtkSelectionData* %selection, %struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpFont*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #9
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_selection_data_get_font, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GimpFont* null, %struct._GimpFont** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp12 = icmp ne %struct._GtkSelectionData* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_selection_data_get_font, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpFont* null, %struct._GimpFont** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %fonts = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 36
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts, align 8
  %call17 = call %struct._GimpFont* @gimp_font_get_standard()
  %17 = bitcast %struct._GimpFont* %call17 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_object_get_type() #9
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpObject*
  %call20 = call %struct._GimpObject* @gimp_selection_data_get_object(%struct._GtkSelectionData* %14, %struct._GimpContainer* %16, %struct._GimpObject* %18)
  %19 = bitcast %struct._GimpObject* %call20 to %struct._GimpFont*
  store %struct._GimpFont* %19, %struct._GimpFont** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %20 = load %struct._GimpFont*, %struct._GimpFont** %retval
  ret %struct._GimpFont* %20
}

declare %struct._GimpFont* @gimp_font_get_standard() #1

; Function Attrs: nounwind uwtable
define %struct._GimpBuffer* @gimp_selection_data_get_buffer(%struct._GtkSelectionData* %selection, %struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpBuffer*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #9
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_selection_data_get_buffer, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp12 = icmp ne %struct._GtkSelectionData* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_selection_data_get_buffer, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %named_buffers = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 35
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %named_buffers, align 8
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 34
  %18 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer, align 8
  %19 = bitcast %struct._GimpBuffer* %18 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_object_get_type() #9
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call17)
  %20 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpObject*
  %call19 = call %struct._GimpObject* @gimp_selection_data_get_object(%struct._GtkSelectionData* %14, %struct._GimpContainer* %16, %struct._GimpObject* %20)
  %21 = bitcast %struct._GimpObject* %call19 to %struct._GimpBuffer*
  store %struct._GimpBuffer* %21, %struct._GimpBuffer** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %22 = load %struct._GimpBuffer*, %struct._GimpBuffer** %retval
  ret %struct._GimpBuffer* %22
}

; Function Attrs: nounwind uwtable
define %struct._GimpImagefile* @gimp_selection_data_get_imagefile(%struct._GtkSelectionData* %selection, %struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpImagefile*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #9
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_selection_data_get_imagefile, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GimpImagefile* null, %struct._GimpImagefile** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp12 = icmp ne %struct._GtkSelectionData* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_selection_data_get_imagefile, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpImagefile* null, %struct._GimpImagefile** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %documents = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 47
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %documents, align 8
  %call17 = call %struct._GimpObject* @gimp_selection_data_get_object(%struct._GtkSelectionData* %14, %struct._GimpContainer* %16, %struct._GimpObject* null)
  %17 = bitcast %struct._GimpObject* %call17 to %struct._GimpImagefile*
  store %struct._GimpImagefile* %17, %struct._GimpImagefile** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %18 = load %struct._GimpImagefile*, %struct._GimpImagefile** %retval
  ret %struct._GimpImagefile* %18
}

; Function Attrs: nounwind uwtable
define %struct._GimpTemplate* @gimp_selection_data_get_template(%struct._GtkSelectionData* %selection, %struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpTemplate*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #9
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_selection_data_get_template, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GimpTemplate* null, %struct._GimpTemplate** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp12 = icmp ne %struct._GtkSelectionData* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_selection_data_get_template, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpTemplate* null, %struct._GimpTemplate** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %templates = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 48
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %templates, align 8
  %call17 = call %struct._GimpObject* @gimp_selection_data_get_object(%struct._GtkSelectionData* %14, %struct._GimpContainer* %16, %struct._GimpObject* null)
  %17 = bitcast %struct._GimpObject* %call17 to %struct._GimpTemplate*
  store %struct._GimpTemplate* %17, %struct._GimpTemplate** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %18 = load %struct._GimpTemplate*, %struct._GimpTemplate** %retval
  ret %struct._GimpTemplate* %18
}

; Function Attrs: nounwind uwtable
define %struct._GimpToolInfo* @gimp_selection_data_get_tool_info(%struct._GtkSelectionData* %selection, %struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpToolInfo*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #9
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_selection_data_get_tool_info, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %cmp12 = icmp ne %struct._GtkSelectionData* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_selection_data_get_tool_info, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tool_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 45
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list, align 8
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call17 = call %struct._GimpToolInfo* @gimp_tool_info_get_standard(%struct._Gimp* %17)
  %18 = bitcast %struct._GimpToolInfo* %call17 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_object_get_type() #9
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call18)
  %19 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpObject*
  %call20 = call %struct._GimpObject* @gimp_selection_data_get_object(%struct._GtkSelectionData* %14, %struct._GimpContainer* %16, %struct._GimpObject* %19)
  %20 = bitcast %struct._GimpObject* %call20 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %20, %struct._GimpToolInfo** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %21 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %retval
  ret %struct._GimpToolInfo* %21
}

declare %struct._GimpToolInfo* @gimp_tool_info_get_standard(%struct._Gimp*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i32 @g_utf8_validate(i8*, i64, i8**) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer*, i8*) #1

declare noalias i8* @g_malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @unescape_character(i8* %scanner) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca i8*, align 8
  %first_digit = alloca i32, align 4
  %second_digit = alloca i32, align 4
  store i8* %scanner, i8** %scanner.addr, align 8
  %0 = load i8*, i8** %scanner.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %call = call i32 @g_ascii_xdigit_value(i8 signext %1) #9
  store i32 %call, i32* %first_digit, align 4
  %2 = load i32, i32* %first_digit, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %scanner.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx1, align 1
  %call2 = call i32 @g_ascii_xdigit_value(i8 signext %4) #9
  store i32 %call2, i32* %second_digit, align 4
  %5 = load i32, i32* %second_digit, align 4
  %cmp3 = icmp slt i32 %5, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load i32, i32* %first_digit, align 4
  %shl = shl i32 %6, 4
  %7 = load i32, i32* %second_digit, align 4
  %or = or i32 %shl, %7
  store i32 %or, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

; Function Attrs: nounwind readnone
declare i32 @g_ascii_xdigit_value(i8 signext) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
