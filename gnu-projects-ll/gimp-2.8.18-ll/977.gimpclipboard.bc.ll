; ModuleID = './app/widgets/gimpclipboard.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { {}*, {}*, {}*, {}*, {}*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, {}* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type { %struct._GimpViewable, %struct._TileManager*, i32, i32 }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TileManager = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpClipboard = type { %struct._GSList*, %struct._GtkTargetEntry*, i32, %struct._GtkTargetEntry*, i32, %struct._GtkTargetEntry*, i32, %struct._GimpBuffer*, i8*, %struct._GimpCurve* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkTargetEntry = type { i8*, i32, i32 }
%struct._GimpCurve = type { %struct._GimpData, i32, i32, %struct._GimpVector2*, i32, double*, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpVector2 = type { double, double }
%struct._GdkPixbufFormat = type opaque
%struct._GtkClipboard = type opaque
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
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
%struct._GdkAtom = type opaque
%struct._GtkSelectionData = type { %struct._GdkAtom*, %struct._GdkAtom*, %struct._GdkAtom*, i32, i8*, i32, %struct._GdkDisplay* }
%struct._GdkPixbuf = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_clipboard_init = private unnamed_addr constant [20 x i8] c"gimp_clipboard_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"gimp_clip == NULL\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"gimp-clipboard\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"clipboard: writable pixbuf format: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"image/svg\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"image/svg+xml\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"application/x-gimp-curve\00", align 1
@__func__.gimp_clipboard_exit = private unnamed_addr constant [20 x i8] c"gimp_clipboard_exit\00", align 1
@__func__.gimp_clipboard_has_buffer = private unnamed_addr constant [26 x i8] c"gimp_clipboard_has_buffer\00", align 1
@__func__.gimp_clipboard_has_svg = private unnamed_addr constant [23 x i8] c"gimp_clipboard_has_svg\00", align 1
@__func__.gimp_clipboard_has_curve = private unnamed_addr constant [25 x i8] c"gimp_clipboard_has_curve\00", align 1
@__func__.gimp_clipboard_get_buffer = private unnamed_addr constant [26 x i8] c"gimp_clipboard_get_buffer\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Clipboard\00", align 1
@__func__.gimp_clipboard_get_svg = private unnamed_addr constant [23 x i8] c"gimp_clipboard_get_svg\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"svg_length != NULL\00", align 1
@__func__.gimp_clipboard_get_curve = private unnamed_addr constant [25 x i8] c"gimp_clipboard_get_curve\00", align 1
@__func__.gimp_clipboard_set_buffer = private unnamed_addr constant [26 x i8] c"gimp_clipboard_set_buffer\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"buffer == NULL || GIMP_IS_BUFFER (buffer)\00", align 1
@__func__.gimp_clipboard_set_svg = private unnamed_addr constant [23 x i8] c"gimp_clipboard_set_svg\00", align 1
@__func__.gimp_clipboard_set_text = private unnamed_addr constant [24 x i8] c"gimp_clipboard_set_text\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"text != NULL\00", align 1
@__func__.gimp_clipboard_set_curve = private unnamed_addr constant [25 x i8] c"gimp_clipboard_set_curve\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"curve == NULL || GIMP_IS_CURVE (curve)\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"clipboard: checking pixbuf format '%s'\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"  - checking mime type '%s'\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"TARGETS\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"clipboard: offered type: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"clipboard: sending pixbuf data as '%s'\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"%s: gimp_viewable_get_pixbuf() failed\00", align 1
@__func__.gimp_clipboard_send_buffer = private unnamed_addr constant [27 x i8] c"gimp_clipboard_send_buffer\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"clipboard: sending SVG data as '%s'\0A\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"clipboard: sending curve data as '%s'\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_clipboard_init(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %gimp_clip = alloca %struct._GimpClipboard*, align 8
  %list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %format = alloca %struct._GdkPixbufFormat*, align 8
  %mime_types = alloca i8**, align 8
  %type = alloca i8**, align 8
  %i = alloca i32, align 4
  %format48 = alloca %struct._GdkPixbufFormat*, align 8
  %format_name = alloca i8*, align 8
  %mime_types55 = alloca i8**, align 8
  %type57 = alloca i8**, align 8
  %mime_type = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_clipboard_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpClipboard* @gimp_clipboard_get(%struct._Gimp* %13)
  store %struct._GimpClipboard* %call11, %struct._GimpClipboard** %gimp_clip, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %cmp13 = icmp eq %struct._GimpClipboard* %14, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_clipboard_init, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %call18 = call noalias i8* @g_slice_alloc0(i64 80)
  %15 = bitcast i8* %call18 to %struct._GimpClipboard*
  store %struct._GimpClipboard* %15, %struct._GimpClipboard** %gimp_clip, align 8
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %17 = bitcast %struct._Gimp* %16 to %struct._GTypeInstance*
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GObject*
  %19 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %20 = bitcast %struct._GimpClipboard* %19 to i8*
  call void @g_object_set_data_full(%struct._GObject* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* %20, void (i8*)* bitcast (void (%struct._GimpClipboard*)* @gimp_clipboard_free to void (i8*)*))
  %call20 = call %struct._GSList* @gimp_pixbuf_get_formats()
  %21 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %pixbuf_formats = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %21, i32 0, i32 0
  store %struct._GSList* %call20, %struct._GSList** %pixbuf_formats, align 8
  %22 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %pixbuf_formats21 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %22, i32 0, i32 0
  %23 = load %struct._GSList*, %struct._GSList** %pixbuf_formats21, align 8
  store %struct._GSList* %23, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.17
  %24 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool22 = icmp ne %struct._GSList* %24, null
  br i1 %tobool22, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  %25 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 0
  %26 = load i8*, i8** %data, align 8
  %27 = bitcast i8* %26 to %struct._GdkPixbufFormat*
  store %struct._GdkPixbufFormat* %27, %struct._GdkPixbufFormat** %format, align 8
  %28 = load %struct._GdkPixbufFormat*, %struct._GdkPixbufFormat** %format, align 8
  %call24 = call i32 @gdk_pixbuf_format_is_writable(%struct._GdkPixbufFormat* %28)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %for.body
  %29 = load %struct._GdkPixbufFormat*, %struct._GdkPixbufFormat** %format, align 8
  %call29 = call i8** @gdk_pixbuf_format_get_mime_types(%struct._GdkPixbufFormat* %29)
  store i8** %call29, i8*** %mime_types, align 8
  %30 = load i8**, i8*** %mime_types, align 8
  store i8** %30, i8*** %type, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %if.then.26
  %31 = load i8**, i8*** %type, align 8
  %32 = load i8*, i8** %31, align 8
  %tobool31 = icmp ne i8* %32, null
  br i1 %tobool31, label %for.body.32, label %for.end

for.body.32:                                      ; preds = %for.cond.30
  %33 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %n_target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %33, i32 0, i32 2
  %34 = load i32, i32* %n_target_entries, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %n_target_entries, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.32
  %35 = load i8**, i8*** %type, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %incdec.ptr, i8*** %type, align 8
  br label %for.cond.30

for.end:                                          ; preds = %for.cond.30
  %36 = load i8**, i8*** %mime_types, align 8
  call void @g_strfreev(i8** %36)
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %for.body
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %37 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool35 = icmp ne %struct._GSList* %37, null
  br i1 %tobool35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.34
  %38 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %38, i32 0, i32 1
  %39 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %39, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  %40 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %n_target_entries37 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %40, i32 0, i32 2
  %41 = load i32, i32* %n_target_entries37, align 4
  %cmp38 = icmp sgt i32 %41, 0
  br i1 %cmp38, label %if.then.39, label %if.end.88

if.then.39:                                       ; preds = %for.end.36
  store i32 0, i32* %i, align 4
  %42 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %n_target_entries41 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %42, i32 0, i32 2
  %43 = load i32, i32* %n_target_entries41, align 4
  %conv = sext i32 %43 to i64
  %call42 = call noalias i8* @g_malloc0_n(i64 %conv, i64 16)
  %44 = bitcast i8* %call42 to %struct._GtkTargetEntry*
  %45 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %45, i32 0, i32 1
  store %struct._GtkTargetEntry* %44, %struct._GtkTargetEntry** %target_entries, align 8
  %46 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %pixbuf_formats43 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %46, i32 0, i32 0
  %47 = load %struct._GSList*, %struct._GSList** %pixbuf_formats43, align 8
  store %struct._GSList* %47, %struct._GSList** %list, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %cond.end.85, %if.then.39
  %48 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool45 = icmp ne %struct._GSList* %48, null
  br i1 %tobool45, label %for.body.46, label %for.end.87

for.body.46:                                      ; preds = %for.cond.44
  %49 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data49 = getelementptr inbounds %struct._GSList, %struct._GSList* %49, i32 0, i32 0
  %50 = load i8*, i8** %data49, align 8
  %51 = bitcast i8* %50 to %struct._GdkPixbufFormat*
  store %struct._GdkPixbufFormat* %51, %struct._GdkPixbufFormat** %format48, align 8
  %52 = load %struct._GdkPixbufFormat*, %struct._GdkPixbufFormat** %format48, align 8
  %call50 = call i32 @gdk_pixbuf_format_is_writable(%struct._GdkPixbufFormat* %52)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.79

if.then.52:                                       ; preds = %for.body.46
  %53 = load %struct._GdkPixbufFormat*, %struct._GdkPixbufFormat** %format48, align 8
  %call58 = call i8* @gdk_pixbuf_format_get_name(%struct._GdkPixbufFormat* %53)
  store i8* %call58, i8** %format_name, align 8
  %54 = load %struct._GdkPixbufFormat*, %struct._GdkPixbufFormat** %format48, align 8
  %call59 = call i8** @gdk_pixbuf_format_get_mime_types(%struct._GdkPixbufFormat* %54)
  store i8** %call59, i8*** %mime_types55, align 8
  %55 = load i8**, i8*** %mime_types55, align 8
  store i8** %55, i8*** %type57, align 8
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.76, %if.then.52
  %56 = load i8**, i8*** %type57, align 8
  %57 = load i8*, i8** %56, align 8
  %tobool61 = icmp ne i8* %57, null
  br i1 %tobool61, label %for.body.62, label %for.end.78

for.body.62:                                      ; preds = %for.cond.60
  %58 = load i8**, i8*** %type57, align 8
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %mime_type, align 8
  %60 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %60, i32 0, i32 4
  %61 = load i32, i32* %be_verbose, align 4
  %tobool64 = icmp ne i32 %61, 0
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %for.body.62
  %62 = load i8*, i8** %mime_type, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), i8* %62)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %for.body.62
  %63 = load i8*, i8** %mime_type, align 8
  %call67 = call noalias i8* @g_strdup(i8* %63)
  %64 = load i32, i32* %i, align 4
  %idxprom = sext i32 %64 to i64
  %65 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %target_entries68 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %65, i32 0, i32 1
  %66 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %target_entries68, align 8
  %arrayidx = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %66, i64 %idxprom
  %target = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx, i32 0, i32 0
  store i8* %call67, i8** %target, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %67 to i64
  %68 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %target_entries70 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %68, i32 0, i32 1
  %69 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %target_entries70, align 8
  %arrayidx71 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %69, i64 %idxprom69
  %flags = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx71, i32 0, i32 1
  store i32 0, i32* %flags, align 4
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %71 to i64
  %72 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %target_entries73 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %72, i32 0, i32 1
  %73 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %target_entries73, align 8
  %arrayidx74 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %73, i64 %idxprom72
  %info = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx74, i32 0, i32 2
  store i32 %70, i32* %info, align 4
  %74 = load i32, i32* %i, align 4
  %inc75 = add nsw i32 %74, 1
  store i32 %inc75, i32* %i, align 4
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.66
  %75 = load i8**, i8*** %type57, align 8
  %incdec.ptr77 = getelementptr inbounds i8*, i8** %75, i32 1
  store i8** %incdec.ptr77, i8*** %type57, align 8
  br label %for.cond.60

