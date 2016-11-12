; ModuleID = './app/core/gimpchannel-select.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpDrawablePrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpImage = type opaque
%struct._GimpScanConvert = type opaque
%struct._TileManager = type opaque
%struct._GimpVector2 = type { double, double }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, %struct.cairo_path*, i32, i32, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.0 }
%struct.anon.0 = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_channel_select_rectangle = private unnamed_addr constant [30 x i8] c"gimp_channel_select_rectangle\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CHANNEL (channel)\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"gimp_item_is_attached (GIMP_ITEM (channel))\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"undo-type\04Rectangle Select\00", align 1
@__func__.gimp_channel_select_ellipse = private unnamed_addr constant [28 x i8] c"gimp_channel_select_ellipse\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"undo-type\04Ellipse Select\00", align 1
@__func__.gimp_channel_select_round_rect = private unnamed_addr constant [31 x i8] c"gimp_channel_select_round_rect\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"undo-type\04Rounded Rectangle Select\00", align 1
@__func__.gimp_channel_select_scan_convert = private unnamed_addr constant [33 x i8] c"gimp_channel_select_scan_convert\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"undo_desc != NULL\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"scan_convert != NULL\00", align 1
@__func__.gimp_channel_select_polygon = private unnamed_addr constant [28 x i8] c"gimp_channel_select_polygon\00", align 1
@__func__.gimp_channel_select_vectors = private unnamed_addr constant [28 x i8] c"gimp_channel_select_vectors\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"GIMP_IS_VECTORS (vectors)\00", align 1
@__func__.gimp_channel_select_channel = private unnamed_addr constant [28 x i8] c"gimp_channel_select_channel\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"GIMP_IS_CHANNEL (add_on)\00", align 1
@__func__.gimp_channel_select_alpha = private unnamed_addr constant [26 x i8] c"gimp_channel_select_alpha\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"undo-type\04Alpha to Selection\00", align 1
@__func__.gimp_channel_select_component = private unnamed_addr constant [30 x i8] c"gimp_channel_select_component\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"undo-type\04%s Channel to Selection\00", align 1
@__func__.gimp_channel_select_fuzzy = private unnamed_addr constant [26 x i8] c"gimp_channel_select_fuzzy\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"undo-type\04Fuzzy Select\00", align 1
@__func__.gimp_channel_select_by_color = private unnamed_addr constant [29 x i8] c"gimp_channel_select_by_color\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"undo-type\04Select by Color\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_channel_select_rectangle(%struct._GimpChannel* %channel, i32 %x, i32 %y, i32 %w, i32 %h, i32 %op, i32 %feather, double %feather_radius_x, double %feather_radius_y, i32 %push_undo) #0 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %feather.addr = alloca i32, align 4
  %feather_radius_x.addr = alloca double, align 8
  %feather_radius_y.addr = alloca double, align 8
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %add_on = alloca %struct._GimpChannel*, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 %op, i32* %op.addr, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store double %feather_radius_x, double* %feather_radius_x.addr, align 8
  store double %feather_radius_y, double* %feather_radius_y.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_channel_select_rectangle, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.42

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_channel_select_rectangle, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.42

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %16 = load i32, i32* %push_undo.addr, align 4
  %tobool20 = icmp ne i32 %16, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %do.end.19
  %17 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call22 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i64 10)
  call void @gimp_channel_push_undo(%struct._GimpChannel* %17, i8* %call22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %do.end.19
  %18 = load i32, i32* %op.addr, align 4
  %cmp24 = icmp eq i32 %18, 2
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  %19 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  call void @gimp_channel_clear(%struct._GimpChannel* %19, i8* null, i32 0)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.23
  %20 = load i32, i32* %feather.addr, align 4
  %tobool27 = icmp ne i32 %20, 0
  br i1 %tobool27, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.26
  %21 = load i32, i32* %op.addr, align 4
  %cmp28 = icmp eq i32 %21, 3
  br i1 %cmp28, label %if.then.29, label %if.else.41

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.26
  %22 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %23 = bitcast %struct._GimpChannel* %22 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_item_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call31)
  %24 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpItem*
  store %struct._GimpItem* %24, %struct._GimpItem** %item, align 8
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call34 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %25)
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call35 = call i32 @gimp_item_get_width(%struct._GimpItem* %26)
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call36 = call i32 @gimp_item_get_height(%struct._GimpItem* %27)
  %call37 = call %struct._GimpChannel* @gimp_channel_new_mask(%struct._GimpImage* %call34, i32 %call35, i32 %call36)
  store %struct._GimpChannel* %call37, %struct._GimpChannel** %add_on, align 8
  %28 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %29 = load i32, i32* %x.addr, align 4
  %30 = load i32, i32* %y.addr, align 4
  %31 = load i32, i32* %w.addr, align 4
  %32 = load i32, i32* %h.addr, align 4
  call void @gimp_channel_combine_rect(%struct._GimpChannel* %28, i32 0, i32 %29, i32 %30, i32 %31, i32 %32)
  %33 = load i32, i32* %feather.addr, align 4
  %tobool38 = icmp ne i32 %33, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.29
  %34 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %35 = load double, double* %feather_radius_x.addr, align 8
  %36 = load double, double* %feather_radius_y.addr, align 8
  call void @gimp_channel_feather(%struct._GimpChannel* %34, double %35, double %36, i32 0)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.then.29
  %37 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %38 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %39 = load i32, i32* %op.addr, align 4
  call void @gimp_channel_combine_mask(%struct._GimpChannel* %37, %struct._GimpChannel* %38, i32 %39, i32 0, i32 0)
  %40 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %41 = bitcast %struct._GimpChannel* %40 to i8*
  call void @g_object_unref(i8* %41)
  br label %if.end.42

