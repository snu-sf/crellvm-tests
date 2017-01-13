; ModuleID = './libgimpwidgets/gimpcellrenderertoggle.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCellRendererToggleClass = type { %struct._GtkCellRendererToggleClass, void (%struct._GimpCellRendererToggle*, i8*, i32)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkCellRendererToggleClass = type { %struct._GtkCellRendererClass, void (%struct._GtkCellRendererToggle*, i8*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkCellRendererClass = type { %struct._GtkObjectClass, void (%struct._GtkCellRenderer*, %struct._GtkWidget*, %struct._GdkRectangle*, i32*, i32*, i32*, i32*)*, void (%struct._GtkCellRenderer*, %struct._GdkDrawable*, %struct._GtkWidget*, %struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)*, i32 (%struct._GtkCellRenderer*, %union._GdkEvent*, %struct._GtkWidget*, i8*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)*, %struct._GtkCellEditable* (%struct._GtkCellRenderer*, %union._GdkEvent*, %struct._GtkWidget*, i8*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)*, void (%struct._GtkCellRenderer*)*, void (%struct._GtkCellRenderer*, %struct._GtkCellEditable*, i8*)*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
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
%struct._GtkCellRendererToggle = type { %struct._GtkCellRenderer, i8 }
%struct._GimpCellRendererToggle = type { %struct._GtkCellRendererToggle, i8*, i32, %struct._GdkPixbuf* }
%struct._GdkPixbuf = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._cairo = type opaque
%struct._GdkEventAny = type { i32, %struct._GdkDrawable*, i8 }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_cell_renderer_toggle_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"GimpCellRendererToggle\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"stock_id\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_cell_renderer_toggle_clicked = private unnamed_addr constant [34 x i8] c"gimp_cell_renderer_toggle_clicked\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"GIMP_IS_CELL_RENDERER_TOGGLE (cell)\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"path != NULL\00", align 1
@toggle_cell_signals = internal global [1 x i32] zeroinitializer, align 4
@gimp_cell_renderer_toggle_parent_class = internal global i8* null, align 8
@GimpCellRendererToggle_private_offset = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"stock-size\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"gimpcellrenderertoggle.c\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"inconsistent\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_cell_renderer_toggle_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_cell_renderer_toggle_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_cell_renderer_toggle_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_cell_renderer_toggle_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 304, void (i8*, i8*)* bitcast (void (i8*)* @gimp_cell_renderer_toggle_class_intern_init to void (i8*, i8*)*), i32 88, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCellRendererToggle*)* @gimp_cell_renderer_toggle_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_cell_renderer_toggle_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_cell_renderer_toggle_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_cell_renderer_toggle_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_toggle_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_cell_renderer_toggle_parent_class, align 8
  %1 = load i32, i32* @GimpCellRendererToggle_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCellRendererToggle_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCellRendererToggleClass*
  call void @gimp_cell_renderer_toggle_class_init(%struct._GimpCellRendererToggleClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_toggle_init(%struct._GimpCellRendererToggle* %toggle) #3 {
entry:
  %toggle.addr = alloca %struct._GimpCellRendererToggle*, align 8
  store %struct._GimpCellRendererToggle* %toggle, %struct._GimpCellRendererToggle** %toggle.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkCellRenderer* @gimp_cell_renderer_toggle_new(i8* %stock_id) #3 {
entry:
  %stock_id.addr = alloca i8*, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  %call = call i64 @gimp_cell_renderer_toggle_get_type() #6
  %0 = load i8*, i8** %stock_id.addr, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %0, i8* null)
  %1 = bitcast i8* %call1 to %struct._GtkCellRenderer*
  ret %struct._GtkCellRenderer* %1
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_cell_renderer_toggle_clicked(%struct._GimpCellRendererToggle* %cell, i8* %path, i32 %state) #3 {
entry:
  %cell.addr = alloca %struct._GimpCellRendererToggle*, align 8
  %path.addr = alloca i8*, align 8
  %state.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCellRendererToggle* %cell, %struct._GimpCellRendererToggle** %cell.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %cell.addr, align 8
  %1 = bitcast %struct._GimpCellRendererToggle* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cell_renderer_toggle_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_cell_renderer_toggle_clicked, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_cell_renderer_toggle_clicked, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %cell.addr, align 8
  %15 = bitcast %struct._GimpCellRendererToggle* %14 to i8*
  %16 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @toggle_cell_signals, i32 0, i64 0), align 4
  %17 = load i8*, i8** %path.addr, align 8
  %18 = load i32, i32* %state.addr, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %15, i32 %16, i32 0, i8* %17, i32 %18)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_toggle_class_init(%struct._GimpCellRendererToggleClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCellRendererToggleClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %cell_class = alloca %struct._GtkCellRendererClass*, align 8
  store %struct._GimpCellRendererToggleClass* %klass, %struct._GimpCellRendererToggleClass** %klass.addr, align 8
  %0 = load %struct._GimpCellRendererToggleClass*, %struct._GimpCellRendererToggleClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCellRendererToggleClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCellRendererToggleClass*, %struct._GimpCellRendererToggleClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCellRendererToggleClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_cell_renderer_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkCellRendererClass*
  store %struct._GtkCellRendererClass* %5, %struct._GtkCellRendererClass** %cell_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %7 = bitcast %struct._GObjectClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i64 @gdk_modifier_type_get_type() #6
  %call4 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i64 %8, i32 2, i32 264, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @_gimp_widgets_marshal_VOID__STRING_FLAGS, i64 4, i32 2, i64 64, i64 %call3)
  store i32 %call4, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @toggle_cell_signals, i32 0, i64 0), align 4
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_cell_renderer_toggle_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_cell_renderer_toggle_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_cell_renderer_toggle_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %12 = load %struct._GtkCellRendererClass*, %struct._GtkCellRendererClass** %cell_class, align 8
  %get_size = getelementptr inbounds %struct._GtkCellRendererClass, %struct._GtkCellRendererClass* %12, i32 0, i32 1
  store void (%struct._GtkCellRenderer*, %struct._GtkWidget*, %struct._GdkRectangle*, i32*, i32*, i32*, i32*)* @gimp_cell_renderer_toggle_get_size, void (%struct._GtkCellRenderer*, %struct._GtkWidget*, %struct._GdkRectangle*, i32*, i32*, i32*, i32*)** %get_size, align 8
  %13 = load %struct._GtkCellRendererClass*, %struct._GtkCellRendererClass** %cell_class, align 8
  %render = getelementptr inbounds %struct._GtkCellRendererClass, %struct._GtkCellRendererClass* %13, i32 0, i32 2
  store void (%struct._GtkCellRenderer*, %struct._GdkDrawable*, %struct._GtkWidget*, %struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)* @gimp_cell_renderer_toggle_render, void (%struct._GtkCellRenderer*, %struct._GdkDrawable*, %struct._GtkWidget*, %struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)** %render, align 8
  %14 = load %struct._GtkCellRendererClass*, %struct._GtkCellRendererClass** %cell_class, align 8
  %activate = getelementptr inbounds %struct._GtkCellRendererClass, %struct._GtkCellRendererClass* %14, i32 0, i32 3
  store i32 (%struct._GtkCellRenderer*, %union._GdkEvent*, %struct._GtkWidget*, i8*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)* @gimp_cell_renderer_toggle_activate, i32 (%struct._GtkCellRenderer*, %union._GdkEvent*, %struct._GtkWidget*, i8*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)** %activate, align 8
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i8* null, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 1, %struct._GParamSpec* %call5)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 0, i32 2147483647, i32 4, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 2, %struct._GParamSpec* %call6)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_cell_renderer_get_type() #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @_gimp_widgets_marshal_VOID__STRING_FLAGS(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gdk_modifier_type_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_toggle_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %toggle = alloca %struct._GimpCellRendererToggle*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cell_renderer_toggle_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCellRendererToggle*
  store %struct._GimpCellRendererToggle* %2, %struct._GimpCellRendererToggle** %toggle, align 8
  %3 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %stock_id = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %3, i32 0, i32 1
  %4 = load i8*, i8** %stock_id, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %stock_id2 = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %5, i32 0, i32 1
  %6 = load i8*, i8** %stock_id2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %stock_id3 = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %7, i32 0, i32 1
  store i8* null, i8** %stock_id3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %pixbuf = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %8, i32 0, i32 3
  %9 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool4 = icmp ne %struct._GdkPixbuf* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %pixbuf6 = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %10, i32 0, i32 3
  %11 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf6, align 8
  %12 = bitcast %struct._GdkPixbuf* %11 to i8*
  call void @g_object_unref(i8* %12)
  %13 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %pixbuf7 = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %13, i32 0, i32 3
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %pixbuf7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %14 = load i8*, i8** @gimp_cell_renderer_toggle_parent_class, align 8
  %15 = bitcast i8* %14 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %15, i64 80)
  %16 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %16, i32 0, i32 6
  %17 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %18 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %17(%struct._GObject* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_toggle_get_property(%struct._GObject* %object, i32 %param_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %param_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %toggle = alloca %struct._GimpCellRendererToggle*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %param_id, i32* %param_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cell_renderer_toggle_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCellRendererToggle*
  store %struct._GimpCellRendererToggle* %2, %struct._GimpCellRendererToggle** %toggle, align 8
  %3 = load i32, i32* %param_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %stock_id = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %5, i32 0, i32 1
  %6 = load i8*, i8** %stock_id, align 8
  call void @g_value_set_string(%struct._GValue* %4, i8* %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %stock_size = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %8, i32 0, i32 2
  %9 = load i32, i32* %stock_size, align 4
  call void @g_value_set_int(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %10, %struct._GObject** %_glib__object, align 8
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %11, %struct._GParamSpec** %_glib__pspec, align 8
  %12 = load i32, i32* %param_id.addr, align 4
  store i32 %12, i32* %_glib__property_id, align 4
  %13 = load i32, i32* %_glib__property_id, align 4
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %14, i32 0, i32 1
  %15 = load i8*, i8** %name, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %17 = bitcast %struct._GParamSpec* %16 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %19)
  %20 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %21 = bitcast %struct._GObject* %20 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %23)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i32 186, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %13, i8* %15, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_toggle_set_property(%struct._GObject* %object, i32 %param_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %param_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %toggle = alloca %struct._GimpCellRendererToggle*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %param_id, i32* %param_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cell_renderer_toggle_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCellRendererToggle*
  store %struct._GimpCellRendererToggle* %2, %struct._GimpCellRendererToggle** %toggle, align 8
  %3 = load i32, i32* %param_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %stock_id = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %4, i32 0, i32 1
  %5 = load i8*, i8** %stock_id, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %6 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %stock_id2 = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %6, i32 0, i32 1
  %7 = load i8*, i8** %stock_id2, align 8
  call void @g_free(i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call3 = call i8* @g_value_dup_string(%struct._GValue* %8)
  %9 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %stock_id4 = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %9, i32 0, i32 1
  store i8* %call3, i8** %stock_id4, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_int(%struct._GValue* %10)
  %11 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %stock_size = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %11, i32 0, i32 2
  store i32 %call6, i32* %stock_size, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %12, %struct._GObject** %_glib__object, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %13, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = load i32, i32* %param_id.addr, align 4
  store i32 %14, i32* %_glib__property_id, align 4
  %15 = load i32, i32* %_glib__property_id, align 4
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %16, i32 0, i32 1
  %17 = load i8*, i8** %name, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %19 = bitcast %struct._GParamSpec* %18 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type, align 8
  %call7 = call i8* @g_type_name(i64 %21)
  %22 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %23 = bitcast %struct._GObject* %22 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %25)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i32 211, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %15, i8* %17, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %if.end
  %26 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %pixbuf = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %26, i32 0, i32 3
  %27 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool11 = icmp ne %struct._GdkPixbuf* %27, null
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %sw.epilog
  %28 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %pixbuf13 = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %28, i32 0, i32 3
  %29 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf13, align 8
  %30 = bitcast %struct._GdkPixbuf* %29 to i8*
  call void @g_object_unref(i8* %30)
  %31 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %pixbuf14 = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %31, i32 0, i32 3
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %pixbuf14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %sw.epilog
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_toggle_get_size(%struct._GtkCellRenderer* %cell, %struct._GtkWidget* %widget, %struct._GdkRectangle* %cell_area, i32* %x_offset, i32* %y_offset, i32* %width, i32* %height) #3 {
entry:
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %cell_area.addr = alloca %struct._GdkRectangle*, align 8
  %x_offset.addr = alloca i32*, align 8
  %y_offset.addr = alloca i32*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %toggle = alloca %struct._GimpCellRendererToggle*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %calc_width = alloca i32, align 4
  %calc_height = alloca i32, align 4
  %pixbuf_width = alloca i32, align 4
  %pixbuf_height = alloca i32, align 4
  %xalign = alloca float, align 4
  %yalign = alloca float, align 4
  %xpad = alloca i32, align 4
  %ypad = alloca i32, align 4
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %cell_area, %struct._GdkRectangle** %cell_area.addr, align 8
  store i32* %x_offset, i32** %x_offset.addr, align 8
  store i32* %y_offset, i32** %y_offset.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %1 = bitcast %struct._GtkCellRenderer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cell_renderer_toggle_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCellRendererToggle*
  store %struct._GimpCellRendererToggle* %2, %struct._GimpCellRendererToggle** %toggle, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %3)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  %4 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %stock_id = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %4, i32 0, i32 1
  %5 = load i8*, i8** %stock_id, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** @gimp_cell_renderer_toggle_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call3 = call i64 @gtk_cell_renderer_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GtkCellRendererClass*
  %get_size = getelementptr inbounds %struct._GtkCellRendererClass, %struct._GtkCellRendererClass* %8, i32 0, i32 1
  %9 = load void (%struct._GtkCellRenderer*, %struct._GtkWidget*, %struct._GdkRectangle*, i32*, i32*, i32*, i32*)*, void (%struct._GtkCellRenderer*, %struct._GtkWidget*, %struct._GdkRectangle*, i32*, i32*, i32*, i32*)** %get_size, align 8
  %10 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %13 = load i32*, i32** %x_offset.addr, align 8
  %14 = load i32*, i32** %y_offset.addr, align 8
  %15 = load i32*, i32** %width.addr, align 8
  %16 = load i32*, i32** %height.addr, align 8
  call void %9(%struct._GtkCellRenderer* %10, %struct._GtkWidget* %11, %struct._GdkRectangle* %12, i32* %13, i32* %14, i32* %15, i32* %16)
  br label %if.end.56

if.end:                                           ; preds = %entry
  %17 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  call void @gtk_cell_renderer_get_alignment(%struct._GtkCellRenderer* %17, float* %xalign, float* %yalign)
  %18 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  call void @gtk_cell_renderer_get_padding(%struct._GtkCellRenderer* %18, i32* %xpad, i32* %ypad)
  %19 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %pixbuf = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %19, i32 0, i32 3
  %20 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool5 = icmp ne %struct._GdkPixbuf* %20, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %21 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_cell_renderer_toggle_create_pixbuf(%struct._GimpCellRendererToggle* %21, %struct._GtkWidget* %22)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %23 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %pixbuf8 = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %23, i32 0, i32 3
  %24 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf8, align 8
  %call9 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %24)
  store i32 %call9, i32* %pixbuf_width, align 4
  %25 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %pixbuf10 = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %25, i32 0, i32 3
  %26 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf10, align 8
  %call11 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %26)
  store i32 %call11, i32* %pixbuf_height, align 4
  %27 = load i32, i32* %pixbuf_width, align 4
  %28 = load i32, i32* %xpad, align 4
  %mul = mul nsw i32 %28, 2
  %add = add nsw i32 %27, %mul
  %29 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %xthickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %29, i32 0, i32 12
  %30 = load i32, i32* %xthickness, align 4
  %mul12 = mul nsw i32 %30, 2
  %add13 = add nsw i32 %add, %mul12
  store i32 %add13, i32* %calc_width, align 4
  %31 = load i32, i32* %pixbuf_height, align 4
  %32 = load i32, i32* %ypad, align 4
  %mul14 = mul nsw i32 %32, 2
  %add15 = add nsw i32 %31, %mul14
  %33 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %ythickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %33, i32 0, i32 13
  %34 = load i32, i32* %ythickness, align 4
  %mul16 = mul nsw i32 %34, 2
  %add17 = add nsw i32 %add15, %mul16
  store i32 %add17, i32* %calc_height, align 4
  %35 = load i32*, i32** %width.addr, align 8
  %tobool18 = icmp ne i32* %35, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.7
  %36 = load i32, i32* %calc_width, align 4
  %37 = load i32*, i32** %width.addr, align 8
  store i32 %36, i32* %37, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.7
  %38 = load i32*, i32** %height.addr, align 8
  %tobool21 = icmp ne i32* %38, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  %39 = load i32, i32* %calc_height, align 4
  %40 = load i32*, i32** %height.addr, align 8
  store i32 %39, i32* %40, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.20
  %41 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %tobool24 = icmp ne %struct._GdkRectangle* %41, null
  br i1 %tobool24, label %if.then.25, label %if.end.56