for.end.78:                                       ; preds = %for.cond.60
  %76 = load i8**, i8*** %mime_types55, align 8
  call void @g_strfreev(i8** %76)
  %77 = load i8*, i8** %format_name, align 8
  call void @g_free(i8* %77)
  br label %if.end.79

if.end.79:                                        ; preds = %for.end.78, %for.body.46
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end.79
  %78 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool81 = icmp ne %struct._GSList* %78, null
  br i1 %tobool81, label %cond.true.82, label %cond.false.84

cond.true.82:                                     ; preds = %for.inc.80
  %79 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next83 = getelementptr inbounds %struct._GSList, %struct._GSList* %79, i32 0, i32 1
  %80 = load %struct._GSList*, %struct._GSList** %next83, align 8
  br label %cond.end.85

cond.false.84:                                    ; preds = %for.inc.80
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.82
  %cond86 = phi %struct._GSList* [ %80, %cond.true.82 ], [ null, %cond.false.84 ]
  store %struct._GSList* %cond86, %struct._GSList** %list, align 8
  br label %for.cond.44

for.end.87:                                       ; preds = %for.cond.44
  br label %if.end.88

if.end.88:                                        ; preds = %for.end.87, %for.end.36
  %81 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %n_svg_target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %81, i32 0, i32 4
  store i32 2, i32* %n_svg_target_entries, align 4
  %call89 = call noalias i8* @g_malloc0_n(i64 2, i64 16)
  %82 = bitcast i8* %call89 to %struct._GtkTargetEntry*
  %83 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %svg_target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %83, i32 0, i32 3
  store %struct._GtkTargetEntry* %82, %struct._GtkTargetEntry** %svg_target_entries, align 8
  %call90 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  %84 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %svg_target_entries91 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %84, i32 0, i32 3
  %85 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %svg_target_entries91, align 8
  %arrayidx92 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %85, i64 0
  %target93 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx92, i32 0, i32 0
  store i8* %call90, i8** %target93, align 8
  %86 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %svg_target_entries94 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %86, i32 0, i32 3
  %87 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %svg_target_entries94, align 8
  %arrayidx95 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %87, i64 0
  %flags96 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx95, i32 0, i32 1
  store i32 0, i32* %flags96, align 4
  %88 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %svg_target_entries97 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %88, i32 0, i32 3
  %89 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %svg_target_entries97, align 8
  %arrayidx98 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %89, i64 0
  %info99 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx98, i32 0, i32 2
  store i32 0, i32* %info99, align 4
  %call100 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  %90 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %svg_target_entries101 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %90, i32 0, i32 3
  %91 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %svg_target_entries101, align 8
  %arrayidx102 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %91, i64 1
  %target103 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx102, i32 0, i32 0
  store i8* %call100, i8** %target103, align 8
  %92 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %svg_target_entries104 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %92, i32 0, i32 3
  %93 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %svg_target_entries104, align 8
  %arrayidx105 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %93, i64 1
  %flags106 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx105, i32 0, i32 1
  store i32 0, i32* %flags106, align 4
  %94 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %svg_target_entries107 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %94, i32 0, i32 3
  %95 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %svg_target_entries107, align 8
  %arrayidx108 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %95, i64 1
  %info109 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx108, i32 0, i32 2
  store i32 1, i32* %info109, align 4
  %96 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %n_curve_target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %96, i32 0, i32 6
  store i32 1, i32* %n_curve_target_entries, align 4
  %call110 = call noalias i8* @g_malloc0_n(i64 1, i64 16)
  %97 = bitcast i8* %call110 to %struct._GtkTargetEntry*
  %98 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %curve_target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %98, i32 0, i32 5
  store %struct._GtkTargetEntry* %97, %struct._GtkTargetEntry** %curve_target_entries, align 8
  %call111 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0))
  %99 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %curve_target_entries112 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %99, i32 0, i32 5
  %100 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %curve_target_entries112, align 8
  %arrayidx113 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %100, i64 0
  %target114 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx113, i32 0, i32 0
  store i8* %call111, i8** %target114, align 8
  %101 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %curve_target_entries115 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %101, i32 0, i32 5
  %102 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %curve_target_entries115, align 8
  %arrayidx116 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %102, i64 0
  %flags117 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx116, i32 0, i32 1
  store i32 0, i32* %flags117, align 4
  %103 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %curve_target_entries118 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %103, i32 0, i32 5
  %104 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %curve_target_entries118, align 8
  %arrayidx119 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %104, i64 0
  %info120 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx119, i32 0, i32 2
  store i32 0, i32* %info120, align 4
  br label %return

return:                                           ; preds = %if.end.88, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._GimpClipboard* @gimp_clipboard_get(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GimpClipboard*
  ret %struct._GimpClipboard* %3
}