if.else.41:                                       ; preds = %lor.lhs.false
  %42 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %43 = load i32, i32* %op.addr, align 4
  %44 = load i32, i32* %x.addr, align 4
  %45 = load i32, i32* %y.addr, align 4
  %46 = load i32, i32* %w.addr, align 4
  %47 = load i32, i32* %h.addr, align 4
  call void @gimp_channel_combine_rect(%struct._GimpChannel* %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.9, %if.else.17, %if.else.41, %if.end.40
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare void @gimp_channel_push_undo(%struct._GimpChannel*, i8*) #3

declare i8* @g_dpgettext(i8*, i8*, i64) #3

declare void @gimp_channel_clear(%struct._GimpChannel*, i8*, i32) #3

declare %struct._GimpChannel* @gimp_channel_new_mask(%struct._GimpImage*, i32, i32) #3

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

declare void @gimp_channel_combine_rect(%struct._GimpChannel*, i32, i32, i32, i32, i32) #3

declare void @gimp_channel_feather(%struct._GimpChannel*, double, double, i32) #3

declare void @gimp_channel_combine_mask(%struct._GimpChannel*, %struct._GimpChannel*, i32, i32, i32) #3

declare void @g_object_unref(i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_channel_select_ellipse(%struct._GimpChannel* %channel, i32 %x, i32 %y, i32 %w, i32 %h, i32 %op, i32 %antialias, i32 %feather, double %feather_radius_x, double %feather_radius_y, i32 %push_undo) #0 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %feather.addr = alloca i32, align 4
  %feather_radius_x.addr = alloca double, align 8
  %feather_radius_y.addr = alloca double, align 8
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %add_on = alloca %struct._GimpChannel*, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 %op, i32* %op.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store double %feather_radius_x, double* %feather_radius_x.addr, align 8
  store double %feather_radius_y, double* %feather_radius_y.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_channel_select_ellipse, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.42

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_channel_select_ellipse, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.42

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %16 = load i32, i32* %push_undo.addr, align 4
  %tobool20 = icmp ne i32 %16, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %do.end.19
  %17 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call22 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i64 10)
  call void @gimp_channel_push_undo(%struct._GimpChannel* %17, i8* %call22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %do.end.19
  %18 = load i32, i32* %op.addr, align 4
  %cmp24 = icmp eq i32 %18, 2
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  %19 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  call void @gimp_channel_clear(%struct._GimpChannel* %19, i8* null, i32 0)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.23
  %20 = load i32, i32* %feather.addr, align 4
  %tobool27 = icmp ne i32 %20, 0
  br i1 %tobool27, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.26
  %21 = load i32, i32* %op.addr, align 4
  %cmp28 = icmp eq i32 %21, 3
  br i1 %cmp28, label %if.then.29, label %if.else.41

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.26
  %22 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %23 = bitcast %struct._GimpChannel* %22 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_item_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call31)
  %24 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpItem*
  store %struct._GimpItem* %24, %struct._GimpItem** %item, align 8
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call34 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %25)
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call35 = call i32 @gimp_item_get_width(%struct._GimpItem* %26)
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call36 = call i32 @gimp_item_get_height(%struct._GimpItem* %27)
  %call37 = call %struct._GimpChannel* @gimp_channel_new_mask(%struct._GimpImage* %call34, i32 %call35, i32 %call36)
  store %struct._GimpChannel* %call37, %struct._GimpChannel** %add_on, align 8
  %28 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %29 = load i32, i32* %x.addr, align 4
  %30 = load i32, i32* %y.addr, align 4
  %31 = load i32, i32* %w.addr, align 4
  %32 = load i32, i32* %h.addr, align 4
  %33 = load i32, i32* %antialias.addr, align 4
  call void @gimp_channel_combine_ellipse(%struct._GimpChannel* %28, i32 0, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %34 = load i32, i32* %feather.addr, align 4
  %tobool38 = icmp ne i32 %34, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.29
  %35 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %36 = load double, double* %feather_radius_x.addr, align 8
  %37 = load double, double* %feather_radius_y.addr, align 8
  call void @gimp_channel_feather(%struct._GimpChannel* %35, double %36, double %37, i32 0)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.then.29
  %38 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %39 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %40 = load i32, i32* %op.addr, align 4
  call void @gimp_channel_combine_mask(%struct._GimpChannel* %38, %struct._GimpChannel* %39, i32 %40, i32 0, i32 0)
  %41 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %42 = bitcast %struct._GimpChannel* %41 to i8*
  call void @g_object_unref(i8* %42)
  br label %if.end.42

if.else.41:                                       ; preds = %lor.lhs.false
  %43 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %44 = load i32, i32* %op.addr, align 4
  %45 = load i32, i32* %x.addr, align 4
  %46 = load i32, i32* %y.addr, align 4
  %47 = load i32, i32* %w.addr, align 4
  %48 = load i32, i32* %h.addr, align 4
  %49 = load i32, i32* %antialias.addr, align 4
  call void @gimp_channel_combine_ellipse(%struct._GimpChannel* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.9, %if.else.17, %if.else.41, %if.end.40
  ret void
}

declare void @gimp_channel_combine_ellipse(%struct._GimpChannel*, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_channel_select_round_rect(%struct._GimpChannel* %channel, i32 %x, i32 %y, i32 %w, i32 %h, double %corner_radius_x, double %corner_radius_y, i32 %op, i32 %antialias, i32 %feather, double %feather_radius_x, double %feather_radius_y, i32 %push_undo) #0 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %corner_radius_x.addr = alloca double, align 8
  %corner_radius_y.addr = alloca double, align 8
  %op.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %feather.addr = alloca i32, align 4
  %feather_radius_x.addr = alloca double, align 8
  %feather_radius_y.addr = alloca double, align 8
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %add_on = alloca %struct._GimpChannel*, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store double %corner_radius_x, double* %corner_radius_x.addr, align 8
  store double %corner_radius_y, double* %corner_radius_y.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store double %feather_radius_x, double* %feather_radius_x.addr, align 8
  store double %feather_radius_y, double* %feather_radius_y.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_channel_select_round_rect, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.42

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_channel_select_round_rect, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.42

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %16 = load i32, i32* %push_undo.addr, align 4
  %tobool20 = icmp ne i32 %16, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %do.end.19
  %17 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call22 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0), i64 10)
  call void @gimp_channel_push_undo(%struct._GimpChannel* %17, i8* %call22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %do.end.19
  %18 = load i32, i32* %op.addr, align 4
  %cmp24 = icmp eq i32 %18, 2
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  %19 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  call void @gimp_channel_clear(%struct._GimpChannel* %19, i8* null, i32 0)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.23
  %20 = load i32, i32* %feather.addr, align 4
  %tobool27 = icmp ne i32 %20, 0
  br i1 %tobool27, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.26
  %21 = load i32, i32* %op.addr, align 4
  %cmp28 = icmp eq i32 %21, 3
  br i1 %cmp28, label %if.then.29, label %if.else.41

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.26
  %22 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %23 = bitcast %struct._GimpChannel* %22 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_item_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call31)
  %24 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpItem*
  store %struct._GimpItem* %24, %struct._GimpItem** %item, align 8
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call34 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %25)
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call35 = call i32 @gimp_item_get_width(%struct._GimpItem* %26)
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call36 = call i32 @gimp_item_get_height(%struct._GimpItem* %27)
  %call37 = call %struct._GimpChannel* @gimp_channel_new_mask(%struct._GimpImage* %call34, i32 %call35, i32 %call36)
  store %struct._GimpChannel* %call37, %struct._GimpChannel** %add_on, align 8
  %28 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %29 = load i32, i32* %x.addr, align 4
  %30 = load i32, i32* %y.addr, align 4
  %31 = load i32, i32* %w.addr, align 4
  %32 = load i32, i32* %h.addr, align 4
  %33 = load double, double* %corner_radius_x.addr, align 8
  %34 = load double, double* %corner_radius_y.addr, align 8
  %35 = load i32, i32* %antialias.addr, align 4
  call void @gimp_channel_combine_ellipse_rect(%struct._GimpChannel* %28, i32 0, i32 %29, i32 %30, i32 %31, i32 %32, double %33, double %34, i32 %35)
  %36 = load i32, i32* %feather.addr, align 4
  %tobool38 = icmp ne i32 %36, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.29
  %37 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %38 = load double, double* %feather_radius_x.addr, align 8
  %39 = load double, double* %feather_radius_y.addr, align 8
  call void @gimp_channel_feather(%struct._GimpChannel* %37, double %38, double %39, i32 0)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.then.29
  %40 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %41 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %42 = load i32, i32* %op.addr, align 4
  call void @gimp_channel_combine_mask(%struct._GimpChannel* %40, %struct._GimpChannel* %41, i32 %42, i32 0, i32 0)
  %43 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %44 = bitcast %struct._GimpChannel* %43 to i8*
  call void @g_object_unref(i8* %44)
  br label %if.end.42