if.then.25:                                       ; preds = %if.end.23
  %42 = load i32*, i32** %x_offset.addr, align 8
  %tobool26 = icmp ne i32* %42, null
  br i1 %tobool26, label %if.then.27, label %if.end.41

if.then.27:                                       ; preds = %if.then.25
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call28 = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %43)
  %cmp = icmp eq i32 %call28, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.27
  %44 = load float, float* %xalign, align 4
  %conv = fpext float %44 to double
  %sub = fsub double 1.000000e+00, %conv
  br label %cond.end

cond.false:                                       ; preds = %if.then.27
  %45 = load float, float* %xalign, align 4
  %conv29 = fpext float %45 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %conv29, %cond.false ]
  %46 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %width30 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %46, i32 0, i32 2
  %47 = load i32, i32* %width30, align 4
  %48 = load i32, i32* %calc_width, align 4
  %sub31 = sub nsw i32 %47, %48
  %conv32 = sitofp i32 %sub31 to double
  %mul33 = fmul double %cond, %conv32
  %conv34 = fptosi double %mul33 to i32
  %49 = load i32*, i32** %x_offset.addr, align 8
  store i32 %conv34, i32* %49, align 4
  %50 = load i32*, i32** %x_offset.addr, align 8
  %51 = load i32, i32* %50, align 4
  %cmp35 = icmp sgt i32 %51, 0
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.end
  %52 = load i32*, i32** %x_offset.addr, align 8
  %53 = load i32, i32* %52, align 4
  br label %cond.end.39

