; ModuleID = './libgimpwidgets/gimp3migration.bc'
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
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkKeymap = type { %struct._GObject, %struct._GdkDisplay* }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }

@.str = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gdk_event_triggers_context_menu = private unnamed_addr constant [32 x i8] c"gdk_event_triggers_context_menu\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"event != NULL\00", align 1
@__func__.gdk_keymap_get_modifier_mask = private unnamed_addr constant [29 x i8] c"gdk_keymap_get_modifier_mask\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"GDK_IS_KEYMAP (keymap)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"gimp3migration.c\00", align 1
@__func__.gtk_widget_get_modifier_mask = private unnamed_addr constant [29 x i8] c"gtk_widget_get_modifier_mask\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (widget)\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gtk_box_new(i32 %orientation, i32 %spacing) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %orientation.addr = alloca i32, align 4
  %spacing.addr = alloca i32, align 4
  store i32 %orientation, i32* %orientation.addr, align 4
  store i32 %spacing, i32* %spacing.addr, align 4
  %0 = load i32, i32* %orientation.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %spacing.addr, align 4
  %call = call %struct._GtkWidget* @gtk_hbox_new(i32 0, i32 %1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %spacing.addr, align 4
  %call1 = call %struct._GtkWidget* @gtk_vbox_new(i32 0, i32 %2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %3
}

declare %struct._GtkWidget* @gtk_hbox_new(i32, i32) #1

declare %struct._GtkWidget* @gtk_vbox_new(i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gtk_button_box_new(i32 %orientation) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %orientation.addr = alloca i32, align 4
  store i32 %orientation, i32* %orientation.addr, align 4
  %0 = load i32, i32* %orientation.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct._GtkWidget* @gtk_hbutton_box_new()
  store %struct._GtkWidget* %call, %struct._GtkWidget** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call1 = call %struct._GtkWidget* @gtk_vbutton_box_new()
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %1
}

declare %struct._GtkWidget* @gtk_hbutton_box_new() #1

declare %struct._GtkWidget* @gtk_vbutton_box_new() #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gtk_paned_new(i32 %orientation) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %orientation.addr = alloca i32, align 4
  store i32 %orientation, i32* %orientation.addr, align 4
  %0 = load i32, i32* %orientation.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct._GtkWidget* @gtk_hpaned_new()
  store %struct._GtkWidget* %call, %struct._GtkWidget** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call1 = call %struct._GtkWidget* @gtk_vpaned_new()
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %1
}

declare %struct._GtkWidget* @gtk_hpaned_new() #1