if.else.41:                                       ; preds = %lor.lhs.false
  %45 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %46 = load i32, i32* %op.addr, align 4
  %47 = load i32, i32* %x.addr, align 4
  %48 = load i32, i32* %y.addr, align 4
  %49 = load i32, i32* %w.addr, align 4
  %50 = load i32, i32* %h.addr, align 4
  %51 = load double, double* %corner_radius_x.addr, align 8
  %52 = load double, double* %corner_radius_y.addr, align 8
  %53 = load i32, i32* %antialias.addr, align 4
  call void @gimp_channel_combine_ellipse_rect(%struct._GimpChannel* %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, double %51, double %52, i32 %53)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.9, %if.else.17, %if.else.41, %if.end.40
  ret void
}

declare void @gimp_channel_combine_ellipse_rect(%struct._GimpChannel*, i32, i32, i32, i32, i32, double, double, i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_channel_select_scan_convert(%struct._GimpChannel* %channel, i8* %undo_desc, %struct._GimpScanConvert* %scan_convert, i32 %offset_x, i32 %offset_y, i32 %op, i32 %antialias, i32 %feather, double %feather_radius_x, double %feather_radius_y, i32 %push_undo) #0 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %undo_desc.addr = alloca i8*, align 8
  %scan_convert.addr = alloca %struct._GimpScanConvert*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %feather.addr = alloca i32, align 4
  %feather_radius_x.addr = alloca double, align 8
  %feather_radius_y.addr = alloca double, align 8
  %push_undo.addr = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %add_on = alloca %struct._GimpChannel*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store %struct._GimpScanConvert* %scan_convert, %struct._GimpScanConvert** %scan_convert.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %op, i32* %op.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store double %feather_radius_x, double* %feather_radius_x.addr, align 8
  store double %feather_radius_y, double* %feather_radius_y.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_channel_select_scan_convert, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_channel_select_scan_convert, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load i8*, i8** %undo_desc.addr, align 8
  %cmp21 = icmp ne i8* %16, null
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.20
  br label %if.end.24

if.else.23:                                       ; preds = %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_channel_select_scan_convert, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %17 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert.addr, align 8
  %cmp27 = icmp ne %struct._GimpScanConvert* %17, null
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.26
  br label %if.end.30

if.else.29:                                       ; preds = %do.body.26
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_channel_select_scan_convert, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.30:                                        ; preds = %if.then.28
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %18 = load i32, i32* %push_undo.addr, align 4
  %tobool32 = icmp ne i32 %18, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %do.end.31
  %19 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %20 = load i8*, i8** %undo_desc.addr, align 8
  call void @gimp_channel_push_undo(%struct._GimpChannel* %19, i8* %20)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %do.end.31
  %21 = load i32, i32* %op.addr, align 4
  %cmp35 = icmp eq i32 %21, 2
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  %22 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  call void @gimp_channel_clear(%struct._GimpChannel* %22, i8* null, i32 0)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.34
  %23 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %24 = bitcast %struct._GimpChannel* %23 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_item_get_type() #4
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call38)
  %25 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpItem*
  store %struct._GimpItem* %25, %struct._GimpItem** %item, align 8
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call40 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %26)
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call41 = call i32 @gimp_item_get_width(%struct._GimpItem* %27)
  %28 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call42 = call i32 @gimp_item_get_height(%struct._GimpItem* %28)
  %call43 = call %struct._GimpChannel* @gimp_channel_new_mask(%struct._GimpImage* %call40, i32 %call41, i32 %call42)
  store %struct._GimpChannel* %call43, %struct._GimpChannel** %add_on, align 8
  %29 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert.addr, align 8
  %30 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %31 = bitcast %struct._GimpChannel* %30 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_drawable_get_type() #4
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call44)
  %32 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpDrawable*
  %call46 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %32)
  %33 = load i32, i32* %offset_x.addr, align 4
  %34 = load i32, i32* %offset_y.addr, align 4
  %35 = load i32, i32* %antialias.addr, align 4
  call void @gimp_scan_convert_render(%struct._GimpScanConvert* %29, %struct._TileManager* %call46, i32 %33, i32 %34, i32 %35)
  %36 = load i32, i32* %feather.addr, align 4
  %tobool47 = icmp ne i32 %36, 0
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.37
  %37 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %38 = load double, double* %feather_radius_x.addr, align 8
  %39 = load double, double* %feather_radius_y.addr, align 8
  call void @gimp_channel_feather(%struct._GimpChannel* %37, double %38, double %39, i32 0)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.37
  %40 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %41 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %42 = load i32, i32* %op.addr, align 4
  call void @gimp_channel_combine_mask(%struct._GimpChannel* %40, %struct._GimpChannel* %41, i32 %42, i32 0, i32 0)
  %43 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %44 = bitcast %struct._GimpChannel* %43 to i8*
  call void @g_object_unref(i8* %44)
  br label %return

