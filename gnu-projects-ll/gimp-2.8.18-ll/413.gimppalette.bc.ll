; ModuleID = './app/core/gimppalette.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpPaletteClass = type { %struct._GimpDataClass }
%struct._GimpDataClass = type { %struct._GimpViewableClass, void (%struct._GimpData*)*, i32 (%struct._GimpData*, %struct._GError**)*, i8* (%struct._GimpData*)*, %struct._GimpData* (%struct._GimpData*)* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpContext = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpPalette = type { %struct._GimpData, %struct._GList*, i32, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpTaggedInterface = type { %struct._GTypeInterface, void (%struct._GimpTagged*, %struct._GimpTag*)*, void (%struct._GimpTagged*, %struct._GimpTag*)*, i32 (%struct._GimpTagged*, %struct._GimpTag*)*, i32 (%struct._GimpTagged*, %struct._GimpTag*)*, %struct._GList* (%struct._GimpTagged*)*, i8* (%struct._GimpTagged*)*, i8* (%struct._GimpTagged*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpTagged = type opaque
%struct._GimpTag = type opaque
%struct._GimpPaletteEntry = type { %struct._GimpRGB, i8*, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GChecksum = type opaque

@gimp_palette_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"GimpPalette\00", align 1
@gimp_palette_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpTaggedInterface*)* @gimp_palette_tagged_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_palette_new = private unnamed_addr constant [17 x i8] c"gimp_palette_new\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"*name != '\5C0'\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@gimp_palette_get_standard.standard_palette = internal global %struct._GimpData* null, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"Standard\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"gimp-palette-standard\00", align 1
@__func__.gimp_palette_get_colors = private unnamed_addr constant [24 x i8] c"gimp_palette_get_colors\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"GIMP_IS_PALETTE (palette)\00", align 1
@__func__.gimp_palette_get_n_colors = private unnamed_addr constant [26 x i8] c"gimp_palette_get_n_colors\00", align 1
@__func__.gimp_palette_add_entry = private unnamed_addr constant [23 x i8] c"gimp_palette_add_entry\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Untitled\00", align 1
@__func__.gimp_palette_delete_entry = private unnamed_addr constant [26 x i8] c"gimp_palette_delete_entry\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"entry != NULL\00", align 1
@__func__.gimp_palette_set_entry = private unnamed_addr constant [23 x i8] c"gimp_palette_set_entry\00", align 1
@__func__.gimp_palette_set_entry_color = private unnamed_addr constant [29 x i8] c"gimp_palette_set_entry_color\00", align 1
@__func__.gimp_palette_set_entry_name = private unnamed_addr constant [28 x i8] c"gimp_palette_set_entry_name\00", align 1
@__func__.gimp_palette_get_entry = private unnamed_addr constant [23 x i8] c"gimp_palette_get_entry\00", align 1
@__func__.gimp_palette_set_columns = private unnamed_addr constant [25 x i8] c"gimp_palette_set_columns\00", align 1
@__func__.gimp_palette_get_columns = private unnamed_addr constant [25 x i8] c"gimp_palette_get_columns\00", align 1
@__func__.gimp_palette_find_entry = private unnamed_addr constant [24 x i8] c"gimp_palette_find_entry\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"old != NULL\00", align 1
@gimp_palette_parent_class = internal global i8* null, align 8
@GimpPalette_private_offset = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"gtk-select-color\00", align 1
@gimp_palette_get_new_preview.white = private unnamed_addr constant [3 x i8] c"\FF\FF\FF", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%s (%d)\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c".gpl\00", align 1
@__func__.gimp_palette_entry_free = private unnamed_addr constant [24 x i8] c"gimp_palette_entry_free\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_palette_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_palette_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_palette_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i64 @gimp_data_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 312, void (i8*, i8*)* bitcast (void (i8*)* @gimp_palette_class_intern_init to void (i8*, i8*)*), i32 48, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPalette*)* @gimp_palette_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_tagged_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_palette_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_palette_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_palette_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_palette_parent_class, align 8
  %1 = load i32, i32* @GimpPalette_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPalette_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPaletteClass*
  call void @gimp_palette_class_init(%struct._GimpPaletteClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_init(%struct._GimpPalette* %palette) #3 {
entry:
  %palette.addr = alloca %struct._GimpPalette*, align 8
  store %struct._GimpPalette* %palette, %struct._GimpPalette** %palette.addr, align 8
  %0 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %0, i32 0, i32 1
  store %struct._GList* null, %struct._GList** %colors, align 8
  %1 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %n_colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %1, i32 0, i32 2
  store i32 0, i32* %n_colors, align 4
  %2 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %n_columns = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %2, i32 0, i32 3
  store i32 0, i32* %n_columns, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_tagged_iface_init(%struct._GimpTaggedInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpTaggedInterface*, align 8
  store %struct._GimpTaggedInterface* %iface, %struct._GimpTaggedInterface** %iface.addr, align 8
  %0 = load %struct._GimpTaggedInterface*, %struct._GimpTaggedInterface** %iface.addr, align 8
  %get_checksum = getelementptr inbounds %struct._GimpTaggedInterface, %struct._GimpTaggedInterface* %0, i32 0, i32 7
  store i8* (%struct._GimpTagged*)* @gimp_palette_get_checksum, i8* (%struct._GimpTagged*)** %get_checksum, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tagged_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpData* @gimp_palette_new(%struct._GimpContext* %context, i8* %name) #3 {
entry:
  %retval = alloca %struct._GimpData*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %name.addr = alloca i8*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_palette_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.1
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_palette_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %call = call i64 @gimp_palette_get_type() #7
  %3 = load i8*, i8** %name.addr, align 8
  %call8 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %3, i8* null)
  %4 = bitcast i8* %call8 to %struct._GimpData*
  store %struct._GimpData* %4, %struct._GimpData** %retval
  br label %return

return:                                           ; preds = %do.end.7, %if.else.5, %if.else
  %5 = load %struct._GimpData*, %struct._GimpData** %retval
  ret %struct._GimpData* %5
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GimpData* @gimp_palette_get_standard(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpData*, %struct._GimpData** @gimp_palette_get_standard.standard_palette, align 8
  %tobool = icmp ne %struct._GimpData* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpData* @gimp_palette_new(%struct._GimpContext* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpData* %call, %struct._GimpData** @gimp_palette_get_standard.standard_palette, align 8
  %2 = load %struct._GimpData*, %struct._GimpData** @gimp_palette_get_standard.standard_palette, align 8
  call void @gimp_data_clean(%struct._GimpData* %2)
  %3 = load %struct._GimpData*, %struct._GimpData** @gimp_palette_get_standard.standard_palette, align 8
  call void @gimp_data_make_internal(%struct._GimpData* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  %4 = load %struct._GimpData*, %struct._GimpData** @gimp_palette_get_standard.standard_palette, align 8
  %5 = bitcast %struct._GimpData* %4 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  call void @g_object_add_weak_pointer(%struct._GObject* %6, i8** bitcast (%struct._GimpData** @gimp_palette_get_standard.standard_palette to i8**))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpData*, %struct._GimpData** @gimp_palette_get_standard.standard_palette, align 8
  ret %struct._GimpData* %7
}

declare void @gimp_data_clean(%struct._GimpData*) #1

declare void @gimp_data_make_internal(%struct._GimpData*, i8*) #1

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_palette_get_colors(%struct._GimpPalette* %palette) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %palette.addr = alloca %struct._GimpPalette*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPalette* %palette, %struct._GimpPalette** %palette.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %1 = bitcast %struct._GimpPalette* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_palette_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_palette_get_colors, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %colors, align 8
  store %struct._GList* %14, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %15
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %palette) #3 {
entry:
  %retval = alloca i32, align 4
  %palette.addr = alloca %struct._GimpPalette*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPalette* %palette, %struct._GimpPalette** %palette.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %1 = bitcast %struct._GimpPalette* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_palette_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_palette_get_n_colors, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %n_colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %13, i32 0, i32 2
  %14 = load i32, i32* %n_colors, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette* %palette, i32 %position, i8* %name, %struct._GimpRGB* %color) #3 {
entry:
  %retval = alloca %struct._GimpPaletteEntry*, align 8
  %palette.addr = alloca %struct._GimpPalette*, align 8
  %position.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %entry1 = alloca %struct._GimpPaletteEntry*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %entry2 = alloca %struct._GimpPaletteEntry*, align 8
  store %struct._GimpPalette* %palette, %struct._GimpPalette** %palette.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %1 = bitcast %struct._GimpPalette* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_palette_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_palette_add_entry, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpPaletteEntry* null, %struct._GimpPaletteEntry** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp13 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_palette_add_entry, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpPaletteEntry* null, %struct._GimpPaletteEntry** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %call18 = call noalias i8* @g_slice_alloc0(i64 48)
  %14 = bitcast i8* %call18 to %struct._GimpPaletteEntry*
  store %struct._GimpPaletteEntry* %14, %struct._GimpPaletteEntry** %entry1, align 8
  %15 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %color19 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %15, i32 0, i32 0
  %16 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %17 = bitcast %struct._GimpRGB* %color19 to i8*
  %18 = bitcast %struct._GimpRGB* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 32, i32 8, i1 false)
  %19 = load i8*, i8** %name.addr, align 8
  %tobool20 = icmp ne i8* %19, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.17
  %20 = load i8*, i8** %name.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end.17
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %20, %cond.true ], [ %call21, %cond.false ]
  %call22 = call noalias i8* @g_strdup(i8* %cond)
  %21 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %name23 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %21, i32 0, i32 1
  store i8* %call22, i8** %name23, align 8
  %22 = load i32, i32* %position.addr, align 4
  %cmp24 = icmp slt i32 %22, 0
  br i1 %cmp24, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %23 = load i32, i32* %position.addr, align 4
  %24 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %n_colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %24, i32 0, i32 2
  %25 = load i32, i32* %n_colors, align 4
  %cmp25 = icmp sge i32 %23, %25
  br i1 %cmp25, label %if.then.26, label %if.else.31

if.then.26:                                       ; preds = %lor.lhs.false, %cond.end
  %26 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %n_colors27 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %26, i32 0, i32 2
  %27 = load i32, i32* %n_colors27, align 4
  %28 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %position28 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %28, i32 0, i32 2
  store i32 %27, i32* %position28, align 4
  %29 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %29, i32 0, i32 1
  %30 = load %struct._GList*, %struct._GList** %colors, align 8
  %31 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %32 = bitcast %struct._GimpPaletteEntry* %31 to i8*
  %call29 = call %struct._GList* @g_list_append(%struct._GList* %30, i8* %32)
  %33 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %colors30 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %33, i32 0, i32 1
  store %struct._GList* %call29, %struct._GList** %colors30, align 8
  br label %if.end.48

if.else.31:                                       ; preds = %lor.lhs.false
  %34 = load i32, i32* %position.addr, align 4
  %35 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %position33 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %35, i32 0, i32 2
  store i32 %34, i32* %position33, align 4
  %36 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %colors34 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %36, i32 0, i32 1
  %37 = load %struct._GList*, %struct._GList** %colors34, align 8
  %38 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %39 = bitcast %struct._GimpPaletteEntry* %38 to i8*
  %40 = load i32, i32* %position.addr, align 4
  %call35 = call %struct._GList* @g_list_insert(%struct._GList* %37, i8* %39, i32 %40)
  %41 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %colors36 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %41, i32 0, i32 1
  store %struct._GList* %call35, %struct._GList** %colors36, align 8
  %42 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %colors37 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %42, i32 0, i32 1
  %43 = load %struct._GList*, %struct._GList** %colors37, align 8
  %44 = load i32, i32* %position.addr, align 4
  %add = add nsw i32 %44, 1
  %call38 = call %struct._GList* @g_list_nth(%struct._GList* %43, i32 %add)
  store %struct._GList* %call38, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.46, %if.else.31
  %45 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool39 = icmp ne %struct._GList* %45, null
  br i1 %tobool39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %46, i32 0, i32 0
  %47 = load i8*, i8** %data, align 8
  %48 = bitcast i8* %47 to %struct._GimpPaletteEntry*
  store %struct._GimpPaletteEntry* %48, %struct._GimpPaletteEntry** %entry2, align 8
  %49 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry2, align 8
  %position41 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %49, i32 0, i32 2
  %50 = load i32, i32* %position41, align 4
  %add42 = add nsw i32 %50, 1
  store i32 %add42, i32* %position41, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool43 = icmp ne %struct._GList* %51, null
  br i1 %tobool43, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %for.inc
  %52 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %52, i32 0, i32 1
  %53 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.46

cond.false.45:                                    ; preds = %for.inc
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.44
  %cond47 = phi %struct._GList* [ %53, %cond.true.44 ], [ null, %cond.false.45 ]
  store %struct._GList* %cond47, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.48

if.end.48:                                        ; preds = %for.end, %if.then.26
  %54 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %n_colors49 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %54, i32 0, i32 2
  %55 = load i32, i32* %n_colors49, align 4
  %add50 = add nsw i32 %55, 1
  store i32 %add50, i32* %n_colors49, align 4
  %56 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %57 = bitcast %struct._GimpPalette* %56 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_data_get_type() #7
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call51)
  %58 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %58)
  %59 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  store %struct._GimpPaletteEntry* %59, %struct._GimpPaletteEntry** %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.else.15, %if.else.10
  %60 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %retval
  ret %struct._GimpPaletteEntry* %60
}