declare noalias i8* @g_slice_alloc0(i64) #3

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_clipboard_free(%struct._GimpClipboard* %gimp_clip) #0 {
entry:
  %gimp_clip.addr = alloca %struct._GimpClipboard*, align 8
  %i = alloca i32, align 4
  store %struct._GimpClipboard* %gimp_clip, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %0 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  call void @gimp_clipboard_clear(%struct._GimpClipboard* %0)
  %1 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %pixbuf_formats = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %1, i32 0, i32 0
  %2 = load %struct._GSList*, %struct._GSList** %pixbuf_formats, align 8
  call void @g_slist_free(%struct._GSList* %2)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %n_target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %4, i32 0, i32 2
  %5 = load i32, i32* %n_target_entries, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %7, i32 0, i32 1
  %8 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %target_entries, align 8
  %arrayidx = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %8, i64 %idxprom
  %target = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx, i32 0, i32 0
  %9 = load i8*, i8** %target, align 8
  call void @g_free(i8* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %target_entries1 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %11, i32 0, i32 1
  %12 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %target_entries1, align 8
  %13 = bitcast %struct._GtkTargetEntry* %12 to i8*
  call void @g_free(i8* %13)
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.8, %for.end
  %14 = load i32, i32* %i, align 4
  %15 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %n_svg_target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %15, i32 0, i32 4
  %16 = load i32, i32* %n_svg_target_entries, align 4
  %cmp3 = icmp slt i32 %14, %16
  br i1 %cmp3, label %for.body.4, label %for.end.10

for.body.4:                                       ; preds = %for.cond.2
  %17 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %17 to i64
  %18 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %svg_target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %18, i32 0, i32 3
  %19 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %svg_target_entries, align 8
  %arrayidx6 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %19, i64 %idxprom5
  %target7 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx6, i32 0, i32 0
  %20 = load i8*, i8** %target7, align 8
  call void @g_free(i8* %20)
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.body.4
  %21 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %21, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond.2

for.end.10:                                       ; preds = %for.cond.2
  %22 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %svg_target_entries11 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %22, i32 0, i32 3
  %23 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %svg_target_entries11, align 8
  %24 = bitcast %struct._GtkTargetEntry* %23 to i8*
  call void @g_free(i8* %24)
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.18, %for.end.10
  %25 = load i32, i32* %i, align 4
  %26 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %n_curve_target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %26, i32 0, i32 6
  %27 = load i32, i32* %n_curve_target_entries, align 4
  %cmp13 = icmp slt i32 %25, %27
  br i1 %cmp13, label %for.body.14, label %for.end.20

for.body.14:                                      ; preds = %for.cond.12
  %28 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %28 to i64
  %29 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %curve_target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %29, i32 0, i32 5
  %30 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %curve_target_entries, align 8
  %arrayidx16 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %30, i64 %idxprom15
  %target17 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx16, i32 0, i32 0
  %31 = load i8*, i8** %target17, align 8
  call void @g_free(i8* %31)
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.14
  %32 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %32, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.12

for.end.20:                                       ; preds = %for.cond.12
  %33 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %curve_target_entries21 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %33, i32 0, i32 5
  %34 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %curve_target_entries21, align 8
  %35 = bitcast %struct._GtkTargetEntry* %34 to i8*
  call void @g_free(i8* %35)
  br label %do.body

do.body:                                          ; preds = %for.end.20
  %36 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %37 = bitcast %struct._GimpClipboard* %36 to i8*
  call void @g_slice_free1(i64 80, i8* %37)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare %struct._GSList* @gimp_pixbuf_get_formats() #3

declare i32 @gdk_pixbuf_format_is_writable(%struct._GdkPixbufFormat*) #3

declare i8** @gdk_pixbuf_format_get_mime_types(%struct._GdkPixbufFormat*) #3

declare void @g_strfreev(i8**) #3

declare noalias i8* @g_malloc0_n(i64, i64) #3

declare i8* @gdk_pixbuf_format_get_name(%struct._GdkPixbufFormat*) #3

declare void @g_printerr(i8*, ...) #3

declare noalias i8* @g_strdup(i8*) #3

declare void @g_free(i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_clipboard_exit(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %clipboard = alloca %struct._GtkClipboard*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_clipboard_exit, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._GdkDisplay* @gdk_display_get_default()
  %call12 = call %struct._GtkClipboard* @gtk_clipboard_get_for_display(%struct._GdkDisplay* %call11, %struct._GdkAtom* inttoptr (i64 69 to %struct._GdkAtom*))
  store %struct._GtkClipboard* %call12, %struct._GtkClipboard** %clipboard, align 8
  %13 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %tobool13 = icmp ne %struct._GtkClipboard* %13, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.19

land.lhs.true.14:                                 ; preds = %do.end
  %14 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %call15 = call %struct._GObject* @gtk_clipboard_get_owner(%struct._GtkClipboard* %14)
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %16 = bitcast %struct._Gimp* %15 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %cmp17 = icmp eq %struct._GObject* %call15, %17
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true.14
  %18 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  call void @gtk_clipboard_store(%struct._GtkClipboard* %18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %land.lhs.true.14, %do.end
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %20 = bitcast %struct._Gimp* %19 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* null)
  br label %return

return:                                           ; preds = %if.end.19, %if.else.9
  ret void
}

declare %struct._GtkClipboard* @gtk_clipboard_get_for_display(%struct._GdkDisplay*, %struct._GdkAtom*) #3

declare %struct._GdkDisplay* @gdk_display_get_default() #3

declare %struct._GObject* @gtk_clipboard_get_owner(%struct._GtkClipboard*) #3

declare void @gtk_clipboard_store(%struct._GtkClipboard*) #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_clipboard_has_buffer(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %gimp_clip = alloca %struct._GimpClipboard*, align 8
  %clipboard = alloca %struct._GtkClipboard*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_clipboard_has_buffer, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._GdkDisplay* @gdk_display_get_default()
  %call12 = call %struct._GtkClipboard* @gtk_clipboard_get_for_display(%struct._GdkDisplay* %call11, %struct._GdkAtom* inttoptr (i64 69 to %struct._GdkAtom*))
  store %struct._GtkClipboard* %call12, %struct._GtkClipboard** %clipboard, align 8
  %13 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %tobool13 = icmp ne %struct._GtkClipboard* %13, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.22

land.lhs.true.14:                                 ; preds = %do.end
  %14 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %call15 = call %struct._GObject* @gtk_clipboard_get_owner(%struct._GtkClipboard* %14)
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %16 = bitcast %struct._Gimp* %15 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %cmp17 = icmp ne %struct._GObject* %call15, %17
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.22

land.lhs.true.18:                                 ; preds = %land.lhs.true.14
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call19 = call %struct._GdkAtom* @gimp_clipboard_wait_for_buffer(%struct._Gimp* %18)
  %cmp20 = icmp ne %struct._GdkAtom* %call19, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true.18
  store i32 1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true.18, %land.lhs.true.14, %do.end
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call23 = call %struct._GimpClipboard* @gimp_clipboard_get(%struct._Gimp* %19)
  store %struct._GimpClipboard* %call23, %struct._GimpClipboard** %gimp_clip, align 8
  %20 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %buffer = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %20, i32 0, i32 7
  %21 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %cmp24 = icmp ne %struct._GimpBuffer* %21, null
  %conv = zext i1 %cmp24 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.else.9
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal %struct._GdkAtom* @gimp_clipboard_wait_for_buffer(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %gimp_clip = alloca %struct._GimpClipboard*, align 8
  %targets = alloca %struct._GdkAtom**, align 8
  %n_targets = alloca i32, align 4
  %result = alloca %struct._GdkAtom*, align 8
  %list = alloca %struct._GSList*, align 8
  %format = alloca %struct._GdkPixbufFormat*, align 8
  %mime_types = alloca i8**, align 8
  %type = alloca i8**, align 8
  %mime_type = alloca i8*, align 8
  %atom = alloca %struct._GdkAtom*, align 8
  %i = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpClipboard* @gimp_clipboard_get(%struct._Gimp* %0)
  store %struct._GimpClipboard* %call, %struct._GimpClipboard** %gimp_clip, align 8
  store %struct._GdkAtom* null, %struct._GdkAtom** %result, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call1 = call %struct._GdkAtom** @gimp_clipboard_wait_for_targets(%struct._Gimp* %1, i32* %n_targets)
  store %struct._GdkAtom** %call1, %struct._GdkAtom*** %targets, align 8
  %2 = load %struct._GdkAtom**, %struct._GdkAtom*** %targets, align 8
  %tobool = icmp ne %struct._GdkAtom** %2, null
  br i1 %tobool, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %pixbuf_formats = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %3, i32 0, i32 0
  %4 = load %struct._GSList*, %struct._GSList** %pixbuf_formats, align 8
  store %struct._GSList* %4, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then
  %5 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool2 = icmp ne %struct._GSList* %5, null
  br i1 %tobool2, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GdkPixbufFormat*
  store %struct._GdkPixbufFormat* %8, %struct._GdkPixbufFormat** %format, align 8
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %9, i32 0, i32 4
  %10 = load i32, i32* %be_verbose, align 4
  %tobool3 = icmp ne i32 %10, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %11 = load %struct._GdkPixbufFormat*, %struct._GdkPixbufFormat** %format, align 8
  %call5 = call i8* @gdk_pixbuf_format_get_name(%struct._GdkPixbufFormat* %11)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i32 0, i32 0), i8* %call5)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %for.body
  %12 = load %struct._GdkPixbufFormat*, %struct._GdkPixbufFormat** %format, align 8
  %call6 = call i8** @gdk_pixbuf_format_get_mime_types(%struct._GdkPixbufFormat* %12)
  store i8** %call6, i8*** %mime_types, align 8
  %13 = load i8**, i8*** %mime_types, align 8
  store i8** %13, i8*** %type, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.23, %if.end
  %14 = load i8**, i8*** %type, align 8
  %15 = load i8*, i8** %14, align 8
  %tobool8 = icmp ne i8* %15, null
  br i1 %tobool8, label %for.body.9, label %for.end.24

for.body.9:                                       ; preds = %for.cond.7
  %16 = load i8**, i8*** %type, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %mime_type, align 8
  %18 = load i8*, i8** %mime_type, align 8
  %call10 = call %struct._GdkAtom* @gdk_atom_intern(i8* %18, i32 0)
  store %struct._GdkAtom* %call10, %struct._GdkAtom** %atom, align 8
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose11 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 4
  %20 = load i32, i32* %be_verbose11, align 4
  %tobool12 = icmp ne i32 %20, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.body.9
  %21 = load i8*, i8** %mime_type, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i8* %21)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %for.body.9
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.end.14
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %n_targets, align 4
  %cmp = icmp slt i32 %22, %23
  br i1 %cmp, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.15
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct._GdkAtom**, %struct._GdkAtom*** %targets, align 8
  %arrayidx = getelementptr inbounds %struct._GdkAtom*, %struct._GdkAtom** %25, i64 %idxprom
  %26 = load %struct._GdkAtom*, %struct._GdkAtom** %arrayidx, align 8
  %27 = load %struct._GdkAtom*, %struct._GdkAtom** %atom, align 8
  %cmp17 = icmp eq %struct._GdkAtom* %26, %27
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body.16
  %28 = load %struct._GdkAtom*, %struct._GdkAtom** %atom, align 8
  store %struct._GdkAtom* %28, %struct._GdkAtom** %result, align 8
  br label %for.end

if.end.19:                                        ; preds = %for.body.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.15

for.end:                                          ; preds = %if.then.18, %for.cond.15
  %30 = load %struct._GdkAtom*, %struct._GdkAtom** %result, align 8
  %cmp20 = icmp ne %struct._GdkAtom* %30, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.end
  br label %for.end.24

if.end.22:                                        ; preds = %for.end
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end.22
  %31 = load i8**, i8*** %type, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %incdec.ptr, i8*** %type, align 8
  br label %for.cond.7

for.end.24:                                       ; preds = %if.then.21, %for.cond.7
  %32 = load i8**, i8*** %mime_types, align 8
  call void @g_strfreev(i8** %32)
  %33 = load %struct._GdkAtom*, %struct._GdkAtom** %result, align 8
  %cmp25 = icmp ne %struct._GdkAtom* %33, null
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.end.24
  br label %for.end.30

if.end.27:                                        ; preds = %for.end.24
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.27
  %34 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool29 = icmp ne %struct._GSList* %34, null
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.28
  %35 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 1
  %36 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %36, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end.30:                                       ; preds = %if.then.26, %for.cond
  %37 = load %struct._GdkAtom**, %struct._GdkAtom*** %targets, align 8
  %38 = bitcast %struct._GdkAtom** %37 to i8*
  call void @g_free(i8* %38)
  br label %if.end.31

if.end.31:                                        ; preds = %for.end.30, %entry
  %39 = load %struct._GdkAtom*, %struct._GdkAtom** %result, align 8
  ret %struct._GdkAtom* %39
}

