; ModuleID = './app/widgets/gimpcellrendererviewable.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCellRendererViewableClass = type { %struct._GtkCellRendererClass, i32 (%struct._GimpCellRendererViewable*, i8*, i32)*, void (%struct._GimpCellRendererViewable*, i8*, i32)* }
%struct._GtkCellRendererClass = type { %struct._GtkObjectClass, void (%struct._GtkCellRenderer*, %struct._GtkWidget*, %struct._GdkRectangle*, i32*, i32*, i32*, i32*)*, void (%struct._GtkCellRenderer*, %struct._GdkDrawable*, %struct._GtkWidget*, %struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)*, i32 (%struct._GtkCellRenderer*, %union._GdkEvent*, %struct._GtkWidget*, i8*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)*, %struct._GtkCellEditable* (%struct._GtkCellRenderer*, %union._GdkEvent*, %struct._GtkWidget*, i8*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)*, void (%struct._GtkCellRenderer*)*, void (%struct._GtkCellRenderer*, %struct._GtkCellEditable*, i8*)*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon.0] }
%union.anon.0 = type { i64 }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkArg = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
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
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GtkCellEditable = type opaque
%struct._GimpCellRendererViewable = type { %struct._GtkCellRenderer, %struct._GimpViewRenderer* }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._GimpContext = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._cairo = type opaque
%struct._GdkEventAny = type { i32, %struct._GdkDrawable*, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_cell_renderer_viewable_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"GimpCellRendererViewable\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_cell_renderer_viewable_pre_clicked = private unnamed_addr constant [40 x i8] c"gimp_cell_renderer_viewable_pre_clicked\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"GIMP_IS_CELL_RENDERER_VIEWABLE (cell)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"path != NULL\00", align 1
@viewable_cell_signals = internal global [2 x i32] zeroinitializer, align 4
@__func__.gimp_cell_renderer_viewable_clicked = private unnamed_addr constant [36 x i8] c"gimp_cell_renderer_viewable_clicked\00", align 1
@gimp_cell_renderer_viewable_parent_class = internal global i8* null, align 8
@GimpCellRendererViewable_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"pre-clicked\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"renderer\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"gimpcellrendererviewable.c\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"mode\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_cell_renderer_viewable_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_cell_renderer_viewable_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_cell_renderer_viewable_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_cell_renderer_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 240, void (i8*, i8*)* bitcast (void (i8*)* @gimp_cell_renderer_viewable_class_intern_init to void (i8*, i8*)*), i32 64, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCellRendererViewable*)* @gimp_cell_renderer_viewable_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_cell_renderer_viewable_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_cell_renderer_viewable_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_cell_renderer_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_viewable_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_cell_renderer_viewable_parent_class, align 8
  %1 = load i32, i32* @GimpCellRendererViewable_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCellRendererViewable_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCellRendererViewableClass*
  call void @gimp_cell_renderer_viewable_class_init(%struct._GimpCellRendererViewableClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_viewable_init(%struct._GimpCellRendererViewable* %cellviewable) #3 {
entry:
  %cellviewable.addr = alloca %struct._GimpCellRendererViewable*, align 8
  store %struct._GimpCellRendererViewable* %cellviewable, %struct._GimpCellRendererViewable** %cellviewable.addr, align 8
  %0 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cellviewable.addr, align 8
  %1 = bitcast %struct._GimpCellRendererViewable* %0 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 1, i8* null)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkCellRenderer* @gimp_cell_renderer_viewable_new() #3 {
entry:
  %call = call i64 @gimp_cell_renderer_viewable_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkCellRenderer*
  ret %struct._GtkCellRenderer* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_cell_renderer_viewable_pre_clicked(%struct._GimpCellRendererViewable* %cell, i8* %path, i32 %state) #3 {