declare noalias i8* @g_slice_alloc0(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_insert(%struct._GList*, i8*, i32) #1

declare %struct._GList* @g_list_nth(%struct._GList*, i32) #1

declare void @gimp_data_dirty(%struct._GimpData*) #1

; Function Attrs: nounwind uwtable
define void @gimp_palette_delete_entry(%struct._GimpPalette* %palette, %struct._GimpPaletteEntry* %entry1) #3 {
entry:
  %palette.addr = alloca %struct._GimpPalette*, align 8
  %entry.addr = alloca %struct._GimpPaletteEntry*, align 8
  %list = alloca %struct._GList*, align 8
  %pos = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPalette* %palette, %struct._GimpPalette** %palette.addr, align 8
  store %struct._GimpPaletteEntry* %entry1, %struct._GimpPaletteEntry** %entry.addr, align 8
  store i32 0, i32* %pos, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %1 = bitcast %struct._GimpPalette* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_palette_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_palette_delete_entry, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.31

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %cmp13 = icmp ne %struct._GimpPaletteEntry* %13, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_palette_delete_entry, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.31

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %colors, align 8
  %16 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %17 = bitcast %struct._GimpPaletteEntry* %16 to i8*
  %call18 = call %struct._GList* @g_list_find(%struct._GList* %15, i8* %17)
  %tobool19 = icmp ne %struct._GList* %call18, null
  br i1 %tobool19, label %if.then.20, label %if.end.31

if.then.20:                                       ; preds = %do.end.17
  %18 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %position = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %18, i32 0, i32 2
  %19 = load i32, i32* %position, align 4
  store i32 %19, i32* %pos, align 4
  %20 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  call void @gimp_palette_entry_free(%struct._GimpPaletteEntry* %20)
  %21 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %colors21 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %21, i32 0, i32 1
  %22 = load %struct._GList*, %struct._GList** %colors21, align 8
  %23 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %24 = bitcast %struct._GimpPaletteEntry* %23 to i8*
  %call22 = call %struct._GList* @g_list_remove(%struct._GList* %22, i8* %24)
  %25 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %colors23 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %25, i32 0, i32 1
  store %struct._GList* %call22, %struct._GList** %colors23, align 8
  %26 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %n_colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %26, i32 0, i32 2
  %27 = load i32, i32* %n_colors, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %n_colors, align 4
  %28 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %colors24 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %28, i32 0, i32 1
  %29 = load %struct._GList*, %struct._GList** %colors24, align 8
  %30 = load i32, i32* %pos, align 4
  %call25 = call %struct._GList* @g_list_nth(%struct._GList* %29, i32 %30)
  store %struct._GList* %call25, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.20
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool26 = icmp ne %struct._GList* %31, null
  br i1 %tobool26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 0
  %33 = load i8*, i8** %data, align 8
  %34 = bitcast i8* %33 to %struct._GimpPaletteEntry*
  store %struct._GimpPaletteEntry* %34, %struct._GimpPaletteEntry** %entry.addr, align 8
  %35 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %pos, align 4
  %36 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %position27 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %36, i32 0, i32 2
  store i32 %35, i32* %position27, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool28 = icmp ne %struct._GList* %37, null
  br i1 %tobool28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %38, i32 0, i32 1
  %39 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %39, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %41 = bitcast %struct._GimpPalette* %40 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_data_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call29)
  %42 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %42)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.10, %if.else.15, %for.end, %do.end.17
  ret void
}

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_entry_free(%struct._GimpPaletteEntry* %entry1) #3 {
entry:
  %entry.addr = alloca %struct._GimpPaletteEntry*, align 8
  store %struct._GimpPaletteEntry* %entry1, %struct._GimpPaletteEntry** %entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %cmp = icmp ne %struct._GimpPaletteEntry* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_palette_entry_free, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0))
  br label %do.end.3

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %name = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %1, i32 0, i32 1
  %2 = load i8*, i8** %name, align 8
  call void @g_free(i8* %2)
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %3 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %4 = bitcast %struct._GimpPaletteEntry* %3 to i8*
  call void @g_slice_free1(i64 48, i8* %4)
  br label %do.end.3

