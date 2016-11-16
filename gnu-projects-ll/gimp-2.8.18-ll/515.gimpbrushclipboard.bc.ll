; ModuleID = './app/core/gimpbrushclipboard.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpBrushClipboardClass = type { %struct._GimpBrushClass }
%struct._GimpBrushClass = type { %struct._GimpDataClass, void (%struct._GimpBrush*)*, void (%struct._GimpBrush*)*, %struct._GimpBrush* (%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*)*, i32 (%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*)*, void (%struct._GimpBrush*, double, double, double, i32*, i32*)*, %struct._TempBuf* (%struct._GimpBrush*, double, double, double, double)*, %struct._TempBuf* (%struct._GimpBrush*, double, double, double, double)*, i8** (%struct._GimpBrush*, double, double, double, double, i32*, i32*)*, void (%struct._GimpBrush*)* }
%struct._GimpDataClass = type { %struct._GimpViewableClass, void (%struct._GimpData*)*, i32 (%struct._GimpData*, %struct._GError**)*, i8* (%struct._GimpData*)*, %struct._GimpData* (%struct._GimpData*)* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpContext = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GimpData = type { %struct._GimpViewable }
%struct._GError = type { i32, i32, i8* }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpBrushClipboard = type { %struct._GimpBrush, %struct._Gimp* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type { %struct._GimpViewable, %struct._TileManager*, i32, i32 }
%struct._TileManager = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque

@gimp_brush_clipboard_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpBrushClipboard\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_brush_clipboard_new = private unnamed_addr constant [25 x i8] c"gimp_brush_clipboard_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Clipboard\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@gimp_brush_clipboard_parent_class = internal global i8* null, align 8
@GimpBrushClipboard_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"gimpbrushclipboard.c\00", align 1
@__func__.gimp_brush_clipboard_constructed = private unnamed_addr constant [33 x i8] c"gimp_brush_clipboard_constructed\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"GIMP_IS_GIMP (brush->gimp)\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"buffer-changed\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_brush_clipboard_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_brush_clipboard_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_brush_clipboard_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i64 @gimp_brush_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 384, void (i8*, i8*)* bitcast (void (i8*)* @gimp_brush_clipboard_class_intern_init to void (i8*, i8*)*), i32 128, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBrushClipboard*)* @gimp_brush_clipboard_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_brush_clipboard_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_brush_clipboard_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_clipboard_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_brush_clipboard_parent_class, align 8
  %1 = load i32, i32* @GimpBrushClipboard_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpBrushClipboard_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpBrushClipboardClass*
  call void @gimp_brush_clipboard_class_init(%struct._GimpBrushClipboardClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_clipboard_init(%struct._GimpBrushClipboard* %brush) #3 {
entry:
  %brush.addr = alloca %struct._GimpBrushClipboard*, align 8
  store %struct._GimpBrushClipboard* %brush, %struct._GimpBrushClipboard** %brush.addr, align 8
  %0 = load %struct._GimpBrushClipboard*, %struct._GimpBrushClipboard** %brush.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpBrushClipboard, %struct._GimpBrushClipboard* %0, i32 0, i32 1
  store %struct._Gimp* null, %struct._Gimp** %gimp, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpData* @gimp_brush_clipboard_new(%struct._Gimp* %gimp) #3 {
entry:
  %retval = alloca %struct._GimpData*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
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
  %call = call i64 @gimp_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_brush_clipboard_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_brush_clipboard_get_type() #8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)) #7
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call13 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* %call12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct._Gimp* %13, i8* null)
  %14 = bitcast i8* %call13 to %struct._GimpData*
  store %struct._GimpData* %14, %struct._GimpData** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpData*, %struct._GimpData** %retval
  ret %struct._GimpData* %15
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_clipboard_class_init(%struct._GimpBrushClipboardClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpBrushClipboardClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpBrushClipboardClass* %klass, %struct._GimpBrushClipboardClass** %klass.addr, align 8
  %0 = load %struct._GimpBrushClipboardClass*, %struct._GimpBrushClipboardClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpBrushClipboardClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_brush_clipboard_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_brush_clipboard_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_brush_clipboard_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_get_type() #8
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %6, i32 1, %struct._GParamSpec* %call2)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_clipboard_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %brush = alloca %struct._GimpBrushClipboard*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_clipboard_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushClipboard*
  store %struct._GimpBrushClipboard* %2, %struct._GimpBrushClipboard** %brush, align 8
  %3 = load i8*, i8** @gimp_brush_clipboard_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_brush_clipboard_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._GimpBrushClipboard*, %struct._GimpBrushClipboard** %brush, align 8
  %gimp = getelementptr inbounds %struct._GimpBrushClipboard, %struct._GimpBrushClipboard* %12, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %14 = bitcast %struct._Gimp* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_get_type() #8
  store i64 %call5, i64* %__t, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool8 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %21 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %20, %21
  br i1 %cmp, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %23 = load i64, i64* %__t, align 8
  %call12 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call12, i32* %__r, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.7
  %24 = load i32, i32* %__r, align 4
  store i32 %24, i32* %tmp
  %25 = load i32, i32* %tmp
  %tobool15 = icmp ne i32 %25, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.14
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.14
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32 109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_brush_clipboard_constructed, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0)) #10
  unreachable

