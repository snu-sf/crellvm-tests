; ModuleID = './app/actions/drawable-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
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
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
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
%struct._GimpDisplay = type opaque
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._TempBuf = type opaque
%struct._GtkToggleAction = type { %struct._GtkAction, %struct._GtkToggleActionPrivate* }
%struct._GtkToggleActionPrivate = type opaque
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpLayer = type opaque
%struct._GimpItemUndo = type { %struct._GimpUndo, %struct._GimpItem* }

@.str = private unnamed_addr constant [45 x i8] c"Equalize does not operate on indexed layers.\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Invert does not operate on indexed layers.\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"White Balance operates only on RGB color layers.\00", align 1

; Function Attrs: nounwind uwtable
define void @drawable_equalize_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
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
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %2)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool2 = icmp ne %struct._GimpDrawable* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GtkWidget* @action_data_get_widget(i8* %4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %widget, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool6 = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call9 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %6)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %7, i32 0, i32 1
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 80)
  %11 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %8, %struct._GObject* %11, i32 1, i8* %call13)
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_equalize(%struct._GimpDrawable* %12, i32 1)
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %13)
  br label %return

return:                                           ; preds = %if.end.14, %if.then.11, %if.then.7, %if.then.3, %if.then
  ret void
}

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare %struct._GtkWidget* @action_data_get_widget(i8*) #1

declare i32 @gimp_drawable_is_indexed(%struct._GimpDrawable*) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_drawable_equalize(%struct._GimpDrawable*, i32) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @drawable_invert_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
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
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %2)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool2 = icmp ne %struct._GimpDrawable* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpDisplay* @action_data_get_display(i8* %4)
  store %struct._GimpDisplay* %call5, %struct._GimpDisplay** %display, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool6 = icmp ne %struct._GimpDisplay* %5, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load i8*, i8** %data.addr, align 8
  %call9 = call %struct._GtkWidget* @action_data_get_widget(i8* %6)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %widget, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool10 = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call13 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %8)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.12
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %9, i32 0, i32 1
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 80)
  %13 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %10, %struct._GObject* %13, i32 1, i8* %call17)
  br label %return

if.end.18:                                        ; preds = %if.end.12
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %16 = bitcast %struct._GimpDisplay* %15 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_progress_interface_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call19)
  %17 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpProgress*
  call void @gimp_drawable_invert(%struct._GimpDrawable* %14, %struct._GimpProgress* %17)
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %18)
  br label %return

return:                                           ; preds = %if.end.18, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  ret void
}

declare %struct._GimpDisplay* @action_data_get_display(i8*) #1

declare void @gimp_drawable_invert(%struct._GimpDrawable*, %struct._GimpProgress*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #3

; Function Attrs: nounwind uwtable
define void @drawable_levels_stretch_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
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
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %2)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool2 = icmp ne %struct._GimpDrawable* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpDisplay* @action_data_get_display(i8* %4)
  store %struct._GimpDisplay* %call5, %struct._GimpDisplay** %display, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool6 = icmp ne %struct._GimpDisplay* %5, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load i8*, i8** %data.addr, align 8
  %call9 = call %struct._GtkWidget* @action_data_get_widget(i8* %6)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %widget, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool10 = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call13 = call i32 @gimp_drawable_is_rgb(%struct._GimpDrawable* %8)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.18, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %9, i32 0, i32 1
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 80)
  %13 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %10, %struct._GObject* %13, i32 1, i8* %call17)
  br label %return

if.end.18:                                        ; preds = %if.end.12
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %16 = bitcast %struct._GimpDisplay* %15 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_progress_interface_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call19)
  %17 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpProgress*
  call void @gimp_drawable_levels_stretch(%struct._GimpDrawable* %14, %struct._GimpProgress* %17)
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %18)
  br label %return

return:                                           ; preds = %if.end.18, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  ret void
}

declare i32 @gimp_drawable_is_rgb(%struct._GimpDrawable*) #1