do.end.3:                                         ; preds = %if.else, %do.body.2
  ret void
}

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_set_entry(%struct._GimpPalette* %palette, i32 %position, i8* %name, %struct._GimpRGB* %color) #3 {
entry:
  %retval = alloca i32, align 4
  %palette.addr = alloca %struct._GimpPalette*, align 8
  %position.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %entry1 = alloca %struct._GimpPaletteEntry*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPalette* %palette, %struct._GimpPalette** %palette.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %1 = bitcast %struct._GimpPalette* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_palette_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_palette_set_entry, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp13 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_palette_set_entry, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %15 = load i32, i32* %position.addr, align 4
  %call18 = call %struct._GimpPaletteEntry* @gimp_palette_get_entry(%struct._GimpPalette* %14, i32 %15)
  store %struct._GimpPaletteEntry* %call18, %struct._GimpPaletteEntry** %entry1, align 8
  %16 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %tobool19 = icmp ne %struct._GimpPaletteEntry* %16, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %do.end.17
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %do.end.17
  %17 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %color22 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %17, i32 0, i32 0
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %19 = bitcast %struct._GimpRGB* %color22 to i8*
  %20 = bitcast %struct._GimpRGB* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  %21 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %name23 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %21, i32 0, i32 1
  %22 = load i8*, i8** %name23, align 8
  %tobool24 = icmp ne i8* %22, null
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.21
  %23 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %name26 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %23, i32 0, i32 1
  %24 = load i8*, i8** %name26, align 8
  call void @g_free(i8* %24)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.21
  %25 = load i8*, i8** %name.addr, align 8
  %call28 = call noalias i8* @g_strdup(i8* %25)
  %26 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %name29 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %26, i32 0, i32 1
  store i8* %call28, i8** %name29, align 8
  %27 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %28 = bitcast %struct._GimpPalette* %27 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_data_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call30)
  %29 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %29)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.20, %if.else.15, %if.else.10
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define %struct._GimpPaletteEntry* @gimp_palette_get_entry(%struct._GimpPalette* %palette, i32 %position) #3 {
entry:
  %retval = alloca %struct._GimpPaletteEntry*, align 8
  %palette.addr = alloca %struct._GimpPalette*, align 8
  %position.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPalette* %palette, %struct._GimpPalette** %palette.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %1 = bitcast %struct._GimpPalette* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_palette_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_palette_get_entry, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpPaletteEntry* null, %struct._GimpPaletteEntry** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %colors, align 8
  %15 = load i32, i32* %position.addr, align 4
  %call11 = call i8* @g_list_nth_data(%struct._GList* %14, i32 %15)
  %16 = bitcast i8* %call11 to %struct._GimpPaletteEntry*
  store %struct._GimpPaletteEntry* %16, %struct._GimpPaletteEntry** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %retval
  ret %struct._GimpPaletteEntry* %17
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_set_entry_color(%struct._GimpPalette* %palette, i32 %position, %struct._GimpRGB* %color) #3 {
entry:
  %retval = alloca i32, align 4
  %palette.addr = alloca %struct._GimpPalette*, align 8
  %position.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %entry1 = alloca %struct._GimpPaletteEntry*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPalette* %palette, %struct._GimpPalette** %palette.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %1 = bitcast %struct._GimpPalette* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_palette_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_palette_set_entry_color, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp13 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_palette_set_entry_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %15 = load i32, i32* %position.addr, align 4
  %call18 = call %struct._GimpPaletteEntry* @gimp_palette_get_entry(%struct._GimpPalette* %14, i32 %15)
  store %struct._GimpPaletteEntry* %call18, %struct._GimpPaletteEntry** %entry1, align 8
  %16 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %tobool19 = icmp ne %struct._GimpPaletteEntry* %16, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %do.end.17
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %do.end.17
  %17 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %color22 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %17, i32 0, i32 0
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %19 = bitcast %struct._GimpRGB* %color22 to i8*
  %20 = bitcast %struct._GimpRGB* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  %21 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %22 = bitcast %struct._GimpPalette* %21 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_data_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call23)
  %23 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %23)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20, %if.else.15, %if.else.10
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_set_entry_name(%struct._GimpPalette* %palette, i32 %position, i8* %name) #3 {
entry:
  %retval = alloca i32, align 4
  %palette.addr = alloca %struct._GimpPalette*, align 8
  %position.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %entry1 = alloca %struct._GimpPaletteEntry*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPalette* %palette, %struct._GimpPalette** %palette.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %1 = bitcast %struct._GimpPalette* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_palette_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_palette_set_entry_name, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %14 = load i32, i32* %position.addr, align 4
  %call12 = call %struct._GimpPaletteEntry* @gimp_palette_get_entry(%struct._GimpPalette* %13, i32 %14)
  store %struct._GimpPaletteEntry* %call12, %struct._GimpPaletteEntry** %entry1, align 8
  %15 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %tobool13 = icmp ne %struct._GimpPaletteEntry* %15, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %do.end
  %16 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %name16 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %16, i32 0, i32 1
  %17 = load i8*, i8** %name16, align 8
  %tobool17 = icmp ne i8* %17, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %18 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %name19 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %18, i32 0, i32 1
  %19 = load i8*, i8** %name19, align 8
  call void @g_free(i8* %19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.15
  %20 = load i8*, i8** %name.addr, align 8
  %call21 = call noalias i8* @g_strdup(i8* %20)
  %21 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %name22 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %21, i32 0, i32 1
  store i8* %call21, i8** %name22, align 8
  %22 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %23 = bitcast %struct._GimpPalette* %22 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_data_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call23)
  %24 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %24)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.14, %if.else.10
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i8* @g_list_nth_data(%struct._GList*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_palette_set_columns(%struct._GimpPalette* %palette, i32 %columns) #3 {
entry:
  %palette.addr = alloca %struct._GimpPalette*, align 8
  %columns.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPalette* %palette, %struct._GimpPalette** %palette.addr, align 8
  store i32 %columns, i32* %columns.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %1 = bitcast %struct._GimpPalette* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_palette_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_palette_set_columns, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.22

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %columns.addr, align 4
  %cmp11 = icmp sgt i32 %13, 64
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end.15

cond.false:                                       ; preds = %do.end
  %14 = load i32, i32* %columns.addr, align 4
  %cmp12 = icmp slt i32 %14, 0
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.false
  br label %cond.end

cond.false.14:                                    ; preds = %cond.false
  %15 = load i32, i32* %columns.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.14, %cond.true.13
  %cond = phi i32 [ 0, %cond.true.13 ], [ %15, %cond.false.14 ]
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.end, %cond.true
  %cond16 = phi i32 [ 64, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond16, i32* %columns.addr, align 4
  %16 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %n_columns = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %16, i32 0, i32 3
  %17 = load i32, i32* %n_columns, align 4
  %18 = load i32, i32* %columns.addr, align 4
  %cmp17 = icmp ne i32 %17, %18
  br i1 %cmp17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %cond.end.15
  %19 = load i32, i32* %columns.addr, align 4
  %20 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %n_columns19 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %20, i32 0, i32 3
  store i32 %19, i32* %n_columns19, align 4
  %21 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %22 = bitcast %struct._GimpPalette* %21 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_data_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call20)
  %23 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %23)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.9, %if.then.18, %cond.end.15
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_get_columns(%struct._GimpPalette* %palette) #3 {
entry:
  %retval = alloca i32, align 4
  %palette.addr = alloca %struct._GimpPalette*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPalette* %palette, %struct._GimpPalette** %palette.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %1 = bitcast %struct._GimpPalette* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_palette_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_palette_get_columns, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %n_columns = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %13, i32 0, i32 3
  %14 = load i32, i32* %n_columns, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define %struct._GimpPaletteEntry* @gimp_palette_find_entry(%struct._GimpPalette* %palette, %struct._GimpRGB* %color, %struct._GimpPaletteEntry* %start_from) #3 {
