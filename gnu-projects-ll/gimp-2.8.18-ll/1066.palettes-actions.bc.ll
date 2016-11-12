; ModuleID = './app/actions/palettes-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i8* }
%struct._GimpStringActionEntry = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
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
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpDataClass = type { %struct._GimpViewableClass, void (%struct._GimpData*)*, i32 (%struct._GimpData*, %struct._GError**)*, i8* (%struct._GimpData*)*, %struct._GimpData* (%struct._GimpData*)* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._TempBuf = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GError = type { i32, i32, i8* }

@.str = private unnamed_addr constant [16 x i8] c"palettes-action\00", align 1
@palettes_actions = internal constant [8 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @data_new_cmd_callback to void ()*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @palettes_import_cmd_callback to void ()*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @data_duplicate_cmd_callback to void ()*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @palettes_merge_cmd_callback to void ()*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @data_copy_location_cmd_callback to void ()*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @data_delete_cmd_callback to void ()*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @data_refresh_cmd_callback to void ()*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0) }], align 16
@palettes_edit_actions = internal constant [1 x %struct._GimpStringActionEntry] [%struct._GimpStringActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"palettes-edit\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"palettes-duplicate\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"palettes-merge\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"palettes-copy-location\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"palettes-delete\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"palettes-popup\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"gtk-select-color\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Palettes Menu\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"gimp-palette-dialog\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"palettes-new\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"gtk-new\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"_New Palette\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Create a new palette\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"gimp-palette-new\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"palettes-import\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"gtk-convert\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"_Import Palette...\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"Import palette\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"gimp-palette-import\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"gimp-duplicate\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"D_uplicate Palette\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Duplicate this palette\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"gimp-palette-duplicate\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"_Merge Palettes...\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"Merge palettes\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"gimp-palette-merge\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"gtk-copy\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"Copy Palette _Location\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"Copy palette file location to clipboard\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"gimp-palette-copy-location\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"_Delete Palette\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"Delete this palette\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"gimp-palette-delete\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"palettes-refresh\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"gtk-refresh\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"_Refresh Palettes\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"Refresh palettes\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"gimp-palette-refresh\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"gtk-edit\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"_Edit Palette...\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"Edit palette\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"gimp-palette-editor\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"gimp-palette-edit\00", align 1

; Function Attrs: nounwind uwtable
define void @palettes_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([8 x %struct._GimpActionEntry], [8 x %struct._GimpActionEntry]* @palettes_actions, i32 0, i32 0), i32 8)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_string_actions(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct._GimpStringActionEntry* getelementptr inbounds ([1 x %struct._GimpStringActionEntry], [1 x %struct._GimpStringActionEntry]* @palettes_edit_actions, i32 0, i32 0), i32 1, void ()* bitcast (void (%struct._GtkAction*, i8*, i8*)* @data_edit_cmd_callback to void ()*))
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_string_actions(%struct._GimpActionGroup*, i8*, %struct._GimpStringActionEntry*, i32, void ()*) #1

declare void @data_edit_cmd_callback(%struct._GtkAction*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @palettes_actions_update(%struct._GimpActionGroup* %group, i8* %user_data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %user_data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %data = alloca %struct._GimpData*, align 8
  %filename = alloca i8*, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %call = call %struct._GimpContext* @action_data_get_context(i8* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  store %struct._GimpPalette* null, %struct._GimpPalette** %palette, align 8
  store %struct._GimpData* null, %struct._GimpData** %data, align 8
  store i8* null, i8** %filename, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %1, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call1 = call %struct._GimpPalette* @gimp_context_get_palette(%struct._GimpContext* %2)
  store %struct._GimpPalette* %call1, %struct._GimpPalette** %palette, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %call2 = call i32 @action_data_sel_count(i8* %3)
  %cmp = icmp sgt i32 %call2, 1
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store %struct._GimpPalette* null, %struct._GimpPalette** %palette, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %4 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool4 = icmp ne %struct._GimpPalette* %4, null
  br i1 %tobool4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %5 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %6 = bitcast %struct._GimpPalette* %5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_data_get_type() #3
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call6)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpData*
  store %struct._GimpData* %7, %struct._GimpData** %data, align 8
  %8 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %call8 = call i8* @gimp_data_get_filename(%struct._GimpData* %8)
  store i8* %call8, i8** %filename, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %9 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %10 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %cmp11 = icmp ne %struct._GimpPalette* %10, null
  %conv = zext i1 %cmp11 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 %conv)
  %11 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %12 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool12 = icmp ne %struct._GimpPalette* %12, null
  br i1 %tobool12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.10
  %13 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpDataClass*
  %duplicate = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %16, i32 0, i32 4
  %17 = load %struct._GimpData* (%struct._GimpData*)*, %struct._GimpData* (%struct._GimpData*)** %duplicate, align 8
  %tobool13 = icmp ne %struct._GimpData* (%struct._GimpData*)* %17, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.10
  %18 = phi i1 [ false, %if.end.10 ], [ %tobool13, %land.rhs ]
  %land.ext = zext i1 %18 to i32
  %cmp14 = icmp ne i32 %land.ext, 0
  %conv15 = zext i1 %cmp14 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32 %conv15)
  %19 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 0)
  %20 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %21 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool16 = icmp ne %struct._GimpPalette* %21, null
  br i1 %tobool16, label %land.rhs.17, label %land.end.19

land.rhs.17:                                      ; preds = %land.end
  %22 = load i8*, i8** %filename, align 8
  %tobool18 = icmp ne i8* %22, null
  br label %land.end.19

land.end.19:                                      ; preds = %land.rhs.17, %land.end
  %23 = phi i1 [ false, %land.end ], [ %tobool18, %land.rhs.17 ]
  %land.ext20 = zext i1 %23 to i32
  %cmp21 = icmp ne i32 %land.ext20, 0
  %conv22 = zext i1 %cmp21 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i32 %conv22)
  %24 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %25 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool23 = icmp ne %struct._GimpPalette* %25, null
  br i1 %tobool23, label %land.rhs.24, label %land.end.27

land.rhs.24:                                      ; preds = %land.end.19
  %26 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %call25 = call i32 @gimp_data_is_deletable(%struct._GimpData* %26)
  %tobool26 = icmp ne i32 %call25, 0
  br label %land.end.27

land.end.27:                                      ; preds = %land.rhs.24, %land.end.19
  %27 = phi i1 [ false, %land.end.19 ], [ %tobool26, %land.rhs.24 ]
  %land.ext28 = zext i1 %27 to i32
  %cmp29 = icmp ne i32 %land.ext28, 0
  %conv30 = zext i1 %cmp29 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 %conv30)
  ret void
}

declare %struct._GimpContext* @action_data_get_context(i8*) #1

declare %struct._GimpPalette* @gimp_context_get_palette(%struct._GimpContext*) #1

declare i32 @action_data_sel_count(i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare i8* @gimp_data_get_filename(%struct._GimpData*) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare i32 @gimp_data_is_deletable(%struct._GimpData*) #1

declare void @data_new_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @palettes_import_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @data_duplicate_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @palettes_merge_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @data_copy_location_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @data_delete_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @data_refresh_cmd_callback(%struct._GtkAction*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