return:                                           ; preds = %if.end.49, %if.else.29, %if.else.23, %if.else.17, %if.else.9
  ret void
}

declare void @gimp_scan_convert_render(%struct._GimpScanConvert*, %struct._TileManager*, i32, i32, i32) #3

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

; Function Attrs: nounwind uwtable
define void @gimp_channel_select_polygon(%struct._GimpChannel* %channel, i8* %undo_desc, i32 %n_points, %struct._GimpVector2* %points, i32 %op, i32 %antialias, i32 %feather, double %feather_radius_x, double %feather_radius_y, i32 %push_undo) #0 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %undo_desc.addr = alloca i8*, align 8
  %n_points.addr = alloca i32, align 4
  %points.addr = alloca %struct._GimpVector2*, align 8
  %op.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %feather.addr = alloca i32, align 4
  %feather_radius_x.addr = alloca double, align 8
  %feather_radius_y.addr = alloca double, align 8
  %push_undo.addr = alloca i32, align 4
  %scan_convert = alloca %struct._GimpScanConvert*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store i32 %n_points, i32* %n_points.addr, align 4
  store %struct._GimpVector2* %points, %struct._GimpVector2** %points.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store double %feather_radius_x, double* %feather_radius_x.addr, align 8
  store double %feather_radius_y, double* %feather_radius_y.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_channel_select_polygon, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_channel_select_polygon, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load i8*, i8** %undo_desc.addr, align 8
  %cmp21 = icmp ne i8* %16, null
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.20
  br label %if.end.24

if.else.23:                                       ; preds = %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_channel_select_polygon, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %call26 = call %struct._GimpScanConvert* @gimp_scan_convert_new()
  store %struct._GimpScanConvert* %call26, %struct._GimpScanConvert** %scan_convert, align 8
  %17 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  %18 = load i32, i32* %n_points.addr, align 4
  %19 = load %struct._GimpVector2*, %struct._GimpVector2** %points.addr, align 8
  call void @gimp_scan_convert_add_polyline(%struct._GimpScanConvert* %17, i32 %18, %struct._GimpVector2* %19, i32 1)
  %20 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %21 = load i8*, i8** %undo_desc.addr, align 8
  %22 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  %23 = load i32, i32* %op.addr, align 4
  %24 = load i32, i32* %antialias.addr, align 4
  %25 = load i32, i32* %feather.addr, align 4
  %26 = load double, double* %feather_radius_x.addr, align 8
  %27 = load double, double* %feather_radius_y.addr, align 8
  %28 = load i32, i32* %push_undo.addr, align 4
  call void @gimp_channel_select_scan_convert(%struct._GimpChannel* %20, i8* %21, %struct._GimpScanConvert* %22, i32 0, i32 0, i32 %23, i32 %24, i32 %25, double %26, double %27, i32 %28)
  %29 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  call void @gimp_scan_convert_free(%struct._GimpScanConvert* %29)
  br label %return

return:                                           ; preds = %do.end.25, %if.else.23, %if.else.17, %if.else.9
  ret void
}

declare %struct._GimpScanConvert* @gimp_scan_convert_new() #3

declare void @gimp_scan_convert_add_polyline(%struct._GimpScanConvert*, i32, %struct._GimpVector2*, i32) #3

declare void @gimp_scan_convert_free(%struct._GimpScanConvert*) #3

; Function Attrs: nounwind uwtable
define void @gimp_channel_select_vectors(%struct._GimpChannel* %channel, i8* %undo_desc, %struct._GimpVectors* %vectors, i32 %op, i32 %antialias, i32 %feather, double %feather_radius_x, double %feather_radius_y, i32 %push_undo) #0 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %undo_desc.addr = alloca i8*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %op.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %feather.addr = alloca i32, align 4
  %feather_radius_x.addr = alloca double, align 8
  %feather_radius_y.addr = alloca double, align 8
  %push_undo.addr = alloca i32, align 4
  %bezier = alloca %struct.cairo_path*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst28 = alloca %struct._GTypeInstance*, align 8
  %__t30 = alloca i64, align 8
  %__r33 = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  %scan_convert = alloca %struct._GimpScanConvert*, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store double %feather_radius_x, double* %feather_radius_x.addr, align 8
  store double %feather_radius_y, double* %feather_radius_y.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_channel_select_vectors, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.61

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_channel_select_vectors, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.61

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load i8*, i8** %undo_desc.addr, align 8
  %cmp21 = icmp ne i8* %16, null
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.20
  br label %if.end.24

if.else.23:                                       ; preds = %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_channel_select_vectors, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.61

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %17 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %18 = bitcast %struct._GimpVectors* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst28, align 8
  %call31 = call i64 @gimp_vectors_get_type() #4
  store i64 %call31, i64* %__t30, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst28, align 8
  %tobool34 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool34, label %if.else.36, label %if.then.35

if.then.35:                                       ; preds = %do.body.26
  store i32 0, i32* %__r33, align 4
  br label %if.end.47

if.else.36:                                       ; preds = %do.body.26
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst28, align 8
  %g_class37 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class37, align 8
  %tobool38 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool38, label %land.lhs.true.39, label %if.else.44

land.lhs.true.39:                                 ; preds = %if.else.36
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst28, align 8
  %g_class40 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class40, align 8
  %g_type41 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type41, align 8
  %25 = load i64, i64* %__t30, align 8
  %cmp42 = icmp eq i64 %24, %25
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %land.lhs.true.39
  store i32 1, i32* %__r33, align 4
  br label %if.end.46