entry:
  %retval = alloca %struct._GimpPaletteEntry*, align 8
  %palette.addr = alloca %struct._GimpPalette*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %start_from.addr = alloca %struct._GimpPaletteEntry*, align 8
  %entry1 = alloca %struct._GimpPaletteEntry*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %old = alloca %struct._GList*, align 8
  %next38 = alloca %struct._GList*, align 8
  %prev = alloca %struct._GList*, align 8
  store %struct._GimpPalette* %palette, %struct._GimpPalette** %palette.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store %struct._GimpPaletteEntry* %start_from, %struct._GimpPaletteEntry** %start_from.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %1 = bitcast %struct._GimpPalette* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_palette_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_palette_find_entry, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpPaletteEntry* null, %struct._GimpPaletteEntry** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp13 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_palette_find_entry, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpPaletteEntry* null, %struct._GimpPaletteEntry** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %start_from.addr, align 8
  %tobool18 = icmp ne %struct._GimpPaletteEntry* %14, null
  br i1 %tobool18, label %if.else.28, label %if.then.19

if.then.19:                                       ; preds = %do.end.17
  %15 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %15, i32 0, i32 1
  %16 = load %struct._GList*, %struct._GList** %colors, align 8
  store %struct._GList* %16, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.19
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool21 = icmp ne %struct._GList* %17, null
  br i1 %tobool21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpPaletteEntry*
  store %struct._GimpPaletteEntry* %20, %struct._GimpPaletteEntry** %entry1, align 8
  %21 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %color22 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %21, i32 0, i32 0
  %22 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call23 = call double @gimp_rgb_distance(%struct._GimpRGB* %color22, %struct._GimpRGB* %22)
  %cmp24 = fcmp olt double %call23, 1.000000e-10
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.body
  %23 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  store %struct._GimpPaletteEntry* %23, %struct._GimpPaletteEntry** %retval
  br label %return

if.end.26:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool27 = icmp ne %struct._GList* %24, null
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 1
  %26 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %26, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.71

if.else.28:                                       ; preds = %do.end.17
  %27 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %start_from.addr, align 8
  %color29 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %27, i32 0, i32 0
  %28 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call30 = call double @gimp_rgb_distance(%struct._GimpRGB* %color29, %struct._GimpRGB* %28)
  %cmp31 = fcmp olt double %call30, 1.000000e-10
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.else.28
  %29 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %start_from.addr, align 8
  store %struct._GimpPaletteEntry* %29, %struct._GimpPaletteEntry** %retval
  br label %return

if.else.33:                                       ; preds = %if.else.28
  %30 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %colors35 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %30, i32 0, i32 1
  %31 = load %struct._GList*, %struct._GList** %colors35, align 8
  %32 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %start_from.addr, align 8
  %33 = bitcast %struct._GimpPaletteEntry* %32 to i8*
  %call36 = call %struct._GList* @g_list_find(%struct._GList* %31, i8* %33)
  store %struct._GList* %call36, %struct._GList** %old, align 8
  br label %do.body.40

do.body.40:                                       ; preds = %if.else.33
  %34 = load %struct._GList*, %struct._GList** %old, align 8
  %cmp41 = icmp ne %struct._GList* %34, null
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.40
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_palette_find_entry, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GimpPaletteEntry* null, %struct._GimpPaletteEntry** %retval
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %35 = load %struct._GList*, %struct._GList** %old, align 8
  %next46 = getelementptr inbounds %struct._GList, %struct._GList* %35, i32 0, i32 1
  %36 = load %struct._GList*, %struct._GList** %next46, align 8
  store %struct._GList* %36, %struct._GList** %next38, align 8
  %37 = load %struct._GList*, %struct._GList** %old, align 8
  %prev47 = getelementptr inbounds %struct._GList, %struct._GList* %37, i32 0, i32 2
  %38 = load %struct._GList*, %struct._GList** %prev47, align 8
  store %struct._GList* %38, %struct._GList** %prev, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.69, %do.end.45
  %39 = load %struct._GList*, %struct._GList** %next38, align 8
  %tobool48 = icmp ne %struct._GList* %39, null
  br i1 %tobool48, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %40 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool49 = icmp ne %struct._GList* %40, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %41 = phi i1 [ true, %while.cond ], [ %tobool49, %lor.rhs ]
  br i1 %41, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %42 = load %struct._GList*, %struct._GList** %next38, align 8
  %tobool50 = icmp ne %struct._GList* %42, null
  br i1 %tobool50, label %if.then.51, label %if.end.59