; Function Attrs: nounwind uwtable
define i32 @gimp_clipboard_has_svg(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %gimp_clip = alloca %struct._GimpClipboard*, align 8
  %clipboard = alloca %struct._GtkClipboard*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_clipboard_has_svg, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._GdkDisplay* @gdk_display_get_default()
  %call12 = call %struct._GtkClipboard* @gtk_clipboard_get_for_display(%struct._GdkDisplay* %call11, %struct._GdkAtom* inttoptr (i64 69 to %struct._GdkAtom*))
  store %struct._GtkClipboard* %call12, %struct._GtkClipboard** %clipboard, align 8
  %13 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %tobool13 = icmp ne %struct._GtkClipboard* %13, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.22

land.lhs.true.14:                                 ; preds = %do.end
  %14 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %call15 = call %struct._GObject* @gtk_clipboard_get_owner(%struct._GtkClipboard* %14)
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %16 = bitcast %struct._Gimp* %15 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %cmp17 = icmp ne %struct._GObject* %call15, %17
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.22

land.lhs.true.18:                                 ; preds = %land.lhs.true.14
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call19 = call %struct._GdkAtom* @gimp_clipboard_wait_for_svg(%struct._Gimp* %18)
  %cmp20 = icmp ne %struct._GdkAtom* %call19, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true.18
  store i32 1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true.18, %land.lhs.true.14, %do.end
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call23 = call %struct._GimpClipboard* @gimp_clipboard_get(%struct._Gimp* %19)
  store %struct._GimpClipboard* %call23, %struct._GimpClipboard** %gimp_clip, align 8
  %20 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %svg = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %20, i32 0, i32 8
  %21 = load i8*, i8** %svg, align 8
  %cmp24 = icmp ne i8* %21, null
  %conv = zext i1 %cmp24 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.else.9
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal %struct._GdkAtom* @gimp_clipboard_wait_for_svg(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %targets = alloca %struct._GdkAtom**, align 8
  %n_targets = alloca i32, align 4
  %result = alloca %struct._GdkAtom*, align 8
  %svg_atom = alloca %struct._GdkAtom*, align 8
  %svg_xml_atom = alloca %struct._GdkAtom*, align 8
  %i = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GdkAtom* null, %struct._GdkAtom** %result, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GdkAtom** @gimp_clipboard_wait_for_targets(%struct._Gimp* %0, i32* %n_targets)
  store %struct._GdkAtom** %call, %struct._GdkAtom*** %targets, align 8
  %1 = load %struct._GdkAtom**, %struct._GdkAtom*** %targets, align 8
  %tobool = icmp ne %struct._GdkAtom** %1, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %call1 = call %struct._GdkAtom* @gdk_atom_intern_static_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GdkAtom* %call1, %struct._GdkAtom** %svg_atom, align 8
  %call2 = call %struct._GdkAtom* @gdk_atom_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GdkAtom* %call2, %struct._GdkAtom** %svg_xml_atom, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n_targets, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct._GdkAtom**, %struct._GdkAtom*** %targets, align 8
  %arrayidx = getelementptr inbounds %struct._GdkAtom*, %struct._GdkAtom** %5, i64 %idxprom
  %6 = load %struct._GdkAtom*, %struct._GdkAtom** %arrayidx, align 8
  %7 = load %struct._GdkAtom*, %struct._GdkAtom** %svg_atom, align 8
  %cmp3 = icmp eq %struct._GdkAtom* %6, %7
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %for.body
  %8 = load %struct._GdkAtom*, %struct._GdkAtom** %svg_atom, align 8
  store %struct._GdkAtom* %8, %struct._GdkAtom** %result, align 8
  br label %for.end

if.else:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load %struct._GdkAtom**, %struct._GdkAtom*** %targets, align 8
  %arrayidx6 = getelementptr inbounds %struct._GdkAtom*, %struct._GdkAtom** %10, i64 %idxprom5
  %11 = load %struct._GdkAtom*, %struct._GdkAtom** %arrayidx6, align 8
  %12 = load %struct._GdkAtom*, %struct._GdkAtom** %svg_xml_atom, align 8
  %cmp7 = icmp eq %struct._GdkAtom* %11, %12
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %13 = load %struct._GdkAtom*, %struct._GdkAtom** %svg_xml_atom, align 8
  store %struct._GdkAtom* %13, %struct._GdkAtom** %result, align 8
  br label %for.end

if.end:                                           ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %if.then.4, %for.cond
  %15 = load %struct._GdkAtom**, %struct._GdkAtom*** %targets, align 8
  %16 = bitcast %struct._GdkAtom** %15 to i8*
  call void @g_free(i8* %16)
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %entry
  %17 = load %struct._GdkAtom*, %struct._GdkAtom** %result, align 8
  ret %struct._GdkAtom* %17
}

; Function Attrs: nounwind uwtable
define i32 @gimp_clipboard_has_curve(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %gimp_clip = alloca %struct._GimpClipboard*, align 8
  %clipboard = alloca %struct._GtkClipboard*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_clipboard_has_curve, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._GdkDisplay* @gdk_display_get_default()
  %call12 = call %struct._GtkClipboard* @gtk_clipboard_get_for_display(%struct._GdkDisplay* %call11, %struct._GdkAtom* inttoptr (i64 69 to %struct._GdkAtom*))
  store %struct._GtkClipboard* %call12, %struct._GtkClipboard** %clipboard, align 8
  %13 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %tobool13 = icmp ne %struct._GtkClipboard* %13, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.22

land.lhs.true.14:                                 ; preds = %do.end
  %14 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %call15 = call %struct._GObject* @gtk_clipboard_get_owner(%struct._GtkClipboard* %14)
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %16 = bitcast %struct._Gimp* %15 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %cmp17 = icmp ne %struct._GObject* %call15, %17
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.22

land.lhs.true.18:                                 ; preds = %land.lhs.true.14
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call19 = call %struct._GdkAtom* @gimp_clipboard_wait_for_curve(%struct._Gimp* %18)
  %cmp20 = icmp ne %struct._GdkAtom* %call19, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true.18
  store i32 1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true.18, %land.lhs.true.14, %do.end
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call23 = call %struct._GimpClipboard* @gimp_clipboard_get(%struct._Gimp* %19)
  store %struct._GimpClipboard* %call23, %struct._GimpClipboard** %gimp_clip, align 8
  %20 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %curve = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %20, i32 0, i32 9
  %21 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %cmp24 = icmp ne %struct._GimpCurve* %21, null
  %conv = zext i1 %cmp24 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.else.9
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal %struct._GdkAtom* @gimp_clipboard_wait_for_curve(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %targets = alloca %struct._GdkAtom**, align 8
  %n_targets = alloca i32, align 4
  %result = alloca %struct._GdkAtom*, align 8
  %curve_atom = alloca %struct._GdkAtom*, align 8
  %i = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GdkAtom* null, %struct._GdkAtom** %result, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GdkAtom** @gimp_clipboard_wait_for_targets(%struct._Gimp* %0, i32* %n_targets)
  store %struct._GdkAtom** %call, %struct._GdkAtom*** %targets, align 8
  %1 = load %struct._GdkAtom**, %struct._GdkAtom*** %targets, align 8
  %tobool = icmp ne %struct._GdkAtom** %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %call1 = call %struct._GdkAtom* @gdk_atom_intern_static_string(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GdkAtom* %call1, %struct._GdkAtom** %curve_atom, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n_targets, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct._GdkAtom**, %struct._GdkAtom*** %targets, align 8
  %arrayidx = getelementptr inbounds %struct._GdkAtom*, %struct._GdkAtom** %5, i64 %idxprom
  %6 = load %struct._GdkAtom*, %struct._GdkAtom** %arrayidx, align 8
  %7 = load %struct._GdkAtom*, %struct._GdkAtom** %curve_atom, align 8
  %cmp2 = icmp eq %struct._GdkAtom* %6, %7
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %for.body
  %8 = load %struct._GdkAtom*, %struct._GdkAtom** %curve_atom, align 8
  store %struct._GdkAtom* %8, %struct._GdkAtom** %result, align 8
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.3, %for.cond
  %10 = load %struct._GdkAtom**, %struct._GdkAtom*** %targets, align 8
  %11 = bitcast %struct._GdkAtom** %10 to i8*
  call void @g_free(i8* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %for.end, %entry
  %12 = load %struct._GdkAtom*, %struct._GdkAtom** %result, align 8
  ret %struct._GdkAtom* %12
}

; Function Attrs: nounwind uwtable
define %struct._GimpBuffer* @gimp_clipboard_get_buffer(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpBuffer*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %gimp_clip = alloca %struct._GimpClipboard*, align 8
  %clipboard = alloca %struct._GtkClipboard*, align 8
  %atom = alloca %struct._GdkAtom*, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %data = alloca %struct._GtkSelectionData*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_clipboard_get_buffer, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._GdkDisplay* @gdk_display_get_default()
  %call12 = call %struct._GtkClipboard* @gtk_clipboard_get_for_display(%struct._GdkDisplay* %call11, %struct._GdkAtom* inttoptr (i64 69 to %struct._GdkAtom*))
  store %struct._GtkClipboard* %call12, %struct._GtkClipboard** %clipboard, align 8
  %13 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %tobool13 = icmp ne %struct._GtkClipboard* %13, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.34

land.lhs.true.14:                                 ; preds = %do.end
  %14 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %call15 = call %struct._GObject* @gtk_clipboard_get_owner(%struct._GtkClipboard* %14)
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %16 = bitcast %struct._Gimp* %15 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %cmp17 = icmp ne %struct._GObject* %call15, %17
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.34

land.lhs.true.18:                                 ; preds = %land.lhs.true.14
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call19 = call %struct._GdkAtom* @gimp_clipboard_wait_for_buffer(%struct._Gimp* %18)
  store %struct._GdkAtom* %call19, %struct._GdkAtom** %atom, align 8
  %cmp20 = icmp ne %struct._GdkAtom* %call19, null
  br i1 %cmp20, label %if.then.21, label %if.end.34

if.then.21:                                       ; preds = %land.lhs.true.18
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_set_busy(%struct._Gimp* %19)
  %20 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %21 = load %struct._GdkAtom*, %struct._GdkAtom** %atom, align 8
  %call23 = call %struct._GtkSelectionData* @gtk_clipboard_wait_for_contents(%struct._GtkClipboard* %20, %struct._GdkAtom* %21)
  store %struct._GtkSelectionData* %call23, %struct._GtkSelectionData** %data, align 8
  %22 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data, align 8
  %tobool24 = icmp ne %struct._GtkSelectionData* %22, null
  br i1 %tobool24, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %if.then.21
  %23 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data, align 8
  %call27 = call %struct._GdkPixbuf* @gtk_selection_data_get_pixbuf(%struct._GtkSelectionData* %23)
  store %struct._GdkPixbuf* %call27, %struct._GdkPixbuf** %pixbuf, align 8
  %24 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data, align 8
  call void @gtk_selection_data_free(%struct._GtkSelectionData* %24)
  %25 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool28 = icmp ne %struct._GdkPixbuf* %25, null
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.then.25
  %26 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0)) #5
  %call31 = call %struct._GimpBuffer* @gimp_buffer_new_from_pixbuf(%struct._GdkPixbuf* %26, i8* %call30, i32 0, i32 0)
  store %struct._GimpBuffer* %call31, %struct._GimpBuffer** %buffer, align 8
  %27 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %28 = bitcast %struct._GdkPixbuf* %27 to i8*
  call void @g_object_unref(i8* %28)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.then.25
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_unset_busy(%struct._Gimp* %29)
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %land.lhs.true.18, %land.lhs.true.14, %do.end
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call35 = call %struct._GimpClipboard* @gimp_clipboard_get(%struct._Gimp* %30)
  store %struct._GimpClipboard* %call35, %struct._GimpClipboard** %gimp_clip, align 8
  %31 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool36 = icmp ne %struct._GimpBuffer* %31, null
  br i1 %tobool36, label %if.end.43, label %land.lhs.true.37

land.lhs.true.37:                                 ; preds = %if.end.34
  %32 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %buffer38 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %32, i32 0, i32 7
  %33 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer38, align 8
  %tobool39 = icmp ne %struct._GimpBuffer* %33, null
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %land.lhs.true.37
  %34 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %buffer41 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %34, i32 0, i32 7
  %35 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer41, align 8
  %36 = bitcast %struct._GimpBuffer* %35 to i8*
  %call42 = call i8* @g_object_ref(i8* %36)
  %37 = bitcast i8* %call42 to %struct._GimpBuffer*
  store %struct._GimpBuffer* %37, %struct._GimpBuffer** %buffer, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %land.lhs.true.37, %if.end.34
  %38 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  store %struct._GimpBuffer* %38, %struct._GimpBuffer** %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.else.9
  %39 = load %struct._GimpBuffer*, %struct._GimpBuffer** %retval
  ret %struct._GimpBuffer* %39
}

declare void @gimp_set_busy(%struct._Gimp*) #3

declare %struct._GtkSelectionData* @gtk_clipboard_wait_for_contents(%struct._GtkClipboard*, %struct._GdkAtom*) #3

declare %struct._GdkPixbuf* @gtk_selection_data_get_pixbuf(%struct._GtkSelectionData*) #3

declare void @gtk_selection_data_free(%struct._GtkSelectionData*) #3

declare %struct._GimpBuffer* @gimp_buffer_new_from_pixbuf(%struct._GdkPixbuf*, i8*, i32, i32) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @g_object_unref(i8*) #3

declare void @gimp_unset_busy(%struct._Gimp*) #3

declare i8* @g_object_ref(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @gimp_clipboard_get_svg(%struct._Gimp* %gimp, i64* %svg_length) #0 {
entry:
  %retval = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %svg_length.addr = alloca i64*, align 8
  %gimp_clip = alloca %struct._GimpClipboard*, align 8
  %clipboard = alloca %struct._GtkClipboard*, align 8
  %atom = alloca %struct._GdkAtom*, align 8
  %svg = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %data = alloca %struct._GtkSelectionData*, align 8
  %stream = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i64* %svg_length, i64** %svg_length.addr, align 8
  store i8* null, i8** %svg, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_clipboard_get_svg, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i64*, i64** %svg_length.addr, align 8
  %cmp12 = icmp ne i64* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_clipboard_get_svg, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %call17 = call %struct._GdkDisplay* @gdk_display_get_default()
  %call18 = call %struct._GtkClipboard* @gtk_clipboard_get_for_display(%struct._GdkDisplay* %call17, %struct._GdkAtom* inttoptr (i64 69 to %struct._GdkAtom*))
  store %struct._GtkClipboard* %call18, %struct._GtkClipboard** %clipboard, align 8
  %14 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %tobool19 = icmp ne %struct._GtkClipboard* %14, null
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.39

land.lhs.true.20:                                 ; preds = %do.end.16
  %15 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %call21 = call %struct._GObject* @gtk_clipboard_get_owner(%struct._GtkClipboard* %15)
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %17 = bitcast %struct._Gimp* %16 to %struct._GTypeInstance*
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call22 to %struct._GObject*
  %cmp23 = icmp ne %struct._GObject* %call21, %18
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.39

land.lhs.true.24:                                 ; preds = %land.lhs.true.20
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call25 = call %struct._GdkAtom* @gimp_clipboard_wait_for_svg(%struct._Gimp* %19)
  store %struct._GdkAtom* %call25, %struct._GdkAtom** %atom, align 8
  %cmp26 = icmp ne %struct._GdkAtom* %call25, null
  br i1 %cmp26, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %land.lhs.true.24
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_set_busy(%struct._Gimp* %20)
  %21 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %22 = load %struct._GdkAtom*, %struct._GdkAtom** %atom, align 8
  %call29 = call %struct._GtkSelectionData* @gtk_clipboard_wait_for_contents(%struct._GtkClipboard* %21, %struct._GdkAtom* %22)
  store %struct._GtkSelectionData* %call29, %struct._GtkSelectionData** %data, align 8
  %23 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data, align 8
  %tobool30 = icmp ne %struct._GtkSelectionData* %23, null
  br i1 %tobool30, label %if.then.31, label %if.end.38

if.then.31:                                       ; preds = %if.then.27
  %24 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data, align 8
  %25 = load i64*, i64** %svg_length.addr, align 8
  %call33 = call i8* @gimp_selection_data_get_stream(%struct._GtkSelectionData* %24, i64* %25)
  store i8* %call33, i8** %stream, align 8
  %26 = load i8*, i8** %stream, align 8
  %tobool34 = icmp ne i8* %26, null
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.then.31
  %27 = load i8*, i8** %stream, align 8
  %28 = load i64*, i64** %svg_length.addr, align 8
  %29 = load i64, i64* %28, align 8
  %conv = trunc i64 %29 to i32
  %call36 = call noalias i8* @g_memdup(i8* %27, i32 %conv)
  store i8* %call36, i8** %svg, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.then.31
  %30 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data, align 8
  call void @gtk_selection_data_free(%struct._GtkSelectionData* %30)
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.27
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_unset_busy(%struct._Gimp* %31)
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %land.lhs.true.24, %land.lhs.true.20, %do.end.16
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call40 = call %struct._GimpClipboard* @gimp_clipboard_get(%struct._Gimp* %32)
  store %struct._GimpClipboard* %call40, %struct._GimpClipboard** %gimp_clip, align 8
  %33 = load i8*, i8** %svg, align 8
  %tobool41 = icmp ne i8* %33, null
  br i1 %tobool41, label %if.end.49, label %land.lhs.true.42

land.lhs.true.42:                                 ; preds = %if.end.39
  %34 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %svg43 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %34, i32 0, i32 8
  %35 = load i8*, i8** %svg43, align 8
  %tobool44 = icmp ne i8* %35, null
  br i1 %tobool44, label %if.then.45, label %if.end.49

if.then.45:                                       ; preds = %land.lhs.true.42
  %36 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %svg46 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %36, i32 0, i32 8
  %37 = load i8*, i8** %svg46, align 8
  %call47 = call noalias i8* @g_strdup(i8* %37)
  store i8* %call47, i8** %svg, align 8
  %38 = load i8*, i8** %svg, align 8
  %call48 = call i64 @strlen(i8* %38) #7
  %39 = load i64*, i64** %svg_length.addr, align 8
  store i64 %call48, i64* %39, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.45, %land.lhs.true.42, %if.end.39
  %40 = load i8*, i8** %svg, align 8
  store i8* %40, i8** %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.else.14, %if.else.9
  %41 = load i8*, i8** %retval
  ret i8* %41
}

declare i8* @gimp_selection_data_get_stream(%struct._GtkSelectionData*, i64*) #3

declare noalias i8* @g_memdup(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._GimpCurve* @gimp_clipboard_get_curve(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpCurve*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %gimp_clip = alloca %struct._GimpClipboard*, align 8
  %clipboard = alloca %struct._GtkClipboard*, align 8
  %atom = alloca %struct._GdkAtom*, align 8
  %curve = alloca %struct._GimpCurve*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %data = alloca %struct._GtkSelectionData*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpCurve* null, %struct._GimpCurve** %curve, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_clipboard_get_curve, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpCurve* null, %struct._GimpCurve** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._GdkDisplay* @gdk_display_get_default()
  %call12 = call %struct._GtkClipboard* @gtk_clipboard_get_for_display(%struct._GdkDisplay* %call11, %struct._GdkAtom* inttoptr (i64 69 to %struct._GdkAtom*))
  store %struct._GtkClipboard* %call12, %struct._GtkClipboard** %clipboard, align 8
  %13 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %tobool13 = icmp ne %struct._GtkClipboard* %13, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.28

land.lhs.true.14:                                 ; preds = %do.end
  %14 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %call15 = call %struct._GObject* @gtk_clipboard_get_owner(%struct._GtkClipboard* %14)
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %16 = bitcast %struct._Gimp* %15 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %cmp17 = icmp ne %struct._GObject* %call15, %17
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.28

land.lhs.true.18:                                 ; preds = %land.lhs.true.14
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call19 = call %struct._GdkAtom* @gimp_clipboard_wait_for_curve(%struct._Gimp* %18)
  store %struct._GdkAtom* %call19, %struct._GdkAtom** %atom, align 8
  %cmp20 = icmp ne %struct._GdkAtom* %call19, null
  br i1 %cmp20, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %land.lhs.true.18
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_set_busy(%struct._Gimp* %19)
  %20 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %21 = load %struct._GdkAtom*, %struct._GdkAtom** %atom, align 8
  %call23 = call %struct._GtkSelectionData* @gtk_clipboard_wait_for_contents(%struct._GtkClipboard* %20, %struct._GdkAtom* %21)
  store %struct._GtkSelectionData* %call23, %struct._GtkSelectionData** %data, align 8
  %22 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data, align 8
  %tobool24 = icmp ne %struct._GtkSelectionData* %22, null
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.21
  %23 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data, align 8
  %call26 = call %struct._GimpCurve* @gimp_selection_data_get_curve(%struct._GtkSelectionData* %23)
  store %struct._GimpCurve* %call26, %struct._GimpCurve** %curve, align 8
  %24 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data, align 8
  call void @gtk_selection_data_free(%struct._GtkSelectionData* %24)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.then.21
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_unset_busy(%struct._Gimp* %25)
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %land.lhs.true.18, %land.lhs.true.14, %do.end
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call29 = call %struct._GimpClipboard* @gimp_clipboard_get(%struct._Gimp* %26)
  store %struct._GimpClipboard* %call29, %struct._GimpClipboard** %gimp_clip, align 8
  %27 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %tobool30 = icmp ne %struct._GimpCurve* %27, null
  br i1 %tobool30, label %if.end.37, label %land.lhs.true.31

land.lhs.true.31:                                 ; preds = %if.end.28
  %28 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %curve32 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %28, i32 0, i32 9
  %29 = load %struct._GimpCurve*, %struct._GimpCurve** %curve32, align 8
  %tobool33 = icmp ne %struct._GimpCurve* %29, null
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %land.lhs.true.31
  %30 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %curve35 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %30, i32 0, i32 9
  %31 = load %struct._GimpCurve*, %struct._GimpCurve** %curve35, align 8
  %32 = bitcast %struct._GimpCurve* %31 to i8*
  %call36 = call i8* @g_object_ref(i8* %32)
  %33 = bitcast i8* %call36 to %struct._GimpCurve*
  store %struct._GimpCurve* %33, %struct._GimpCurve** %curve, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %land.lhs.true.31, %if.end.28
  %34 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  store %struct._GimpCurve* %34, %struct._GimpCurve** %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.else.9
  %35 = load %struct._GimpCurve*, %struct._GimpCurve** %retval
  ret %struct._GimpCurve* %35
}

declare %struct._GimpCurve* @gimp_selection_data_get_curve(%struct._GtkSelectionData*) #3

; Function Attrs: nounwind uwtable
define void @gimp_clipboard_set_buffer(%struct._Gimp* %gimp, %struct._GimpBuffer* %buffer) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %buffer.addr = alloca %struct._GimpBuffer*, align 8
  %gimp_clip = alloca %struct._GimpClipboard*, align 8
  %clipboard = alloca %struct._GtkClipboard*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpBuffer* %buffer, %struct._GimpBuffer** %buffer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_clipboard_set_buffer, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.63

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %cmp12 = icmp eq %struct._GimpBuffer* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %15 = bitcast %struct._GimpBuffer* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_buffer_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_clipboard_set_buffer, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.63

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %call40 = call %struct._GdkDisplay* @gdk_display_get_default()
  %call41 = call %struct._GtkClipboard* @gtk_clipboard_get_for_display(%struct._GdkDisplay* %call40, %struct._GdkAtom* inttoptr (i64 69 to %struct._GdkAtom*))
  store %struct._GtkClipboard* %call41, %struct._GtkClipboard** %clipboard, align 8
  %27 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %tobool42 = icmp ne %struct._GtkClipboard* %27, null
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %do.end.39
  br label %if.end.63

if.end.44:                                        ; preds = %do.end.39
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call45 = call %struct._GimpClipboard* @gimp_clipboard_get(%struct._Gimp* %28)
  store %struct._GimpClipboard* %call45, %struct._GimpClipboard** %gimp_clip, align 8
  %29 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  call void @gimp_clipboard_clear(%struct._GimpClipboard* %29)
  %30 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %tobool46 = icmp ne %struct._GimpBuffer* %30, null
  br i1 %tobool46, label %if.then.47, label %if.else.57

if.then.47:                                       ; preds = %if.end.44
  %31 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %32 = bitcast %struct._GimpBuffer* %31 to i8*
  %call48 = call i8* @g_object_ref(i8* %32)
  %33 = bitcast i8* %call48 to %struct._GimpBuffer*
  %34 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %buffer49 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %34, i32 0, i32 7
  store %struct._GimpBuffer* %33, %struct._GimpBuffer** %buffer49, align 8
  %35 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %36 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %36, i32 0, i32 1
  %37 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %target_entries, align 8
  %38 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %n_target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %38, i32 0, i32 2
  %39 = load i32, i32* %n_target_entries, align 4
  %40 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %41 = bitcast %struct._Gimp* %40 to %struct._GTypeInstance*
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 80)
  %42 = bitcast %struct._GTypeInstance* %call50 to %struct._GObject*
  %call51 = call i32 @gtk_clipboard_set_with_owner(%struct._GtkClipboard* %35, %struct._GtkTargetEntry* %37, i32 %39, void (%struct._GtkClipboard*, %struct._GtkSelectionData*, i32, i8*)* bitcast (void (%struct._GtkClipboard*, %struct._GtkSelectionData*, i32, %struct._Gimp*)* @gimp_clipboard_send_buffer to void (%struct._GtkClipboard*, %struct._GtkSelectionData*, i32, i8*)*), void (%struct._GtkClipboard*, i8*)* null, %struct._GObject* %42)
  %43 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %n_target_entries52 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %43, i32 0, i32 2
  %44 = load i32, i32* %n_target_entries52, align 4
  %cmp53 = icmp sgt i32 %44, 0
  br i1 %cmp53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.then.47
  %45 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %46 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %target_entries55 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %46, i32 0, i32 1
  %47 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %target_entries55, align 8
  call void @gtk_clipboard_set_can_store(%struct._GtkClipboard* %45, %struct._GtkTargetEntry* %47, i32 1)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.then.47
  br label %if.end.63

if.else.57:                                       ; preds = %if.end.44
  %48 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %call58 = call %struct._GObject* @gtk_clipboard_get_owner(%struct._GtkClipboard* %48)
  %49 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %50 = bitcast %struct._Gimp* %49 to %struct._GTypeInstance*
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 80)
  %51 = bitcast %struct._GTypeInstance* %call59 to %struct._GObject*
  %cmp60 = icmp eq %struct._GObject* %call58, %51
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.else.57
  %52 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  call void @gtk_clipboard_clear(%struct._GtkClipboard* %52)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.else.57
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.9, %if.else.37, %if.then.43, %if.end.62, %if.end.56
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_buffer_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_clipboard_clear(%struct._GimpClipboard* %gimp_clip) #0 {
entry:
  %gimp_clip.addr = alloca %struct._GimpClipboard*, align 8
  store %struct._GimpClipboard* %gimp_clip, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %0 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %0, i32 0, i32 7
  %1 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool = icmp ne %struct._GimpBuffer* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %2, i32 0, i32 7
  %3 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer1, align 8
  %4 = bitcast %struct._GimpBuffer* %3 to i8*
  call void @g_object_unref(i8* %4)
  %5 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %buffer2 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %5, i32 0, i32 7
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %buffer2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %svg = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %6, i32 0, i32 8
  %7 = load i8*, i8** %svg, align 8
  %tobool3 = icmp ne i8* %7, null
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %8 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %svg5 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %8, i32 0, i32 8
  %9 = load i8*, i8** %svg5, align 8
  call void @g_free(i8* %9)
  %10 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %svg6 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %10, i32 0, i32 8
  store i8* null, i8** %svg6, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %11 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %curve = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %11, i32 0, i32 9
  %12 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %tobool8 = icmp ne %struct._GimpCurve* %12, null
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.7
  %13 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %curve10 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %13, i32 0, i32 9
  %14 = load %struct._GimpCurve*, %struct._GimpCurve** %curve10, align 8
  %15 = bitcast %struct._GimpCurve* %14 to i8*
  call void @g_object_unref(i8* %15)
  %16 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip.addr, align 8
  %curve11 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %16, i32 0, i32 9
  store %struct._GimpCurve* null, %struct._GimpCurve** %curve11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end.7
  ret void
}

