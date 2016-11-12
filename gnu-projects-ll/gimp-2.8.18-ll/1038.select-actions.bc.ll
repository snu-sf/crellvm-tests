; ModuleID = './app/actions/select-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i8* }
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
%struct._GimpCoreConfig = type opaque
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
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayer = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque

@.str = private unnamed_addr constant [14 x i8] c"select-action\00", align 1
@select_actions = internal constant [14 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @select_all_cmd_callback to void ()*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @select_none_cmd_callback to void ()*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @select_invert_cmd_callback to void ()*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @select_float_cmd_callback to void ()*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @select_feather_cmd_callback to void ()*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @select_sharpen_cmd_callback to void ()*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @select_shrink_cmd_callback to void ()*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @select_grow_cmd_callback to void ()*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @select_border_cmd_callback to void ()*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @select_save_cmd_callback to void ()*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @select_stroke_cmd_callback to void ()*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @select_stroke_last_vals_cmd_callback to void ()*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"select-all\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"select-none\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"select-invert\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"select-float\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"select-feather\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"select-sharpen\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"select-shrink\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"select-grow\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"select-border\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"select-save\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"select-stroke\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"select-stroke-last-values\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"selection-popup\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"gimp-tool-rect-select\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Selection Editor Menu\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"gimp-selection-dialog\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"select-menu\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"_Select\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"gimp-selection-all\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"_All\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"<primary>A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Select everything\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"gimp-selection-none\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"_None\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"<primary><shift>A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Dismiss the selection\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"gimp-invert\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"_Invert\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"<primary>I\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"Invert the selection\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"gimp-selection-invert\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"gimp-floating-selection\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"_Float\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"<primary><shift>L\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"Create a floating selection\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"gimp-selection-float\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"Fea_ther...\00", align 1
@.str.38 = private unnamed_addr constant [56 x i8] c"Blur the selection border so that it fades out smoothly\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"gimp-selection-feather\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"_Sharpen\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"Remove fuzziness from the selection\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"gimp-selection-sharpen\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"gimp-selection-shrink\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"S_hrink...\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"Contract the selection\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"gimp-selection-grow\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"_Grow...\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"Enlarge the selection\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"gimp-selection-border\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"Bo_rder...\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"Replace the selection by its border\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"gimp-selection-to-channel\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"Save to _Channel\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"Save the selection to a channel\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"gimp-selection-stroke\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"_Stroke Selection...\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"Paint along the selection outline\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"_Stroke Selection\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"Stroke the selection with last used values\00", align 1

; Function Attrs: nounwind uwtable
define void @select_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([14 x %struct._GimpActionEntry], [14 x %struct._GimpActionEntry]* @select_actions, i32 0, i32 0), i32 14)
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

; Function Attrs: nounwind uwtable
define void @select_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %fs = alloca i32, align 4
  %sel = alloca i32, align 4
  %writable = alloca i32, align 4
  %children = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  store i32 0, i32* %fs, align 4
  store i32 0, i32* %sel, align 4
  store i32 0, i32* %writable, align 4
  store i32 0, i32* %children, align 4
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %2)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool2 = icmp ne %struct._GimpDrawable* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %if.then
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_get_type() #3
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItem*
  %call6 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %6)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %writable, align 4
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %8 = bitcast %struct._GimpDrawable* %7 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_viewable_get_type() #3
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call8)
  %9 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpViewable*
  %call10 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %9)
  %tobool11 = icmp ne %struct._GimpContainer* %call10, null
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.3
  store i32 1, i32* %children, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then.3
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call14 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %10)
  %cmp = icmp ne %struct._GimpLayer* %call14, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %fs, align 4
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call15 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %11)
  %call16 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call15)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot18 = xor i1 %tobool17, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  store i32 %lnot.ext19, i32* %sel, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.13, %entry
  %12 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp21 = icmp ne %struct._GimpDrawable* %13, null
  %conv22 = zext i1 %cmp21 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 %conv22)
  %14 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool23 = icmp ne %struct._GimpDrawable* %15, null
  br i1 %tobool23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.20
  %16 = load i32, i32* %sel, align 4
  %tobool24 = icmp ne i32 %16, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.20
  %17 = phi i1 [ false, %if.end.20 ], [ %tobool24, %land.rhs ]
  %land.ext = zext i1 %17 to i32
  %cmp25 = icmp ne i32 %land.ext, 0
  %conv26 = zext i1 %cmp25 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 %conv26)
  %18 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp27 = icmp ne %struct._GimpDrawable* %19, null
  %conv28 = zext i1 %cmp27 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %conv28)
  %20 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %21 = load i32, i32* %writable, align 4
  %tobool29 = icmp ne i32 %21, 0
  br i1 %tobool29, label %land.lhs.true, label %land.end.33