if.then.51:                                       ; preds = %while.body
  %43 = load %struct._GList*, %struct._GList** %next38, align 8
  %data52 = getelementptr inbounds %struct._GList, %struct._GList* %43, i32 0, i32 0
  %44 = load i8*, i8** %data52, align 8
  %45 = bitcast i8* %44 to %struct._GimpPaletteEntry*
  store %struct._GimpPaletteEntry* %45, %struct._GimpPaletteEntry** %entry1, align 8
  %46 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %color53 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %46, i32 0, i32 0
  %47 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call54 = call double @gimp_rgb_distance(%struct._GimpRGB* %color53, %struct._GimpRGB* %47)
  %cmp55 = fcmp olt double %call54, 1.000000e-10
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.51
  %48 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  store %struct._GimpPaletteEntry* %48, %struct._GimpPaletteEntry** %retval
  br label %return

if.end.57:                                        ; preds = %if.then.51
  %49 = load %struct._GList*, %struct._GList** %next38, align 8
  %next58 = getelementptr inbounds %struct._GList, %struct._GList* %49, i32 0, i32 1
  %50 = load %struct._GList*, %struct._GList** %next58, align 8
  store %struct._GList* %50, %struct._GList** %next38, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.57, %while.body
  %51 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool60 = icmp ne %struct._GList* %51, null
  br i1 %tobool60, label %if.then.61, label %if.end.69

if.then.61:                                       ; preds = %if.end.59
  %52 = load %struct._GList*, %struct._GList** %prev, align 8
  %data62 = getelementptr inbounds %struct._GList, %struct._GList* %52, i32 0, i32 0
  %53 = load i8*, i8** %data62, align 8
  %54 = bitcast i8* %53 to %struct._GimpPaletteEntry*
  store %struct._GimpPaletteEntry* %54, %struct._GimpPaletteEntry** %entry1, align 8
  %55 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %color63 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %55, i32 0, i32 0
  %56 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call64 = call double @gimp_rgb_distance(%struct._GimpRGB* %color63, %struct._GimpRGB* %56)
  %cmp65 = fcmp olt double %call64, 1.000000e-10
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.then.61
  %57 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  store %struct._GimpPaletteEntry* %57, %struct._GimpPaletteEntry** %retval
  br label %return

if.end.67:                                        ; preds = %if.then.61
  %58 = load %struct._GList*, %struct._GList** %prev, align 8
  %prev68 = getelementptr inbounds %struct._GList, %struct._GList* %58, i32 0, i32 2
  %59 = load %struct._GList*, %struct._GList** %prev68, align 8
  store %struct._GList* %59, %struct._GList** %prev, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.67, %if.end.59
  br label %while.cond

while.end:                                        ; preds = %lor.end
  br label %if.end.70

if.end.70:                                        ; preds = %while.end
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %for.end
  store %struct._GimpPaletteEntry* null, %struct._GimpPaletteEntry** %retval
  br label %return

return:                                           ; preds = %if.end.71, %if.then.66, %if.then.56, %if.else.43, %if.then.32, %if.then.25, %if.else.15, %if.else.10
  %60 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %retval
  ret %struct._GimpPaletteEntry* %60
}

declare double @gimp_rgb_distance(%struct._GimpRGB*, %struct._GimpRGB*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_class_init(%struct._GimpPaletteClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPaletteClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  %data_class = alloca %struct._GimpDataClass*, align 8
  store %struct._GimpPaletteClass* %klass, %struct._GimpPaletteClass** %klass.addr, align 8
  %0 = load %struct._GimpPaletteClass*, %struct._GimpPaletteClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPaletteClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpPaletteClass*, %struct._GimpPaletteClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPaletteClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpPaletteClass*, %struct._GimpPaletteClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpPaletteClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_viewable_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %8, %struct._GimpViewableClass** %viewable_class, align 8
  %9 = load %struct._GimpPaletteClass*, %struct._GimpPaletteClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpPaletteClass* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_data_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpDataClass*
  store %struct._GimpDataClass* %11, %struct._GimpDataClass** %data_class, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_palette_finalize, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %13, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_palette_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %14 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %14, i32 0, i32 1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8** %default_stock_id, align 8
  %15 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_preview_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %15, i32 0, i32 6
  store void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)* @gimp_palette_get_preview_size, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)** %get_preview_size, align 8
  %16 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_popup_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %16, i32 0, i32 7
  store i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)* @gimp_palette_get_popup_size, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)** %get_popup_size, align 8
  %17 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_new_preview = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %17, i32 0, i32 9
  store %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)* @gimp_palette_get_new_preview, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)** %get_new_preview, align 8
  %18 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_description = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %18, i32 0, i32 12
  store i8* (%struct._GimpViewable*, i8**)* @gimp_palette_get_description, i8* (%struct._GimpViewable*, i8**)** %get_description, align 8
  %19 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %save = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %19, i32 0, i32 2
  store i32 (%struct._GimpData*, %struct._GError**)* @gimp_palette_save, i32 (%struct._GimpData*, %struct._GError**)** %save, align 8
  %20 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %get_extension = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %20, i32 0, i32 3
  store i8* (%struct._GimpData*)* @gimp_palette_get_extension, i8* (%struct._GimpData*)** %get_extension, align 8
  %21 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %duplicate = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %21, i32 0, i32 4
  store %struct._GimpData* (%struct._GimpData*)* @gimp_palette_duplicate, %struct._GimpData* (%struct._GimpData*)** %duplicate, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPalette*
  store %struct._GimpPalette* %2, %struct._GimpPalette** %palette, align 8
  %3 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %colors, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %colors2 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %5, i32 0, i32 1
  %6 = load %struct._GList*, %struct._GList** %colors2, align 8
  call void @g_list_free_full(%struct._GList* %6, void (i8*)* bitcast (void (%struct._GimpPaletteEntry*)* @gimp_palette_entry_free to void (i8*)*))
  %7 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %colors3 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %7, i32 0, i32 1
  store %struct._GList* null, %struct._GList** %colors3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_palette_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_palette_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPalette*
  store %struct._GimpPalette* %2, %struct._GimpPalette** %palette, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %colors, align 8
  %5 = load i64*, i64** %gui_size.addr, align 8
  %call2 = call i64 @gimp_g_list_get_memsize_foreach(%struct._GList* %4, i64 (i8*, i64*)* bitcast (i64 (%struct._GimpPaletteEntry*, i64*)* @gimp_palette_entry_get_memsize to i64 (i8*, i64*)*), i64* %5)
  %6 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %6, %call2
  store i64 %add, i64* %memsize, align 8
  %7 = load i64, i64* %memsize, align 8
  %8 = load i8*, i8** @gimp_palette_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call3 = call i64 @gimp_object_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 %call3)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %10, i32 0, i32 3
  %11 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %12 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %13 = load i64*, i64** %gui_size.addr, align 8
  %call5 = call i64 %11(%struct._GimpObject* %12, i64* %13)
  %add6 = add nsw i64 %7, %call5
  ret i64 %add6
}

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_get_preview_size(%struct._GimpViewable* %viewable, i32 %size, i32 %popup, i32 %dot_for_dot, i32* %width, i32* %height) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %size.addr = alloca i32, align 4
  %popup.addr = alloca i32, align 4
  %dot_for_dot.addr = alloca i32, align 4
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %popup, i32* %popup.addr, align 4
  store i32 %dot_for_dot, i32* %dot_for_dot.addr, align 4
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load i32, i32* %size.addr, align 4
  %1 = load i32*, i32** %width.addr, align 8
  store i32 %0, i32* %1, align 4
  %2 = load i32, i32* %size.addr, align 4
  %div = sdiv i32 %2, 2
  %add = add nsw i32 1, %div
  %3 = load i32*, i32** %height.addr, align 8
  store i32 %add, i32* %3, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_palette_get_popup_size(%struct._GimpViewable* %viewable, i32 %width, i32 %height, i32 %dot_for_dot, i32* %popup_width, i32* %popup_height) #3 {