declare i32 @gtk_clipboard_set_with_owner(%struct._GtkClipboard*, %struct._GtkTargetEntry*, i32, void (%struct._GtkClipboard*, %struct._GtkSelectionData*, i32, i8*)*, void (%struct._GtkClipboard*, i8*)*, %struct._GObject*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_clipboard_send_buffer(%struct._GtkClipboard* %clipboard, %struct._GtkSelectionData* %selection_data, i32 %info, %struct._Gimp* %gimp) #0 {
entry:
  %clipboard.addr = alloca %struct._GtkClipboard*, align 8
  %selection_data.addr = alloca %struct._GtkSelectionData*, align 8
  %info.addr = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %gimp_clip = alloca %struct._GimpClipboard*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  store %struct._GtkClipboard* %clipboard, %struct._GtkClipboard** %clipboard.addr, align 8
  store %struct._GtkSelectionData* %selection_data, %struct._GtkSelectionData** %selection_data.addr, align 8
  store i32 %info, i32* %info.addr, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpClipboard* @gimp_clipboard_get(%struct._Gimp* %0)
  store %struct._GimpClipboard* %call, %struct._GimpClipboard** %gimp_clip, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_set_busy(%struct._Gimp* %1)
  %2 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %buffer = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %2, i32 0, i32 7
  %3 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %4 = bitcast %struct._GimpBuffer* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_viewable_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpViewable*
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %6)
  %7 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %buffer4 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %7, i32 0, i32 7
  %8 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer4, align 8
  %call5 = call i32 @gimp_buffer_get_width(%struct._GimpBuffer* %8)
  %9 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %buffer6 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %9, i32 0, i32 7
  %10 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer6, align 8
  %call7 = call i32 @gimp_buffer_get_height(%struct._GimpBuffer* %10)
  %call8 = call %struct._GdkPixbuf* @gimp_viewable_get_pixbuf(%struct._GimpViewable* %5, %struct._GimpContext* %call3, i32 %call5, i32 %call7)
  store %struct._GdkPixbuf* %call8, %struct._GdkPixbuf** %pixbuf, align 8
  %11 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %11, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %12, i32 0, i32 4
  %13 = load i32, i32* %be_verbose, align 4
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %14 = load i32, i32* %info.addr, align 4
  %idxprom = zext i32 %14 to i64
  %15 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %15, i32 0, i32 1
  %16 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %target_entries, align 8
  %arrayidx = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %16, i64 %idxprom
  %target = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx, i32 0, i32 0
  %17 = load i8*, i8** %target, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i32 0, i32 0), i8* %17)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %18 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection_data.addr, align 8
  %19 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call11 = call i32 @gtk_selection_data_set_pixbuf(%struct._GtkSelectionData* %18, %struct._GdkPixbuf* %19)
  br label %if.end.12