if.else.44:                                       ; preds = %land.lhs.true.39, %if.else.36
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst28, align 8
  %27 = load i64, i64* %__t30, align 8
  %call45 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #5
  store i32 %call45, i32* %__r33, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.then.43
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.35
  %28 = load i32, i32* %__r33, align 4
  store i32 %28, i32* %tmp48
  %29 = load i32, i32* %tmp48
  %tobool49 = icmp ne i32 %29, 0
  br i1 %tobool49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.end.47
  br label %if.end.52

if.else.51:                                       ; preds = %if.end.47
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_channel_select_vectors, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.61

if.end.52:                                        ; preds = %if.then.50
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  %30 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %call54 = call %struct.cairo_path* @gimp_vectors_get_bezier(%struct._GimpVectors* %30)
  store %struct.cairo_path* %call54, %struct.cairo_path** %bezier, align 8
  %31 = load %struct.cairo_path*, %struct.cairo_path** %bezier, align 8
  %tobool55 = icmp ne %struct.cairo_path* %31, null
  br i1 %tobool55, label %land.lhs.true.56, label %if.end.61

land.lhs.true.56:                                 ; preds = %do.end.53
  %32 = load %struct.cairo_path*, %struct.cairo_path** %bezier, align 8
  %num_data = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %32, i32 0, i32 2
  %33 = load i32, i32* %num_data, align 4
  %cmp57 = icmp sgt i32 %33, 4
  br i1 %cmp57, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %land.lhs.true.56
  %call60 = call %struct._GimpScanConvert* @gimp_scan_convert_new()
  store %struct._GimpScanConvert* %call60, %struct._GimpScanConvert** %scan_convert, align 8
  %34 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  %35 = load %struct.cairo_path*, %struct.cairo_path** %bezier, align 8
  call void @gimp_scan_convert_add_bezier(%struct._GimpScanConvert* %34, %struct.cairo_path* %35)
  %36 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %37 = load i8*, i8** %undo_desc.addr, align 8
  %38 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  %39 = load i32, i32* %op.addr, align 4
  %40 = load i32, i32* %antialias.addr, align 4
  %41 = load i32, i32* %feather.addr, align 4
  %42 = load double, double* %feather_radius_x.addr, align 8
  %43 = load double, double* %feather_radius_y.addr, align 8
  %44 = load i32, i32* %push_undo.addr, align 4
  call void @gimp_channel_select_scan_convert(%struct._GimpChannel* %36, i8* %37, %struct._GimpScanConvert* %38, i32 0, i32 0, i32 %39, i32 %40, i32 %41, double %42, double %43, i32 %44)
  %45 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  call void @gimp_scan_convert_free(%struct._GimpScanConvert* %45)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.9, %if.else.17, %if.else.23, %if.else.51, %if.then.58, %land.lhs.true.56, %do.end.53
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #1

declare %struct.cairo_path* @gimp_vectors_get_bezier(%struct._GimpVectors*) #3

declare void @gimp_scan_convert_add_bezier(%struct._GimpScanConvert*, %struct.cairo_path*) #3

; Function Attrs: nounwind uwtable
define void @gimp_channel_select_channel(%struct._GimpChannel* %channel, i8* %undo_desc, %struct._GimpChannel* %add_on, i32 %offset_x, i32 %offset_y, i32 %op, i32 %feather, double %feather_radius_x, double %feather_radius_y) #0 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %undo_desc.addr = alloca i8*, align 8
  %add_on.addr = alloca %struct._GimpChannel*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %feather.addr = alloca i32, align 4
  %feather_radius_x.addr = alloca double, align 8
  %feather_radius_y.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst28 = alloca %struct._GTypeInstance*, align 8
  %__t30 = alloca i64, align 8
  %__r33 = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %add_on2 = alloca %struct._GimpChannel*, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store %struct._GimpChannel* %add_on, %struct._GimpChannel** %add_on.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %op, i32* %op.addr, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store double %feather_radius_x, double* %feather_radius_x.addr, align 8
  store double %feather_radius_y, double* %feather_radius_y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_channel_select_channel, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.72

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_channel_select_channel, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.72

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load i8*, i8** %undo_desc.addr, align 8
  %cmp21 = icmp ne i8* %16, null
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.20
  br label %if.end.24

if.else.23:                                       ; preds = %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_channel_select_channel, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.72

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %17 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on.addr, align 8
  %18 = bitcast %struct._GimpChannel* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst28, align 8
  %call31 = call i64 @gimp_channel_get_type() #4
  store i64 %call31, i64* %__t30, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst28, align 8
  %tobool34 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool34, label %if.else.36, label %if.then.35

if.then.35:                                       ; preds = %do.body.26
  store i32 0, i32* %__r33, align 4
  br label %if.end.47

if.else.36:                                       ; preds = %do.body.26
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst28, align 8
  %g_class37 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class37, align 8
  %tobool38 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool38, label %land.lhs.true.39, label %if.else.44

land.lhs.true.39:                                 ; preds = %if.else.36
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst28, align 8
  %g_class40 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class40, align 8
  %g_type41 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type41, align 8
  %25 = load i64, i64* %__t30, align 8
  %cmp42 = icmp eq i64 %24, %25
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %land.lhs.true.39
  store i32 1, i32* %__r33, align 4
  br label %if.end.46

if.else.44:                                       ; preds = %land.lhs.true.39, %if.else.36
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst28, align 8
  %27 = load i64, i64* %__t30, align 8
  %call45 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #5
  store i32 %call45, i32* %__r33, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.then.43
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.35
  %28 = load i32, i32* %__r33, align 4
  store i32 %28, i32* %tmp48
  %29 = load i32, i32* %tmp48
  %tobool49 = icmp ne i32 %29, 0
  br i1 %tobool49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.end.47
  br label %if.end.52

if.else.51:                                       ; preds = %if.end.47
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_channel_select_channel, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.72

if.end.52:                                        ; preds = %if.then.50
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  %30 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %31 = load i8*, i8** %undo_desc.addr, align 8
  call void @gimp_channel_push_undo(%struct._GimpChannel* %30, i8* %31)
  %32 = load i32, i32* %op.addr, align 4
  %cmp54 = icmp eq i32 %32, 2
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %do.end.53
  %33 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  call void @gimp_channel_clear(%struct._GimpChannel* %33, i8* null, i32 0)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %do.end.53
  %34 = load i32, i32* %feather.addr, align 4
  %tobool57 = icmp ne i32 %34, 0
  br i1 %tobool57, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.56
  %35 = load i32, i32* %op.addr, align 4
  %cmp58 = icmp eq i32 %35, 3
  br i1 %cmp58, label %if.then.59, label %if.else.71