land.lhs.true:                                    ; preds = %land.end
  %22 = load i32, i32* %children, align 4
  %tobool30 = icmp ne i32 %22, 0
  br i1 %tobool30, label %land.end.33, label %land.rhs.31

land.rhs.31:                                      ; preds = %land.lhs.true
  %23 = load i32, i32* %sel, align 4
  %tobool32 = icmp ne i32 %23, 0
  br label %land.end.33

land.end.33:                                      ; preds = %land.rhs.31, %land.lhs.true, %land.end
  %24 = phi i1 [ false, %land.lhs.true ], [ false, %land.end ], [ %tobool32, %land.rhs.31 ]
  %land.ext34 = zext i1 %24 to i32
  %cmp35 = icmp ne i32 %land.ext34, 0
  %conv36 = zext i1 %cmp35 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 %conv36)
  %25 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool37 = icmp ne %struct._GimpDrawable* %26, null
  br i1 %tobool37, label %land.rhs.38, label %land.end.40

land.rhs.38:                                      ; preds = %land.end.33
  %27 = load i32, i32* %sel, align 4
  %tobool39 = icmp ne i32 %27, 0
  br label %land.end.40

land.end.40:                                      ; preds = %land.rhs.38, %land.end.33
  %28 = phi i1 [ false, %land.end.33 ], [ %tobool39, %land.rhs.38 ]
  %land.ext41 = zext i1 %28 to i32
  %cmp42 = icmp ne i32 %land.ext41, 0
  %conv43 = zext i1 %cmp42 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 %conv43)
  %29 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool44 = icmp ne %struct._GimpDrawable* %30, null
  br i1 %tobool44, label %land.rhs.45, label %land.end.47

land.rhs.45:                                      ; preds = %land.end.40
  %31 = load i32, i32* %sel, align 4
  %tobool46 = icmp ne i32 %31, 0
  br label %land.end.47

land.end.47:                                      ; preds = %land.rhs.45, %land.end.40
  %32 = phi i1 [ false, %land.end.40 ], [ %tobool46, %land.rhs.45 ]
  %land.ext48 = zext i1 %32 to i32
  %cmp49 = icmp ne i32 %land.ext48, 0
  %conv50 = zext i1 %cmp49 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 %conv50)
  %33 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool51 = icmp ne %struct._GimpDrawable* %34, null
  br i1 %tobool51, label %land.rhs.52, label %land.end.54

land.rhs.52:                                      ; preds = %land.end.47
  %35 = load i32, i32* %sel, align 4
  %tobool53 = icmp ne i32 %35, 0
  br label %land.end.54

land.end.54:                                      ; preds = %land.rhs.52, %land.end.47
  %36 = phi i1 [ false, %land.end.47 ], [ %tobool53, %land.rhs.52 ]
  %land.ext55 = zext i1 %36 to i32
  %cmp56 = icmp ne i32 %land.ext55, 0
  %conv57 = zext i1 %cmp56 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 %conv57)
  %37 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool58 = icmp ne %struct._GimpDrawable* %38, null
  br i1 %tobool58, label %land.rhs.59, label %land.end.61

land.rhs.59:                                      ; preds = %land.end.54
  %39 = load i32, i32* %sel, align 4
  %tobool60 = icmp ne i32 %39, 0
  br label %land.end.61