cond.false.38:                                    ; preds = %cond.end
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.37
  %cond40 = phi i32 [ %53, %cond.true.37 ], [ 0, %cond.false.38 ]
  %54 = load i32*, i32** %x_offset.addr, align 8
  store i32 %cond40, i32* %54, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %cond.end.39, %if.then.25
  %55 = load i32*, i32** %y_offset.addr, align 8
  %tobool42 = icmp ne i32* %55, null
  br i1 %tobool42, label %if.then.43, label %if.end.55

if.then.43:                                       ; preds = %if.end.41
  %56 = load float, float* %yalign, align 4
  %57 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %height44 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %57, i32 0, i32 3
  %58 = load i32, i32* %height44, align 4
  %59 = load i32, i32* %calc_height, align 4
  %sub45 = sub nsw i32 %58, %59
  %conv46 = sitofp i32 %sub45 to float
  %mul47 = fmul float %56, %conv46
  %conv48 = fptosi float %mul47 to i32
  %60 = load i32*, i32** %y_offset.addr, align 8
  store i32 %conv48, i32* %60, align 4
  %61 = load i32*, i32** %y_offset.addr, align 8
  %62 = load i32, i32* %61, align 4
  %cmp49 = icmp sgt i32 %62, 0
  br i1 %cmp49, label %cond.true.51, label %cond.false.52

