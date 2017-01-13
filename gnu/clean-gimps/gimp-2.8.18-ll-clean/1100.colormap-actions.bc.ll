; ModuleID = './app/actions/colormap-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i8* }
%struct._GimpEnumActionEntry = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i8* }
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionGroupPrivate = type opaque
%struct._Gimp = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque

@.str = private unnamed_addr constant [16 x i8] c"colormap-action\00", align 1
@colormap_actions = internal constant [2 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @colormap_edit_color_cmd_callback to void ()*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0) }], align 16
@colormap_add_color_actions = internal constant [2 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [20 x i8] c"colormap-edit-color\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"colormap-add-color-from-fg\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"colormap-add-color-from-bg\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"colormap-popup\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"gimp-colormap\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Colormap Menu\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"gimp-indexed-palette-dialog\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"gtk-edit\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"_Edit Color...\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Edit this color\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"gimp-indexed-palette-edit\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"gtk-add\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"_Add Color from FG\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Add current foreground color\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"gimp-indexed-palette-add\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"_Add Color from BG\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Add current background color\00", align 1

; Function Attrs: nounwind uwtable
define void @colormap_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([2 x %struct._GimpActionEntry], [2 x %struct._GimpActionEntry]* @colormap_actions, i32 0, i32 0), i32 2)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([2 x %struct._GimpEnumActionEntry], [2 x %struct._GimpEnumActionEntry]* @colormap_add_color_actions, i32 0, i32 0), i32 2, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @colormap_add_color_cmd_callback to void ()*))
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup*, i8*, %struct._GimpEnumActionEntry*, i32, void ()*) #1

declare void @colormap_add_color_cmd_callback(%struct._GtkAction*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @colormap_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %indexed = alloca i32, align 4
  %num_colors = alloca i32, align 4
  %fg = alloca %struct._GimpRGB, align 8
  %bg = alloca %struct._GimpRGB, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GimpContext* @action_data_get_context(i8* %1)
  store %struct._GimpContext* %call1, %struct._GimpContext** %context, align 8
  store i32 0, i32* %indexed, align 4
  store i32 0, i32* %num_colors, align 4
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call i32 @gimp_image_base_type(%struct._GimpImage* %3)
  %cmp = icmp eq i32 %call2, 2
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %indexed, align 4
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call i32 @gimp_image_get_colormap_size(%struct._GimpImage* %4)
  store i32 %call3, i32* %num_colors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool4 = icmp ne %struct._GimpContext* %5, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %6, %struct._GimpRGB* %fg)
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %7, %struct._GimpRGB* %bg)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %8 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool7 = icmp ne %struct._GimpImage* %9, null
  br i1 %tobool7, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end.6
  %10 = load i32, i32* %indexed, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %11 = load i32, i32* %num_colors, align 4
  %cmp9 = icmp sgt i32 %11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end.6
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %if.end.6 ], [ %cmp9, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  %cmp11 = icmp ne i32 %land.ext, 0
  %conv12 = zext i1 %cmp11 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 %conv12)
  %13 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool13 = icmp ne %struct._GimpImage* %14, null
  br i1 %tobool13, label %land.lhs.true.14, label %land.end.19

land.lhs.true.14:                                 ; preds = %land.end
  %15 = load i32, i32* %indexed, align 4
  %tobool15 = icmp ne i32 %15, 0
  br i1 %tobool15, label %land.rhs.16, label %land.end.19

land.rhs.16:                                      ; preds = %land.lhs.true.14
  %16 = load i32, i32* %num_colors, align 4
  %cmp17 = icmp slt i32 %16, 256
  br label %land.end.19

land.end.19:                                      ; preds = %land.rhs.16, %land.lhs.true.14, %land.end
  %17 = phi i1 [ false, %land.lhs.true.14 ], [ false, %land.end ], [ %cmp17, %land.rhs.16 ]
  %land.ext20 = zext i1 %17 to i32
  %cmp21 = icmp ne i32 %land.ext20, 0
  %conv22 = zext i1 %cmp21 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i32 %conv22)
  %18 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool23 = icmp ne %struct._GimpImage* %19, null
  br i1 %tobool23, label %land.lhs.true.24, label %land.end.29

land.lhs.true.24:                                 ; preds = %land.end.19
  %20 = load i32, i32* %indexed, align 4
  %tobool25 = icmp ne i32 %20, 0
  br i1 %tobool25, label %land.rhs.26, label %land.end.29

land.rhs.26:                                      ; preds = %land.lhs.true.24
  %21 = load i32, i32* %num_colors, align 4
  %cmp27 = icmp slt i32 %21, 256
  br label %land.end.29

land.end.29:                                      ; preds = %land.rhs.26, %land.lhs.true.24, %land.end.19
  %22 = phi i1 [ false, %land.lhs.true.24 ], [ false, %land.end.19 ], [ %cmp27, %land.rhs.26 ]
  %land.ext30 = zext i1 %22 to i32
  %cmp31 = icmp ne i32 %land.ext30, 0
  %conv32 = zext i1 %cmp31 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i32 %conv32)
  %23 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %24 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool33 = icmp ne %struct._GimpContext* %24, null
  br i1 %tobool33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end.29
  br label %cond.end

cond.false:                                       ; preds = %land.end.29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GimpRGB* [ %fg, %cond.true ], [ null, %cond.false ]
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), %struct._GimpRGB* %cond, i32 0)
  %25 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool34 = icmp ne %struct._GimpContext* %26, null
  br i1 %tobool34, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.end
  br label %cond.end.37

cond.false.36:                                    ; preds = %cond.end
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.35
  %cond38 = phi %struct._GimpRGB* [ %bg, %cond.true.35 ], [ null, %cond.false.36 ]
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), %struct._GimpRGB* %cond38, i32 0)
  ret void
}

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare %struct._GimpContext* @action_data_get_context(i8*) #1

declare i32 @gimp_image_base_type(%struct._GimpImage*) #1

declare i32 @gimp_image_get_colormap_size(%struct._GimpImage*) #1

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_context_get_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare void @gimp_action_group_set_action_color(%struct._GimpActionGroup*, i8*, %struct._GimpRGB*, i32) #1

declare void @colormap_edit_color_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