entry:
  %retval = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %dot_for_dot.addr = alloca i32, align 4
  %popup_width.addr = alloca i32*, align 8
  %popup_height.addr = alloca i32*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %p_width = alloca i32, align 4
  %p_height = alloca i32, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %dot_for_dot, i32* %dot_for_dot.addr, align 4
  store i32* %popup_width, i32** %popup_width.addr, align 8
  store i32* %popup_height, i32** %popup_height.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPalette*
  store %struct._GimpPalette* %2, %struct._GimpPalette** %palette, align 8
  %3 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %n_colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %3, i32 0, i32 2
  %4 = load i32, i32* %n_colors, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %n_columns = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %5, i32 0, i32 3
  %6 = load i32, i32* %n_columns, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %n_columns4 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %7, i32 0, i32 3
  %8 = load i32, i32* %n_columns4, align 4
  store i32 %8, i32* %p_width, align 4
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %9 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %n_colors5 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %9, i32 0, i32 2
  %10 = load i32, i32* %n_colors5, align 4
  %cmp = icmp slt i32 %10, 16
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %11 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %n_colors6 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %11, i32 0, i32 2
  %12 = load i32, i32* %n_colors6, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ 16, %cond.false ]
  store i32 %cond, i32* %p_width, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %cond.end, %if.then.3
  %13 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %n_colors8 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %13, i32 0, i32 2
  %14 = load i32, i32* %n_colors8, align 4
  %15 = load i32, i32* %p_width, align 4
  %div = sdiv i32 %14, %15
  %cmp9 = icmp sgt i32 1, %div
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %if.end.7
  br label %cond.end.14

cond.false.11:                                    ; preds = %if.end.7
  %16 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %n_colors12 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %16, i32 0, i32 2
  %17 = load i32, i32* %n_colors12, align 4
  %18 = load i32, i32* %p_width, align 4
  %div13 = sdiv i32 %17, %18
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.11, %cond.true.10
  %cond15 = phi i32 [ 1, %cond.true.10 ], [ %div13, %cond.false.11 ]
  store i32 %cond15, i32* %p_height, align 4
  %19 = load i32, i32* %p_width, align 4
  %mul = mul nsw i32 %19, 4
  %20 = load i32, i32* %width.addr, align 4
  %cmp16 = icmp sgt i32 %mul, %20
  br i1 %cmp16, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.14
  %21 = load i32, i32* %p_height, align 4
  %mul17 = mul nsw i32 %21, 4
  %22 = load i32, i32* %height.addr, align 4
  %cmp18 = icmp sgt i32 %mul17, %22
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %lor.lhs.false, %cond.end.14
  %23 = load i32, i32* %p_width, align 4
  %mul20 = mul nsw i32 %23, 4
  %24 = load i32*, i32** %popup_width.addr, align 8
  store i32 %mul20, i32* %24, align 4
  %25 = load i32, i32* %p_height, align 4
  %mul21 = mul nsw i32 %25, 4
  %26 = load i32*, i32** %popup_height.addr, align 8
  store i32 %mul21, i32* %26, align 4
  store i32 1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.19, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @gimp_palette_get_new_preview(%struct._GimpViewable* %viewable, %struct._GimpContext* %context, i32 %width, i32 %height) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %palette = alloca %struct._GimpPalette*, align 8
  %temp_buf = alloca %struct._TempBuf*, align 8
  %buf = alloca i8*, align 8
  %b = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %white = alloca [3 x i8], align 1
  %columns = alloca i32, align 4
  %rows = alloca i32, align 4
  %cell_size = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %entry22 = alloca %struct._GimpPaletteEntry*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPalette*
  store %struct._GimpPalette* %2, %struct._GimpPalette** %palette, align 8
  %3 = bitcast [3 x i8]* %white to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @gimp_palette_get_new_preview.white, i32 0, i32 0), i64 3, i32 1, i1 false)
  %4 = load i32, i32* %width.addr, align 4
  %5 = load i32, i32* %height.addr, align 4
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %white, i32 0, i32 0
  %call2 = call %struct._TempBuf* @temp_buf_new(i32 %4, i32 %5, i32 3, i32 0, i32 0, i8* %arraydecay)
  store %struct._TempBuf* %call2, %struct._TempBuf** %temp_buf, align 8
  %6 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %n_columns = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %6, i32 0, i32 3
  %7 = load i32, i32* %n_columns, align 4
  %cmp = icmp sgt i32 %7, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %width.addr, align 4
  %9 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %n_columns3 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %9, i32 0, i32 3
  %10 = load i32, i32* %n_columns3, align 4
  %div = sdiv i32 %8, %10
  %cmp4 = icmp sgt i32 4, %div
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %11 = load i32, i32* %width.addr, align 4
  %12 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %n_columns5 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %12, i32 0, i32 3
  %13 = load i32, i32* %n_columns5, align 4
  %div6 = sdiv i32 %11, %13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 4, %cond.true ], [ %div6, %cond.false ]
  store i32 %cond, i32* %cell_size, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 4, i32* %cell_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %14 = load i32, i32* %width.addr, align 4
  %15 = load i32, i32* %cell_size, align 4
  %div7 = sdiv i32 %14, %15
  store i32 %div7, i32* %columns, align 4
  %16 = load i32, i32* %height.addr, align 4
  %17 = load i32, i32* %cell_size, align 4
  %div8 = sdiv i32 %16, %17
  store i32 %div8, i32* %rows, align 4
  %18 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %call9 = call i8* @temp_buf_get_data(%struct._TempBuf* %18)
  store i8* %call9, i8** %buf, align 8
  %19 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %19, 3
  %conv = sext i32 %mul to i64
  %call10 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call10, i8** %b, align 8
  %20 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %20, i32 0, i32 1
  %21 = load %struct._GList*, %struct._GList** %colors, align 8
  store %struct._GList* %21, %struct._GList** %list, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.93, %if.end
  %22 = load i32, i32* %y, align 4
  %23 = load i32, i32* %rows, align 4
  %cmp11 = icmp slt i32 %22, %23
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %24, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %25 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ]
  br i1 %25, label %for.body, label %for.end.95

for.body:                                         ; preds = %land.end
  %26 = load i8*, i8** %b, align 8
  %27 = load i32, i32* %width.addr, align 4
  %mul13 = mul nsw i32 %27, 3
  %conv14 = sext i32 %mul13 to i64
  call void @llvm.memset.p0i8.i64(i8* %26, i8 -1, i64 %conv14, i32 1, i1 false)
  store i32 0, i32* %x, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.77, %for.body
  %28 = load i32, i32* %x, align 4
  %29 = load i32, i32* %columns, align 4
  %cmp16 = icmp slt i32 %28, %29
  br i1 %cmp16, label %land.rhs.18, label %land.end.20

land.rhs.18:                                      ; preds = %for.cond.15
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool19 = icmp ne %struct._GList* %30, null
  br label %land.end.20

land.end.20:                                      ; preds = %land.rhs.18, %for.cond.15
  %31 = phi i1 [ false, %for.cond.15 ], [ %tobool19, %land.rhs.18 ]
  br i1 %31, label %for.body.21, label %for.end.79