entry:
  %retval = alloca i32, align 4
  %cell.addr = alloca %struct._GimpCellRendererViewable*, align 8
  %path.addr = alloca i8*, align 8
  %state.addr = alloca i32, align 4
  %handled = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCellRendererViewable* %cell, %struct._GimpCellRendererViewable** %cell.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 0, i32* %handled, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cell.addr, align 8
  %1 = bitcast %struct._GimpCellRendererViewable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cell_renderer_viewable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_cell_renderer_viewable_pre_clicked, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %path.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_cell_renderer_viewable_pre_clicked, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cell.addr, align 8
  %15 = bitcast %struct._GimpCellRendererViewable* %14 to i8*
  %16 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @viewable_cell_signals, i32 0, i64 0), align 4
  %17 = load i8*, i8** %path.addr, align 8
  %18 = load i32, i32* %state.addr, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %15, i32 %16, i32 0, i8* %17, i32 %18, i32* %handled)
  %19 = load i32, i32* %handled, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_cell_renderer_viewable_clicked(%struct._GimpCellRendererViewable* %cell, i8* %path, i32 %state) #3 {
entry:
  %cell.addr = alloca %struct._GimpCellRendererViewable*, align 8
  %path.addr = alloca i8*, align 8
  %state.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %event = alloca %union._GdkEvent*, align 8
  %bevent = alloca %struct._GdkEventButton*, align 8
  store %struct._GimpCellRendererViewable* %cell, %struct._GimpCellRendererViewable** %cell.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cell.addr, align 8
  %1 = bitcast %struct._GimpCellRendererViewable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cell_renderer_viewable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_cell_renderer_viewable_clicked, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %path.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_cell_renderer_viewable_clicked, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cell.addr, align 8
  %renderer = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %14, i32 0, i32 1
  %15 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %tobool17 = icmp ne %struct._GimpViewRenderer* %15, null
  br i1 %tobool17, label %if.then.18, label %if.end.39

if.then.18:                                       ; preds = %do.end.16
  %call20 = call %union._GdkEvent* @gtk_get_current_event()
  store %union._GdkEvent* %call20, %union._GdkEvent** %event, align 8
  %16 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %tobool21 = icmp ne %union._GdkEvent* %16, null
  br i1 %tobool21, label %if.then.22, label %if.end.38

if.then.22:                                       ; preds = %if.then.18
  %17 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %18 = bitcast %union._GdkEvent* %17 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %18, %struct._GdkEventButton** %bevent, align 8
  %19 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %19, i32 0, i32 0
  %20 = load i32, i32* %type, align 4
  %cmp24 = icmp eq i32 %20, 4
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.37

land.lhs.true.25:                                 ; preds = %if.then.22
  %21 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %21, i32 0, i32 8
  %22 = load i32, i32* %button, align 4
  %cmp26 = icmp eq i32 %22, 1
  br i1 %cmp26, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.25
  %23 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %button27 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %23, i32 0, i32 8
  %24 = load i32, i32* %button27, align 4
  %cmp28 = icmp eq i32 %24, 2
  br i1 %cmp28, label %if.then.29, label %if.end.37

if.then.29:                                       ; preds = %lor.lhs.false, %land.lhs.true.25
  %25 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  %call30 = call %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent* %25)
  %26 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %27 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cell.addr, align 8
  %renderer31 = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %27, i32 0, i32 1
  %28 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer31, align 8
  %context = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %28, i32 0, i32 1
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %30 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cell.addr, align 8
  %renderer32 = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %30, i32 0, i32 1
  %31 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer32, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %31, i32 0, i32 3
  %32 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %33 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cell.addr, align 8
  %renderer33 = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %33, i32 0, i32 1
  %34 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer33, align 8
  %width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %34, i32 0, i32 4
  %35 = load i32, i32* %width, align 4
  %36 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cell.addr, align 8
  %renderer34 = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %36, i32 0, i32 1
  %37 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer34, align 8
  %height = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %37, i32 0, i32 5
  %38 = load i32, i32* %height, align 4
  %39 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cell.addr, align 8
  %renderer35 = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %39, i32 0, i32 1
  %40 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer35, align 8
  %dot_for_dot = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %40, i32 0, i32 7
  %bf.load = load i8, i8* %dot_for_dot, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %call36 = call i32 @gimp_view_popup_show(%struct._GtkWidget* %call30, %struct._GdkEventButton* %26, %struct._GimpContext* %29, %struct._GimpViewable* %32, i32 %35, i32 %38, i32 %bf.cast)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.29, %lor.lhs.false, %if.then.22
  %41 = load %union._GdkEvent*, %union._GdkEvent** %event, align 8
  call void @gdk_event_free(%union._GdkEvent* %41)
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.18
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %do.end.16
  %42 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cell.addr, align 8
  %43 = bitcast %struct._GimpCellRendererViewable* %42 to i8*
  %44 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @viewable_cell_signals, i32 0, i64 1), align 4
  %45 = load i8*, i8** %path.addr, align 8
  %46 = load i32, i32* %state.addr, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %43, i32 %44, i32 0, i8* %45, i32 %46)
  br label %return