cond.true.51:                                     ; preds = %if.then.43
  %63 = load i32*, i32** %y_offset.addr, align 8
  %64 = load i32, i32* %63, align 4
  br label %cond.end.53

cond.false.52:                                    ; preds = %if.then.43
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.51
  %cond54 = phi i32 [ %64, %cond.true.51 ], [ 0, %cond.false.52 ]
  %65 = load i32*, i32** %y_offset.addr, align 8
  store i32 %cond54, i32* %65, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %cond.end.53, %if.end.41
  br label %if.end.56

if.end.56:                                        ; preds = %if.then, %if.end.55, %if.end.23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_toggle_render(%struct._GtkCellRenderer* %cell, %struct._GdkDrawable* %window, %struct._GtkWidget* %widget, %struct._GdkRectangle* %background_area, %struct._GdkRectangle* %cell_area, %struct._GdkRectangle* %expose_area, i32 %flags) #3 {
entry:
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %window.addr = alloca %struct._GdkDrawable*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %background_area.addr = alloca %struct._GdkRectangle*, align 8
  %cell_area.addr = alloca %struct._GdkRectangle*, align 8
  %expose_area.addr = alloca %struct._GdkRectangle*, align 8
  %flags.addr = alloca i32, align 4
  %toggle = alloca %struct._GimpCellRendererToggle*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %toggle_rect = alloca %struct._GdkRectangle, align 4
  %draw_rect = alloca %struct._GdkRectangle, align 4
  %state = alloca i32, align 4
  %active = alloca i32, align 4
  %xpad = alloca i32, align 4
  %ypad = alloca i32, align 4
  %cr = alloca %struct._cairo*, align 8
  %inconsistent = alloca i32, align 4
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  store %struct._GdkDrawable* %window, %struct._GdkDrawable** %window.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %background_area, %struct._GdkRectangle** %background_area.addr, align 8
  store %struct._GdkRectangle* %cell_area, %struct._GdkRectangle** %cell_area.addr, align 8
  store %struct._GdkRectangle* %expose_area, %struct._GdkRectangle** %expose_area.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %1 = bitcast %struct._GtkCellRenderer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cell_renderer_toggle_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCellRendererToggle*
  store %struct._GimpCellRendererToggle* %2, %struct._GimpCellRendererToggle** %toggle, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %3)
  store %struct._GtkStyle* %call2, %struct._GtkStyle** %style, align 8
  %4 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %stock_id = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %4, i32 0, i32 1
  %5 = load i8*, i8** %stock_id, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** @gimp_cell_renderer_toggle_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call3 = call i64 @gtk_cell_renderer_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GtkCellRendererClass*
  %render = getelementptr inbounds %struct._GtkCellRendererClass, %struct._GtkCellRendererClass* %8, i32 0, i32 2
  %9 = load void (%struct._GtkCellRenderer*, %struct._GdkDrawable*, %struct._GtkWidget*, %struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)*, void (%struct._GtkCellRenderer*, %struct._GdkDrawable*, %struct._GtkWidget*, %struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*, i32)** %render, align 8
  %10 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %11 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %13 = load %struct._GdkRectangle*, %struct._GdkRectangle** %background_area.addr, align 8
  %14 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %15 = load %struct._GdkRectangle*, %struct._GdkRectangle** %expose_area.addr, align 8
  %16 = load i32, i32* %flags.addr, align 4
  call void %9(%struct._GtkCellRenderer* %10, %struct._GdkDrawable* %11, %struct._GtkWidget* %12, %struct._GdkRectangle* %13, %struct._GdkRectangle* %14, %struct._GdkRectangle* %15, i32 %16)
  br label %if.end.87