for.body.21:                                      ; preds = %land.end.20
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 0
  %33 = load i8*, i8** %data, align 8
  %34 = bitcast i8* %33 to %struct._GimpPaletteEntry*
  store %struct._GimpPaletteEntry* %34, %struct._GimpPaletteEntry** %entry22, align 8
  %35 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool23 = icmp ne %struct._GList* %35, null
  br i1 %tobool23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %for.body.21
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 1
  %37 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.26

cond.false.25:                                    ; preds = %for.body.21
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.24
  %cond27 = phi %struct._GList* [ %37, %cond.true.24 ], [ null, %cond.false.25 ]
  store %struct._GList* %cond27, %struct._GList** %list, align 8
  %38 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry22, align 8
  %color = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %38, i32 0, i32 0
  %39 = load i32, i32* %x, align 4
  %40 = load i32, i32* %cell_size, align 4
  %mul28 = mul nsw i32 %39, %40
  %mul29 = mul nsw i32 %mul28, 3
  %add = add nsw i32 %mul29, 0
  %idxprom = sext i32 %add to i64
  %41 = load i8*, i8** %b, align 8
  %arrayidx = getelementptr inbounds i8, i8* %41, i64 %idxprom
  %42 = load i32, i32* %x, align 4
  %43 = load i32, i32* %cell_size, align 4
  %mul30 = mul nsw i32 %42, %43
  %mul31 = mul nsw i32 %mul30, 3
  %add32 = add nsw i32 %mul31, 1
  %idxprom33 = sext i32 %add32 to i64
  %44 = load i8*, i8** %b, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %44, i64 %idxprom33
  %45 = load i32, i32* %x, align 4
  %46 = load i32, i32* %cell_size, align 4
  %mul35 = mul nsw i32 %45, %46
  %mul36 = mul nsw i32 %mul35, 3
  %add37 = add nsw i32 %mul36, 2
  %idxprom38 = sext i32 %add37 to i64
  %47 = load i8*, i8** %b, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %47, i64 %idxprom38
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* %arrayidx, i8* %arrayidx34, i8* %arrayidx39)
  store i32 1, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc, %cond.end.26
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %cell_size, align 4
  %cmp41 = icmp slt i32 %48, %49
  br i1 %cmp41, label %for.body.43, label %for.end

for.body.43:                                      ; preds = %for.cond.40
  %50 = load i32, i32* %x, align 4
  %51 = load i32, i32* %cell_size, align 4
  %mul44 = mul nsw i32 %50, %51
  %mul45 = mul nsw i32 %mul44, 3
  %add46 = add nsw i32 %mul45, 0
  %idxprom47 = sext i32 %add46 to i64
  %52 = load i8*, i8** %b, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %52, i64 %idxprom47
  %53 = load i8, i8* %arrayidx48, align 1
  %54 = load i32, i32* %x, align 4
  %55 = load i32, i32* %cell_size, align 4
  %mul49 = mul nsw i32 %54, %55
  %56 = load i32, i32* %i, align 4
  %add50 = add nsw i32 %mul49, %56
  %mul51 = mul nsw i32 %add50, 3
  %add52 = add nsw i32 %mul51, 0
  %idxprom53 = sext i32 %add52 to i64
  %57 = load i8*, i8** %b, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %57, i64 %idxprom53
  store i8 %53, i8* %arrayidx54, align 1
  %58 = load i32, i32* %x, align 4
  %59 = load i32, i32* %cell_size, align 4
  %mul55 = mul nsw i32 %58, %59
  %mul56 = mul nsw i32 %mul55, 3
  %add57 = add nsw i32 %mul56, 1
  %idxprom58 = sext i32 %add57 to i64
  %60 = load i8*, i8** %b, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %60, i64 %idxprom58
  %61 = load i8, i8* %arrayidx59, align 1
  %62 = load i32, i32* %x, align 4
  %63 = load i32, i32* %cell_size, align 4
  %mul60 = mul nsw i32 %62, %63
  %64 = load i32, i32* %i, align 4
  %add61 = add nsw i32 %mul60, %64
  %mul62 = mul nsw i32 %add61, 3
  %add63 = add nsw i32 %mul62, 1
  %idxprom64 = sext i32 %add63 to i64
  %65 = load i8*, i8** %b, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %65, i64 %idxprom64
  store i8 %61, i8* %arrayidx65, align 1
  %66 = load i32, i32* %x, align 4
  %67 = load i32, i32* %cell_size, align 4
  %mul66 = mul nsw i32 %66, %67
  %mul67 = mul nsw i32 %mul66, 3
  %add68 = add nsw i32 %mul67, 2
  %idxprom69 = sext i32 %add68 to i64
  %68 = load i8*, i8** %b, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %68, i64 %idxprom69
  %69 = load i8, i8* %arrayidx70, align 1
  %70 = load i32, i32* %x, align 4
  %71 = load i32, i32* %cell_size, align 4
  %mul71 = mul nsw i32 %70, %71
  %72 = load i32, i32* %i, align 4
  %add72 = add nsw i32 %mul71, %72
  %mul73 = mul nsw i32 %add72, 3
  %add74 = add nsw i32 %mul73, 2
  %idxprom75 = sext i32 %add74 to i64
  %73 = load i8*, i8** %b, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %73, i64 %idxprom75
  store i8 %69, i8* %arrayidx76, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.43
  %74 = load i32, i32* %i, align 4
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.40

for.end:                                          ; preds = %for.cond.40
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end
  %75 = load i32, i32* %x, align 4
  %inc78 = add nsw i32 %75, 1
  store i32 %inc78, i32* %x, align 4
  br label %for.cond.15

for.end.79:                                       ; preds = %land.end.20
  store i32 0, i32* %i, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.90, %for.end.79
  %76 = load i32, i32* %i, align 4
  %77 = load i32, i32* %cell_size, align 4
  %cmp81 = icmp slt i32 %76, %77
  br i1 %cmp81, label %for.body.83, label %for.end.92

for.body.83:                                      ; preds = %for.cond.80
  %78 = load i8*, i8** %buf, align 8
  %79 = load i32, i32* %y, align 4
  %80 = load i32, i32* %cell_size, align 4
  %mul84 = mul nsw i32 %79, %80
  %81 = load i32, i32* %i, align 4
  %add85 = add nsw i32 %mul84, %81
  %82 = load i32, i32* %width.addr, align 4
  %mul86 = mul nsw i32 %add85, %82
  %mul87 = mul nsw i32 %mul86, 3
  %idx.ext = sext i32 %mul87 to i64
  %add.ptr = getelementptr inbounds i8, i8* %78, i64 %idx.ext
  %83 = load i8*, i8** %b, align 8
  %84 = load i32, i32* %width.addr, align 4
  %mul88 = mul nsw i32 %84, 3
  %conv89 = sext i32 %mul88 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %83, i64 %conv89, i32 1, i1 false)
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.83
  %85 = load i32, i32* %i, align 4
  %inc91 = add nsw i32 %85, 1
  store i32 %inc91, i32* %i, align 4
  br label %for.cond.80

for.end.92:                                       ; preds = %for.cond.80
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.end.92
  %86 = load i32, i32* %y, align 4
  %inc94 = add nsw i32 %86, 1
  store i32 %inc94, i32* %y, align 4
  br label %for.cond

for.end.95:                                       ; preds = %land.end
  %87 = load i8*, i8** %b, align 8
  call void @g_free(i8* %87)
  %88 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  ret %struct._TempBuf* %88
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_palette_get_description(%struct._GimpViewable* %viewable, i8** %tooltip) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %tooltip.addr = alloca i8**, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8** %tooltip, i8*** %tooltip.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPalette*
  store %struct._GimpPalette* %2, %struct._GimpPalette** %palette, align 8
  %3 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %4 = bitcast %struct._GimpPalette* %3 to i8*
  %call2 = call i8* @gimp_object_get_name(i8* %4)
  %5 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %n_colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %5, i32 0, i32 2
  %6 = load i32, i32* %n_colors, align 4
  %call3 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* %call2, i32 %6)
  ret i8* %call3
}