declare void @gimp_drawable_levels_stretch(%struct._GimpDrawable*, %struct._GimpProgress*) #1

; Function Attrs: nounwind uwtable
define void @drawable_offset_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
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
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %2)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool2 = icmp ne %struct._GimpDrawable* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GtkWidget* @action_data_get_widget(i8* %4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %widget, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool6 = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %7 = load i8*, i8** %data.addr, align 8
  %call9 = call %struct._GimpContext* @action_data_get_context(i8* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call10 = call %struct._GtkWidget* @offset_dialog_new(%struct._GimpDrawable* %6, %struct._GimpContext* %call9, %struct._GtkWidget* %8)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %dialog, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  ret void
}

declare %struct._GtkWidget* @offset_dialog_new(%struct._GimpDrawable*, %struct._GimpContext*, %struct._GtkWidget*) #1

declare %struct._GimpContext* @action_data_get_context(i8*) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @drawable_linked_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %linked = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %undo = alloca %struct._GimpUndo*, align 8
  %push_undo = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.46

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %2)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool2 = icmp ne %struct._GimpDrawable* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.46

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %5 = bitcast %struct._GtkAction* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_toggle_action_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkToggleAction*
  %call7 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %6)
  store i32 %call7, i32* %linked, align 4
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %8 = bitcast %struct._GimpDrawable* %7 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %8, %struct._GTypeInstance** %__inst, align 8
  %call8 = call i64 @gimp_layer_mask_get_type() #6
  store i64 %call8, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool9 = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %if.end.4
  store i32 0, i32* %__r, align 4
  br label %if.end.17

if.else:                                          ; preds = %if.end.4
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool11 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool11, label %land.lhs.true, label %if.else.14

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.16

if.else.14:                                       ; preds = %land.lhs.true, %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call15 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #7
  store i32 %call15, i32* %__r, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.then.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.10
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool18 = icmp ne i32 %19, 0
  br i1 %tobool18, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %if.end.17
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_layer_mask_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call20)
  %22 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpLayerMask*
  %call22 = call %struct._GimpLayer* @gimp_layer_mask_get_layer(%struct._GimpLayerMask* %22)
  %23 = bitcast %struct._GimpLayer* %call22 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_drawable_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call23)
  %24 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %24, %struct._GimpDrawable** %drawable, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.19, %if.end.17
  %25 = load i32, i32* %linked, align 4
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_item_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call26)
  %28 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpItem*
  %call28 = call i32 @gimp_item_get_linked(%struct._GimpItem* %28)
  %cmp29 = icmp ne i32 %25, %call28
  br i1 %cmp29, label %if.then.30, label %if.end.46

if.then.30:                                       ; preds = %if.end.25
  store i32 1, i32* %push_undo, align 4
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call33 = call i64 @gimp_item_undo_get_type() #6
  %call34 = call %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %29, i64 %call33, i32 52)
  store %struct._GimpUndo* %call34, %struct._GimpUndo** %undo, align 8
  %30 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool35 = icmp ne %struct._GimpUndo* %30, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.43

land.lhs.true.36:                                 ; preds = %if.then.30
  %31 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %32 = bitcast %struct._GimpUndo* %31 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_item_undo_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call37)
  %33 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %33, i32 0, i32 1
  %34 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %36 = bitcast %struct._GimpDrawable* %35 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_item_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call39)
  %37 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpItem*
  %cmp41 = icmp eq %struct._GimpItem* %34, %37
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true.36
  store i32 0, i32* %push_undo, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %land.lhs.true.36, %if.then.30
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %39 = bitcast %struct._GimpDrawable* %38 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_item_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call44)
  %40 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpItem*
  %41 = load i32, i32* %linked, align 4
  %42 = load i32, i32* %push_undo, align 4
  call void @gimp_item_set_linked(%struct._GimpItem* %40, i32 %41, i32 %42)
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %43)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then, %if.then.3, %if.end.43, %if.end.25
  ret void
}