if.end:                                           ; preds = %entry
  %17 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %19 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 0
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 1
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 2
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 3
  call void @gimp_cell_renderer_toggle_get_size(%struct._GtkCellRenderer* %17, %struct._GtkWidget* %18, %struct._GdkRectangle* %19, i32* %x, i32* %y, i32* %width, i32* %height)
  %20 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  call void @gtk_cell_renderer_get_padding(%struct._GtkCellRenderer* %20, i32* %xpad, i32* %ypad)
  %21 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %x5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %21, i32 0, i32 0
  %22 = load i32, i32* %x5, align 4
  %23 = load i32, i32* %xpad, align 4
  %add = add nsw i32 %22, %23
  %x6 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 0
  %24 = load i32, i32* %x6, align 4
  %add7 = add nsw i32 %24, %add
  store i32 %add7, i32* %x6, align 4
  %25 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %y8 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %25, i32 0, i32 1
  %26 = load i32, i32* %y8, align 4
  %27 = load i32, i32* %ypad, align 4
  %add9 = add nsw i32 %26, %27
  %y10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 1
  %28 = load i32, i32* %y10, align 4
  %add11 = add nsw i32 %28, %add9
  store i32 %add11, i32* %y10, align 4
  %29 = load i32, i32* %xpad, align 4
  %mul = mul nsw i32 %29, 2
  %width12 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 2
  %30 = load i32, i32* %width12, align 4
  %sub = sub nsw i32 %30, %mul
  store i32 %sub, i32* %width12, align 4
  %31 = load i32, i32* %ypad, align 4
  %mul13 = mul nsw i32 %31, 2
  %height14 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 3
  %32 = load i32, i32* %height14, align 4
  %sub15 = sub nsw i32 %32, %mul13
  store i32 %sub15, i32* %height14, align 4
  %width16 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 2
  %33 = load i32, i32* %width16, align 4
  %cmp = icmp sle i32 %33, 0
  br i1 %cmp, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %height17 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 3
  %34 = load i32, i32* %height17, align 4
  %cmp18 = icmp sle i32 %34, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false, %if.end
  br label %if.end.87

