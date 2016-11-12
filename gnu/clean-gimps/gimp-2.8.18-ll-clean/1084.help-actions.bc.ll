; ModuleID = './app/actions/help-actions.bc'
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
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque

@.str = private unnamed_addr constant [12 x i8] c"help-action\00", align 1
@help_actions = internal constant [3 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @help_help_cmd_callback to void ()*), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @help_context_help_cmd_callback to void ()*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"help-menu\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"_Help\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"help-help\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"gtk-help\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"F1\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Open the GIMP user manual\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"gimp-help\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"help-context-help\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"_Context Help\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"<shift>F1\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"Show the help for a specific user interface item\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"gimp-help-context\00", align 1

; Function Attrs: nounwind uwtable
define void @help_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([3 x %struct._GimpActionEntry], [3 x %struct._GimpActionEntry]* @help_actions, i32 0, i32 0), i32 3)
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

; Function Attrs: nounwind uwtable
define void @help_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  ret void
}

declare void @help_help_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @help_context_help_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