if.else:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_clipboard_send_buffer, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.end
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_unset_busy(%struct._Gimp* %20)
  ret void
}

declare void @gtk_clipboard_set_can_store(%struct._GtkClipboard*, %struct._GtkTargetEntry*, i32) #3

declare void @gtk_clipboard_clear(%struct._GtkClipboard*) #3

; Function Attrs: nounwind uwtable
define void @gimp_clipboard_set_svg(%struct._Gimp* %gimp, i8* %svg) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %svg.addr = alloca i8*, align 8
  %gimp_clip = alloca %struct._GimpClipboard*, align 8
  %clipboard = alloca %struct._GtkClipboard*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %svg, i8** %svg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_clipboard_set_svg, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.30

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._GdkDisplay* @gdk_display_get_default()
  %call12 = call %struct._GtkClipboard* @gtk_clipboard_get_for_display(%struct._GdkDisplay* %call11, %struct._GdkAtom* inttoptr (i64 69 to %struct._GdkAtom*))
  store %struct._GtkClipboard* %call12, %struct._GtkClipboard** %clipboard, align 8
  %13 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %tobool13 = icmp ne %struct._GtkClipboard* %13, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %do.end
  br label %if.end.30

if.end.15:                                        ; preds = %do.end
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call16 = call %struct._GimpClipboard* @gimp_clipboard_get(%struct._Gimp* %14)
  store %struct._GimpClipboard* %call16, %struct._GimpClipboard** %gimp_clip, align 8
  %15 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  call void @gimp_clipboard_clear(%struct._GimpClipboard* %15)
  %16 = load i8*, i8** %svg.addr, align 8
  %tobool17 = icmp ne i8* %16, null
  br i1 %tobool17, label %if.then.18, label %if.else.24