if.then.59:                                       ; preds = %lor.lhs.false, %if.end.56
  %36 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %37 = bitcast %struct._GimpChannel* %36 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_item_get_type() #4
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call61)
  %38 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpItem*
  store %struct._GimpItem* %38, %struct._GimpItem** %item, align 8
  %39 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call64 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %39)
  %40 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call65 = call i32 @gimp_item_get_width(%struct._GimpItem* %40)
  %41 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call66 = call i32 @gimp_item_get_height(%struct._GimpItem* %41)
  %call67 = call %struct._GimpChannel* @gimp_channel_new_mask(%struct._GimpImage* %call64, i32 %call65, i32 %call66)
  store %struct._GimpChannel* %call67, %struct._GimpChannel** %add_on2, align 8
  %42 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on2, align 8
  %43 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on.addr, align 8
  %44 = load i32, i32* %offset_x.addr, align 4
  %45 = load i32, i32* %offset_y.addr, align 4
  call void @gimp_channel_combine_mask(%struct._GimpChannel* %42, %struct._GimpChannel* %43, i32 0, i32 %44, i32 %45)
  %46 = load i32, i32* %feather.addr, align 4
  %tobool68 = icmp ne i32 %46, 0
  br i1 %tobool68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.then.59
  %47 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on2, align 8
  %48 = load double, double* %feather_radius_x.addr, align 8
  %49 = load double, double* %feather_radius_y.addr, align 8
  call void @gimp_channel_feather(%struct._GimpChannel* %47, double %48, double %49, i32 0)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.then.59
  %50 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %51 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on2, align 8
  %52 = load i32, i32* %op.addr, align 4
  call void @gimp_channel_combine_mask(%struct._GimpChannel* %50, %struct._GimpChannel* %51, i32 %52, i32 0, i32 0)
  %53 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on2, align 8
  %54 = bitcast %struct._GimpChannel* %53 to i8*
  call void @g_object_unref(i8* %54)
  br label %if.end.72

if.else.71:                                       ; preds = %lor.lhs.false
  %55 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %56 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on.addr, align 8
  %57 = load i32, i32* %op.addr, align 4
  %58 = load i32, i32* %offset_x.addr, align 4
  %59 = load i32, i32* %offset_y.addr, align 4
  call void @gimp_channel_combine_mask(%struct._GimpChannel* %55, %struct._GimpChannel* %56, i32 %57, i32 %58, i32 %59)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.9, %if.else.17, %if.else.23, %if.else.51, %if.else.71, %if.end.70
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_channel_select_alpha(%struct._GimpChannel* %channel, %struct._GimpDrawable* %drawable, i32 %op, i32 %feather, double %feather_radius_x, double %feather_radius_y) #0 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %op.addr = alloca i32, align 4
  %feather.addr = alloca i32, align 4
  %feather_radius_x.addr = alloca double, align 8
  %feather_radius_y.addr = alloca double, align 8
  %item = alloca %struct._GimpItem*, align 8
  %add_on = alloca %struct._GimpChannel*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store double %feather_radius_x, double* %feather_radius_x.addr, align 8
  store double %feather_radius_y, double* %feather_radius_y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_channel_select_alpha, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_channel_select_alpha, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_drawable_get_type() #4
  store i64 %call25, i64* %__t24, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %do.body.20
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %do.body.20
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.else.30
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type35, align 8
  %24 = load i64, i64* %__t24, align 8
  %cmp36 = icmp eq i64 %23, %24
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r27, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.33, %if.else.30
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %26 = load i64, i64* %__t24, align 8
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #5
  store i32 %call39, i32* %__r27, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.29
  %27 = load i32, i32* %__r27, align 4
  store i32 %27, i32* %tmp42
  %28 = load i32, i32* %tmp42
  %tobool43 = icmp ne i32 %28, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.41
  br label %if.end.46

if.else.45:                                       ; preds = %if.end.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_channel_select_alpha, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %29 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %30 = bitcast %struct._GimpChannel* %29 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call48)
  %31 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  store %struct._GimpItem* %31, %struct._GimpItem** %item, align 8
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call50 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %32)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.else.55

if.then.52:                                       ; preds = %do.end.47
  %33 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call53 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %33)
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call54 = call %struct._GimpChannel* @gimp_channel_new_from_alpha(%struct._GimpImage* %call53, %struct._GimpDrawable* %34, i8* null, %struct._GimpRGB* null)
  store %struct._GimpChannel* %call54, %struct._GimpChannel** %add_on, align 8
  br label %if.end.64

if.else.55:                                       ; preds = %do.end.47
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call56 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %35)
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %37 = bitcast %struct._GimpDrawable* %36 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_item_get_type() #4
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call57)
  %38 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpItem*
  %call59 = call i32 @gimp_item_get_width(%struct._GimpItem* %38)
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %40 = bitcast %struct._GimpDrawable* %39 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_item_get_type() #4
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call60)
  %41 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpItem*
  %call62 = call i32 @gimp_item_get_height(%struct._GimpItem* %41)
  %call63 = call %struct._GimpChannel* @gimp_channel_new_mask(%struct._GimpImage* %call56, i32 %call59, i32 %call62)
  store %struct._GimpChannel* %call63, %struct._GimpChannel** %add_on, align 8
  %42 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  call void @gimp_channel_all(%struct._GimpChannel* %42, i32 0)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.55, %if.then.52
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %44 = bitcast %struct._GimpDrawable* %43 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_item_get_type() #4
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call65)
  %45 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %45, i32* %off_x, i32* %off_y)
  %46 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call67 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i64 10)
  %47 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %48 = load i32, i32* %off_x, align 4
  %49 = load i32, i32* %off_y, align 4
  %50 = load i32, i32* %op.addr, align 4
  %51 = load i32, i32* %feather.addr, align 4
  %52 = load double, double* %feather_radius_x.addr, align 8
  %53 = load double, double* %feather_radius_y.addr, align 8
  call void @gimp_channel_select_channel(%struct._GimpChannel* %46, i8* %call67, %struct._GimpChannel* %47, i32 %48, i32 %49, i32 %50, i32 %51, double %52, double %53)
  %54 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %55 = bitcast %struct._GimpChannel* %54 to i8*
  call void @g_object_unref(i8* %55)
  br label %return