if.end.18:                                        ; preds = %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %26 = load %struct._GimpBrushClipboard*, %struct._GimpBrushClipboard** %brush, align 8
  %gimp19 = getelementptr inbounds %struct._GimpBrushClipboard, %struct._GimpBrushClipboard* %26, i32 0, i32 1
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp19, align 8
  %28 = bitcast %struct._Gimp* %27 to i8*
  %29 = load %struct._GimpBrushClipboard*, %struct._GimpBrushClipboard** %brush, align 8
  %30 = bitcast %struct._GimpBrushClipboard* %29 to i8*
  %call20 = call i64 @g_signal_connect_object(i8* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._Gimp*, %struct._GimpBrush*)* @gimp_brush_clipboard_buffer_changed to void ()*), i8* %30, i32 0)
  %31 = load %struct._GimpBrushClipboard*, %struct._GimpBrushClipboard** %brush, align 8
  %gimp21 = getelementptr inbounds %struct._GimpBrushClipboard, %struct._GimpBrushClipboard* %31, i32 0, i32 1
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp21, align 8
  %33 = load %struct._GimpBrushClipboard*, %struct._GimpBrushClipboard** %brush, align 8
  %34 = bitcast %struct._GimpBrushClipboard* %33 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_brush_get_type() #8
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call22)
  %35 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpBrush*
  call void @gimp_brush_clipboard_buffer_changed(%struct._Gimp* %32, %struct._GimpBrush* %35)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_clipboard_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %brush = alloca %struct._GimpBrushClipboard*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_clipboard_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushClipboard*
  store %struct._GimpBrushClipboard* %2, %struct._GimpBrushClipboard** %brush, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._Gimp*
  %6 = load %struct._GimpBrushClipboard*, %struct._GimpBrushClipboard** %brush, align 8
  %gimp = getelementptr inbounds %struct._GimpBrushClipboard, %struct._GimpBrushClipboard* %6, i32 0, i32 1
  store %struct._Gimp* %5, %struct._Gimp** %gimp, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %7, %struct._GObject** %_glib__object, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %_glib__pspec, align 8
  %9 = load i32, i32* %property_id.addr, align 4
  store i32 %9, i32* %_glib__property_id, align 4
  %10 = load i32, i32* %_glib__property_id, align 4
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32 132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_clipboard_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %brush = alloca %struct._GimpBrushClipboard*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_clipboard_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushClipboard*
  store %struct._GimpBrushClipboard* %2, %struct._GimpBrushClipboard** %brush, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpBrushClipboard*, %struct._GimpBrushClipboard** %brush, align 8
  %gimp = getelementptr inbounds %struct._GimpBrushClipboard, %struct._GimpBrushClipboard* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %7 = bitcast %struct._Gimp* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %8, %struct._GObject** %_glib__object, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %9, %struct._GParamSpec** %_glib__pspec, align 8
  %10 = load i32, i32* %property_id.addr, align 4
  store i32 %10, i32* %_glib__property_id, align 4
  %11 = load i32, i32* %_glib__property_id, align 4
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = bitcast %struct._GParamSpec* %14 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32 151, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %11, i8* %13, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_clipboard_buffer_changed(%struct._Gimp* %gimp, %struct._GimpBrush* %brush) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %tiles = alloca %struct._TileManager*, align 8
  %type = alloca i32, align 4
  %bufferPR = alloca %struct._PixelRegion, align 8
  %maskPR = alloca %struct._PixelRegion, align 8
  %maskPR36 = alloca %struct._PixelRegion, align 8
  %opaque = alloca i8, align 1
  %bufferPR43 = alloca %struct._PixelRegion, align 8
  %pixmapPR = alloca %struct._PixelRegion, align 8
  %bufferPR54 = alloca %struct._PixelRegion, align 8
  %tempPR = alloca %struct._PixelRegion, align 8
  %temp = alloca %struct._TempBuf*, align 8
  %color = alloca i8, align 1
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %0, i32 0, i32 1
  %1 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %tobool = icmp ne %struct._TempBuf* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask1 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %2, i32 0, i32 1
  %3 = load %struct._TempBuf*, %struct._TempBuf** %mask1, align 8
  call void @temp_buf_free(%struct._TempBuf* %3)
  %4 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask2 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %4, i32 0, i32 1
  store %struct._TempBuf* null, %struct._TempBuf** %mask2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %pixmap = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %5, i32 0, i32 2
  %6 = load %struct._TempBuf*, %struct._TempBuf** %pixmap, align 8
  %tobool3 = icmp ne %struct._TempBuf* %6, null
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %pixmap5 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %7, i32 0, i32 2
  %8 = load %struct._TempBuf*, %struct._TempBuf** %pixmap5, align 8
  call void @temp_buf_free(%struct._TempBuf* %8)
  %9 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %pixmap6 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %9, i32 0, i32 2
  store %struct._TempBuf* null, %struct._TempBuf** %pixmap6, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer = getelementptr inbounds %struct._Gimp, %struct._Gimp* %10, i32 0, i32 34
  %11 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer, align 8
  %tobool8 = icmp ne %struct._GimpBuffer* %11, null
  br i1 %tobool8, label %if.then.9, label %if.else.67