declare %struct._GtkWidget* @gtk_vpaned_new() #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gtk_scale_new(i32 %orientation, %struct._GtkAdjustment* %adjustment) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %orientation.addr = alloca i32, align 4
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  store i32 %orientation, i32* %orientation.addr, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  %0 = load i32, i32* %orientation.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call %struct._GtkWidget* @gtk_hscale_new(%struct._GtkAdjustment* %1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call1 = call %struct._GtkWidget* @gtk_vscale_new(%struct._GtkAdjustment* %2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %3
}

declare %struct._GtkWidget* @gtk_hscale_new(%struct._GtkAdjustment*) #1

declare %struct._GtkWidget* @gtk_vscale_new(%struct._GtkAdjustment*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gtk_scrollbar_new(i32 %orientation, %struct._GtkAdjustment* %adjustment) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %orientation.addr = alloca i32, align 4
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  store i32 %orientation, i32* %orientation.addr, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  %0 = load i32, i32* %orientation.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call %struct._GtkWidget* @gtk_hscrollbar_new(%struct._GtkAdjustment* %1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call1 = call %struct._GtkWidget* @gtk_vscrollbar_new(%struct._GtkAdjustment* %2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %3
}

declare %struct._GtkWidget* @gtk_hscrollbar_new(%struct._GtkAdjustment*) #1

declare %struct._GtkWidget* @gtk_vscrollbar_new(%struct._GtkAdjustment*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gtk_separator_new(i32 %orientation) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %orientation.addr = alloca i32, align 4
  store i32 %orientation, i32* %orientation.addr, align 4
  %0 = load i32, i32* %orientation.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct._GtkWidget* @gtk_hseparator_new()
  store %struct._GtkWidget* %call, %struct._GtkWidget** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call1 = call %struct._GtkWidget* @gtk_vseparator_new()
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %1
}

declare %struct._GtkWidget* @gtk_hseparator_new() #1

declare %struct._GtkWidget* @gtk_vseparator_new() #1

; Function Attrs: nounwind uwtable
define i32 @gdk_event_triggers_context_menu(%union._GdkEvent* %event) #0 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca %union._GdkEvent*, align 8
  %bevent = alloca %struct._GdkEventButton*, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %cmp = icmp ne %union._GdkEvent* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gdk_event_triggers_context_menu, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %1 to i32*
  %2 = load i32, i32* %type, align 4
  %cmp1 = icmp eq i32 %2, 4
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %do.end
  %3 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %4 = bitcast %union._GdkEvent* %3 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %4, %struct._GdkEventButton** %bevent, align 8
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 8
  %6 = load i32, i32* %button, align 4
  %cmp3 = icmp eq i32 %6, 3
  br i1 %cmp3, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.then.2
  %7 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %state = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %7, i32 0, i32 7
  %8 = load i32, i32* %state, align 4
  %and = and i32 %8, 768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %if.then.2
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.else
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gdk_keymap_get_modifier_mask(%struct._GdkKeymap* %keymap, i32 %intent) #0 {
entry:
  %retval = alloca i32, align 4
  %keymap.addr = alloca %struct._GdkKeymap*, align 8
  %intent.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GdkKeymap* %keymap, %struct._GdkKeymap** %keymap.addr, align 8
  store i32 %intent, i32* %intent.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GdkKeymap*, %struct._GdkKeymap** %keymap.addr, align 8
  %1 = bitcast %struct._GdkKeymap* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gdk_keymap_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gdk_keymap_get_modifier_mask, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %sw.epilog

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %intent.addr, align 4
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
    i32 2, label %sw.bb.12
    i32 3, label %sw.bb.13
    i32 4, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %do.end
  store i32 4, i32* %retval
  br label %sw.epilog

sw.bb.11:                                         ; preds = %do.end
  store i32 0, i32* %retval
  br label %sw.epilog

sw.bb.12:                                         ; preds = %do.end
  store i32 1, i32* %retval
  br label %sw.epilog

sw.bb.13:                                         ; preds = %do.end
  store i32 4, i32* %retval
  br label %sw.epilog

sw.bb.14:                                         ; preds = %do.end
  store i32 12, i32* %retval
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %do.body.15

do.body.15:                                       ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 160, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gdk_keymap_get_modifier_mask, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %sw.epilog

do.end.16:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.9, %sw.bb, %sw.bb.11, %sw.bb.12, %sw.bb.13, %sw.bb.14, %do.body.15, %do.end.16
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind readnone
declare i64 @gdk_keymap_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_log(i8*, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gtk_widget_get_modifier_mask(%struct._GtkWidget* %widget, i32 %intent) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %intent.addr = alloca i32, align 4
  %display = alloca %struct._GdkDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %intent, i32* %intent.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gtk_widget_get_modifier_mask, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call11 = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %13)
  store %struct._GdkDisplay* %call11, %struct._GdkDisplay** %display, align 8
  %14 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call12 = call %struct._GdkKeymap* @gdk_keymap_get_for_display(%struct._GdkDisplay* %14)
  %15 = load i32, i32* %intent.addr, align 4
  %call13 = call i32 @gdk_keymap_get_modifier_mask(%struct._GdkKeymap* %call12, i32 %15)
  store i32 %call13, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare %struct._GdkKeymap* @gdk_keymap_get_for_display(%struct._GdkDisplay*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
