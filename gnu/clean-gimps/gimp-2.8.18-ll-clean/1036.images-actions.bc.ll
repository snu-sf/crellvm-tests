; ModuleID = './app/actions/images-actions.bc'
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
%struct._Gimp = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
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
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque

@.str = private unnamed_addr constant [14 x i8] c"images-action\00", align 1
@images_actions = internal constant [4 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @images_raise_views_cmd_callback to void ()*), i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @images_new_view_cmd_callback to void ()*), i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @images_delete_image_cmd_callback to void ()*), i8* null }], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"images-raise-views\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"images-new-view\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"images-delete\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"images-popup\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"gimp-images\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Images Menu\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"gimp-image-dialog\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"gtk-goto-top\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"_Raise Views\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Raise this image's displays\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"gtk-new\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"_New View\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Create a new display for this image\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"_Delete Image\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Delete this image\00", align 1

; Function Attrs: nounwind uwtable
define void @images_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([4 x %struct._GimpActionEntry], [4 x %struct._GimpActionEntry]* @images_actions, i32 0, i32 0), i32 4)
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

; Function Attrs: nounwind uwtable
define void @images_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %disp_count = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  store i32 0, i32* %disp_count, align 4
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext* %2)
  store %struct._GimpImage* %call1, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool2 = icmp ne %struct._GimpImage* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call i32 @gimp_image_get_display_count(%struct._GimpImage* %4)
  store i32 %call4, i32* %disp_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %5 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp = icmp ne %struct._GimpImage* %6, null
  %conv = zext i1 %cmp to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 %conv)
  %7 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp6 = icmp ne %struct._GimpImage* %8, null
  %conv7 = zext i1 %cmp6 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 %conv7)
  %9 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool8 = icmp ne %struct._GimpImage* %10, null
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.5
  %11 = load i32, i32* %disp_count, align 4
  %cmp9 = icmp eq i32 %11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.5
  %12 = phi i1 [ false, %if.end.5 ], [ %cmp9, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  %cmp11 = icmp ne i32 %land.ext, 0
  %conv12 = zext i1 %cmp11 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %conv12)
  ret void
}

declare %struct._GimpContext* @action_data_get_context(i8*) #1

declare %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext*) #1

declare i32 @gimp_image_get_display_count(%struct._GimpImage*) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare void @images_raise_views_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @images_new_view_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @images_delete_image_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