declare i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_action_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mask_get_type() #3

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare %struct._GimpLayer* @gimp_layer_mask_get_layer(%struct._GimpLayerMask*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #3

declare i32 @gimp_item_get_linked(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #3

declare %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_undo_get_type() #3

declare void @gimp_item_set_linked(%struct._GimpItem*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @drawable_visible_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %visible = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %undo = alloca %struct._GimpUndo*, align 8
  %push_undo = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.46

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %2)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool2 = icmp ne %struct._GimpDrawable* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.46

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %5 = bitcast %struct._GtkAction* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_toggle_action_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkToggleAction*
  %call7 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %6)
  store i32 %call7, i32* %visible, align 4
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %8 = bitcast %struct._GimpDrawable* %7 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %8, %struct._GTypeInstance** %__inst, align 8
  %call8 = call i64 @gimp_layer_mask_get_type() #6
  store i64 %call8, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool9 = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %if.end.4
  store i32 0, i32* %__r, align 4
  br label %if.end.17

if.else:                                          ; preds = %if.end.4
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool11 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool11, label %land.lhs.true, label %if.else.14

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.16

if.else.14:                                       ; preds = %land.lhs.true, %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call15 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #7
  store i32 %call15, i32* %__r, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.then.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.10
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool18 = icmp ne i32 %19, 0
  br i1 %tobool18, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %if.end.17
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_layer_mask_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call20)
  %22 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpLayerMask*
  %call22 = call %struct._GimpLayer* @gimp_layer_mask_get_layer(%struct._GimpLayerMask* %22)
  %23 = bitcast %struct._GimpLayer* %call22 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_drawable_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call23)
  %24 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %24, %struct._GimpDrawable** %drawable, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.19, %if.end.17
  %25 = load i32, i32* %visible, align 4
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_item_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call26)
  %28 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpItem*
  %call28 = call i32 @gimp_item_get_visible(%struct._GimpItem* %28)
  %cmp29 = icmp ne i32 %25, %call28
  br i1 %cmp29, label %if.then.30, label %if.end.46

if.then.30:                                       ; preds = %if.end.25
  store i32 1, i32* %push_undo, align 4
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call33 = call i64 @gimp_item_undo_get_type() #6
  %call34 = call %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %29, i64 %call33, i32 51)
  store %struct._GimpUndo* %call34, %struct._GimpUndo** %undo, align 8
  %30 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool35 = icmp ne %struct._GimpUndo* %30, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.43

land.lhs.true.36:                                 ; preds = %if.then.30
  %31 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %32 = bitcast %struct._GimpUndo* %31 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_item_undo_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call37)
  %33 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %33, i32 0, i32 1
  %34 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %36 = bitcast %struct._GimpDrawable* %35 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_item_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call39)
  %37 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpItem*
  %cmp41 = icmp eq %struct._GimpItem* %34, %37
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true.36
  store i32 0, i32* %push_undo, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %land.lhs.true.36, %if.then.30
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %39 = bitcast %struct._GimpDrawable* %38 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_item_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call44)
  %40 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpItem*
  %41 = load i32, i32* %visible, align 4
  %42 = load i32, i32* %push_undo, align 4
  call void @gimp_item_set_visible(%struct._GimpItem* %40, i32 %41, i32 %42)
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %43)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then, %if.then.3, %if.end.43, %if.end.25
  ret void
}

declare i32 @gimp_item_get_visible(%struct._GimpItem*) #1

declare void @gimp_item_set_visible(%struct._GimpItem*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @drawable_lock_content_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %locked = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %push_undo = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.34

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %2)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool2 = icmp ne %struct._GimpDrawable* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.34

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %5 = bitcast %struct._GtkAction* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_toggle_action_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkToggleAction*
  %call7 = call i32 @gtk_toggle_action_get_active(%struct._GtkToggleAction* %6)
  store i32 %call7, i32* %locked, align 4
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %8 = bitcast %struct._GimpDrawable* %7 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %8, %struct._GTypeInstance** %__inst, align 8
  %call8 = call i64 @gimp_layer_mask_get_type() #6
  store i64 %call8, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool9 = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %if.end.4
  store i32 0, i32* %__r, align 4
  br label %if.end.17