if.then.9:                                        ; preds = %if.end.7
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer10 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %12, i32 0, i32 34
  %13 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer10, align 8
  %call = call %struct._TileManager* @gimp_buffer_get_tiles(%struct._GimpBuffer* %13)
  store %struct._TileManager* %call, %struct._TileManager** %tiles, align 8
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer11 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 34
  %15 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer11, align 8
  %call12 = call i32 @gimp_buffer_get_image_type(%struct._GimpBuffer* %15)
  store i32 %call12, i32* %type, align 4
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer13 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %16, i32 0, i32 34
  %17 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer13, align 8
  %call14 = call i32 @gimp_buffer_get_width(%struct._GimpBuffer* %17)
  %cmp = icmp slt i32 %call14, 1024
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer15 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 34
  %19 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer15, align 8
  %call16 = call i32 @gimp_buffer_get_width(%struct._GimpBuffer* %19)
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call16, %cond.true ], [ 1024, %cond.false ]
  store i32 %cond, i32* %width, align 4
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer17 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %20, i32 0, i32 34
  %21 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer17, align 8
  %call18 = call i32 @gimp_buffer_get_height(%struct._GimpBuffer* %21)
  %cmp19 = icmp slt i32 %call18, 1024
  br i1 %cmp19, label %cond.true.20, label %cond.false.23

cond.true.20:                                     ; preds = %cond.end
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer21 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %22, i32 0, i32 34
  %23 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer21, align 8
  %call22 = call i32 @gimp_buffer_get_height(%struct._GimpBuffer* %23)
  br label %cond.end.24