return:                                           ; preds = %if.end.39, %if.else.14, %if.else.9
  ret void
}

declare %union._GdkEvent* @gtk_get_current_event() #1

declare i32 @gimp_view_popup_show(%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpContext*, %struct._GimpViewable*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent*) #1

declare void @gdk_event_free(%union._GdkEvent*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_viewable_class_init(%struct._GimpCellRendererViewableClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCellRendererViewableClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %cell_class = alloca %struct._GtkCellRendererClass*, align 8
  store %struct._GimpCellRendererViewableClass* %klass, %struct._GimpCellRendererViewableClass** %klass.addr, align 8
  %0 = load %struct._GimpCellRendererViewableClass*, %struct._GimpCellRendererViewableClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCellRendererViewableClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCellRendererViewableClass*, %struct._GimpCellRendererViewableClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCellRendererViewableClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_cell_renderer_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkCellRendererClass*
  store %struct._GtkCellRendererClass* %5, %struct._GtkCellRendererClass** %cell_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %7 = bitcast %struct._GObjectClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i64 @gdk_modifier_type_get_type() #6
  %call4 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i64 %8, i32 2, i32 224, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* @g_signal_accumulator_true_handled, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_BOOLEAN__STRING_FLAGS, i64 20, i32 2, i64 64, i64 %call3)
  store i32 %call4, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @viewable_cell_signals, i32 0, i64 0), align 4
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %10 = bitcast %struct._GObjectClass* %9 to %struct._GTypeClass*
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type5, align 8
  %call6 = call i64 @gdk_modifier_type_get_type() #6
  %call7 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i64 %11, i32 2, i32 232, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_VOID__STRING_FLAGS, i64 4, i32 2, i64 64, i64 %call6)
  store i32 %call7, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @viewable_cell_signals, i32 0, i64 1), align 4
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_cell_renderer_viewable_finalize, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_cell_renderer_viewable_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %14, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_cell_renderer_viewable_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %15 = load %struct._GtkCellRendererClass*, %struct._GtkCellRendererClass** %cell_class, align 8
  %get_size = getelementptr inbounds %struct._GtkCellRendererClass, %struct._GtkCellRendererClass* %15, i32 0, i32 1
  store void (%struct._GtkCellRenderer*, %struct._GtkWidget*, %struct._GdkRectangle*, i32*, i32*, i32*, i32*)* @gimp_cell_renderer_viewable_get_size, void (%struct._GtkCellRenderer*, %struct._GtkWidget*, %struct._GdkRectangle*, i32*, i32*, i32*, i32*)** %get_size, align 8
  %16 = load %struct._GtkCellRendererClass*, %struct._GtkCellRendererClass** %cell_class, align 8
  %render = getelementptr inbounds %struct._GtkCellRendererClass, %struct._GtkCellRendererClass* %16, i32 0, i32 2
  store void (%struct._GtkCellRenderer*, %struct._GdkDrawable*, %struct._GtkWidget*, %struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)* @gimp_cell_renderer_viewable_render, void (%struct._GtkCellRenderer*, %struct._GdkDrawable*, %struct._GtkWidget*, %struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)** %render, align 8
  %17 = load %struct._GtkCellRendererClass*, %struct._GtkCellRendererClass** %cell_class, align 8
  %activate = getelementptr inbounds %struct._GtkCellRendererClass, %struct._GtkCellRendererClass* %17, i32 0, i32 3
  store i32 (%struct._GtkCellRenderer*, %union._GdkEvent*, %struct._GtkWidget*, i8*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)* @gimp_cell_renderer_viewable_activate, i32 (%struct._GtkCellRenderer*, %union._GdkEvent*, %struct._GtkWidget*, i8*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)** %activate, align 8
  %18 = load %struct._GimpCellRendererViewableClass*, %struct._GimpCellRendererViewableClass** %klass.addr, align 8
  %clicked = getelementptr inbounds %struct._GimpCellRendererViewableClass, %struct._GimpCellRendererViewableClass* %18, i32 0, i32 2
  store void (%struct._GimpCellRendererViewable*, i8*, i32)* null, void (%struct._GimpCellRendererViewable*, i8*, i32)** %clicked, align 8
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call i64 @gimp_view_renderer_get_type() #6
  %call9 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i64 %call8, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 1, %struct._GParamSpec* %call9)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare i32 @g_signal_accumulator_true_handled(%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*) #1

