; ModuleID = './app/actions/documents-actions.bc'
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

@.str = private unnamed_addr constant [17 x i8] c"documents-action\00", align 1
@documents_actions = internal constant [10 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @documents_open_cmd_callback to void ()*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @documents_raise_or_open_cmd_callback to void ()*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @documents_file_open_dialog_cmd_callback to void ()*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @documents_copy_location_cmd_callback to void ()*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @documents_remove_cmd_callback to void ()*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @documents_clear_cmd_callback to void ()*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @documents_recreate_preview_cmd_callback to void ()*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @documents_reload_previews_cmd_callback to void ()*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @documents_remove_dangling_cmd_callback to void ()*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [15 x i8] c"documents-open\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"documents-raise-or-open\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"documents-file-open-dialog\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"documents-copy-location\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"documents-remove\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"documents-clear\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"documents-recreate-preview\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"documents-reload-previews\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"documents-remove-dangling\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"documents-popup\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"document-open-recent\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Documents Menu\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"gimp-document-dialog\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"_Open Image\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Open the selected entry\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"gimp-document-open\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"_Raise or Open Image\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Raise window if already open\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"File Open _Dialog\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Open image dialog\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"gtk-copy\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"Copy Image _Location\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"Copy image location to clipboard\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"gimp-document-copy-location\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"gtk-remove\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"Remove _Entry\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"Remove the selected entry\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"gimp-document-remove\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"gtk-clear\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"_Clear History\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"Clear the entire document history\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"gimp-document-clear\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"gtk-refresh\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"Recreate _Preview\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"Recreate preview\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"gimp-document-refresh\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"Reload _all Previews\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"Reload all previews\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"Remove Dangling E_ntries\00", align 1
@.str.42 = private unnamed_addr constant [65 x i8] c"Remove entries for which the corresponding file is not available\00", align 1

; Function Attrs: nounwind uwtable
define void @documents_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([10 x %struct._GimpActionEntry], [10 x %struct._GimpActionEntry]* @documents_actions, i32 0, i32 0), i32 10)
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

; Function Attrs: nounwind uwtable
define void @documents_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %imagefile = alloca %struct._GimpImagefile*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GimpImagefile* null, %struct._GimpImagefile** %imagefile, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpImagefile* @gimp_context_get_imagefile(%struct._GimpContext* %2)
  store %struct._GimpImagefile* %call1, %struct._GimpImagefile** %imagefile, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %4 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %cmp = icmp ne %struct._GimpImagefile* %4, null
  %conv = zext i1 %cmp to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 %conv)
  %5 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %6 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %cmp2 = icmp ne %struct._GimpImagefile* %6, null
  %conv3 = zext i1 %cmp2 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i32 %conv3)
  %7 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i32 1)
  %8 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %9 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %cmp4 = icmp ne %struct._GimpImagefile* %9, null
  %conv5 = zext i1 %cmp4 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i32 %conv5)
  %10 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %11 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %cmp6 = icmp ne %struct._GimpImagefile* %11, null
  %conv7 = zext i1 %cmp6 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 %conv7)
  %12 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 1)
  %13 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %14 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %cmp8 = icmp ne %struct._GimpImagefile* %14, null
  %conv9 = zext i1 %cmp8 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i32 %conv9)
  %15 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %16 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %cmp10 = icmp ne %struct._GimpImagefile* %16, null
  %conv11 = zext i1 %cmp10 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i32 %conv11)
  %17 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %18 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %cmp12 = icmp ne %struct._GimpImagefile* %18, null
  %conv13 = zext i1 %cmp12 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i32 %conv13)
  ret void
}

declare %struct._GimpContext* @action_data_get_context(i8*) #1

declare %struct._GimpImagefile* @gimp_context_get_imagefile(%struct._GimpContext*) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare void @documents_open_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @documents_raise_or_open_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @documents_file_open_dialog_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @documents_copy_location_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @documents_remove_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @documents_clear_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @documents_recreate_preview_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @documents_reload_previews_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @documents_remove_dangling_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