cond.false.23:                                    ; preds = %cond.end
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.20
  %cond25 = phi i32 [ %call22, %cond.true.20 ], [ 1024, %cond.false.23 ]
  store i32 %cond25, i32* %height, align 4
  %24 = load i32, i32* %width, align 4
  %25 = load i32, i32* %height, align 4
  %call26 = call %struct._TempBuf* @temp_buf_new(i32 %24, i32 %25, i32 1, i32 0, i32 0, i8* null)
  %26 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask27 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %26, i32 0, i32 1
  store %struct._TempBuf* %call26, %struct._TempBuf** %mask27, align 8
  %27 = load i32, i32* %width, align 4
  %28 = load i32, i32* %height, align 4
  %call28 = call %struct._TempBuf* @temp_buf_new(i32 %27, i32 %28, i32 3, i32 0, i32 0, i8* null)
  %29 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %pixmap29 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %29, i32 0, i32 2
  store %struct._TempBuf* %call28, %struct._TempBuf** %pixmap29, align 8
  %30 = load i32, i32* %type, align 4
  %cmp30 = icmp eq i32 %30, 1
  br i1 %cmp30, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.24
  %31 = load i32, i32* %type, align 4
  %cmp31 = icmp eq i32 %31, 3
  br i1 %cmp31, label %if.then.34, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false
  %32 = load i32, i32* %type, align 4
  %cmp33 = icmp eq i32 %32, 5
  br i1 %cmp33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %lor.lhs.false.32, %lor.lhs.false, %cond.end.24
  %33 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %34 = load i32, i32* %width, align 4
  %35 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %bufferPR, %struct._TileManager* %33, i32 0, i32 0, i32 %34, i32 %35, i32 0)
  %36 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask35 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %36, i32 0, i32 1
  %37 = load %struct._TempBuf*, %struct._TempBuf** %mask35, align 8
  %38 = load i32, i32* %width, align 4
  %39 = load i32, i32* %height, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %maskPR, %struct._TempBuf* %37, i32 0, i32 0, i32 %38, i32 %39)
  call void @extract_alpha_region(%struct._PixelRegion* %bufferPR, %struct._PixelRegion* null, %struct._PixelRegion* %maskPR)
  br label %if.end.38

if.else:                                          ; preds = %lor.lhs.false.32
  store i8 -1, i8* %opaque, align 1
  %40 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask37 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %40, i32 0, i32 1
  %41 = load %struct._TempBuf*, %struct._TempBuf** %mask37, align 8
  %42 = load i32, i32* %width, align 4
  %43 = load i32, i32* %height, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %maskPR36, %struct._TempBuf* %41, i32 0, i32 0, i32 %42, i32 %43)
  call void @color_region(%struct._PixelRegion* %maskPR36, i8* %opaque)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.34
  %44 = load i32, i32* %type, align 4
  %cmp39 = icmp eq i32 %44, 0
  br i1 %cmp39, label %if.then.42, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.end.38
  %45 = load i32, i32* %type, align 4
  %cmp41 = icmp eq i32 %45, 1
  br i1 %cmp41, label %if.then.42, label %if.else.53

if.then.42:                                       ; preds = %lor.lhs.false.40, %if.end.38
  %46 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %47 = load i32, i32* %width, align 4
  %48 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %bufferPR43, %struct._TileManager* %46, i32 0, i32 0, i32 %47, i32 %48, i32 0)
  %49 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %pixmap44 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %49, i32 0, i32 2
  %50 = load %struct._TempBuf*, %struct._TempBuf** %pixmap44, align 8
  %51 = load i32, i32* %width, align 4
  %52 = load i32, i32* %height, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %pixmapPR, %struct._TempBuf* %50, i32 0, i32 0, i32 %51, i32 %52)
  %53 = load i32, i32* %type, align 4
  %cmp45 = icmp eq i32 %53, 1
  br i1 %cmp45, label %if.then.50, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %if.then.42
  %54 = load i32, i32* %type, align 4
  %cmp47 = icmp eq i32 %54, 3
  br i1 %cmp47, label %if.then.50, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.46
  %55 = load i32, i32* %type, align 4
  %cmp49 = icmp eq i32 %55, 5
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %lor.lhs.false.48, %lor.lhs.false.46, %if.then.42
  call void @copy_color(%struct._PixelRegion* %bufferPR43, %struct._PixelRegion* %pixmapPR)
  br label %if.end.52

if.else.51:                                       ; preds = %lor.lhs.false.48
  call void @copy_region(%struct._PixelRegion* %bufferPR43, %struct._PixelRegion* %pixmapPR)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51, %if.then.50
  br label %if.end.66