if.end.20:                                        ; preds = %lor.lhs.false
  %35 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %36 = bitcast %struct._GtkCellRenderer* %35 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_cell_renderer_toggle_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call21)
  %37 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkCellRendererToggle*
  %call23 = call i32 @gtk_cell_renderer_toggle_get_active(%struct._GtkCellRendererToggle* %37)
  store i32 %call23, i32* %active, align 4
  %38 = load i32, i32* %flags.addr, align 4
  %and = and i32 %38, 1
  %cmp24 = icmp eq i32 %and, 1
  br i1 %cmp24, label %if.then.25, label %if.else.30

if.then.25:                                       ; preds = %if.end.20
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call26 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %39)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.then.25
  store i32 3, i32* %state, align 4
  br label %if.end.29

if.else:                                          ; preds = %if.then.25
  store i32 1, i32* %state, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.28
  br label %if.end.38

if.else.30:                                       ; preds = %if.end.20
  %40 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %41 = bitcast %struct._GtkCellRenderer* %40 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_cell_renderer_toggle_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call31)
  %42 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkCellRendererToggle*
  %call33 = call i32 @gtk_cell_renderer_toggle_get_activatable(%struct._GtkCellRendererToggle* %42)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.else.30
  store i32 0, i32* %state, align 4
  br label %if.end.37

if.else.36:                                       ; preds = %if.else.30
  store i32 4, i32* %state, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.29
  %43 = load %struct._GdkRectangle*, %struct._GdkRectangle** %expose_area.addr, align 8
  %44 = load %struct._GdkRectangle*, %struct._GdkRectangle** %cell_area.addr, align 8
  %call39 = call i32 @gdk_rectangle_intersect(%struct._GdkRectangle* %43, %struct._GdkRectangle* %44, %struct._GdkRectangle* %draw_rect)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.end.38
  %45 = load i32, i32* %flags.addr, align 4
  %and41 = and i32 %45, 2
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.49

if.then.43:                                       ; preds = %land.lhs.true
  %46 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %47 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  %48 = load i32, i32* %state, align 4
  %49 = load i32, i32* %active, align 4
  %tobool44 = icmp ne i32 %49, 0
  %cond = select i1 %tobool44, i32 1, i32 2
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %x45 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 0
  %51 = load i32, i32* %x45, align 4
  %y46 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 1
  %52 = load i32, i32* %y46, align 4
  %width47 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 2
  %53 = load i32, i32* %width47, align 4
  %height48 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 3
  %54 = load i32, i32* %height48, align 4
  call void @gtk_paint_shadow(%struct._GtkStyle* %46, %struct._GdkDrawable* %47, i32 %48, i32 %cond, %struct._GdkRectangle* %draw_rect, %struct._GtkWidget* %50, i8* null, i32 %51, i32 %52, i32 %53, i32 %54)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.43, %land.lhs.true, %if.end.38
  %55 = load i32, i32* %active, align 4
  %tobool50 = icmp ne i32 %55, 0
  br i1 %tobool50, label %if.then.51, label %if.end.87