declare void @gimp_marshal_BOOLEAN__STRING_FLAGS(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gdk_modifier_type_get_type() #2

declare void @gimp_marshal_VOID__STRING_FLAGS(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_viewable_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %cell = alloca %struct._GimpCellRendererViewable*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cell_renderer_viewable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCellRendererViewable*
  store %struct._GimpCellRendererViewable* %2, %struct._GimpCellRendererViewable** %cell, align 8
  %3 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cell, align 8
  %renderer = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %3, i32 0, i32 1
  %4 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %tobool = icmp ne %struct._GimpViewRenderer* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cell, align 8
  %renderer2 = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %5, i32 0, i32 1
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer2, align 8
  %7 = bitcast %struct._GimpViewRenderer* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cell, align 8
  %renderer3 = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %8, i32 0, i32 1
  store %struct._GimpViewRenderer* null, %struct._GimpViewRenderer** %renderer3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_cell_renderer_viewable_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_viewable_get_property(%struct._GObject* %object, i32 %param_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %param_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %cell = alloca %struct._GimpCellRendererViewable*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %param_id, i32* %param_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cell_renderer_viewable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCellRendererViewable*
  store %struct._GimpCellRendererViewable* %2, %struct._GimpCellRendererViewable** %cell, align 8
  %3 = load i32, i32* %param_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cell, align 8
  %renderer = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %5, i32 0, i32 1
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %7 = bitcast %struct._GimpViewRenderer* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %8, %struct._GObject** %_glib__object, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %9, %struct._GParamSpec** %_glib__pspec, align 8
  %10 = load i32, i32* %param_id.addr, align 4
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i32 193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %11, i8* %13, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_viewable_set_property(%struct._GObject* %object, i32 %param_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %param_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %cell = alloca %struct._GimpCellRendererViewable*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %param_id, i32* %param_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cell_renderer_viewable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCellRendererViewable*
  store %struct._GimpCellRendererViewable* %2, %struct._GimpCellRendererViewable** %cell, align 8
  %3 = load i32, i32* %param_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpViewRenderer*
  store %struct._GimpViewRenderer* %5, %struct._GimpViewRenderer** %renderer, align 8
  %6 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cell, align 8
  %renderer3 = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %6, i32 0, i32 1
  %7 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer3, align 8
  %tobool = icmp ne %struct._GimpViewRenderer* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %8 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cell, align 8
  %renderer4 = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %8, i32 0, i32 1
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer4, align 8
  %10 = bitcast %struct._GimpViewRenderer* %9 to i8*
  call void @g_object_unref(i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %11 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %12 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cell, align 8
  %renderer5 = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %12, i32 0, i32 1
  store %struct._GimpViewRenderer* %11, %struct._GimpViewRenderer** %renderer5, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %13, %struct._GObject** %_glib__object, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %14, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = load i32, i32* %param_id.addr, align 4
  store i32 %15, i32* %_glib__property_id, align 4
  %16 = load i32, i32* %_glib__property_id, align 4
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %20 = bitcast %struct._GParamSpec* %19 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %call6 = call i8* @g_type_name(i64 %22)
  %23 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %24 = bitcast %struct._GObject* %23 to %struct._GTypeInstance*
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type8, align 8
  %call9 = call i8* @g_type_name(i64 %26)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i32 220, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %16, i8* %18, i8* %call6, i8* %call9)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_viewable_get_size(%struct._GtkCellRenderer* %cell, %struct._GtkWidget* %widget, %struct._GdkRectangle* %cell_area, i32* %x_offset, i32* %y_offset, i32* %width, i32* %height) #3 {
entry:
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %cell_area.addr = alloca %struct._GdkRectangle*, align 8
  %x_offset.addr = alloca i32*, align 8
  %y_offset.addr = alloca i32*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %cellviewable = alloca %struct._GimpCellRendererViewable*, align 8
  %xalign = alloca float, align 4
  %yalign = alloca float, align 4
  %xpad = alloca i32, align 4
  %ypad = alloca i32, align 4
  %view_width = alloca i32, align 4
  %view_height = alloca i32, align 4
  %calc_width = alloca i32, align 4
  %calc_height = alloca i32, align 4
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %cell_area, %struct._GdkRectangle** %cell_area.addr, align 8
  store i32* %x_offset, i32** %x_offset.addr, align 8
  store i32* %y_offset, i32** %y_offset.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  store i32 0, i32* %view_width, align 4
  store i32 0, i32* %view_height, align 4
  %0 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  call void @gtk_cell_renderer_get_alignment(%struct._GtkCellRenderer* %0, float* %xalign, float* %yalign)
  %1 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  call void @gtk_cell_renderer_get_padding(%struct._GtkCellRenderer* %1, i32* %xpad, i32* %ypad)
  %2 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %3 = bitcast %struct._GtkCellRenderer* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_cell_renderer_viewable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCellRendererViewable*
  store %struct._GimpCellRendererViewable* %4, %struct._GimpCellRendererViewable** %cellviewable, align 8
  %5 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cellviewable, align 8
  %renderer = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %5, i32 0, i32 1
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %tobool = icmp ne %struct._GimpViewRenderer* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cellviewable, align 8
  %renderer2 = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %7, i32 0, i32 1
  %8 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer2, align 8
  %width3 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %8, i32 0, i32 4
  %9 = load i32, i32* %width3, align 4
  %10 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cellviewable, align 8
  %renderer4 = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %10, i32 0, i32 1
  %11 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer4, align 8
  %border_width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %11, i32 0, i32 6
  %12 = load i32, i32* %border_width, align 4
  %mul = mul nsw i32 2, %12
  %add = add nsw i32 %9, %mul
  store i32 %add, i32* %view_width, align 4
  %13 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cellviewable, align 8
  %renderer5 = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %13, i32 0, i32 1
  %14 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer5, align 8
  %height6 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %14, i32 0, i32 5
  %15 = load i32, i32* %height6, align 4
  %16 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cellviewable, align 8
  %renderer7 = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %16, i32 0, i32 1
  %17 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer7, align 8
  %border_width8 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %17, i32 0, i32 6
  %18 = load i32, i32* %border_width8, align 4
  %mul9 = mul nsw i32 2, %18
  %add10 = add nsw i32 %15, %mul9
  store i32 %add10, i32* %view_height, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %xpad, align 4
  %mul11 = mul nsw i32 %19, 2
  %20 = load i32, i32* %view_width, align 4
  %add12 = add nsw i32 %mul11, %20
  store i32 %add12, i32* %calc_width, align 4
  %21 = load i32, i32* %ypad, align 4
  %mul13 = mul nsw i32 %21, 2
  %22 = load i32, i32* %view_height, align 4
  %add14 = add nsw i32 %mul13, %22
  store i32 %add14, i32* %calc_height, align 4
  %23 = load i32*, i32** %x_offset.addr, align 8
  %tobool15 = icmp ne i32* %23, null
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  %24 = load i32*, i32** %x_offset.addr, align 8
  store i32 0, i32* %24, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end
  %25 = load i32*, i32** %y_offset.addr, align 8
  %tobool18 = icmp ne i32* %25, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  %26 = load i32*, i32** %y_offset.addr, align 8
  store i32 0, i32* %26, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.17
  %27 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %tobool21 = icmp ne %struct._GdkRectangle* %27, null
  br i1 %tobool21, label %land.lhs.true, label %if.end.62

land.lhs.true:                                    ; preds = %if.end.20
  %28 = load i32, i32* %view_width, align 4
  %cmp = icmp sgt i32 %28, 0
  br i1 %cmp, label %land.lhs.true.22, label %if.end.62

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %29 = load i32, i32* %view_height, align 4
  %cmp23 = icmp sgt i32 %29, 0
  br i1 %cmp23, label %if.then.24, label %if.end.62

if.then.24:                                       ; preds = %land.lhs.true.22
  %30 = load i32*, i32** %x_offset.addr, align 8
  %tobool25 = icmp ne i32* %30, null
  br i1 %tobool25, label %if.then.26, label %if.end.44

if.then.26:                                       ; preds = %if.then.24
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call27 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %31)
  %cmp28 = icmp eq i32 %call27, 2
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.26
  %32 = load float, float* %xalign, align 4
  %conv = fpext float %32 to double
  %sub = fsub double 1.000000e+00, %conv
  br label %cond.end

cond.false:                                       ; preds = %if.then.26
  %33 = load float, float* %xalign, align 4
  %conv29 = fpext float %33 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %conv29, %cond.false ]
  %34 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %width30 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %34, i32 0, i32 2
  %35 = load i32, i32* %width30, align 4
  %36 = load i32, i32* %calc_width, align 4
  %sub31 = sub nsw i32 %35, %36
  %37 = load i32, i32* %xpad, align 4
  %mul32 = mul nsw i32 2, %37
  %sub33 = sub nsw i32 %sub31, %mul32
  %conv34 = sitofp i32 %sub33 to double
  %mul35 = fmul double %cond, %conv34
  %conv36 = fptosi double %mul35 to i32
  %38 = load i32*, i32** %x_offset.addr, align 8
  store i32 %conv36, i32* %38, align 4
  %39 = load i32*, i32** %x_offset.addr, align 8
  %40 = load i32, i32* %39, align 4
  %cmp37 = icmp sgt i32 %40, 0
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.end
  %41 = load i32*, i32** %x_offset.addr, align 8
  %42 = load i32, i32* %41, align 4
  br label %cond.end.41

cond.false.40:                                    ; preds = %cond.end
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.39
  %cond42 = phi i32 [ %42, %cond.true.39 ], [ 0, %cond.false.40 ]
  %43 = load i32, i32* %xpad, align 4
  %add43 = add nsw i32 %cond42, %43
  %44 = load i32*, i32** %x_offset.addr, align 8
  store i32 %add43, i32* %44, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %cond.end.41, %if.then.24
  %45 = load i32*, i32** %y_offset.addr, align 8
  %tobool45 = icmp ne i32* %45, null
  br i1 %tobool45, label %if.then.46, label %if.end.61

if.then.46:                                       ; preds = %if.end.44
  %46 = load float, float* %yalign, align 4
  %47 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %height47 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %47, i32 0, i32 3
  %48 = load i32, i32* %height47, align 4
  %49 = load i32, i32* %calc_height, align 4
  %sub48 = sub nsw i32 %48, %49
  %50 = load i32, i32* %ypad, align 4
  %mul49 = mul nsw i32 2, %50
  %sub50 = sub nsw i32 %sub48, %mul49
  %conv51 = sitofp i32 %sub50 to float
  %mul52 = fmul float %46, %conv51
  %conv53 = fptosi float %mul52 to i32
  %51 = load i32*, i32** %y_offset.addr, align 8
  store i32 %conv53, i32* %51, align 4
  %52 = load i32*, i32** %y_offset.addr, align 8
  %53 = load i32, i32* %52, align 4
  %cmp54 = icmp sgt i32 %53, 0
  br i1 %cmp54, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %if.then.46
  %54 = load i32*, i32** %y_offset.addr, align 8
  %55 = load i32, i32* %54, align 4
  br label %cond.end.58

cond.false.57:                                    ; preds = %if.then.46
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.56
  %cond59 = phi i32 [ %55, %cond.true.56 ], [ 0, %cond.false.57 ]
  %56 = load i32, i32* %ypad, align 4
  %add60 = add nsw i32 %cond59, %56
  %57 = load i32*, i32** %y_offset.addr, align 8
  store i32 %add60, i32* %57, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %cond.end.58, %if.end.44
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %land.lhs.true.22, %land.lhs.true, %if.end.20
  %58 = load i32*, i32** %width.addr, align 8
  %tobool63 = icmp ne i32* %58, null
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.62
  %59 = load i32, i32* %calc_width, align 4
  %60 = load i32*, i32** %width.addr, align 8
  store i32 %59, i32* %60, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.end.62
  %61 = load i32*, i32** %height.addr, align 8
  %tobool66 = icmp ne i32* %61, null
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.65
  %62 = load i32, i32* %calc_height, align 4
  %63 = load i32*, i32** %height.addr, align 8
  store i32 %62, i32* %63, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.end.65
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_viewable_render(%struct._GtkCellRenderer* %cell, %struct._GdkDrawable* %window, %struct._GtkWidget* %widget, %struct._GdkRectangle* %background_area, %struct._GdkRectangle* %cell_area, %struct._GdkRectangle* %expose_area, i32 %flags) #3 {
entry:
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %window.addr = alloca %struct._GdkDrawable*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %background_area.addr = alloca %struct._GdkRectangle*, align 8
  %cell_area.addr = alloca %struct._GdkRectangle*, align 8
  %expose_area.addr = alloca %struct._GdkRectangle*, align 8
  %flags.addr = alloca i32, align 4
  %cellviewable = alloca %struct._GimpCellRendererViewable*, align 8
  %cr = alloca %struct._cairo*, align 8
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  store %struct._GdkDrawable* %window, %struct._GdkDrawable** %window.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %background_area, %struct._GdkRectangle** %background_area.addr, align 8
  store %struct._GdkRectangle* %cell_area, %struct._GdkRectangle** %cell_area.addr, align 8
  store %struct._GdkRectangle* %expose_area, %struct._GdkRectangle** %expose_area.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %1 = bitcast %struct._GtkCellRenderer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cell_renderer_viewable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCellRendererViewable*
  store %struct._GimpCellRendererViewable* %2, %struct._GimpCellRendererViewable** %cellviewable, align 8
  %3 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cellviewable, align 8
  %renderer = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %3, i32 0, i32 1
  %4 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %tobool = icmp ne %struct._GimpViewRenderer* %4, null
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %flags.addr, align 4
  %and = and i32 %5, 1
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.end.8, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cellviewable, align 8
  %renderer4 = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %6, i32 0, i32 1
  %7 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer4, align 8
  %border_type = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %7, i32 0, i32 8
  %8 = load i32, i32* %border_type, align 4
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.3
  %9 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cellviewable, align 8
  %renderer6 = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %9, i32 0, i32 1
  %10 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer6, align 8
  call void @gimp_view_renderer_set_border_type(%struct._GimpViewRenderer* %10, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.3
  %11 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cellviewable, align 8
  %renderer7 = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %11, i32 0, i32 1
  %12 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer7, align 8
  call void @gimp_view_renderer_remove_idle(%struct._GimpViewRenderer* %12)
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %13 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  %call9 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %13)
  store %struct._cairo* %call9, %struct._cairo** %cr, align 8
  %14 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %15 = load %struct._GdkRectangle*, %struct._GdkRectangle** %expose_area.addr, align 8
  call void @gdk_cairo_rectangle(%struct._cairo* %14, %struct._GdkRectangle* %15)
  %16 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %16)
  %17 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %18 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %18, i32 0, i32 0
  %19 = load i32, i32* %x, align 4
  %conv = sitofp i32 %19 to double
  %20 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %20, i32 0, i32 1
  %21 = load i32, i32* %y, align 4
  %conv10 = sitofp i32 %21 to double
  call void @cairo_translate(%struct._cairo* %17, double %conv, double %conv10)
  %22 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cellviewable, align 8
  %renderer11 = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %22, i32 0, i32 1
  %23 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer11, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %25 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %26 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %26, i32 0, i32 2
  %27 = load i32, i32* %width, align 4
  %28 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %28, i32 0, i32 3
  %29 = load i32, i32* %height, align 4
  call void @gimp_view_renderer_draw(%struct._GimpViewRenderer* %23, %struct._GtkWidget* %24, %struct._cairo* %25, i32 %27, i32 %29)
  %30 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %30)
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.8, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_cell_renderer_viewable_activate(%struct._GtkCellRenderer* %cell, %union._GdkEvent* %event, %struct._GtkWidget* %widget, i8* %path, %struct._GdkRectangle* %background_area, %struct._GdkRectangle* %cell_area, i32 %flags) #3 {
entry:
  %retval = alloca i32, align 4
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %path.addr = alloca i8*, align 8
  %background_area.addr = alloca %struct._GdkRectangle*, align 8
  %cell_area.addr = alloca %struct._GdkRectangle*, align 8
  %flags.addr = alloca i32, align 4
  %cellviewable = alloca %struct._GimpCellRendererViewable*, align 8
  %state = alloca i32, align 4
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store %struct._GdkRectangle* %background_area, %struct._GdkRectangle** %background_area.addr, align 8
  store %struct._GdkRectangle* %cell_area, %struct._GdkRectangle** %cell_area.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %1 = bitcast %struct._GtkCellRenderer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cell_renderer_viewable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCellRendererViewable*
  store %struct._GimpCellRendererViewable* %2, %struct._GimpCellRendererViewable** %cellviewable, align 8
  %3 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cellviewable, align 8
  %renderer = getelementptr inbounds %struct._GimpCellRendererViewable, %struct._GimpCellRendererViewable* %3, i32 0, i32 1
  %4 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %tobool = icmp ne %struct._GimpViewRenderer* %4, null
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  store i32 0, i32* %state, align 4
  %5 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %tobool2 = icmp ne %union._GdkEvent* %5, null
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %7 = bitcast %union._GdkEvent* %6 to %struct._GdkEventAny*
  %type = getelementptr inbounds %struct._GdkEventAny, %struct._GdkEventAny* %7, i32 0, i32 0
  %8 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %8, 4
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %land.lhs.true
  %9 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %10 = bitcast %union._GdkEvent* %9 to %struct._GdkEventButton*
  %state4 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %10, i32 0, i32 7
  %11 = load i32, i32* %state4, align 4
  store i32 %11, i32* %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %land.lhs.true, %if.then
  %12 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %tobool5 = icmp ne %union._GdkEvent* %12, null
  br i1 %tobool5, label %lor.lhs.false, label %if.then.10