if.else.53:                                       ; preds = %lor.lhs.false.40
  %56 = load i32, i32* %width, align 4
  %57 = load i32, i32* %height, align 4
  %call55 = call %struct._TempBuf* @temp_buf_new(i32 %56, i32 %57, i32 1, i32 0, i32 0, i8* null)
  store %struct._TempBuf* %call55, %struct._TempBuf** %temp, align 8
  %58 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %59 = load i32, i32* %width, align 4
  %60 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %bufferPR54, %struct._TileManager* %58, i32 0, i32 0, i32 %59, i32 %60, i32 0)
  %61 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  %62 = load i32, i32* %width, align 4
  %63 = load i32, i32* %height, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %tempPR, %struct._TempBuf* %61, i32 0, i32 0, i32 %62, i32 %63)
  %64 = load i32, i32* %type, align 4
  %cmp56 = icmp eq i32 %64, 1
  br i1 %cmp56, label %if.then.61, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %if.else.53
  %65 = load i32, i32* %type, align 4
  %cmp58 = icmp eq i32 %65, 3
  br i1 %cmp58, label %if.then.61, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false.57
  %66 = load i32, i32* %type, align 4
  %cmp60 = icmp eq i32 %66, 5
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %lor.lhs.false.59, %lor.lhs.false.57, %if.else.53
  call void @copy_component(%struct._PixelRegion* %bufferPR54, %struct._PixelRegion* %tempPR, i32 0)
  br label %if.end.63

if.else.62:                                       ; preds = %lor.lhs.false.59
  call void @copy_region(%struct._PixelRegion* %bufferPR54, %struct._PixelRegion* %tempPR)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %if.then.61
  %67 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  %68 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %pixmap64 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %68, i32 0, i32 2
  %69 = load %struct._TempBuf*, %struct._TempBuf** %pixmap64, align 8
  %call65 = call %struct._TempBuf* @temp_buf_copy(%struct._TempBuf* %67, %struct._TempBuf* %69)
  %70 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  call void @temp_buf_free(%struct._TempBuf* %70)
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.63, %if.end.52
  br label %if.end.70

if.else.67:                                       ; preds = %if.end.7
  store i8 0, i8* %color, align 1
  store i32 17, i32* %width, align 4
  store i32 17, i32* %height, align 4
  %71 = load i32, i32* %width, align 4
  %72 = load i32, i32* %height, align 4
  %call68 = call %struct._TempBuf* @temp_buf_new(i32 %71, i32 %72, i32 1, i32 0, i32 0, i8* %color)
  %73 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask69 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %73, i32 0, i32 1
  store %struct._TempBuf* %call68, %struct._TempBuf** %mask69, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.end.66
  %74 = load i32, i32* %width, align 4
  %div = sdiv i32 %74, 2
  %conv = sitofp i32 %div to double
  %75 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %x_axis = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %75, i32 0, i32 4
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis, i32 0, i32 0
  store double %conv, double* %x, align 8
  %76 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %x_axis71 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %76, i32 0, i32 4
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis71, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8
  %77 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %y_axis = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %77, i32 0, i32 5
  %x72 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis, i32 0, i32 0
  store double 0.000000e+00, double* %x72, align 8
  %78 = load i32, i32* %height, align 4
  %div73 = sdiv i32 %78, 2
  %conv74 = sitofp i32 %div73 to double
  %79 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %y_axis75 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %79, i32 0, i32 5
  %y76 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis75, i32 0, i32 1
  store double %conv74, double* %y76, align 8
  %80 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %81 = bitcast %struct._GimpBrush* %80 to %struct._GTypeInstance*
  %call77 = call i64 @gimp_data_get_type() #8
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call77)
  %82 = bitcast %struct._GTypeInstance* %call78 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %82)
  ret void
}

declare void @temp_buf_free(%struct._TempBuf*) #1

declare %struct._TileManager* @gimp_buffer_get_tiles(%struct._GimpBuffer*) #1

declare i32 @gimp_buffer_get_image_type(%struct._GimpBuffer*) #1

declare i32 @gimp_buffer_get_width(%struct._GimpBuffer*) #1

declare i32 @gimp_buffer_get_height(%struct._GimpBuffer*) #1

declare %struct._TempBuf* @temp_buf_new(i32, i32, i32, i32, i32, i8*) #1

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare void @pixel_region_init_temp_buf(%struct._PixelRegion*, %struct._TempBuf*, i32, i32, i32, i32) #1

declare void @extract_alpha_region(%struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*) #1

declare void @color_region(%struct._PixelRegion*, i8*) #1

declare void @copy_color(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare void @copy_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare void @copy_component(%struct._PixelRegion*, %struct._PixelRegion*, i32) #1

declare %struct._TempBuf* @temp_buf_copy(%struct._TempBuf*, %struct._TempBuf*) #1

declare void @gimp_data_dirty(%struct._GimpData*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare i8* @g_value_get_object(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

declare void @g_value_set_object(%struct._GValue*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