return:                                           ; preds = %if.end.64, %if.else.45, %if.else.17, %if.else.9
  ret void
}

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #3

declare %struct._GimpChannel* @gimp_channel_new_from_alpha(%struct._GimpImage*, %struct._GimpDrawable*, i8*, %struct._GimpRGB*) #3

declare void @gimp_channel_all(%struct._GimpChannel*, i32) #3

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #3

; Function Attrs: nounwind uwtable
define void @gimp_channel_select_component(%struct._GimpChannel* %channel, i32 %component, i32 %op, i32 %feather, double %feather_radius_x, double %feather_radius_y) #0 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %component.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %feather.addr = alloca i32, align 4
  %feather_radius_x.addr = alloca double, align 8
  %feather_radius_y.addr = alloca double, align 8
  %item = alloca %struct._GimpItem*, align 8
  %add_on = alloca %struct._GimpChannel*, align 8
  %desc = alloca i8*, align 8
  %undo_desc = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %component, i32* %component.addr, align 4
  store i32 %op, i32* %op.addr, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store double %feather_radius_x, double* %feather_radius_x.addr, align 8
  store double %feather_radius_y, double* %feather_radius_y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_channel_select_component, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_channel_select_component, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %17 = bitcast %struct._GimpChannel* %16 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_item_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call20)
  %18 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpItem*
  store %struct._GimpItem* %18, %struct._GimpItem** %item, align 8
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call22 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %19)
  %20 = load i32, i32* %component.addr, align 4
  %call23 = call %struct._GimpChannel* @gimp_channel_new_from_component(%struct._GimpImage* %call22, i32 %20, i8* null, %struct._GimpRGB* null)
  store %struct._GimpChannel* %call23, %struct._GimpChannel** %add_on, align 8
  %21 = load i32, i32* %feather.addr, align 4
  %tobool24 = icmp ne i32 %21, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %do.end.19
  %22 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %23 = load double, double* %feather_radius_x.addr, align 8
  %24 = load double, double* %feather_radius_y.addr, align 8
  call void @gimp_channel_feather(%struct._GimpChannel* %22, double %23, double %24, i32 0)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %do.end.19
  %call27 = call i64 @gimp_channel_type_get_type() #4
  %25 = load i32, i32* %component.addr, align 4
  %call28 = call i32 @gimp_enum_get_value(i64 %call27, i32 %25, i8** null, i8** null, i8** %desc, i8** null)
  %call29 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0), i64 10)
  %26 = load i8*, i8** %desc, align 8
  %call30 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call29, i8* %26)
  store i8* %call30, i8** %undo_desc, align 8
  %27 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %28 = load i8*, i8** %undo_desc, align 8
  %29 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %30 = load i32, i32* %op.addr, align 4
  call void @gimp_channel_select_channel(%struct._GimpChannel* %27, i8* %28, %struct._GimpChannel* %29, i32 0, i32 0, i32 %30, i32 0, double 0.000000e+00, double 0.000000e+00)
  %31 = load i8*, i8** %undo_desc, align 8
  call void @g_free(i8* %31)
  %32 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %33 = bitcast %struct._GimpChannel* %32 to i8*
  call void @g_object_unref(i8* %33)
  br label %return

return:                                           ; preds = %if.end.26, %if.else.17, %if.else.9
  ret void
}

declare %struct._GimpChannel* @gimp_channel_new_from_component(%struct._GimpImage*, i32, i8*, %struct._GimpRGB*) #3

declare i32 @gimp_enum_get_value(i64, i32, i8**, i8**, i8**, i8**) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_type_get_type() #1

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare void @g_free(i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_channel_select_fuzzy(%struct._GimpChannel* %channel, %struct._GimpDrawable* %drawable, i32 %sample_merged, i32 %x, i32 %y, i32 %threshold, i32 %select_transparent, i32 %select_criterion, i32 %op, i32 %antialias, i32 %feather, double %feather_radius_x, double %feather_radius_y) #0 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %sample_merged.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %threshold.addr = alloca i32, align 4
  %select_transparent.addr = alloca i32, align 4
  %select_criterion.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %feather.addr = alloca i32, align 4
  %feather_radius_x.addr = alloca double, align 8
  %feather_radius_y.addr = alloca double, align 8
  %item = alloca %struct._GimpItem*, align 8
  %add_on = alloca %struct._GimpChannel*, align 8
  %add_on_x = alloca i32, align 4
  %add_on_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %sample_merged, i32* %sample_merged.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %threshold, i32* %threshold.addr, align 4
  store i32 %select_transparent, i32* %select_transparent.addr, align 4
  store i32 %select_criterion, i32* %select_criterion.addr, align 4
  store i32 %op, i32* %op.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store double %feather_radius_x, double* %feather_radius_x.addr, align 8
  store double %feather_radius_y, double* %feather_radius_y.addr, align 8
  store i32 0, i32* %add_on_x, align 4
  store i32 0, i32* %add_on_y, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_channel_select_fuzzy, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_channel_select_fuzzy, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_drawable_get_type() #4
  store i64 %call25, i64* %__t24, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %do.body.20
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %do.body.20
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.else.30
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type35, align 8
  %24 = load i64, i64* %__t24, align 8
  %cmp36 = icmp eq i64 %23, %24
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r27, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.33, %if.else.30
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %26 = load i64, i64* %__t24, align 8
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #5
  store i32 %call39, i32* %__r27, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.29
  %27 = load i32, i32* %__r27, align 4
  store i32 %27, i32* %tmp42
  %28 = load i32, i32* %tmp42
  %tobool43 = icmp ne i32 %28, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.41
  br label %if.end.46

if.else.45:                                       ; preds = %if.end.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_channel_select_fuzzy, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %29 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %30 = bitcast %struct._GimpChannel* %29 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call48)
  %31 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  store %struct._GimpItem* %31, %struct._GimpItem** %item, align 8
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call50 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %32)
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %34 = load i32, i32* %sample_merged.addr, align 4
  %35 = load i32, i32* %antialias.addr, align 4
  %36 = load i32, i32* %threshold.addr, align 4
  %37 = load i32, i32* %select_transparent.addr, align 4
  %38 = load i32, i32* %select_criterion.addr, align 4
  %39 = load i32, i32* %x.addr, align 4
  %40 = load i32, i32* %y.addr, align 4
  %call51 = call %struct._GimpChannel* @gimp_image_contiguous_region_by_seed(%struct._GimpImage* %call50, %struct._GimpDrawable* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  store %struct._GimpChannel* %call51, %struct._GimpChannel** %add_on, align 8
  %41 = load i32, i32* %sample_merged.addr, align 4
  %tobool52 = icmp ne i32 %41, 0
  br i1 %tobool52, label %if.end.56, label %if.then.53

if.then.53:                                       ; preds = %do.end.47
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %43 = bitcast %struct._GimpDrawable* %42 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_item_get_type() #4
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call54)
  %44 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %44, i32* %add_on_x, i32* %add_on_y)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %do.end.47
  %45 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call57 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i64 10)
  %46 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %47 = load i32, i32* %add_on_x, align 4
  %48 = load i32, i32* %add_on_y, align 4
  %49 = load i32, i32* %op.addr, align 4
  %50 = load i32, i32* %feather.addr, align 4
  %51 = load double, double* %feather_radius_x.addr, align 8
  %52 = load double, double* %feather_radius_y.addr, align 8
  call void @gimp_channel_select_channel(%struct._GimpChannel* %45, i8* %call57, %struct._GimpChannel* %46, i32 %47, i32 %48, i32 %49, i32 %50, double %51, double %52)
  %53 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %54 = bitcast %struct._GimpChannel* %53 to i8*
  call void @g_object_unref(i8* %54)
  br label %return