lor.lhs.false:                                    ; preds = %if.end
  %13 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %14 = bitcast %union._GdkEvent* %13 to %struct._GdkEventAny*
  %type6 = getelementptr inbounds %struct._GdkEventAny, %struct._GdkEventAny* %14, i32 0, i32 0
  %15 = load i32, i32* %type6, align 4
  %cmp7 = icmp eq i32 %15, 4
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.11

land.lhs.true.8:                                  ; preds = %lor.lhs.false
  %16 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %17 = bitcast %union._GdkEvent* %16 to %struct._GdkEventButton*
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %17, i32 0, i32 8
  %18 = load i32, i32* %button, align 4
  %cmp9 = icmp eq i32 %18, 1
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true.8, %if.end
  %19 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %cellviewable, align 8
  %20 = load i8*, i8** %path.addr, align 8
  %21 = load i32, i32* %state, align 4
  call void @gimp_cell_renderer_viewable_clicked(%struct._GimpCellRendererViewable* %19, i8* %20, i32 %21)
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true.8, %lor.lhs.false
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.10
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_object_unref(i8*) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i8* @g_value_dup_object(%struct._GValue*) #1

declare void @gtk_cell_renderer_get_alignment(%struct._GtkCellRenderer*, float*, float*) #1

declare void @gtk_cell_renderer_get_padding(%struct._GtkCellRenderer*, i32*, i32*) #1

declare i32 @gtk_widget_get_direction(%struct._GtkWidget*) #1

declare void @gimp_view_renderer_set_border_type(%struct._GimpViewRenderer*, i32) #1

declare void @gimp_view_renderer_remove_idle(%struct._GimpViewRenderer*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @gdk_cairo_rectangle(%struct._cairo*, %struct._GdkRectangle*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @gimp_view_renderer_draw(%struct._GimpViewRenderer*, %struct._GtkWidget*, %struct._cairo*, i32, i32) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @g_object_set(i8*, i8*, ...) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
