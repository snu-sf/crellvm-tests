; ModuleID = './app/actions/buffers-actions.bc'
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
%struct._GimpImage = type opaque
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

@.str = private unnamed_addr constant [15 x i8] c"buffers-action\00", align 1
@buffers_actions = internal constant [5 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @buffers_paste_cmd_callback to void ()*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @buffers_paste_into_cmd_callback to void ()*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @buffers_paste_as_new_cmd_callback to void ()*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @buffers_delete_cmd_callback to void ()*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"buffers-paste\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"buffers-paste-into\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"buffers-paste-as-new\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"buffers-delete\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"buffers-popup\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"gtk-paste\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Buffers Menu\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"gimp-buffer-dialog\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"_Paste Buffer\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Paste the selected buffer\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"gimp-buffer-paste\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"gimp-paste-into\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Paste Buffer _Into\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"Paste the selected buffer into the selection\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"gimp-buffer-paste-into\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"gimp-paste-as-new\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Paste Buffer as _New\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Paste the selected buffer as a new image\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"gimp-buffer-paste-as-new\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"_Delete Buffer\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"Delete the selected buffer\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"gimp-buffer-delete\00", align 1

; Function Attrs: nounwind uwtable
define void @buffers_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([5 x %struct._GimpActionEntry], [5 x %struct._GimpActionEntry]* @buffers_actions, i32 0, i32 0), i32 5)
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

; Function Attrs: nounwind uwtable
define void @buffers_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %buffer, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpBuffer* @gimp_context_get_buffer(%struct._GimpContext* %2)
  store %struct._GimpBuffer* %call1, %struct._GimpBuffer** %buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %4 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %cmp = icmp ne %struct._GimpBuffer* %4, null
  %conv = zext i1 %cmp to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 %conv)
  %5 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %6 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %cmp2 = icmp ne %struct._GimpBuffer* %6, null
  %conv3 = zext i1 %cmp2 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32 %conv3)
  %7 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %8 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %cmp4 = icmp ne %struct._GimpBuffer* %8, null
  %conv5 = zext i1 %cmp4 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 %conv5)
  %9 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %10 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %cmp6 = icmp ne %struct._GimpBuffer* %10, null
  %conv7 = zext i1 %cmp6 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 %conv7)
  ret void
}

declare %struct._GimpContext* @action_data_get_context(i8*) #1

declare %struct._GimpBuffer* @gimp_context_get_buffer(%struct._GimpContext*) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare void @buffers_paste_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @buffers_paste_into_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @buffers_paste_as_new_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @buffers_delete_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