if.else:                                          ; preds = %if.end.4
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool11 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool11, label %land.lhs.true, label %if.else.14

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.16

if.else.14:                                       ; preds = %land.lhs.true, %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call15 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #7
  store i32 %call15, i32* %__r, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.then.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.10
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool18 = icmp ne i32 %19, 0
  br i1 %tobool18, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %if.end.17
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_layer_mask_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call20)
  %22 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpLayerMask*
  %call22 = call %struct._GimpLayer* @gimp_layer_mask_get_layer(%struct._GimpLayerMask* %22)
  %23 = bitcast %struct._GimpLayer* %call22 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_drawable_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call23)
  %24 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %24, %struct._GimpDrawable** %drawable, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.19, %if.end.17
  %25 = load i32, i32* %locked, align 4
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_item_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call26)
  %28 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpItem*
  %call28 = call i32 @gimp_item_get_lock_content(%struct._GimpItem* %28)
  %cmp29 = icmp ne i32 %25, %call28
  br i1 %cmp29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %if.end.25
  store i32 1, i32* %push_undo, align 4
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %30 = bitcast %struct._GimpDrawable* %29 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_item_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call32)
  %31 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpItem*
  %32 = load i32, i32* %locked, align 4
  %33 = load i32, i32* %push_undo, align 4
  call void @gimp_item_set_lock_content(%struct._GimpItem* %31, i32 %32, i32 %33)
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %34)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then, %if.then.3, %if.then.30, %if.end.25
  ret void
}

declare i32 @gimp_item_get_lock_content(%struct._GimpItem*) #1

declare void @gimp_item_set_lock_content(%struct._GimpItem*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @drawable_flip_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %axis = alloca double, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store double 0.000000e+00, double* %axis, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %2)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool2 = icmp ne %struct._GimpDrawable* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpContext* @action_data_get_context(i8* %4)
  store %struct._GimpContext* %call5, %struct._GimpContext** %context, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool6 = icmp ne %struct._GimpContext* %5, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call9)
  %8 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  store %struct._GimpItem* %8, %struct._GimpItem** %item, align 8
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %9, i32* %off_x, i32* %off_y)
  %10 = load i32, i32* %value.addr, align 4
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %if.end.8
  %11 = load i32, i32* %off_x, align 4
  %conv = sitofp i32 %11 to double
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call11 = call i32 @gimp_item_get_width(%struct._GimpItem* %12)
  %conv12 = sitofp i32 %call11 to double
  %div = fdiv double %conv12, 2.000000e+00
  %add = fadd double %conv, %div
  store double %add, double* %axis, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end.8
  %13 = load i32, i32* %off_y, align 4
  %conv14 = sitofp i32 %13 to double
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call15 = call i32 @gimp_item_get_height(%struct._GimpItem* %14)
  %conv16 = sitofp i32 %call15 to double
  %div17 = fdiv double %conv16, 2.000000e+00
  %add18 = fadd double %conv14, %div17
  store double %add18, double* %axis, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.13, %sw.bb
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call19 = call i32 @gimp_item_get_linked(%struct._GimpItem* %15)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %sw.epilog
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %18 = load i32, i32* %value.addr, align 4
  %19 = load double, double* %axis, align 8
  call void @gimp_item_linked_flip(%struct._GimpItem* %16, %struct._GimpContext* %17, i32 %18, double %19, i32 0)
  br label %if.end.22

if.else:                                          ; preds = %sw.epilog
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %22 = load i32, i32* %value.addr, align 4
  %23 = load double, double* %axis, align 8
  call void @gimp_item_flip(%struct._GimpItem* %20, %struct._GimpContext* %21, i32 %22, double %23, i32 0)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %24)
  br label %return

