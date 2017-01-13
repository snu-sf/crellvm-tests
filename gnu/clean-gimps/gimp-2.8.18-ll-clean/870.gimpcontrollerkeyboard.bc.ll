; ModuleID = './app/widgets/gimpcontrollerkeyboard.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._KeyboardEvent = type { i32, i32, i8*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpControllerKeyboardClass = type { %struct._GimpControllerClass }
%struct._GimpControllerClass = type { %struct._GObjectClass, i8*, i8*, i8*, i32 (%struct._GimpController*)*, i8* (%struct._GimpController*, i32)*, i8* (%struct._GimpController*, i32)*, i32 (%struct._GimpController*, %union._GimpControllerEvent*)*, i8*, void ()*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpController = type { %struct._GObject, i8*, i8* }
%union._GimpControllerEvent = type { %struct._GimpControllerEventValue }
%struct._GimpControllerEventValue = type { i32, %struct._GimpController*, i32, %struct._GValue }
%struct._GimpControllerKeyboard = type { %struct._GimpController }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpControllerEventTrigger = type { i32, %struct._GimpController*, i32 }

@gimp_controller_keyboard_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"GimpControllerKeyboard\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_controller_keyboard_key_press = private unnamed_addr constant [35 x i8] c"gimp_controller_keyboard_key_press\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"GIMP_IS_CONTROLLER_KEYBOARD (keyboard)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"kevent != NULL\00", align 1
@keyboard_events = internal global [32 x %struct._KeyboardEvent] [%struct._KeyboardEvent { i32 65362, i32 13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65362, i32 12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65362, i32 9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65362, i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65362, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65362, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65362, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65362, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65364, i32 13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65364, i32 12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65364, i32 9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65364, i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65364, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65364, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65364, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65364, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65361, i32 13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65361, i32 12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65361, i32 9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65361, i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65361, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65361, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65361, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65361, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65363, i32 13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65363, i32 12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65363, i32 9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65363, i32 5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65363, i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65363, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65363, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0) }, %struct._KeyboardEvent { i32 65363, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0) }], align 16
@gimp_controller_keyboard_parent_class = internal global i8* null, align 8
@GimpControllerKeyboard_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"Keyboard\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"gimp-controller-keyboard\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Keyboard Events\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Ready\00", align 1
@gimp_controller_keyboard_init.event_names_initialized = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"cursor-up-shift-control-alt\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Cursor Up\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"cursor-up-control-alt\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"cursor-up-shift-alt\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"cursor-up-shift-control\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"cursor-up-alt\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"cursor-up-control\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"cursor-up-shift\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"cursor-up\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"cursor-down-shift-control-alt\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"Cursor Down\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"cursor-down-control-alt\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"cursor-down-shift-alt\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"cursor-down-shift-control\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"cursor-down-alt\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"cursor-down-control\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"cursor-down-shift\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"cursor-down\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"cursor-left-shift-control-alt\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"Cursor Left\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"cursor-left-control-alt\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"cursor-left-shift-alt\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"cursor-left-shift-control\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"cursor-left-alt\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"cursor-left-control\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"cursor-left-shift\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"cursor-left\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"cursor-right-shift-control-alt\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"Cursor Right\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"cursor-right-control-alt\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"cursor-right-shift-alt\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"cursor-right-shift-control\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"cursor-right-alt\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"cursor-right-control\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"cursor-right-shift\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"cursor-right\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_controller_keyboard_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_controller_keyboard_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_controller_keyboard_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_controller_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 224, void (i8*, i8*)* bitcast (void (i8*)* @gimp_controller_keyboard_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpControllerKeyboard*)* @gimp_controller_keyboard_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_controller_keyboard_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_controller_keyboard_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_controller_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_keyboard_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_controller_keyboard_parent_class, align 8
  %1 = load i32, i32* @GimpControllerKeyboard_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpControllerKeyboard_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpControllerKeyboardClass*
  call void @gimp_controller_keyboard_class_init(%struct._GimpControllerKeyboardClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_keyboard_init(%struct._GimpControllerKeyboard* %keyboard) #3 {
entry:
  %keyboard.addr = alloca %struct._GimpControllerKeyboard*, align 8
  %i = alloca i32, align 4
  %kevent = alloca %struct._KeyboardEvent*, align 8
  store %struct._GimpControllerKeyboard* %keyboard, %struct._GimpControllerKeyboard** %keyboard.addr, align 8
  %0 = load i32, i32* @gimp_controller_keyboard_init.event_names_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.9, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [32 x %struct._KeyboardEvent], [32 x %struct._KeyboardEvent]* @keyboard_events, i32 0, i64 %idxprom
  store %struct._KeyboardEvent* %arrayidx, %struct._KeyboardEvent** %kevent, align 8
  %3 = load %struct._KeyboardEvent*, %struct._KeyboardEvent** %kevent, align 8
  %modifiers = getelementptr inbounds %struct._KeyboardEvent, %struct._KeyboardEvent* %3, i32 0, i32 1
  %4 = load i32, i32* %modifiers, align 4
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %5 = load %struct._KeyboardEvent*, %struct._KeyboardEvent** %kevent, align 8
  %blurb = getelementptr inbounds %struct._KeyboardEvent, %struct._KeyboardEvent* %5, i32 0, i32 3
  %6 = load i8*, i8** %blurb, align 8
  %call = call i8* @gettext(i8* %6) #7
  %7 = load %struct._KeyboardEvent*, %struct._KeyboardEvent** %kevent, align 8
  %modifiers5 = getelementptr inbounds %struct._KeyboardEvent, %struct._KeyboardEvent* %7, i32 0, i32 1
  %8 = load i32, i32* %modifiers5, align 4
  %call6 = call i8* @gimp_get_mod_string(i32 %8)
  %call7 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* %call, i8* %call6)
  %9 = load %struct._KeyboardEvent*, %struct._KeyboardEvent** %kevent, align 8
  %blurb8 = getelementptr inbounds %struct._KeyboardEvent, %struct._KeyboardEvent* %9, i32 0, i32 3
  store i8* %call7, i8** %blurb8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* @gimp_controller_keyboard_init.event_names_initialized, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %for.end, %entry
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_controller_keyboard_key_press(%struct._GimpControllerKeyboard* %keyboard, %struct._GdkEventKey* %kevent) #3 {
entry:
  %retval = alloca i32, align 4
  %keyboard.addr = alloca %struct._GimpControllerKeyboard*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %controller_event = alloca %union._GimpControllerEvent, align 8
  %trigger = alloca %struct._GimpControllerEventTrigger*, align 8
  store %struct._GimpControllerKeyboard* %keyboard, %struct._GimpControllerKeyboard** %keyboard.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpControllerKeyboard*, %struct._GimpControllerKeyboard** %keyboard.addr, align 8
  %1 = bitcast %struct._GimpControllerKeyboard* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_controller_keyboard_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_controller_keyboard_key_press, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %cmp12 = icmp ne %struct._GdkEventKey* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_controller_keyboard_key_press, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %14 = load i32, i32* %i, align 4
  %conv = sext i32 %14 to i64
  %cmp17 = icmp ult i64 %conv, 32
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [32 x %struct._KeyboardEvent], [32 x %struct._KeyboardEvent]* @keyboard_events, i32 0, i64 %idxprom
  %keyval = getelementptr inbounds %struct._KeyboardEvent, %struct._KeyboardEvent* %arrayidx, i32 0, i32 0
  %16 = load i32, i32* %keyval, align 4
  %17 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval19 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %17, i32 0, i32 5
  %18 = load i32, i32* %keyval19, align 4
  %cmp20 = icmp eq i32 %16, %18
  br i1 %cmp20, label %if.then.22, label %if.end.42