land.end.61:                                      ; preds = %land.rhs.59, %land.end.54
  %40 = phi i1 [ false, %land.end.54 ], [ %tobool60, %land.rhs.59 ]
  %land.ext62 = zext i1 %40 to i32
  %cmp63 = icmp ne i32 %land.ext62, 0
  %conv64 = zext i1 %cmp63 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 %conv64)
  %41 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool65 = icmp ne %struct._GimpDrawable* %42, null
  br i1 %tobool65, label %land.rhs.66, label %land.end.68

land.rhs.66:                                      ; preds = %land.end.61
  %43 = load i32, i32* %sel, align 4
  %tobool67 = icmp ne i32 %43, 0
  br label %land.end.68

land.end.68:                                      ; preds = %land.rhs.66, %land.end.61
  %44 = phi i1 [ false, %land.end.61 ], [ %tobool67, %land.rhs.66 ]
  %land.ext69 = zext i1 %44 to i32
  %cmp70 = icmp ne i32 %land.ext69, 0
  %conv71 = zext i1 %cmp70 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %conv71)
  %45 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool72 = icmp ne %struct._GimpDrawable* %46, null
  br i1 %tobool72, label %land.rhs.73, label %land.end.77

land.rhs.73:                                      ; preds = %land.end.68
  %47 = load i32, i32* %fs, align 4
  %tobool74 = icmp ne i32 %47, 0
  %lnot75 = xor i1 %tobool74, true
  br label %land.end.77

land.end.77:                                      ; preds = %land.rhs.73, %land.end.68
  %48 = phi i1 [ false, %land.end.68 ], [ %lnot75, %land.rhs.73 ]
  %land.ext78 = zext i1 %48 to i32
  %cmp79 = icmp ne i32 %land.ext78, 0
  %conv80 = zext i1 %cmp79 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 %conv80)
  %49 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %50 = load i32, i32* %writable, align 4
  %tobool81 = icmp ne i32 %50, 0
  br i1 %tobool81, label %land.lhs.true.82, label %land.end.86

land.lhs.true.82:                                 ; preds = %land.end.77
  %51 = load i32, i32* %children, align 4
  %tobool83 = icmp ne i32 %51, 0
  br i1 %tobool83, label %land.end.86, label %land.rhs.84

land.rhs.84:                                      ; preds = %land.lhs.true.82
  %52 = load i32, i32* %sel, align 4
  %tobool85 = icmp ne i32 %52, 0
  br label %land.end.86

land.end.86:                                      ; preds = %land.rhs.84, %land.lhs.true.82, %land.end.77
  %53 = phi i1 [ false, %land.lhs.true.82 ], [ false, %land.end.77 ], [ %tobool85, %land.rhs.84 ]
  %land.ext87 = zext i1 %53 to i32
  %cmp88 = icmp ne i32 %land.ext87, 0
  %conv89 = zext i1 %cmp88 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 %conv89)
  %54 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %55 = load i32, i32* %writable, align 4
  %tobool90 = icmp ne i32 %55, 0
  br i1 %tobool90, label %land.lhs.true.91, label %land.end.95

land.lhs.true.91:                                 ; preds = %land.end.86
  %56 = load i32, i32* %children, align 4
  %tobool92 = icmp ne i32 %56, 0
  br i1 %tobool92, label %land.end.95, label %land.rhs.93

land.rhs.93:                                      ; preds = %land.lhs.true.91
  %57 = load i32, i32* %sel, align 4
  %tobool94 = icmp ne i32 %57, 0
  br label %land.end.95

land.end.95:                                      ; preds = %land.rhs.93, %land.lhs.true.91, %land.end.86
  %58 = phi i1 [ false, %land.lhs.true.91 ], [ false, %land.end.86 ], [ %tobool94, %land.rhs.93 ]
  %land.ext96 = zext i1 %58 to i32
  %cmp97 = icmp ne i32 %land.ext96, 0
  %conv98 = zext i1 %cmp97 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i32 %conv98)
  ret void
}

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare i32 @gimp_item_is_content_locked(%struct._GimpItem*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #1

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare void @select_all_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @select_none_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @select_invert_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @select_float_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @select_feather_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @select_sharpen_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @select_shrink_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @select_grow_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @select_border_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @select_save_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @select_stroke_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @select_stroke_last_vals_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
