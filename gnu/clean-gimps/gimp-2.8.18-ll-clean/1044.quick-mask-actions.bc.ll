; ModuleID = './app/actions/quick-mask-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i8* }
%struct._GimpToggleActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i32, i8* }
%struct._GimpRadioActionEntry = type { i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionGroupPrivate = type opaque
%struct._Gimp = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [18 x i8] c"quick-mask-action\00", align 1
@quick_mask_actions = internal constant [2 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @quick_mask_configure_cmd_callback to void ()*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0) }], align 16
@quick_mask_toggle_actions = internal constant [1 x %struct._GimpToggleActionEntry] [%struct._GimpToggleActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @quick_mask_toggle_cmd_callback to void ()*), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0) }], align 16
@quick_mask_invert_actions = internal constant [2 x %struct._GimpRadioActionEntry] [%struct._GimpRadioActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [18 x i8] c"quick-mask-toggle\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"quick-mask-invert-on\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"quick-mask-invert-off\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"quick-mask-configure\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"quick-mask-popup\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Quick Mask Menu\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"gimp-quick-mask\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"_Configure Color and Opacity...\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"gimp-quick-mask-edit\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"gimp-quick-mask-on\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Toggle _Quick Mask\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"<shift>Q\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Toggle Quick Mask on/off\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"gimp-quick-mask-toggle\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Mask _Selected Areas\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"gimp-quick-mask-invert\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Mask _Unselected Areas\00", align 1

; Function Attrs: nounwind uwtable
define void @quick_mask_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([2 x %struct._GimpActionEntry], [2 x %struct._GimpActionEntry]* @quick_mask_actions, i32 0, i32 0), i32 2)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), %struct._GimpToggleActionEntry* getelementptr inbounds ([1 x %struct._GimpToggleActionEntry], [1 x %struct._GimpToggleActionEntry]* @quick_mask_toggle_actions, i32 0, i32 0), i32 1)
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call = call %struct._GSList* @gimp_action_group_add_radio_actions(%struct._GimpActionGroup* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), %struct._GimpRadioActionEntry* getelementptr inbounds ([2 x %struct._GimpRadioActionEntry], [2 x %struct._GimpRadioActionEntry]* @quick_mask_invert_actions, i32 0, i32 0), i32 2, %struct._GSList* null, i32 0, void ()* bitcast (void (%struct._GtkAction*, %struct._GtkAction*, i8*)* @quick_mask_invert_cmd_callback to void ()*))
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup*, i8*, %struct._GimpToggleActionEntry*, i32) #1

declare %struct._GSList* @gimp_action_group_add_radio_actions(%struct._GimpActionGroup*, i8*, %struct._GimpRadioActionEntry*, i32, %struct._GSList*, i32, void ()*) #1

declare void @quick_mask_invert_cmd_callback(%struct._GtkAction*, %struct._GtkAction*, i8*) #1

; Function Attrs: nounwind uwtable
define void @quick_mask_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %quick_mask_state = alloca i32, align 4
  %quick_mask_inverted = alloca i32, align 4
  %quick_mask_color = alloca %struct._GimpRGB, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  store i32 0, i32* %quick_mask_state, align 4
  store i32 0, i32* %quick_mask_inverted, align 4
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call i32 @gimp_image_get_quick_mask_state(%struct._GimpImage* %2)
  store i32 %call1, i32* %quick_mask_state, align 4
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call i32 @gimp_image_get_quick_mask_inverted(%struct._GimpImage* %3)
  store i32 %call2, i32* %quick_mask_inverted, align 4
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_quick_mask_color(%struct._GimpImage* %4, %struct._GimpRGB* %quick_mask_color)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp = icmp ne %struct._GimpImage* %6, null
  %conv = zext i1 %cmp to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 %conv)
  %7 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %8 = load i32, i32* %quick_mask_state, align 4
  %cmp3 = icmp ne i32 %8, 0
  %conv4 = zext i1 %cmp3 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 %conv4)
  %9 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp5 = icmp ne %struct._GimpImage* %10, null
  %conv6 = zext i1 %cmp5 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 %conv6)
  %11 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp7 = icmp ne %struct._GimpImage* %12, null
  %conv8 = zext i1 %cmp7 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %conv8)
  %13 = load i32, i32* %quick_mask_inverted, align 4
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %14 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 1)
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %15 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 1)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %16 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp12 = icmp ne %struct._GimpImage* %17, null
  %conv13 = zext i1 %cmp12 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 %conv13)
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool14 = icmp ne %struct._GimpImage* %18, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  %19 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), %struct._GimpRGB* %quick_mask_color, i32 0)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.11
  ret void
}

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare i32 @gimp_image_get_quick_mask_state(%struct._GimpImage*) #1

declare i32 @gimp_image_get_quick_mask_inverted(%struct._GimpImage*) #1

declare void @gimp_image_get_quick_mask_color(%struct._GimpImage*, %struct._GimpRGB*) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare void @gimp_action_group_set_action_active(%struct._GimpActionGroup*, i8*, i32) #1

declare void @gimp_action_group_set_action_color(%struct._GimpActionGroup*, i8*, %struct._GimpRGB*, i32) #1

declare void @quick_mask_configure_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @quick_mask_toggle_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