return:                                           ; preds = %if.end.22, %if.then.7, %if.then.3, %if.then
  ret void
}

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare void @gimp_item_linked_flip(%struct._GimpItem*, %struct._GimpContext*, i32, double, i32) #1

declare void @gimp_item_flip(%struct._GimpItem*, %struct._GimpContext*, i32, double, i32) #1

; Function Attrs: nounwind uwtable
define void @drawable_rotate_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %center_x = alloca double, align 8
  %center_y = alloca double, align 8
  %clip_result = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %clip_result, align 4
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %2)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool2 = icmp ne %struct._GimpDrawable* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpContext* @action_data_get_context(i8* %4)
  store %struct._GimpContext* %call5, %struct._GimpContext** %context, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool6 = icmp ne %struct._GimpContext* %5, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call9)
  %8 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  store %struct._GimpItem* %8, %struct._GimpItem** %item, align 8
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %9, i32* %off_x, i32* %off_y)
  %10 = load i32, i32* %off_x, align 4
  %conv = sitofp i32 %10 to double
  %11 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call11 = call i32 @gimp_item_get_width(%struct._GimpItem* %11)
  %conv12 = sitofp i32 %call11 to double
  %div = fdiv double %conv12, 2.000000e+00
  %add = fadd double %conv, %div
  store double %add, double* %center_x, align 8
  %12 = load i32, i32* %off_y, align 4
  %conv13 = sitofp i32 %12 to double
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call14 = call i32 @gimp_item_get_height(%struct._GimpItem* %13)
  %conv15 = sitofp i32 %call14 to double
  %div16 = fdiv double %conv15, 2.000000e+00
  %add17 = fadd double %conv13, %div16
  store double %add17, double* %center_y, align 8
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %15 = bitcast %struct._GimpItem* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst, align 8
  %call18 = call i64 @gimp_channel_get_type() #6
  store i64 %call18, i64* %__t, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool19, label %if.else, label %if.then.20

if.then.20:                                       ; preds = %if.end.8
  store i32 0, i32* %__r, align 4
  br label %if.end.28

if.else:                                          ; preds = %if.end.8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool21 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool21, label %land.lhs.true, label %if.else.25

land.lhs.true:                                    ; preds = %if.else
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type, align 8
  %22 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %21, %22
  br i1 %cmp, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.27

if.else.25:                                       ; preds = %land.lhs.true, %if.else
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %24 = load i64, i64* %__t, align 8
  %call26 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call26, i32* %__r, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.24
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.20
  %25 = load i32, i32* %__r, align 4
  store i32 %25, i32* %tmp
  %26 = load i32, i32* %tmp
  %tobool29 = icmp ne i32 %26, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  store i32 1, i32* %clip_result, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.28
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call32 = call i32 @gimp_item_get_linked(%struct._GimpItem* %27)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.end.31
  %28 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %30 = load i32, i32* %value.addr, align 4
  %31 = load double, double* %center_x, align 8
  %32 = load double, double* %center_y, align 8
  call void @gimp_item_linked_rotate(%struct._GimpItem* %28, %struct._GimpContext* %29, i32 %30, double %31, double %32, i32 0)
  br label %if.end.36

if.else.35:                                       ; preds = %if.end.31
  %33 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %35 = load i32, i32* %value.addr, align 4
  %36 = load double, double* %center_x, align 8
  %37 = load double, double* %center_y, align 8
  %38 = load i32, i32* %clip_result, align 4
  call void @gimp_item_rotate(%struct._GimpItem* %33, %struct._GimpContext* %34, i32 %35, double %36, double %37, i32 %38)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.then.34
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %39)
  br label %return

return:                                           ; preds = %if.end.36, %if.then.7, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #3

declare void @gimp_item_linked_rotate(%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32) #1

declare void @gimp_item_rotate(%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32) #1

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