declare i32 @gimp_palette_save(%struct._GimpData*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_palette_get_extension(%struct._GimpData* %data) #3 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  ret i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpData* @gimp_palette_duplicate(%struct._GimpData* %data) #3 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %new = alloca %struct._GimpPalette*, align 8
  %list = alloca %struct._GList*, align 8
  %entry5 = alloca %struct._GimpPaletteEntry*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPalette*
  store %struct._GimpPalette* %2, %struct._GimpPalette** %palette, align 8
  %call2 = call i64 @gimp_palette_get_type() #7
  %call3 = call i8* (i64, i8*, ...) @g_object_new(i64 %call2, i8* null)
  %3 = bitcast i8* %call3 to %struct._GimpPalette*
  store %struct._GimpPalette* %3, %struct._GimpPalette** %new, align 8
  %4 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %n_columns = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %4, i32 0, i32 3
  %5 = load i32, i32* %n_columns, align 4
  %6 = load %struct._GimpPalette*, %struct._GimpPalette** %new, align 8
  %n_columns4 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %6, i32 0, i32 3
  store i32 %5, i32* %n_columns4, align 4
  %7 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %7, i32 0, i32 1
  %8 = load %struct._GList*, %struct._GList** %colors, align 8
  store %struct._GList* %8, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %9, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %data6 = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 0
  %11 = load i8*, i8** %data6, align 8
  %12 = bitcast i8* %11 to %struct._GimpPaletteEntry*
  store %struct._GimpPaletteEntry* %12, %struct._GimpPaletteEntry** %entry5, align 8
  %13 = load %struct._GimpPalette*, %struct._GimpPalette** %new, align 8
  %14 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry5, align 8
  %name = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %14, i32 0, i32 1
  %15 = load i8*, i8** %name, align 8
  %16 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry5, align 8
  %color = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %16, i32 0, i32 0
  %call7 = call %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette* %13, i32 -1, i8* %15, %struct._GimpRGB* %color)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool8 = icmp ne %struct._GList* %17, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %19, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._GimpPalette*, %struct._GimpPalette** %new, align 8
  %21 = bitcast %struct._GimpPalette* %20 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_data_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call9)
  %22 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpData*
  ret %struct._GimpData* %22
}

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare i64 @gimp_g_list_get_memsize_foreach(%struct._GList*, i64 (i8*, i64*)*, i64*) #1

; Function Attrs: nounwind uwtable
define internal i64 @gimp_palette_entry_get_memsize(%struct._GimpPaletteEntry* %entry1, i64* %gui_size) #3 {
entry:
  %entry.addr = alloca %struct._GimpPaletteEntry*, align 8
  %gui_size.addr = alloca i64*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpPaletteEntry* %entry1, %struct._GimpPaletteEntry** %entry.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  store i64 48, i64* %memsize, align 8
  %0 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry.addr, align 8
  %name = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %0, i32 0, i32 1
  %1 = load i8*, i8** %name, align 8
  %call = call i64 @gimp_string_get_memsize(i8* %1)
  %2 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %2, %call
  store i64 %add, i64* %memsize, align 8
  %3 = load i64, i64* %memsize, align 8
  ret i64 %3
}

declare i64 @gimp_string_get_memsize(i8*) #1

declare %struct._TempBuf* @temp_buf_new(i32, i32, i32, i32, i32, i8*) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @gimp_object_get_name(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_palette_get_checksum(%struct._GimpTagged* %tagged) #3 {
entry:
  %tagged.addr = alloca %struct._GimpTagged*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %checksum_string = alloca i8*, align 8
  %checksum = alloca %struct._GChecksum*, align 8
  %color_iterator = alloca %struct._GList*, align 8
  %entry4 = alloca %struct._GimpPaletteEntry*, align 8
  store %struct._GimpTagged* %tagged, %struct._GimpTagged** %tagged.addr, align 8
  %0 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %1 = bitcast %struct._GimpTagged* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPalette*
  store %struct._GimpPalette* %2, %struct._GimpPalette** %palette, align 8
  store i8* null, i8** %checksum_string, align 8
  %3 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %n_colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %3, i32 0, i32 2
  %4 = load i32, i32* %n_colors, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %call2 = call %struct._GChecksum* @g_checksum_new(i32 0)
  store %struct._GChecksum* %call2, %struct._GChecksum** %checksum, align 8
  %5 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %5, i32 0, i32 1
  %6 = load %struct._GList*, %struct._GList** %colors, align 8
  store %struct._GList* %6, %struct._GList** %color_iterator, align 8
  %7 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %8 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %n_colors3 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %8, i32 0, i32 2
  %9 = bitcast i32* %n_colors3 to i8*
  call void @g_checksum_update(%struct._GChecksum* %7, i8* %9, i64 4)
  %10 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %11 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %n_columns = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %11, i32 0, i32 3
  %12 = bitcast i32* %n_columns to i8*
  call void @g_checksum_update(%struct._GChecksum* %10, i8* %12, i64 4)
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.then
  %13 = load %struct._GList*, %struct._GList** %color_iterator, align 8
  %tobool = icmp ne %struct._GList* %13, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct._GList*, %struct._GList** %color_iterator, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = bitcast i8* %15 to %struct._GimpPaletteEntry*
  store %struct._GimpPaletteEntry* %16, %struct._GimpPaletteEntry** %entry4, align 8
  %17 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %18 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry4, align 8
  %color = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %18, i32 0, i32 0
  %19 = bitcast %struct._GimpRGB* %color to i8*
  call void @g_checksum_update(%struct._GChecksum* %17, i8* %19, i64 32)
  %20 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry4, align 8
  %name = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %20, i32 0, i32 1
  %21 = load i8*, i8** %name, align 8
  %tobool5 = icmp ne i8* %21, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %while.body
  %22 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %23 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry4, align 8
  %name7 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %23, i32 0, i32 1
  %24 = load i8*, i8** %name7, align 8
  %25 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry4, align 8
  %name8 = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %25, i32 0, i32 1
  %26 = load i8*, i8** %name8, align 8
  %call9 = call i64 @strlen(i8* %26) #8
  call void @g_checksum_update(%struct._GChecksum* %22, i8* %24, i64 %call9)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %while.body
  %27 = load %struct._GList*, %struct._GList** %color_iterator, align 8
  %tobool10 = icmp ne %struct._GList* %27, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %28 = load %struct._GList*, %struct._GList** %color_iterator, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 1
  %29 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %29, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %color_iterator, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %30 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %call11 = call i8* @g_checksum_get_string(%struct._GChecksum* %30)
  %call12 = call noalias i8* @g_strdup(i8* %call11)
  store i8* %call12, i8** %checksum_string, align 8
  %31 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  call void @g_checksum_free(%struct._GChecksum* %31)
  br label %if.end.13

if.end.13:                                        ; preds = %while.end, %entry
  %32 = load i8*, i8** %checksum_string, align 8
  ret i8* %32
}

declare %struct._GChecksum* @g_checksum_new(i32) #1

declare void @g_checksum_update(%struct._GChecksum*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i8* @g_checksum_get_string(%struct._GChecksum*) #1

declare void @g_checksum_free(%struct._GChecksum*) #1

declare void @g_slice_free1(i64, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