if.then.18:                                       ; preds = %if.end.15
  %17 = load i8*, i8** %svg.addr, align 8
  %call19 = call noalias i8* @g_strdup(i8* %17)
  %18 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %svg20 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %18, i32 0, i32 8
  store i8* %call19, i8** %svg20, align 8
  %19 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %20 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %svg_target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %20, i32 0, i32 3
  %21 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %svg_target_entries, align 8
  %22 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %n_svg_target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %22, i32 0, i32 4
  %23 = load i32, i32* %n_svg_target_entries, align 4
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %25 = bitcast %struct._Gimp* %24 to %struct._GTypeInstance*
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call21 to %struct._GObject*
  %call22 = call i32 @gtk_clipboard_set_with_owner(%struct._GtkClipboard* %19, %struct._GtkTargetEntry* %21, i32 %23, void (%struct._GtkClipboard*, %struct._GtkSelectionData*, i32, i8*)* bitcast (void (%struct._GtkClipboard*, %struct._GtkSelectionData*, i32, %struct._Gimp*)* @gimp_clipboard_send_svg to void (%struct._GtkClipboard*, %struct._GtkSelectionData*, i32, i8*)*), void (%struct._GtkClipboard*, i8*)* null, %struct._GObject* %26)
  %27 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %28 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %svg_target_entries23 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %28, i32 0, i32 3
  %29 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %svg_target_entries23, align 8
  call void @gtk_clipboard_set_can_store(%struct._GtkClipboard* %27, %struct._GtkTargetEntry* %29, i32 1)
  br label %if.end.30

if.else.24:                                       ; preds = %if.end.15
  %30 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %call25 = call %struct._GObject* @gtk_clipboard_get_owner(%struct._GtkClipboard* %30)
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %32 = bitcast %struct._Gimp* %31 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 80)
  %33 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  %cmp27 = icmp eq %struct._GObject* %call25, %33
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.else.24
  %34 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  call void @gtk_clipboard_clear(%struct._GtkClipboard* %34)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.else.24
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.9, %if.then.14, %if.end.29, %if.then.18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_clipboard_send_svg(%struct._GtkClipboard* %clipboard, %struct._GtkSelectionData* %selection_data, i32 %info, %struct._Gimp* %gimp) #0 {
entry:
  %clipboard.addr = alloca %struct._GtkClipboard*, align 8
  %selection_data.addr = alloca %struct._GtkSelectionData*, align 8
  %info.addr = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %gimp_clip = alloca %struct._GimpClipboard*, align 8
  store %struct._GtkClipboard* %clipboard, %struct._GtkClipboard** %clipboard.addr, align 8
  store %struct._GtkSelectionData* %selection_data, %struct._GtkSelectionData** %selection_data.addr, align 8
  store i32 %info, i32* %info.addr, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpClipboard* @gimp_clipboard_get(%struct._Gimp* %0)
  store %struct._GimpClipboard* %call, %struct._GimpClipboard** %gimp_clip, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_set_busy(%struct._Gimp* %1)
  %2 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %svg = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %2, i32 0, i32 8
  %3 = load i8*, i8** %svg, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 4
  %5 = load i32, i32* %be_verbose, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load i32, i32* %info.addr, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %svg_target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %7, i32 0, i32 3
  %8 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %svg_target_entries, align 8
  %arrayidx = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %8, i64 %idxprom
  %target = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx, i32 0, i32 0
  %9 = load i8*, i8** %target, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0), i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %10 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection_data.addr, align 8
  %11 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %svg3 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %11, i32 0, i32 8
  %12 = load i8*, i8** %svg3, align 8
  %13 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %svg4 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %13, i32 0, i32 8
  %14 = load i8*, i8** %svg4, align 8
  %call5 = call i64 @strlen(i8* %14) #7
  call void @gimp_selection_data_set_stream(%struct._GtkSelectionData* %10, i8* %12, i64 %call5)
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_unset_busy(%struct._Gimp* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_clipboard_set_text(%struct._Gimp* %gimp, i8* %text) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %text.addr = alloca i8*, align 8
  %clipboard = alloca %struct._GtkClipboard*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_clipboard_set_text, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.27

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %text.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_clipboard_set_text, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.27

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call17 = call %struct._GimpClipboard* @gimp_clipboard_get(%struct._Gimp* %14)
  call void @gimp_clipboard_clear(%struct._GimpClipboard* %call17)
  %call18 = call %struct._GdkDisplay* @gdk_display_get_default()
  %call19 = call %struct._GtkClipboard* @gtk_clipboard_get_for_display(%struct._GdkDisplay* %call18, %struct._GdkAtom* inttoptr (i64 69 to %struct._GdkAtom*))
  store %struct._GtkClipboard* %call19, %struct._GtkClipboard** %clipboard, align 8
  %15 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %tobool20 = icmp ne %struct._GtkClipboard* %15, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.end.16
  %16 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %17 = load i8*, i8** %text.addr, align 8
  call void @gtk_clipboard_set_text(%struct._GtkClipboard* %16, i8* %17, i32 -1)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %do.end.16
  %call23 = call %struct._GdkDisplay* @gdk_display_get_default()
  %call24 = call %struct._GtkClipboard* @gtk_clipboard_get_for_display(%struct._GdkDisplay* %call23, %struct._GdkAtom* inttoptr (i64 1 to %struct._GdkAtom*))
  store %struct._GtkClipboard* %call24, %struct._GtkClipboard** %clipboard, align 8
  %18 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %tobool25 = icmp ne %struct._GtkClipboard* %18, null
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.22
  %19 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %20 = load i8*, i8** %text.addr, align 8
  call void @gtk_clipboard_set_text(%struct._GtkClipboard* %19, i8* %20, i32 -1)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.9, %if.else.14, %if.then.26, %if.end.22
  ret void
}