if.then.22:                                       ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds [32 x %struct._KeyboardEvent], [32 x %struct._KeyboardEvent]* @keyboard_events, i32 0, i64 %idxprom23
  %modifiers = getelementptr inbounds %struct._KeyboardEvent, %struct._KeyboardEvent* %arrayidx24, i32 0, i32 1
  %20 = load i32, i32* %modifiers, align 4
  %21 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %21, i32 0, i32 4
  %22 = load i32, i32* %state, align 4
  %and = and i32 %20, %22
  %23 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds [32 x %struct._KeyboardEvent], [32 x %struct._KeyboardEvent]* @keyboard_events, i32 0, i64 %idxprom25
  %modifiers27 = getelementptr inbounds %struct._KeyboardEvent, %struct._KeyboardEvent* %arrayidx26, i32 0, i32 1
  %24 = load i32, i32* %modifiers27, align 4
  %cmp28 = icmp eq i32 %and, %24
  br i1 %cmp28, label %if.then.30, label %if.end.41

if.then.30:                                       ; preds = %if.then.22
  %25 = bitcast %union._GimpControllerEvent* %controller_event to %struct._GimpControllerEventTrigger*
  store %struct._GimpControllerEventTrigger* %25, %struct._GimpControllerEventTrigger** %trigger, align 8
  %26 = load %struct._GimpControllerEventTrigger*, %struct._GimpControllerEventTrigger** %trigger, align 8
  %type = getelementptr inbounds %struct._GimpControllerEventTrigger, %struct._GimpControllerEventTrigger* %26, i32 0, i32 0
  store i32 0, i32* %type, align 4
  %27 = load %struct._GimpControllerKeyboard*, %struct._GimpControllerKeyboard** %keyboard.addr, align 8
  %28 = bitcast %struct._GimpControllerKeyboard* %27 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_controller_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call33)
  %29 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpController*
  %30 = load %struct._GimpControllerEventTrigger*, %struct._GimpControllerEventTrigger** %trigger, align 8
  %source = getelementptr inbounds %struct._GimpControllerEventTrigger, %struct._GimpControllerEventTrigger* %30, i32 0, i32 1
  store %struct._GimpController* %29, %struct._GimpController** %source, align 8
  %31 = load i32, i32* %i, align 4
  %32 = load %struct._GimpControllerEventTrigger*, %struct._GimpControllerEventTrigger** %trigger, align 8
  %event_id = getelementptr inbounds %struct._GimpControllerEventTrigger, %struct._GimpControllerEventTrigger* %32, i32 0, i32 2
  store i32 %31, i32* %event_id, align 4
  %33 = load %struct._GimpControllerKeyboard*, %struct._GimpControllerKeyboard** %keyboard.addr, align 8
  %34 = bitcast %struct._GimpControllerKeyboard* %33 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_controller_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call35)
  %35 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpController*
  %call37 = call i32 @gimp_controller_event(%struct._GimpController* %35, %union._GimpControllerEvent* %controller_event)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.30
  store i32 1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.then.30
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.22
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.39, %if.else.14, %if.else.9
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @gimp_controller_event(%struct._GimpController*, %union._GimpControllerEvent*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_keyboard_class_init(%struct._GimpControllerKeyboardClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpControllerKeyboardClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %controller_class = alloca %struct._GimpControllerClass*, align 8
  store %struct._GimpControllerKeyboardClass* %klass, %struct._GimpControllerKeyboardClass** %klass.addr, align 8
  %0 = load %struct._GimpControllerKeyboardClass*, %struct._GimpControllerKeyboardClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpControllerKeyboardClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpControllerKeyboardClass*, %struct._GimpControllerKeyboardClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpControllerKeyboardClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_controller_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpControllerClass*
  store %struct._GimpControllerClass* %5, %struct._GimpControllerClass** %controller_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_controller_keyboard_constructed, void (%struct._GObject*)** %constructed, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #7
  %7 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %name = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %7, i32 0, i32 1
  store i8* %call3, i8** %name, align 8
  %8 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %help_id = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %8, i32 0, i32 3
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8** %help_id, align 8
  %9 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %stock_id = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %9, i32 0, i32 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8** %stock_id, align 8
  %10 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %get_n_events = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %10, i32 0, i32 4
  store i32 (%struct._GimpController*)* @gimp_controller_keyboard_get_n_events, i32 (%struct._GimpController*)** %get_n_events, align 8
  %11 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %get_event_name = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %11, i32 0, i32 5
  store i8* (%struct._GimpController*, i32)* @gimp_controller_keyboard_get_event_name, i8* (%struct._GimpController*, i32)** %get_event_name, align 8
  %12 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %get_event_blurb = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %12, i32 0, i32 6
  store i8* (%struct._GimpController*, i32)* @gimp_controller_keyboard_get_event_blurb, i8* (%struct._GimpController*, i32)** %get_event_blurb, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_keyboard_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_controller_keyboard_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 9
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @gimp_controller_keyboard_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 80)
  %6 = bitcast %struct._GTypeClass* %call1 to %struct._GObjectClass*
  %constructed2 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  %7 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed2, align 8
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %7(%struct._GObject* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %10 = bitcast %struct._GObject* %9 to i8*
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0)) #7
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)) #7
  call void (i8*, i8*, ...) @g_object_set(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* %call3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* %call4, i8* null)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @gimp_controller_keyboard_get_n_events(%struct._GimpController* %controller) #3 {