if.then.51:                                       ; preds = %if.end.49
  %56 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %xthickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %56, i32 0, i32 12
  %57 = load i32, i32* %xthickness, align 4
  %x52 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 0
  %58 = load i32, i32* %x52, align 4
  %add53 = add nsw i32 %58, %57
  store i32 %add53, i32* %x52, align 4
  %59 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %ythickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %59, i32 0, i32 13
  %60 = load i32, i32* %ythickness, align 4
  %y54 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 1
  %61 = load i32, i32* %y54, align 4
  %add55 = add nsw i32 %61, %60
  store i32 %add55, i32* %y54, align 4
  %62 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %xthickness56 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %62, i32 0, i32 12
  %63 = load i32, i32* %xthickness56, align 4
  %mul57 = mul nsw i32 %63, 2
  %width58 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 2
  %64 = load i32, i32* %width58, align 4
  %sub59 = sub nsw i32 %64, %mul57
  store i32 %sub59, i32* %width58, align 4
  %65 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %ythickness60 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %65, i32 0, i32 13
  %66 = load i32, i32* %ythickness60, align 4
  %mul61 = mul nsw i32 %66, 2
  %height62 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 3
  %67 = load i32, i32* %height62, align 4
  %sub63 = sub nsw i32 %67, %mul61
  store i32 %sub63, i32* %height62, align 4
  %call64 = call i32 @gdk_rectangle_intersect(%struct._GdkRectangle* %draw_rect, %struct._GdkRectangle* %toggle_rect, %struct._GdkRectangle* %draw_rect)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.86

if.then.66:                                       ; preds = %if.then.51
  %68 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  %call67 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %68)
  store %struct._cairo* %call67, %struct._cairo** %cr, align 8
  %69 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @gdk_cairo_rectangle(%struct._cairo* %69, %struct._GdkRectangle* %draw_rect)
  %70 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %70)
  %71 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %72 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %pixbuf = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %72, i32 0, i32 3
  %73 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %x68 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 0
  %74 = load i32, i32* %x68, align 4
  %conv = sitofp i32 %74 to double
  %y69 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 1
  %75 = load i32, i32* %y69, align 4
  %conv70 = sitofp i32 %75 to double
  call void @gdk_cairo_set_source_pixbuf(%struct._cairo* %71, %struct._GdkPixbuf* %73, double %conv, double %conv70)
  %76 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %76)
  %77 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle, align 8
  %78 = bitcast %struct._GimpCellRendererToggle* %77 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32* %inconsistent, i8* null)
  %79 = load i32, i32* %inconsistent, align 4
  %tobool71 = icmp ne i32 %79, 0
  br i1 %tobool71, label %if.then.72, label %if.end.85

if.then.72:                                       ; preds = %if.then.66
  %80 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %81 = load i32, i32* %state, align 4
  %idxprom = zext i32 %81 to i64
  %82 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %82, i32 0, i32 1
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg, i32 0, i64 %idxprom
  call void @gdk_cairo_set_source_color(%struct._cairo* %80, %struct._GdkColor* %arrayidx)
  %83 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %83, double 2.000000e+00)
  %84 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x73 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 0
  %85 = load i32, i32* %x73, align 4
  %width74 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 2
  %86 = load i32, i32* %width74, align 4
  %add75 = add nsw i32 %85, %86
  %conv76 = sitofp i32 %add75 to double
  %y77 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 1
  %87 = load i32, i32* %y77, align 4
  %conv78 = sitofp i32 %87 to double
  call void @cairo_move_to(%struct._cairo* %84, double %conv76, double %conv78)
  %88 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %x79 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 0
  %89 = load i32, i32* %x79, align 4
  %conv80 = sitofp i32 %89 to double
  %y81 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 1
  %90 = load i32, i32* %y81, align 4
  %height82 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %toggle_rect, i32 0, i32 3
  %91 = load i32, i32* %height82, align 4
  %add83 = add nsw i32 %90, %91
  %conv84 = sitofp i32 %add83 to double
  call void @cairo_line_to(%struct._cairo* %88, double %conv80, double %conv84)
  %92 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %92)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.72, %if.then.66
  %93 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %93)
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.51
  br label %if.end.87