declare void @gtk_clipboard_set_text(%struct._GtkClipboard*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_clipboard_set_curve(%struct._Gimp* %gimp, %struct._GimpCurve* %curve) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %gimp_clip = alloca %struct._GimpClipboard*, align 8
  %clipboard = alloca %struct._GtkClipboard*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_clipboard_set_curve, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.59

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %cmp12 = icmp eq %struct._GimpCurve* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %15 = bitcast %struct._GimpCurve* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_curve_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_clipboard_set_curve, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.59

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %call40 = call %struct._GdkDisplay* @gdk_display_get_default()
  %call41 = call %struct._GtkClipboard* @gtk_clipboard_get_for_display(%struct._GdkDisplay* %call40, %struct._GdkAtom* inttoptr (i64 69 to %struct._GdkAtom*))
  store %struct._GtkClipboard* %call41, %struct._GtkClipboard** %clipboard, align 8
  %27 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %tobool42 = icmp ne %struct._GtkClipboard* %27, null
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %do.end.39
  br label %if.end.59

if.end.44:                                        ; preds = %do.end.39
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call45 = call %struct._GimpClipboard* @gimp_clipboard_get(%struct._Gimp* %28)
  store %struct._GimpClipboard* %call45, %struct._GimpClipboard** %gimp_clip, align 8
  %29 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  call void @gimp_clipboard_clear(%struct._GimpClipboard* %29)
  %30 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %tobool46 = icmp ne %struct._GimpCurve* %30, null
  br i1 %tobool46, label %if.then.47, label %if.else.53

if.then.47:                                       ; preds = %if.end.44
  %31 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %32 = bitcast %struct._GimpCurve* %31 to i8*
  %call48 = call i8* @g_object_ref(i8* %32)
  %33 = bitcast i8* %call48 to %struct._GimpCurve*
  %34 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %curve49 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %34, i32 0, i32 9
  store %struct._GimpCurve* %33, %struct._GimpCurve** %curve49, align 8
  %35 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %36 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %curve_target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %36, i32 0, i32 5
  %37 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %curve_target_entries, align 8
  %38 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %n_curve_target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %38, i32 0, i32 6
  %39 = load i32, i32* %n_curve_target_entries, align 4
  %40 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %41 = bitcast %struct._Gimp* %40 to %struct._GTypeInstance*
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 80)
  %42 = bitcast %struct._GTypeInstance* %call50 to %struct._GObject*
  %call51 = call i32 @gtk_clipboard_set_with_owner(%struct._GtkClipboard* %35, %struct._GtkTargetEntry* %37, i32 %39, void (%struct._GtkClipboard*, %struct._GtkSelectionData*, i32, i8*)* bitcast (void (%struct._GtkClipboard*, %struct._GtkSelectionData*, i32, %struct._Gimp*)* @gimp_clipboard_send_curve to void (%struct._GtkClipboard*, %struct._GtkSelectionData*, i32, i8*)*), void (%struct._GtkClipboard*, i8*)* null, %struct._GObject* %42)
  %43 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %44 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %curve_target_entries52 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %44, i32 0, i32 5
  %45 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %curve_target_entries52, align 8
  call void @gtk_clipboard_set_can_store(%struct._GtkClipboard* %43, %struct._GtkTargetEntry* %45, i32 1)
  br label %if.end.59

if.else.53:                                       ; preds = %if.end.44
  %46 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %call54 = call %struct._GObject* @gtk_clipboard_get_owner(%struct._GtkClipboard* %46)
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %48 = bitcast %struct._Gimp* %47 to %struct._GTypeInstance*
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 80)
  %49 = bitcast %struct._GTypeInstance* %call55 to %struct._GObject*
  %cmp56 = icmp eq %struct._GObject* %call54, %49
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.else.53
  %50 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  call void @gtk_clipboard_clear(%struct._GtkClipboard* %50)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.else.53
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.9, %if.else.37, %if.then.43, %if.end.58, %if.then.47
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_curve_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_clipboard_send_curve(%struct._GtkClipboard* %clipboard, %struct._GtkSelectionData* %selection_data, i32 %info, %struct._Gimp* %gimp) #0 {
entry:
  %clipboard.addr = alloca %struct._GtkClipboard*, align 8
  %selection_data.addr = alloca %struct._GtkSelectionData*, align 8
  %info.addr = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %gimp_clip = alloca %struct._GimpClipboard*, align 8
  store %struct._GtkClipboard* %clipboard, %struct._GtkClipboard** %clipboard.addr, align 8
  store %struct._GtkSelectionData* %selection_data, %struct._GtkSelectionData** %selection_data.addr, align 8
  store i32 %info, i32* %info.addr, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpClipboard* @gimp_clipboard_get(%struct._Gimp* %0)
  store %struct._GimpClipboard* %call, %struct._GimpClipboard** %gimp_clip, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_set_busy(%struct._Gimp* %1)
  %2 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %curve = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %2, i32 0, i32 9
  %3 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %tobool = icmp ne %struct._GimpCurve* %3, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 4
  %5 = load i32, i32* %be_verbose, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load i32, i32* %info.addr, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %curve_target_entries = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %7, i32 0, i32 5
  %8 = load %struct._GtkTargetEntry*, %struct._GtkTargetEntry** %curve_target_entries, align 8
  %arrayidx = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %8, i64 %idxprom
  %target = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %arrayidx, i32 0, i32 0
  %9 = load i8*, i8** %target, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i32 0, i32 0), i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %10 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection_data.addr, align 8
  %11 = load %struct._GimpClipboard*, %struct._GimpClipboard** %gimp_clip, align 8
  %curve3 = getelementptr inbounds %struct._GimpClipboard, %struct._GimpClipboard* %11, i32 0, i32 9
  %12 = load %struct._GimpCurve*, %struct._GimpCurve** %curve3, align 8
  call void @gimp_selection_data_set_curve(%struct._GtkSelectionData* %10, %struct._GimpCurve* %12)
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_unset_busy(%struct._Gimp* %13)
  ret void
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare void @g_slist_free(%struct._GSList*) #3

declare void @g_slice_free1(i64, i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._GdkAtom** @gimp_clipboard_wait_for_targets(%struct._Gimp* %gimp, i32* %n_targets) #0 {
entry:
  %retval = alloca %struct._GdkAtom**, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %n_targets.addr = alloca i32*, align 8
  %clipboard = alloca %struct._GtkClipboard*, align 8
  %data = alloca %struct._GtkSelectionData*, align 8
  %atom = alloca %struct._GdkAtom*, align 8
  %targets = alloca %struct._GdkAtom**, align 8
  %success = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32* %n_targets, i32** %n_targets.addr, align 8
  %call = call %struct._GdkDisplay* @gdk_display_get_default()
  %call1 = call %struct._GtkClipboard* @gtk_clipboard_get_for_display(%struct._GdkDisplay* %call, %struct._GdkAtom* inttoptr (i64 69 to %struct._GdkAtom*))
  store %struct._GtkClipboard* %call1, %struct._GtkClipboard** %clipboard, align 8
  %0 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %tobool = icmp ne %struct._GtkClipboard* %0, null
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %call2 = call %struct._GdkAtom* @gdk_atom_intern_static_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0))
  store %struct._GdkAtom* %call2, %struct._GdkAtom** %atom, align 8
  %1 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %2 = load %struct._GdkAtom*, %struct._GdkAtom** %atom, align 8
  %call3 = call %struct._GtkSelectionData* @gtk_clipboard_wait_for_contents(%struct._GtkClipboard* %1, %struct._GdkAtom* %2)
  store %struct._GtkSelectionData* %call3, %struct._GtkSelectionData** %data, align 8
  %3 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data, align 8
  %tobool4 = icmp ne %struct._GtkSelectionData* %3, null
  br i1 %tobool4, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %if.then
  %4 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data, align 8
  %5 = load i32*, i32** %n_targets.addr, align 8
  %call6 = call i32 @gtk_selection_data_get_targets(%struct._GtkSelectionData* %4, %struct._GdkAtom*** %targets, i32* %5)
  store i32 %call6, i32* %success, align 4
  %6 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data, align 8
  call void @gtk_selection_data_free(%struct._GtkSelectionData* %6)
  %7 = load i32, i32* %success, align 4
  %tobool7 = icmp ne i32 %7, 0
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.then.5
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 4
  %9 = load i32, i32* %be_verbose, align 4
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.10
  %10 = load i32, i32* %i, align 4
  %11 = load i32*, i32** %n_targets.addr, align 8
  %12 = load i32, i32* %11, align 4
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct._GdkAtom**, %struct._GdkAtom*** %targets, align 8
  %arrayidx = getelementptr inbounds %struct._GdkAtom*, %struct._GdkAtom** %14, i64 %idxprom
  %15 = load %struct._GdkAtom*, %struct._GdkAtom** %arrayidx, align 8
  %call11 = call i8* @gdk_atom_name(%struct._GdkAtom* %15)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0), i8* %call11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.8
  %17 = load %struct._GdkAtom**, %struct._GdkAtom*** %targets, align 8
  store %struct._GdkAtom** %17, %struct._GdkAtom*** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.5
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  store %struct._GdkAtom** null, %struct._GdkAtom*** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.end
  %18 = load %struct._GdkAtom**, %struct._GdkAtom*** %retval
  ret %struct._GdkAtom** %18
}

declare %struct._GdkAtom* @gdk_atom_intern(i8*, i32) #3

declare %struct._GdkAtom* @gdk_atom_intern_static_string(i8*) #3

declare i32 @gtk_selection_data_get_targets(%struct._GtkSelectionData*, %struct._GdkAtom***, i32*) #3

declare i8* @gdk_atom_name(%struct._GdkAtom*) #3

declare %struct._GdkPixbuf* @gimp_viewable_get_pixbuf(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

declare i32 @gimp_buffer_get_width(%struct._GimpBuffer*) #3

declare i32 @gimp_buffer_get_height(%struct._GimpBuffer*) #3

declare i32 @gtk_selection_data_set_pixbuf(%struct._GtkSelectionData*, %struct._GdkPixbuf*) #3

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

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @gimp_selection_data_set_stream(%struct._GtkSelectionData*, i8*, i64) #3

declare void @gimp_selection_data_set_curve(%struct._GtkSelectionData*, %struct._GimpCurve*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
