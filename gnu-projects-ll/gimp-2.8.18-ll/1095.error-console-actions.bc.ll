; ModuleID = './app/actions/error-console-actions.bc'
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
%struct._GimpErrorConsole = type { %struct._GimpEditor, %struct._Gimp*, %struct._GtkTextBuffer*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32 }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpEditorPrivate = type opaque
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [21 x i8] c"error-console-action\00", align 1
@error_console_actions = internal constant [3 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @error_console_clear_cmd_callback to void ()*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @error_console_select_all_cmd_callback to void ()*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0) }], align 16
@error_console_save_actions = internal constant [2 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [20 x i8] c"error-console-clear\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"error-console-select-all\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"error-console-save-all\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"error-console-save-selection\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"error-console-popup\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"gimp-warning\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Error Console Menu\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"gimp-errors-dialog\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"gtk-clear\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"_Clear\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Clear error console\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"gimp-errors-clear\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Select _All\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Select all error messages\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"gimp-errors-select-all\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"gtk-save-as\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"_Save Error Log to File...\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"Write all error messages to a file\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"gimp-errors-save\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"Save S_election to File...\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"Write the selected error messages to a file\00", align 1

; Function Attrs: nounwind uwtable
define void @error_console_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([3 x %struct._GimpActionEntry], [3 x %struct._GimpActionEntry]* @error_console_actions, i32 0, i32 0), i32 3)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([2 x %struct._GimpEnumActionEntry], [2 x %struct._GimpEnumActionEntry]* @error_console_save_actions, i32 0, i32 0), i32 2, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @error_console_save_cmd_callback to void ()*))
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup*, i8*, %struct._GimpEnumActionEntry*, i32, void ()*) #1

declare void @error_console_save_cmd_callback(%struct._GtkAction*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @error_console_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %console = alloca %struct._GimpErrorConsole*, align 8
  %selection = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_error_console_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpErrorConsole*
  store %struct._GimpErrorConsole* %2, %struct._GimpErrorConsole** %console, align 8
  %3 = load %struct._GimpErrorConsole*, %struct._GimpErrorConsole** %console, align 8
  %text_buffer = getelementptr inbounds %struct._GimpErrorConsole, %struct._GimpErrorConsole* %3, i32 0, i32 2
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer, align 8
  %call2 = call i32 @gtk_text_buffer_get_selection_bounds(%struct._GtkTextBuffer* %4, %struct._GtkTextIter* null, %struct._GtkTextIter* null)
  store i32 %call2, i32* %selection, align 4
  %5 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 1)
  %6 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i32 1)
  %7 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 1)
  %8 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %9 = load i32, i32* %selection, align 4
  %cmp = icmp ne i32 %9, 0
  %conv = zext i1 %cmp to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i32 %conv)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_error_console_get_type() #2

declare i32 @gtk_text_buffer_get_selection_bounds(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare void @error_console_clear_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @error_console_select_all_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