return:                                           ; preds = %if.end.56, %if.else.45, %if.else.17, %if.else.9
  ret void
}

declare %struct._GimpChannel* @gimp_image_contiguous_region_by_seed(%struct._GimpImage*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_channel_select_by_color(%struct._GimpChannel* %channel, %struct._GimpDrawable* %drawable, i32 %sample_merged, %struct._GimpRGB* %color, i32 %threshold, i32 %select_transparent, i32 %select_criterion, i32 %op, i32 %antialias, i32 %feather, double %feather_radius_x, double %feather_radius_y) #0 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %sample_merged.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %threshold.addr = alloca i32, align 4
  %select_transparent.addr = alloca i32, align 4
  %select_criterion.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %feather.addr = alloca i32, align 4
  %feather_radius_x.addr = alloca double, align 8
  %feather_radius_y.addr = alloca double, align 8
  %item = alloca %struct._GimpItem*, align 8
  %add_on = alloca %struct._GimpChannel*, align 8
  %add_on_x = alloca i32, align 4
  %add_on_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %sample_merged, i32* %sample_merged.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %threshold, i32* %threshold.addr, align 4
  store i32 %select_transparent, i32* %select_transparent.addr, align 4
  store i32 %select_criterion, i32* %select_criterion.addr, align 4
  store i32 %op, i32* %op.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store double %feather_radius_x, double* %feather_radius_x.addr, align 8
  store double %feather_radius_y, double* %feather_radius_y.addr, align 8
  store i32 0, i32* %add_on_x, align 4
  store i32 0, i32* %add_on_y, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_channel_select_by_color, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_channel_select_by_color, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_drawable_get_type() #4
  store i64 %call25, i64* %__t24, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %do.body.20
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %do.body.20
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.else.30
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type35, align 8
  %24 = load i64, i64* %__t24, align 8
  %cmp36 = icmp eq i64 %23, %24
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r27, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.33, %if.else.30
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %26 = load i64, i64* %__t24, align 8
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #5
  store i32 %call39, i32* %__r27, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.29
  %27 = load i32, i32* %__r27, align 4
  store i32 %27, i32* %tmp42
  %28 = load i32, i32* %tmp42
  %tobool43 = icmp ne i32 %28, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.41
  br label %if.end.46

if.else.45:                                       ; preds = %if.end.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_channel_select_by_color, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp49 = icmp ne %struct._GimpRGB* %29, null
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.48
  br label %if.end.52

if.else.51:                                       ; preds = %do.body.48
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_channel_select_by_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.52:                                        ; preds = %if.then.50
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  %30 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %31 = bitcast %struct._GimpChannel* %30 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_item_get_type() #4
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call54)
  %32 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpItem*
  store %struct._GimpItem* %32, %struct._GimpItem** %item, align 8
  %33 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call56 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %33)
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %35 = load i32, i32* %sample_merged.addr, align 4
  %36 = load i32, i32* %antialias.addr, align 4
  %37 = load i32, i32* %threshold.addr, align 4
  %38 = load i32, i32* %select_transparent.addr, align 4
  %39 = load i32, i32* %select_criterion.addr, align 4
  %40 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call57 = call %struct._GimpChannel* @gimp_image_contiguous_region_by_color(%struct._GimpImage* %call56, %struct._GimpDrawable* %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, %struct._GimpRGB* %40)
  store %struct._GimpChannel* %call57, %struct._GimpChannel** %add_on, align 8
  %41 = load i32, i32* %sample_merged.addr, align 4
  %tobool58 = icmp ne i32 %41, 0
  br i1 %tobool58, label %if.end.62, label %if.then.59

if.then.59:                                       ; preds = %do.end.53
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %43 = bitcast %struct._GimpDrawable* %42 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_item_get_type() #4
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call60)
  %44 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %44, i32* %add_on_x, i32* %add_on_y)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.59, %do.end.53
  %45 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call63 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), i64 10)
  %46 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %47 = load i32, i32* %add_on_x, align 4
  %48 = load i32, i32* %add_on_y, align 4
  %49 = load i32, i32* %op.addr, align 4
  %50 = load i32, i32* %feather.addr, align 4
  %51 = load double, double* %feather_radius_x.addr, align 8
  %52 = load double, double* %feather_radius_y.addr, align 8
  call void @gimp_channel_select_channel(%struct._GimpChannel* %45, i8* %call63, %struct._GimpChannel* %46, i32 %47, i32 %48, i32 %49, i32 %50, double %51, double %52)
  %53 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on, align 8
  %54 = bitcast %struct._GimpChannel* %53 to i8*
  call void @g_object_unref(i8* %54)
  br label %return

return:                                           ; preds = %if.end.62, %if.else.51, %if.else.45, %if.else.17, %if.else.9
  ret void
}

declare %struct._GimpChannel* @gimp_image_contiguous_region_by_color(%struct._GimpImage*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, %struct._GimpRGB*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