if.end.87:                                        ; preds = %if.then, %if.then.19, %if.end.86, %if.end.49
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_cell_renderer_toggle_activate(%struct._GtkCellRenderer* %cell, %union._GdkEvent* %event, %struct._GtkWidget* %widget, i8* %path, %struct._GdkRectangle* %background_area, %struct._GdkRectangle* %cell_area, i32 %flags) #3 {
entry:
  %retval = alloca i32, align 4
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %path.addr = alloca i8*, align 8
  %background_area.addr = alloca %struct._GdkRectangle*, align 8
  %cell_area.addr = alloca %struct._GdkRectangle*, align 8
  %flags.addr = alloca i32, align 4
  %toggle = alloca %struct._GtkCellRendererToggle*, align 8
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
  %call = call i64 @gtk_cell_renderer_toggle_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkCellRendererToggle*
  store %struct._GtkCellRendererToggle* %2, %struct._GtkCellRendererToggle** %toggle, align 8
  %3 = load %struct._GtkCellRendererToggle*, %struct._GtkCellRendererToggle** %toggle, align 8
  %call2 = call i32 @gtk_cell_renderer_toggle_get_activatable(%struct._GtkCellRendererToggle* %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  store i32 0, i32* %state, align 4
  %4 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %tobool3 = icmp ne %union._GdkEvent* %4, null
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %5 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %6 = bitcast %union._GdkEvent* %5 to %struct._GdkEventAny*
  %type = getelementptr inbounds %struct._GdkEventAny, %struct._GdkEventAny* %6, i32 0, i32 0
  %7 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %7, 4
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true
  %8 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %9 = bitcast %union._GdkEvent* %8 to %struct._GdkEventButton*
  %state5 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %9, i32 0, i32 7
  %10 = load i32, i32* %state5, align 4
  store i32 %10, i32* %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %land.lhs.true, %if.then
  %11 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %12 = bitcast %struct._GtkCellRenderer* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_cell_renderer_toggle_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpCellRendererToggle*
  %14 = load i8*, i8** %path.addr, align 8
  %15 = load i32, i32* %state, align 4
  call void @gimp_cell_renderer_toggle_clicked(%struct._GimpCellRendererToggle* %13, i8* %14, i32 %15)
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.end
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_free(i8*) #1

declare void @g_object_unref(i8*) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

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
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @gtk_cell_renderer_get_alignment(%struct._GtkCellRenderer*, float*, float*) #1

declare void @gtk_cell_renderer_get_padding(%struct._GtkCellRenderer*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cell_renderer_toggle_create_pixbuf(%struct._GimpCellRendererToggle* %toggle, %struct._GtkWidget* %widget) #3 {
entry:
  %toggle.addr = alloca %struct._GimpCellRendererToggle*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GimpCellRendererToggle* %toggle, %struct._GimpCellRendererToggle** %toggle.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle.addr, align 8
  %pixbuf = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %0, i32 0, i32 3
  %1 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle.addr, align 8
  %pixbuf1 = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %2, i32 0, i32 3
  %3 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf1, align 8
  %4 = bitcast %struct._GdkPixbuf* %3 to i8*
  call void @g_object_unref(i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %6 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle.addr, align 8
  %stock_id = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %6, i32 0, i32 1
  %7 = load i8*, i8** %stock_id, align 8
  %8 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle.addr, align 8
  %stock_size = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %8, i32 0, i32 2
  %9 = load i32, i32* %stock_size, align 4
  %call = call %struct._GdkPixbuf* @gtk_widget_render_icon(%struct._GtkWidget* %5, i8* %7, i32 %9, i8* null)
  %10 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggle.addr, align 8
  %pixbuf2 = getelementptr inbounds %struct._GimpCellRendererToggle, %struct._GimpCellRendererToggle* %10, i32 0, i32 3
  store %struct._GdkPixbuf* %call, %struct._GdkPixbuf** %pixbuf2, align 8
  ret void
}

declare i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf*) #1

declare i32 @gtk_widget_get_direction(%struct._GtkWidget*) #1

declare %struct._GdkPixbuf* @gtk_widget_render_icon(%struct._GtkWidget*, i8*, i32, i8*) #1

declare i32 @gtk_cell_renderer_toggle_get_active(%struct._GtkCellRendererToggle*) #1

declare i32 @gtk_widget_has_focus(%struct._GtkWidget*) #1

declare i32 @gtk_cell_renderer_toggle_get_activatable(%struct._GtkCellRendererToggle*) #1

declare i32 @gdk_rectangle_intersect(%struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*) #1

declare void @gtk_paint_shadow(%struct._GtkStyle*, %struct._GdkDrawable*, i32, i32, %struct._GdkRectangle*, %struct._GtkWidget*, i8*, i32, i32, i32, i32) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @gdk_cairo_rectangle(%struct._cairo*, %struct._GdkRectangle*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @gdk_cairo_set_source_pixbuf(%struct._cairo*, %struct._GdkPixbuf*, double, double) #1

declare void @cairo_paint(%struct._cairo*) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