entry:
  %controller.addr = alloca %struct._GimpController*, align 8
  store %struct._GimpController* %controller, %struct._GimpController** %controller.addr, align 8
  ret i32 32
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_controller_keyboard_get_event_name(%struct._GimpController* %controller, i32 %event_id) #3 {
entry:
  %retval = alloca i8*, align 8
  %controller.addr = alloca %struct._GimpController*, align 8
  %event_id.addr = alloca i32, align 4
  store %struct._GimpController* %controller, %struct._GimpController** %controller.addr, align 8
  store i32 %event_id, i32* %event_id.addr, align 4
  %0 = load i32, i32* %event_id.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %event_id.addr, align 4
  %conv = sext i32 %1 to i64
  %cmp1 = icmp uge i64 %conv, 32
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %event_id.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [32 x %struct._KeyboardEvent], [32 x %struct._KeyboardEvent]* @keyboard_events, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct._KeyboardEvent, %struct._KeyboardEvent* %arrayidx, i32 0, i32 2
  %3 = load i8*, i8** %name, align 8
  store i8* %3, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_controller_keyboard_get_event_blurb(%struct._GimpController* %controller, i32 %event_id) #3 {
entry:
  %retval = alloca i8*, align 8
  %controller.addr = alloca %struct._GimpController*, align 8
  %event_id.addr = alloca i32, align 4
  store %struct._GimpController* %controller, %struct._GimpController** %controller.addr, align 8
  store i32 %event_id, i32* %event_id.addr, align 4
  %0 = load i32, i32* %event_id.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %event_id.addr, align 4
  %conv = sext i32 %1 to i64
  %cmp1 = icmp uge i64 %conv, 32
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %event_id.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [32 x %struct._KeyboardEvent], [32 x %struct._KeyboardEvent]* @keyboard_events, i32 0, i64 %idxprom
  %blurb = getelementptr inbounds %struct._KeyboardEvent, %struct._KeyboardEvent* %arrayidx, i32 0, i32 3
  %3 = load i8*, i8** %blurb, align 8
  store i8* %3, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval
  ret i8* %4
}

declare void @g_object_set(i8*, i8*, ...) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @gimp_get_mod_string(i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
