; ModuleID = './app/actions/brush-editor-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i8* }
%struct._GimpToggleActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i32, i8* }
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
%struct._GimpImage = type opaque
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
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpDataEditor = type { %struct._GimpEditor, %struct._GimpDataFactory*, %struct._GimpContext*, i32, %struct._GimpData*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
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
%struct._GimpEditorPrivate = type opaque
%struct._GimpData = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque

@.str = private unnamed_addr constant [20 x i8] c"brush-editor-action\00", align 1
@brush_editor_actions = internal constant [1 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0) }], align 16
@brush_editor_toggle_actions = internal constant [1 x %struct._GimpToggleActionEntry] [%struct._GimpToggleActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @data_editor_edit_active_cmd_callback to void ()*), i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [25 x i8] c"brush-editor-edit-active\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"brush-editor-popup\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"gimp-tool-paintbrush\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Brush Editor Menu\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"gimp-brush-editor-dialog\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"gimp-linked\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Edit Active Brush\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"gimp-brush-editor-edit-active\00", align 1

; Function Attrs: nounwind uwtable
define void @brush_editor_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([1 x %struct._GimpActionEntry], [1 x %struct._GimpActionEntry]* @brush_editor_actions, i32 0, i32 0), i32 1)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), %struct._GimpToggleActionEntry* getelementptr inbounds ([1 x %struct._GimpToggleActionEntry], [1 x %struct._GimpToggleActionEntry]* @brush_editor_toggle_actions, i32 0, i32 0), i32 1)
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup*, i8*, %struct._GimpToggleActionEntry*, i32) #1

; Function Attrs: nounwind uwtable
define void @brush_editor_actions_update(%struct._GimpActionGroup* %group, i8* %user_data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %user_data.addr = alloca i8*, align 8
  %data_editor = alloca %struct._GimpDataEditor*, align 8
  %edit_active = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_editor_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataEditor*
  store %struct._GimpDataEditor* %2, %struct._GimpDataEditor** %data_editor, align 8
  store i32 0, i32* %edit_active, align 4
  %3 = load %struct._GimpDataEditor*, %struct._GimpDataEditor** %data_editor, align 8
  %call2 = call i32 @gimp_data_editor_get_edit_active(%struct._GimpDataEditor* %3)
  store i32 %call2, i32* %edit_active, align 4
  %4 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %5 = load i32, i32* %edit_active, align 4
  %cmp = icmp ne i32 %5, 0
  %conv = zext i1 %cmp to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 %conv)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_editor_get_type() #2

declare i32 @gimp_data_editor_get_edit_active(%struct._GimpDataEditor*) #1

declare void @gimp_action_group_set_action_active(%struct._GimpActionGroup*, i8*, i32) #1

declare void @data_editor_edit_active_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
