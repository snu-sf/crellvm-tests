; ModuleID = './app/widgets/gimptextbuffer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTextBufferClass = type { %struct._GtkTextBufferClass }
%struct._GtkTextBufferClass = type { %struct._GObjectClass, void (%struct._GtkTextBuffer*, %struct._GtkTextIter*, i8*, i32)*, void (%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GdkPixbuf*)*, void (%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextChildAnchor*)*, void (%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*)*, void (%struct._GtkTextBuffer*)*, void (%struct._GtkTextBuffer*)*, void (%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextMark*)*, void (%struct._GtkTextBuffer*, %struct._GtkTextMark*)*, void (%struct._GtkTextBuffer*, %struct._GtkTextTag*, %struct._GtkTextIter*, %struct._GtkTextIter*)*, void (%struct._GtkTextBuffer*, %struct._GtkTextTag*, %struct._GtkTextIter*, %struct._GtkTextIter*)*, void (%struct._GtkTextBuffer*)*, void (%struct._GtkTextBuffer*)*, void (%struct._GtkTextBuffer*, %struct._GtkClipboard*)*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }
%struct._GdkPixbuf = type opaque
%struct._GtkTextChildAnchor = type { %struct._GObject, i8* }
%struct._GtkTextMark = type { %struct._GObject, i8* }
%struct._GtkTextTag = type { %struct._GObject, %struct._GtkTextTagTable*, i8*, i32, %struct._GtkTextAttributes*, i24 }
%struct._GtkTextAttributes = type { i32, %struct._GtkTextAppearance, i32, i32, %struct._PangoFontDescription*, double, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i32, %struct._PangoLanguage*, %struct._GdkColor*, i8 }
%struct._GtkTextAppearance = type { %struct._GdkColor, %struct._GdkColor, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i8*, i16 }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._PangoFontDescription = type opaque
%struct._PangoTabArray = type opaque
%struct._PangoLanguage = type opaque
%struct._GtkClipboard = type opaque
%struct._GimpTextBuffer = type { %struct._GtkTextBuffer, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GList*, i32, %struct._GList*, %struct._GList*, %struct._GdkAtom* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GdkAtom = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_text_buffer_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpTextBuffer\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_text_buffer_set_text = private unnamed_addr constant [26 x i8] c"gimp_text_buffer_set_text\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"GIMP_IS_TEXT_BUFFER (buffer)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.gimp_text_buffer_get_text = private unnamed_addr constant [26 x i8] c"gimp_text_buffer_get_text\00", align 1
@__func__.gimp_text_buffer_set_markup = private unnamed_addr constant [28 x i8] c"gimp_text_buffer_set_markup\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"EEK: %s\0A\00", align 1
@__func__.gimp_text_buffer_get_markup = private unnamed_addr constant [28 x i8] c"gimp_text_buffer_get_markup\00", align 1
@__func__.gimp_text_buffer_has_markup = private unnamed_addr constant [28 x i8] c"gimp_text_buffer_has_markup\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"size-%d\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@__func__.gimp_text_buffer_set_size = private unnamed_addr constant [26 x i8] c"gimp_text_buffer_set_size\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"start != NULL\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"end != NULL\00", align 1
@__func__.gimp_text_buffer_change_size = private unnamed_addr constant [29 x i8] c"gimp_text_buffer_change_size\00", align 1
@__func__.gimp_text_buffer_set_baseline = private unnamed_addr constant [30 x i8] c"gimp_text_buffer_set_baseline\00", align 1
@__func__.gimp_text_buffer_change_baseline = private unnamed_addr constant [33 x i8] c"gimp_text_buffer_change_baseline\00", align 1
@__func__.gimp_text_buffer_set_kerning = private unnamed_addr constant [29 x i8] c"gimp_text_buffer_set_kerning\00", align 1
@__func__.gimp_text_buffer_change_kerning = private unnamed_addr constant [32 x i8] c"gimp_text_buffer_change_kerning\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"font-%s\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@__func__.gimp_text_buffer_set_font = private unnamed_addr constant [26 x i8] c"gimp_text_buffer_set_font\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"color-#%02x%02x%02x\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"foreground-gdk\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"foreground-set\00", align 1
@__func__.gimp_text_buffer_set_color = private unnamed_addr constant [27 x i8] c"gimp_text_buffer_set_color\00", align 1
@__func__.gimp_text_buffer_tag_to_name = private unnamed_addr constant [29 x i8] c"gimp_text_buffer_tag_to_name\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"GTK_IS_TEXT_TAG (tag)\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"span\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"rise\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"letter_spacing\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"foreground\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"#%02x%02x%02x\00", align 1
@__func__.gimp_text_buffer_name_to_tag = private unnamed_addr constant [29 x i8] c"gimp_text_buffer_name_to_tag\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@__func__.gimp_text_buffer_set_insert_tags = private unnamed_addr constant [33 x i8] c"gimp_text_buffer_set_insert_tags\00", align 1
@__func__.gimp_text_buffer_clear_insert_tags = private unnamed_addr constant [35 x i8] c"gimp_text_buffer_clear_insert_tags\00", align 1
@__func__.gimp_text_buffer_insert = private unnamed_addr constant [24 x i8] c"gimp_text_buffer_insert\00", align 1
@__func__.gimp_text_buffer_get_iter_index = private unnamed_addr constant [32 x i8] c"gimp_text_buffer_get_iter_index\00", align 1
@__func__.gimp_text_buffer_get_iter_at_index = private unnamed_addr constant [35 x i8] c"gimp_text_buffer_get_iter_at_index\00", align 1
@g_utf8_skip = external constant i8*, align 8
@__func__.gimp_text_buffer_load = private unnamed_addr constant [22 x i8] c"gimp_text_buffer_load\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"Invalid UTF-8 data in file '%s'.\00", align 1
@__func__.gimp_text_buffer_save = private unnamed_addr constant [22 x i8] c"gimp_text_buffer_save\00", align 1
@gimp_text_buffer_parent_class = internal global i8* null, align 8
@GimpTextBuffer_private_offset = internal global i32 0, align 4
@.str.30 = private unnamed_addr constant [5 x i8] c"bold\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"italic\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"underline\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"strikethrough\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"application/x-gimp-pango-markup\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"baseline-%d\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"kerning-%d\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_text_buffer_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_text_buffer_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_text_buffer_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_text_buffer_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 280, void (i8*, i8*)* bitcast (void (i8*)* @gimp_text_buffer_class_intern_init to void (i8*, i8*)*), i32 176, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTextBuffer*)* @gimp_text_buffer_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_text_buffer_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_text_buffer_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_text_buffer_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_buffer_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_text_buffer_parent_class, align 8
  %1 = load i32, i32* @GimpTextBuffer_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTextBuffer_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTextBufferClass*
  call void @gimp_text_buffer_class_init(%struct._GimpTextBufferClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_buffer_init(%struct._GimpTextBuffer* %buffer) #3 {
entry:
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTextBuffer*
  %call2 = call %struct._GdkAtom* @gtk_text_buffer_register_serialize_format(%struct._GtkTextBuffer* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i32 0, i32 0), i8* (%struct._GtkTextBuffer*, %struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i64*, i8*)* @gimp_text_buffer_serialize, i8* null, void (i8*)* null)
  %3 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %markup_atom = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %3, i32 0, i32 13
  store %struct._GdkAtom* %call2, %struct._GdkAtom** %markup_atom, align 8
  %4 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %5 = bitcast %struct._GimpTextBuffer* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_text_buffer_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTextBuffer*
  %call5 = call %struct._GdkAtom* @gtk_text_buffer_register_deserialize_format(%struct._GtkTextBuffer* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i32 0, i32 0), i32 (%struct._GtkTextBuffer*, %struct._GtkTextBuffer*, %struct._GtkTextIter*, i8*, i64, i32, i8*, %struct._GError**)* @gimp_text_buffer_deserialize, i8* null, void (i8*)* null)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpTextBuffer* @gimp_text_buffer_new() #3 {
entry:
  %call = call i64 @gimp_text_buffer_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpTextBuffer*
  ret %struct._GimpTextBuffer* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_buffer_set_text(%struct._GimpTextBuffer* %buffer, i8* %text) #3 {
entry:
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %text.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_text_buffer_set_text, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i8*, i8** %text.addr, align 8
  %cmp11 = icmp eq i8* %13, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %text.addr, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %do.end
  %14 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %15 = bitcast %struct._GimpTextBuffer* %14 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_text_buffer_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call14)
  %16 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkTextBuffer*
  %17 = load i8*, i8** %text.addr, align 8
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %16, i8* %17, i32 -1)
  %18 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  call void @gimp_text_buffer_clear_insert_tags(%struct._GimpTextBuffer* %18)
  br label %return

return:                                           ; preds = %if.end.13, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @gtk_text_buffer_set_text(%struct._GtkTextBuffer*, i8*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_buffer_clear_insert_tags(%struct._GimpTextBuffer* %buffer) #3 {
entry:
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_text_buffer_clear_insert_tags, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %insert_tags_set = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %13, i32 0, i32 10
  store i32 0, i32* %insert_tags_set, align 4
  %14 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %insert_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %14, i32 0, i32 11
  %15 = load %struct._GList*, %struct._GList** %insert_tags, align 8
  call void @g_list_free(%struct._GList* %15)
  %16 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %remove_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %16, i32 0, i32 12
  %17 = load %struct._GList*, %struct._GList** %remove_tags, align 8
  call void @g_list_free(%struct._GList* %17)
  %18 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %insert_tags11 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %18, i32 0, i32 11
  store %struct._GList* null, %struct._GList** %insert_tags11, align 8
  %19 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %remove_tags12 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %19, i32 0, i32 12
  store %struct._GList* null, %struct._GList** %remove_tags12, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gimp_text_buffer_get_text(%struct._GimpTextBuffer* %buffer) #3 {
entry:
  %retval = alloca i8*, align 8
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_text_buffer_get_text, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %14 = bitcast %struct._GimpTextBuffer* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_text_buffer_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer* %15, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %16 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %17 = bitcast %struct._GimpTextBuffer* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_text_buffer_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkTextBuffer*
  %call15 = call i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer* %18, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i32 1)
  store i8* %call15, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %19 = load i8*, i8** %retval
  ret i8* %19
}

declare void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_buffer_set_markup(%struct._GimpTextBuffer* %buffer, i8* %markup) #3 {
entry:
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %markup.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tag_table = alloca %struct._GtkTextTagTable*, align 8
  %content = alloca %struct._GtkTextBuffer*, align 8
  %insert = alloca %struct._GtkTextIter, align 8
  %error = alloca %struct._GError*, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store i8* %markup, i8** %markup.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_text_buffer_set_markup, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  call void @gimp_text_buffer_set_text(%struct._GimpTextBuffer* %13, i8* null)
  %14 = load i8*, i8** %markup.addr, align 8
  %tobool11 = icmp ne i8* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.34

if.then.12:                                       ; preds = %do.end
  store %struct._GError* null, %struct._GError** %error, align 8
  %15 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %16 = bitcast %struct._GimpTextBuffer* %15 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_text_buffer_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call17)
  %17 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkTextBuffer*
  %call19 = call %struct._GtkTextTagTable* @gtk_text_buffer_get_tag_table(%struct._GtkTextBuffer* %17)
  store %struct._GtkTextTagTable* %call19, %struct._GtkTextTagTable** %tag_table, align 8
  %18 = load %struct._GtkTextTagTable*, %struct._GtkTextTagTable** %tag_table, align 8
  %call20 = call %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable* %18)
  store %struct._GtkTextBuffer* %call20, %struct._GtkTextBuffer** %content, align 8
  %19 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content, align 8
  call void @gtk_text_buffer_get_start_iter(%struct._GtkTextBuffer* %19, %struct._GtkTextIter* %insert)
  %20 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %21 = bitcast %struct._GimpTextBuffer* %20 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_text_buffer_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call21)
  %22 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTextBuffer*
  %23 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content, align 8
  %24 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %markup_atom = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %24, i32 0, i32 13
  %25 = load %struct._GdkAtom*, %struct._GdkAtom** %markup_atom, align 8
  %26 = load i8*, i8** %markup.addr, align 8
  %call23 = call i32 @gtk_text_buffer_deserialize(%struct._GtkTextBuffer* %22, %struct._GtkTextBuffer* %23, %struct._GdkAtom* %25, %struct._GtkTextIter* %insert, i8* %26, i64 -1, %struct._GError** %error)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.else.26, label %if.then.25

if.then.25:                                       ; preds = %if.then.12
  %27 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %27, i32 0, i32 2
  %28 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* %28)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.33

if.else.26:                                       ; preds = %if.then.12
  %29 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %30 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content, align 8
  call void @gimp_text_buffer_post_deserialize(%struct._GimpTextBuffer* %29, %struct._GtkTextBuffer* %30)
  %31 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content, align 8
  call void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer* %31, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %32 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %33 = bitcast %struct._GimpTextBuffer* %32 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_text_buffer_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call29)
  %34 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_get_start_iter(%struct._GtkTextBuffer* %34, %struct._GtkTextIter* %insert)
  %35 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %36 = bitcast %struct._GimpTextBuffer* %35 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_text_buffer_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call31)
  %37 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_insert_range(%struct._GtkTextBuffer* %37, %struct._GtkTextIter* %insert, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.26, %if.then.25
  %38 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content, align 8
  %39 = bitcast %struct._GtkTextBuffer* %38 to i8*
  call void @g_object_unref(i8* %39)
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %do.end
  %40 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  call void @gimp_text_buffer_clear_insert_tags(%struct._GimpTextBuffer* %40)
  br label %return

return:                                           ; preds = %if.end.34, %if.else.9
  ret void
}

declare %struct._GtkTextTagTable* @gtk_text_buffer_get_tag_table(%struct._GtkTextBuffer*) #1

declare %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable*) #1

declare void @gtk_text_buffer_get_start_iter(%struct._GtkTextBuffer*, %struct._GtkTextIter*) #1

declare i32 @gtk_text_buffer_deserialize(%struct._GtkTextBuffer*, %struct._GtkTextBuffer*, %struct._GdkAtom*, %struct._GtkTextIter*, i8*, i64, %struct._GError**) #1

declare void @g_printerr(i8*, ...) #1

declare void @g_clear_error(%struct._GError**) #1

declare void @gimp_text_buffer_post_deserialize(%struct._GimpTextBuffer*, %struct._GtkTextBuffer*) #1

declare void @gtk_text_buffer_insert_range(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_text_buffer_get_markup(%struct._GimpTextBuffer* %buffer) #3 {
entry:
  %retval = alloca i8*, align 8
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %tag_table = alloca %struct._GtkTextTagTable*, align 8
  %content = alloca %struct._GtkTextBuffer*, align 8
  %insert = alloca %struct._GtkTextIter, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  %markup = alloca i8*, align 8
  %length = alloca i64, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_text_buffer_get_markup, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %14 = bitcast %struct._GimpTextBuffer* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_text_buffer_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTextBuffer*
  %call13 = call %struct._GtkTextTagTable* @gtk_text_buffer_get_tag_table(%struct._GtkTextBuffer* %15)
  store %struct._GtkTextTagTable* %call13, %struct._GtkTextTagTable** %tag_table, align 8
  %16 = load %struct._GtkTextTagTable*, %struct._GtkTextTagTable** %tag_table, align 8
  %call14 = call %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable* %16)
  store %struct._GtkTextBuffer* %call14, %struct._GtkTextBuffer** %content, align 8
  %17 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %18 = bitcast %struct._GimpTextBuffer* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_text_buffer_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer* %19, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %20 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content, align 8
  call void @gtk_text_buffer_get_start_iter(%struct._GtkTextBuffer* %20, %struct._GtkTextIter* %insert)
  %21 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content, align 8
  call void @gtk_text_buffer_insert_range(%struct._GtkTextBuffer* %21, %struct._GtkTextIter* %insert, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %22 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %23 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content, align 8
  call void @gimp_text_buffer_pre_serialize(%struct._GimpTextBuffer* %22, %struct._GtkTextBuffer* %23)
  %24 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content, align 8
  call void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer* %24, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %25 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %26 = bitcast %struct._GimpTextBuffer* %25 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_text_buffer_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call17)
  %27 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkTextBuffer*
  %28 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content, align 8
  %29 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %markup_atom = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %29, i32 0, i32 13
  %30 = load %struct._GdkAtom*, %struct._GdkAtom** %markup_atom, align 8
  %call19 = call i8* @gtk_text_buffer_serialize(%struct._GtkTextBuffer* %27, %struct._GtkTextBuffer* %28, %struct._GdkAtom* %30, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i64* %length)
  store i8* %call19, i8** %markup, align 8
  %31 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content, align 8
  %32 = bitcast %struct._GtkTextBuffer* %31 to i8*
  call void @g_object_unref(i8* %32)
  %33 = load i8*, i8** %markup, align 8
  store i8* %33, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %34 = load i8*, i8** %retval
  ret i8* %34
}

declare void @gimp_text_buffer_pre_serialize(%struct._GimpTextBuffer*, %struct._GtkTextBuffer*) #1

declare i8* @gtk_text_buffer_serialize(%struct._GtkTextBuffer*, %struct._GtkTextBuffer*, %struct._GdkAtom*, %struct._GtkTextIter*, %struct._GtkTextIter*, i64*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_text_buffer_has_markup(%struct._GimpTextBuffer* %buffer) #3 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %iter = alloca %struct._GtkTextIter, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tags = alloca %struct._GSList*, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_text_buffer_has_markup, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %14 = bitcast %struct._GimpTextBuffer* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_text_buffer_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_get_start_iter(%struct._GtkTextBuffer* %15, %struct._GtkTextIter* %iter)
  br label %do.body.13

do.body.13:                                       ; preds = %do.cond, %do.end
  %call15 = call %struct._GSList* @gtk_text_iter_get_tags(%struct._GtkTextIter* %iter)
  store %struct._GSList* %call15, %struct._GSList** %tags, align 8
  %16 = load %struct._GSList*, %struct._GSList** %tags, align 8
  %tobool16 = icmp ne %struct._GSList* %16, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.body.13
  %17 = load %struct._GSList*, %struct._GSList** %tags, align 8
  call void @g_slist_free(%struct._GSList* %17)
  store i32 1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %do.body.13
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  %call19 = call i32 @gtk_text_iter_forward_char(%struct._GtkTextIter* %iter)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %do.body.13, label %do.end.21

do.end.21:                                        ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.21, %if.then.17, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare %struct._GSList* @gtk_text_iter_get_tags(%struct._GtkTextIter*) #1

declare void @g_slist_free(%struct._GSList*) #1

declare i32 @gtk_text_iter_forward_char(%struct._GtkTextIter*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkTextTag* @gimp_text_buffer_get_iter_size(%struct._GimpTextBuffer* %buffer, %struct._GtkTextIter* %iter, i32* %size) #3 {
entry:
  %retval = alloca %struct._GtkTextTag*, align 8
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %iter.addr = alloca %struct._GtkTextIter*, align 8
  %size.addr = alloca i32*, align 8
  %list = alloca %struct._GList*, align 8
  %tag = alloca %struct._GtkTextTag*, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GtkTextIter* %iter, %struct._GtkTextIter** %iter.addr, align 8
  store i32* %size, i32** %size.addr, align 8
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %size_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %0, i32 0, i32 5
  %1 = load %struct._GList*, %struct._GList** %size_tags, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %5, %struct._GtkTextTag** %tag, align 8
  %6 = load %struct._GtkTextIter*, %struct._GtkTextIter** %iter.addr, align 8
  %7 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %call = call i32 @gtk_text_iter_has_tag(%struct._GtkTextIter* %6, %struct._GtkTextTag* %7)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end.5

if.then:                                          ; preds = %for.body
  %8 = load i32*, i32** %size.addr, align 8
  %tobool2 = icmp ne i32* %8, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %call4 = call i32 @gimp_text_tag_get_size(%struct._GtkTextTag* %9)
  %10 = load i32*, i32** %size.addr, align 8
  store i32 %call4, i32* %10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %11 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  store %struct._GtkTextTag* %11, %struct._GtkTextTag** %retval
  br label %return

if.end.5:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool6 = icmp ne %struct._GList* %12, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %14, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32*, i32** %size.addr, align 8
  %tobool7 = icmp ne i32* %15, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.end
  %16 = load i32*, i32** %size.addr, align 8
  store i32 0, i32* %16, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %for.end
  store %struct._GtkTextTag* null, %struct._GtkTextTag** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.end
  %17 = load %struct._GtkTextTag*, %struct._GtkTextTag** %retval
  ret %struct._GtkTextTag* %17
}

declare i32 @gtk_text_iter_has_tag(%struct._GtkTextIter*, %struct._GtkTextTag*) #1

declare i32 @gimp_text_tag_get_size(%struct._GtkTextTag*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkTextTag* @gimp_text_buffer_get_size_tag(%struct._GimpTextBuffer* %buffer, i32 %size) #3 {
entry:
  %retval = alloca %struct._GtkTextTag*, align 8
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %size.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %tag = alloca %struct._GtkTextTag*, align 8
  %name = alloca [32 x i8], align 16
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %size_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %0, i32 0, i32 5
  %1 = load %struct._GList*, %struct._GList** %size_tags, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %5, %struct._GtkTextTag** %tag, align 8
  %6 = load i32, i32* %size.addr, align 4
  %7 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %call = call i32 @gimp_text_tag_get_size(%struct._GtkTextTag* %7)
  %cmp = icmp eq i32 %6, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  store %struct._GtkTextTag* %8, %struct._GtkTextTag** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool1 = icmp ne %struct._GList* %9, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %11, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %name, i32 0, i32 0
  %12 = load i32, i32* %size.addr, align 4
  %call2 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %12)
  %13 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %14 = bitcast %struct._GimpTextBuffer* %13 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_text_buffer_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call3)
  %15 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTextBuffer*
  %arraydecay5 = getelementptr inbounds [32 x i8], [32 x i8]* %name, i32 0, i32 0
  %16 = load i32, i32* %size.addr, align 4
  %call6 = call %struct._GtkTextTag* (%struct._GtkTextBuffer*, i8*, i8*, ...) @gtk_text_buffer_create_tag(%struct._GtkTextBuffer* %15, i8* %arraydecay5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %16, i8* null)
  store %struct._GtkTextTag* %call6, %struct._GtkTextTag** %tag, align 8
  %17 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %size_tags7 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %17, i32 0, i32 5
  %18 = load %struct._GList*, %struct._GList** %size_tags7, align 8
  %19 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %20 = bitcast %struct._GtkTextTag* %19 to i8*
  %call8 = call %struct._GList* @g_list_prepend(%struct._GList* %18, i8* %20)
  %21 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %size_tags9 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %21, i32 0, i32 5
  store %struct._GList* %call8, %struct._GList** %size_tags9, align 8
  %22 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  store %struct._GtkTextTag* %22, %struct._GtkTextTag** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %23 = load %struct._GtkTextTag*, %struct._GtkTextTag** %retval
  ret %struct._GtkTextTag* %23
}

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare %struct._GtkTextTag* @gtk_text_buffer_create_tag(%struct._GtkTextBuffer*, i8*, i8*, ...) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_buffer_set_size(%struct._GimpTextBuffer* %buffer, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i32 %size) #3 {
entry:
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %start.addr = alloca %struct._GtkTextIter*, align 8
  %end.addr = alloca %struct._GtkTextIter*, align 8
  %size.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tag = alloca %struct._GtkTextTag*, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GtkTextIter* %start, %struct._GtkTextIter** %start.addr, align 8
  store %struct._GtkTextIter* %end, %struct._GtkTextIter** %end.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_text_buffer_set_size, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %cmp12 = icmp ne %struct._GtkTextIter* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_text_buffer_set_size, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %cmp18 = icmp ne %struct._GtkTextIter* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_text_buffer_set_size, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %16 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call23 = call i32 @gtk_text_iter_equal(%struct._GtkTextIter* %15, %struct._GtkTextIter* %16)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %do.end.22
  br label %return

if.end.26:                                        ; preds = %do.end.22
  %17 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %18 = bitcast %struct._GimpTextBuffer* %17 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_text_buffer_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call27)
  %19 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_begin_user_action(%struct._GtkTextBuffer* %19)
  %20 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %size_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %20, i32 0, i32 5
  %21 = load %struct._GList*, %struct._GList** %size_tags, align 8
  store %struct._GList* %21, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.26
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool29 = icmp ne %struct._GList* %22, null
  br i1 %tobool29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %24 = bitcast %struct._GimpTextBuffer* %23 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_text_buffer_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call30)
  %25 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTextBuffer*
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8
  %28 = bitcast i8* %27 to %struct._GtkTextTag*
  %29 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %30 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  call void @gtk_text_buffer_remove_tag(%struct._GtkTextBuffer* %25, %struct._GtkTextTag* %28, %struct._GtkTextIter* %29, %struct._GtkTextIter* %30)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool32 = icmp ne %struct._GList* %31, null
  br i1 %tobool32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %33, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %size.addr, align 4
  %cmp33 = icmp ne i32 %34, 0
  br i1 %cmp33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %for.end
  %35 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %36 = load i32, i32* %size.addr, align 4
  %call36 = call %struct._GtkTextTag* @gimp_text_buffer_get_size_tag(%struct._GimpTextBuffer* %35, i32 %36)
  store %struct._GtkTextTag* %call36, %struct._GtkTextTag** %tag, align 8
  %37 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %38 = bitcast %struct._GimpTextBuffer* %37 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_text_buffer_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call37)
  %39 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTextBuffer*
  %40 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %41 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %42 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  call void @gtk_text_buffer_apply_tag(%struct._GtkTextBuffer* %39, %struct._GtkTextTag* %40, %struct._GtkTextIter* %41, %struct._GtkTextIter* %42)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %for.end
  %43 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %44 = bitcast %struct._GimpTextBuffer* %43 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_text_buffer_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call40)
  %45 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_end_user_action(%struct._GtkTextBuffer* %45)
  br label %return

return:                                           ; preds = %if.end.39, %if.then.25, %if.else.20, %if.else.14, %if.else.9
  ret void
}

declare i32 @gtk_text_iter_equal(%struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare void @gtk_text_buffer_begin_user_action(%struct._GtkTextBuffer*) #1

declare void @gtk_text_buffer_remove_tag(%struct._GtkTextBuffer*, %struct._GtkTextTag*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare void @gtk_text_buffer_apply_tag(%struct._GtkTextBuffer*, %struct._GtkTextTag*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare void @gtk_text_buffer_end_user_action(%struct._GtkTextBuffer*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_buffer_change_size(%struct._GimpTextBuffer* %buffer, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i32 %count) #3 {
entry:
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %start.addr = alloca %struct._GtkTextIter*, align 8
  %end.addr = alloca %struct._GtkTextIter*, align 8
  %count.addr = alloca i32, align 4
  %iter = alloca %struct._GtkTextIter, align 8
  %span_start = alloca %struct._GtkTextIter, align 8
  %span_end = alloca %struct._GtkTextIter, align 8
  %span_tag = alloca %struct._GtkTextTag*, align 8
  %span_size = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %iter_tag = alloca %struct._GtkTextTag*, align 8
  %iter_size = alloca i32, align 4
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GtkTextIter* %start, %struct._GtkTextIter** %start.addr, align 8
  store %struct._GtkTextIter* %end, %struct._GtkTextIter** %end.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_buffer_change_size, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %cmp12 = icmp ne %struct._GtkTextIter* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_buffer_change_size, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %cmp18 = icmp ne %struct._GtkTextIter* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_buffer_change_size, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %16 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call23 = call i32 @gtk_text_iter_equal(%struct._GtkTextIter* %15, %struct._GtkTextIter* %16)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %do.end.22
  br label %return

if.end.26:                                        ; preds = %do.end.22
  %17 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %18 = bitcast %struct._GtkTextIter* %iter to i8*
  %19 = bitcast %struct._GtkTextIter* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 80, i32 8, i1 false)
  %20 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %21 = bitcast %struct._GtkTextIter* %span_start to i8*
  %22 = bitcast %struct._GtkTextIter* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 80, i32 8, i1 false)
  %23 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %call27 = call %struct._GtkTextTag* @gimp_text_buffer_get_iter_size(%struct._GimpTextBuffer* %23, %struct._GtkTextIter* %iter, i32* %span_size)
  store %struct._GtkTextTag* %call27, %struct._GtkTextTag** %span_tag, align 8
  %24 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %25 = bitcast %struct._GimpTextBuffer* %24 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_text_buffer_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call28)
  %26 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_begin_user_action(%struct._GtkTextBuffer* %26)
  br label %do.body.30

do.body.30:                                       ; preds = %do.cond, %if.end.26
  %call33 = call i32 @gtk_text_iter_forward_char(%struct._GtkTextIter* %iter)
  %27 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %call34 = call %struct._GtkTextTag* @gimp_text_buffer_get_iter_size(%struct._GimpTextBuffer* %27, %struct._GtkTextIter* %iter, i32* %iter_size)
  store %struct._GtkTextTag* %call34, %struct._GtkTextTag** %iter_tag, align 8
  %28 = bitcast %struct._GtkTextIter* %span_end to i8*
  %29 = bitcast %struct._GtkTextIter* %iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 80, i32 8, i1 false)
  %30 = load i32, i32* %iter_size, align 4
  %31 = load i32, i32* %span_size, align 4
  %cmp35 = icmp ne i32 %30, %31
  br i1 %cmp35, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.30
  %32 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call36 = call i32 @gtk_text_iter_compare(%struct._GtkTextIter* %iter, %struct._GtkTextIter* %32)
  %cmp37 = icmp sge i32 %call36, 0
  br i1 %cmp37, label %if.then.38, label %if.end.51

if.then.38:                                       ; preds = %lor.lhs.false, %do.body.30
  %33 = load i32, i32* %span_size, align 4
  %cmp39 = icmp ne i32 %33, 0
  br i1 %cmp39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.then.38
  %34 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %35 = bitcast %struct._GimpTextBuffer* %34 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_text_buffer_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call41)
  %36 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTextBuffer*
  %37 = load %struct._GtkTextTag*, %struct._GtkTextTag** %span_tag, align 8
  call void @gtk_text_buffer_remove_tag(%struct._GtkTextBuffer* %36, %struct._GtkTextTag* %37, %struct._GtkTextIter* %span_start, %struct._GtkTextIter* %span_end)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.then.38
  %38 = load i32, i32* %span_size, align 4
  %39 = load i32, i32* %count.addr, align 4
  %add = add nsw i32 %38, %39
  %cmp44 = icmp sgt i32 %add, 0
  br i1 %cmp44, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %if.end.43
  %40 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %41 = load i32, i32* %span_size, align 4
  %42 = load i32, i32* %count.addr, align 4
  %add46 = add nsw i32 %41, %42
  %call47 = call %struct._GtkTextTag* @gimp_text_buffer_get_size_tag(%struct._GimpTextBuffer* %40, i32 %add46)
  store %struct._GtkTextTag* %call47, %struct._GtkTextTag** %span_tag, align 8
  %43 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %44 = bitcast %struct._GimpTextBuffer* %43 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_text_buffer_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call48)
  %45 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkTextBuffer*
  %46 = load %struct._GtkTextTag*, %struct._GtkTextTag** %span_tag, align 8
  call void @gtk_text_buffer_apply_tag(%struct._GtkTextBuffer* %45, %struct._GtkTextTag* %46, %struct._GtkTextIter* %span_start, %struct._GtkTextIter* %span_end)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.45, %if.end.43
  %47 = bitcast %struct._GtkTextIter* %span_start to i8*
  %48 = bitcast %struct._GtkTextIter* %iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 80, i32 8, i1 false)
  %49 = load i32, i32* %iter_size, align 4
  store i32 %49, i32* %span_size, align 4
  %50 = load %struct._GtkTextTag*, %struct._GtkTextTag** %iter_tag, align 8
  store %struct._GtkTextTag* %50, %struct._GtkTextTag** %span_tag, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %lor.lhs.false
  %51 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call52 = call i32 @gtk_text_iter_compare(%struct._GtkTextIter* %iter, %struct._GtkTextIter* %51)
  %cmp53 = icmp sgt i32 %call52, 0
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  %52 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %53 = bitcast %struct._GtkTextIter* %iter to i8*
  %54 = bitcast %struct._GtkTextIter* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 80, i32 8, i1 false)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.51
  br label %do.cond

do.cond:                                          ; preds = %if.end.55
  %55 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call56 = call i32 @gtk_text_iter_equal(%struct._GtkTextIter* %iter, %struct._GtkTextIter* %55)
  %tobool57 = icmp ne i32 %call56, 0
  %lnot = xor i1 %tobool57, true
  br i1 %lnot, label %do.body.30, label %do.end.58

do.end.58:                                        ; preds = %do.cond
  %56 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %57 = bitcast %struct._GimpTextBuffer* %56 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_text_buffer_get_type() #7
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call59)
  %58 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_end_user_action(%struct._GtkTextBuffer* %58)
  br label %return

return:                                           ; preds = %do.end.58, %if.then.25, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i32 @gtk_text_iter_compare(%struct._GtkTextIter*, %struct._GtkTextIter*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkTextTag* @gimp_text_buffer_get_iter_baseline(%struct._GimpTextBuffer* %buffer, %struct._GtkTextIter* %iter, i32* %baseline) #3 {
entry:
  %retval = alloca %struct._GtkTextTag*, align 8
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %iter.addr = alloca %struct._GtkTextIter*, align 8
  %baseline.addr = alloca i32*, align 8
  %list = alloca %struct._GList*, align 8
  %tag = alloca %struct._GtkTextTag*, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GtkTextIter* %iter, %struct._GtkTextIter** %iter.addr, align 8
  store i32* %baseline, i32** %baseline.addr, align 8
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %baseline_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %0, i32 0, i32 6
  %1 = load %struct._GList*, %struct._GList** %baseline_tags, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %5, %struct._GtkTextTag** %tag, align 8
  %6 = load %struct._GtkTextIter*, %struct._GtkTextIter** %iter.addr, align 8
  %7 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %call = call i32 @gtk_text_iter_has_tag(%struct._GtkTextIter* %6, %struct._GtkTextTag* %7)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end.5

if.then:                                          ; preds = %for.body
  %8 = load i32*, i32** %baseline.addr, align 8
  %tobool2 = icmp ne i32* %8, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %call4 = call i32 @gimp_text_tag_get_baseline(%struct._GtkTextTag* %9)
  %10 = load i32*, i32** %baseline.addr, align 8
  store i32 %call4, i32* %10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %11 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  store %struct._GtkTextTag* %11, %struct._GtkTextTag** %retval
  br label %return

if.end.5:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool6 = icmp ne %struct._GList* %12, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %14, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32*, i32** %baseline.addr, align 8
  %tobool7 = icmp ne i32* %15, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.end
  %16 = load i32*, i32** %baseline.addr, align 8
  store i32 0, i32* %16, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %for.end
  store %struct._GtkTextTag* null, %struct._GtkTextTag** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.end
  %17 = load %struct._GtkTextTag*, %struct._GtkTextTag** %retval
  ret %struct._GtkTextTag* %17
}

declare i32 @gimp_text_tag_get_baseline(%struct._GtkTextTag*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_buffer_set_baseline(%struct._GimpTextBuffer* %buffer, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i32 %baseline) #3 {
entry:
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %start.addr = alloca %struct._GtkTextIter*, align 8
  %end.addr = alloca %struct._GtkTextIter*, align 8
  %baseline.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tag = alloca %struct._GtkTextTag*, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GtkTextIter* %start, %struct._GtkTextIter** %start.addr, align 8
  store %struct._GtkTextIter* %end, %struct._GtkTextIter** %end.addr, align 8
  store i32 %baseline, i32* %baseline.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_text_buffer_set_baseline, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %cmp12 = icmp ne %struct._GtkTextIter* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_text_buffer_set_baseline, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %cmp18 = icmp ne %struct._GtkTextIter* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_text_buffer_set_baseline, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %16 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call23 = call i32 @gtk_text_iter_equal(%struct._GtkTextIter* %15, %struct._GtkTextIter* %16)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %do.end.22
  br label %return

if.end.26:                                        ; preds = %do.end.22
  %17 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %18 = bitcast %struct._GimpTextBuffer* %17 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_text_buffer_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call27)
  %19 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_begin_user_action(%struct._GtkTextBuffer* %19)
  %20 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %baseline_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %20, i32 0, i32 6
  %21 = load %struct._GList*, %struct._GList** %baseline_tags, align 8
  store %struct._GList* %21, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.26
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool29 = icmp ne %struct._GList* %22, null
  br i1 %tobool29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %24 = bitcast %struct._GimpTextBuffer* %23 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_text_buffer_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call30)
  %25 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTextBuffer*
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8
  %28 = bitcast i8* %27 to %struct._GtkTextTag*
  %29 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %30 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  call void @gtk_text_buffer_remove_tag(%struct._GtkTextBuffer* %25, %struct._GtkTextTag* %28, %struct._GtkTextIter* %29, %struct._GtkTextIter* %30)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool32 = icmp ne %struct._GList* %31, null
  br i1 %tobool32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %33, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %baseline.addr, align 4
  %cmp33 = icmp ne i32 %34, 0
  br i1 %cmp33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %for.end
  %35 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %36 = load i32, i32* %baseline.addr, align 4
  %call36 = call %struct._GtkTextTag* @gimp_text_buffer_get_baseline_tag(%struct._GimpTextBuffer* %35, i32 %36)
  store %struct._GtkTextTag* %call36, %struct._GtkTextTag** %tag, align 8
  %37 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %38 = bitcast %struct._GimpTextBuffer* %37 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_text_buffer_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call37)
  %39 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTextBuffer*
  %40 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %41 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %42 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  call void @gtk_text_buffer_apply_tag(%struct._GtkTextBuffer* %39, %struct._GtkTextTag* %40, %struct._GtkTextIter* %41, %struct._GtkTextIter* %42)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %for.end
  %43 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %44 = bitcast %struct._GimpTextBuffer* %43 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_text_buffer_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call40)
  %45 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_end_user_action(%struct._GtkTextBuffer* %45)
  br label %return

return:                                           ; preds = %if.end.39, %if.then.25, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkTextTag* @gimp_text_buffer_get_baseline_tag(%struct._GimpTextBuffer* %buffer, i32 %baseline) #3 {
entry:
  %retval = alloca %struct._GtkTextTag*, align 8
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %baseline.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %tag = alloca %struct._GtkTextTag*, align 8
  %name = alloca [32 x i8], align 16
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store i32 %baseline, i32* %baseline.addr, align 4
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %baseline_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %0, i32 0, i32 6
  %1 = load %struct._GList*, %struct._GList** %baseline_tags, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %5, %struct._GtkTextTag** %tag, align 8
  %6 = load i32, i32* %baseline.addr, align 4
  %7 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %call = call i32 @gimp_text_tag_get_baseline(%struct._GtkTextTag* %7)
  %cmp = icmp eq i32 %6, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  store %struct._GtkTextTag* %8, %struct._GtkTextTag** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool1 = icmp ne %struct._GList* %9, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %11, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %name, i32 0, i32 0
  %12 = load i32, i32* %baseline.addr, align 4
  %call2 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 %12)
  %13 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %14 = bitcast %struct._GimpTextBuffer* %13 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_text_buffer_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call3)
  %15 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTextBuffer*
  %arraydecay5 = getelementptr inbounds [32 x i8], [32 x i8]* %name, i32 0, i32 0
  %16 = load i32, i32* %baseline.addr, align 4
  %call6 = call %struct._GtkTextTag* (%struct._GtkTextBuffer*, i8*, i8*, ...) @gtk_text_buffer_create_tag(%struct._GtkTextBuffer* %15, i8* %arraydecay5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 %16, i8* null)
  store %struct._GtkTextTag* %call6, %struct._GtkTextTag** %tag, align 8
  %17 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %baseline_tags7 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %17, i32 0, i32 6
  %18 = load %struct._GList*, %struct._GList** %baseline_tags7, align 8
  %19 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %20 = bitcast %struct._GtkTextTag* %19 to i8*
  %call8 = call %struct._GList* @g_list_prepend(%struct._GList* %18, i8* %20)
  %21 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %baseline_tags9 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %21, i32 0, i32 6
  store %struct._GList* %call8, %struct._GList** %baseline_tags9, align 8
  %22 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  store %struct._GtkTextTag* %22, %struct._GtkTextTag** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %23 = load %struct._GtkTextTag*, %struct._GtkTextTag** %retval
  ret %struct._GtkTextTag* %23
}

; Function Attrs: nounwind uwtable
define void @gimp_text_buffer_change_baseline(%struct._GimpTextBuffer* %buffer, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i32 %count) #3 {
entry:
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %start.addr = alloca %struct._GtkTextIter*, align 8
  %end.addr = alloca %struct._GtkTextIter*, align 8
  %count.addr = alloca i32, align 4
  %iter = alloca %struct._GtkTextIter, align 8
  %span_start = alloca %struct._GtkTextIter, align 8
  %span_end = alloca %struct._GtkTextIter, align 8
  %span_tag = alloca %struct._GtkTextTag*, align 8
  %span_baseline = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %iter_tag = alloca %struct._GtkTextTag*, align 8
  %iter_baseline = alloca i32, align 4
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GtkTextIter* %start, %struct._GtkTextIter** %start.addr, align 8
  store %struct._GtkTextIter* %end, %struct._GtkTextIter** %end.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_text_buffer_change_baseline, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %cmp12 = icmp ne %struct._GtkTextIter* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_text_buffer_change_baseline, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %cmp18 = icmp ne %struct._GtkTextIter* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_text_buffer_change_baseline, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %16 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call23 = call i32 @gtk_text_iter_equal(%struct._GtkTextIter* %15, %struct._GtkTextIter* %16)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %do.end.22
  br label %return

if.end.26:                                        ; preds = %do.end.22
  %17 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %18 = bitcast %struct._GtkTextIter* %iter to i8*
  %19 = bitcast %struct._GtkTextIter* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 80, i32 8, i1 false)
  %20 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %21 = bitcast %struct._GtkTextIter* %span_start to i8*
  %22 = bitcast %struct._GtkTextIter* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 80, i32 8, i1 false)
  %23 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %call27 = call %struct._GtkTextTag* @gimp_text_buffer_get_iter_baseline(%struct._GimpTextBuffer* %23, %struct._GtkTextIter* %iter, i32* %span_baseline)
  store %struct._GtkTextTag* %call27, %struct._GtkTextTag** %span_tag, align 8
  %24 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %25 = bitcast %struct._GimpTextBuffer* %24 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_text_buffer_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call28)
  %26 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_begin_user_action(%struct._GtkTextBuffer* %26)
  br label %do.body.30

do.body.30:                                       ; preds = %do.cond, %if.end.26
  %call33 = call i32 @gtk_text_iter_forward_char(%struct._GtkTextIter* %iter)
  %27 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %call34 = call %struct._GtkTextTag* @gimp_text_buffer_get_iter_baseline(%struct._GimpTextBuffer* %27, %struct._GtkTextIter* %iter, i32* %iter_baseline)
  store %struct._GtkTextTag* %call34, %struct._GtkTextTag** %iter_tag, align 8
  %28 = bitcast %struct._GtkTextIter* %span_end to i8*
  %29 = bitcast %struct._GtkTextIter* %iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 80, i32 8, i1 false)
  %30 = load i32, i32* %iter_baseline, align 4
  %31 = load i32, i32* %span_baseline, align 4
  %cmp35 = icmp ne i32 %30, %31
  br i1 %cmp35, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.30
  %32 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call36 = call i32 @gtk_text_iter_compare(%struct._GtkTextIter* %iter, %struct._GtkTextIter* %32)
  %cmp37 = icmp sge i32 %call36, 0
  br i1 %cmp37, label %if.then.38, label %if.end.51

if.then.38:                                       ; preds = %lor.lhs.false, %do.body.30
  %33 = load i32, i32* %span_baseline, align 4
  %cmp39 = icmp ne i32 %33, 0
  br i1 %cmp39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.then.38
  %34 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %35 = bitcast %struct._GimpTextBuffer* %34 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_text_buffer_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call41)
  %36 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTextBuffer*
  %37 = load %struct._GtkTextTag*, %struct._GtkTextTag** %span_tag, align 8
  call void @gtk_text_buffer_remove_tag(%struct._GtkTextBuffer* %36, %struct._GtkTextTag* %37, %struct._GtkTextIter* %span_start, %struct._GtkTextIter* %span_end)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.then.38
  %38 = load i32, i32* %span_baseline, align 4
  %39 = load i32, i32* %count.addr, align 4
  %add = add nsw i32 %38, %39
  %cmp44 = icmp ne i32 %add, 0
  br i1 %cmp44, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %if.end.43
  %40 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %41 = load i32, i32* %span_baseline, align 4
  %42 = load i32, i32* %count.addr, align 4
  %add46 = add nsw i32 %41, %42
  %call47 = call %struct._GtkTextTag* @gimp_text_buffer_get_baseline_tag(%struct._GimpTextBuffer* %40, i32 %add46)
  store %struct._GtkTextTag* %call47, %struct._GtkTextTag** %span_tag, align 8
  %43 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %44 = bitcast %struct._GimpTextBuffer* %43 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_text_buffer_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call48)
  %45 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkTextBuffer*
  %46 = load %struct._GtkTextTag*, %struct._GtkTextTag** %span_tag, align 8
  call void @gtk_text_buffer_apply_tag(%struct._GtkTextBuffer* %45, %struct._GtkTextTag* %46, %struct._GtkTextIter* %span_start, %struct._GtkTextIter* %span_end)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.45, %if.end.43
  %47 = bitcast %struct._GtkTextIter* %span_start to i8*
  %48 = bitcast %struct._GtkTextIter* %iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 80, i32 8, i1 false)
  %49 = load i32, i32* %iter_baseline, align 4
  store i32 %49, i32* %span_baseline, align 4
  %50 = load %struct._GtkTextTag*, %struct._GtkTextTag** %iter_tag, align 8
  store %struct._GtkTextTag* %50, %struct._GtkTextTag** %span_tag, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %lor.lhs.false
  %51 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call52 = call i32 @gtk_text_iter_compare(%struct._GtkTextIter* %iter, %struct._GtkTextIter* %51)
  %cmp53 = icmp sgt i32 %call52, 0
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  %52 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %53 = bitcast %struct._GtkTextIter* %iter to i8*
  %54 = bitcast %struct._GtkTextIter* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 80, i32 8, i1 false)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.51
  br label %do.cond

do.cond:                                          ; preds = %if.end.55
  %55 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call56 = call i32 @gtk_text_iter_equal(%struct._GtkTextIter* %iter, %struct._GtkTextIter* %55)
  %tobool57 = icmp ne i32 %call56, 0
  %lnot = xor i1 %tobool57, true
  br i1 %lnot, label %do.body.30, label %do.end.58

do.end.58:                                        ; preds = %do.cond
  %56 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %57 = bitcast %struct._GimpTextBuffer* %56 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_text_buffer_get_type() #7
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call59)
  %58 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_end_user_action(%struct._GtkTextBuffer* %58)
  br label %return

return:                                           ; preds = %do.end.58, %if.then.25, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkTextTag* @gimp_text_buffer_get_iter_kerning(%struct._GimpTextBuffer* %buffer, %struct._GtkTextIter* %iter, i32* %kerning) #3 {
entry:
  %retval = alloca %struct._GtkTextTag*, align 8
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %iter.addr = alloca %struct._GtkTextIter*, align 8
  %kerning.addr = alloca i32*, align 8
  %list = alloca %struct._GList*, align 8
  %tag = alloca %struct._GtkTextTag*, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GtkTextIter* %iter, %struct._GtkTextIter** %iter.addr, align 8
  store i32* %kerning, i32** %kerning.addr, align 8
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %kerning_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %0, i32 0, i32 7
  %1 = load %struct._GList*, %struct._GList** %kerning_tags, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %5, %struct._GtkTextTag** %tag, align 8
  %6 = load %struct._GtkTextIter*, %struct._GtkTextIter** %iter.addr, align 8
  %7 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %call = call i32 @gtk_text_iter_has_tag(%struct._GtkTextIter* %6, %struct._GtkTextTag* %7)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end.5

if.then:                                          ; preds = %for.body
  %8 = load i32*, i32** %kerning.addr, align 8
  %tobool2 = icmp ne i32* %8, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %call4 = call i32 @gimp_text_tag_get_kerning(%struct._GtkTextTag* %9)
  %10 = load i32*, i32** %kerning.addr, align 8
  store i32 %call4, i32* %10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %11 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  store %struct._GtkTextTag* %11, %struct._GtkTextTag** %retval
  br label %return

if.end.5:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool6 = icmp ne %struct._GList* %12, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %14, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32*, i32** %kerning.addr, align 8
  %tobool7 = icmp ne i32* %15, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.end
  %16 = load i32*, i32** %kerning.addr, align 8
  store i32 0, i32* %16, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %for.end
  store %struct._GtkTextTag* null, %struct._GtkTextTag** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.end
  %17 = load %struct._GtkTextTag*, %struct._GtkTextTag** %retval
  ret %struct._GtkTextTag* %17
}

declare i32 @gimp_text_tag_get_kerning(%struct._GtkTextTag*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_buffer_set_kerning(%struct._GimpTextBuffer* %buffer, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i32 %kerning) #3 {
entry:
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %start.addr = alloca %struct._GtkTextIter*, align 8
  %end.addr = alloca %struct._GtkTextIter*, align 8
  %kerning.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tag = alloca %struct._GtkTextTag*, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GtkTextIter* %start, %struct._GtkTextIter** %start.addr, align 8
  store %struct._GtkTextIter* %end, %struct._GtkTextIter** %end.addr, align 8
  store i32 %kerning, i32* %kerning.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_buffer_set_kerning, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %cmp12 = icmp ne %struct._GtkTextIter* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_buffer_set_kerning, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %cmp18 = icmp ne %struct._GtkTextIter* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_buffer_set_kerning, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %16 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call23 = call i32 @gtk_text_iter_equal(%struct._GtkTextIter* %15, %struct._GtkTextIter* %16)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %do.end.22
  br label %return

if.end.26:                                        ; preds = %do.end.22
  %17 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %18 = bitcast %struct._GimpTextBuffer* %17 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_text_buffer_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call27)
  %19 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_begin_user_action(%struct._GtkTextBuffer* %19)
  %20 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %kerning_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %20, i32 0, i32 7
  %21 = load %struct._GList*, %struct._GList** %kerning_tags, align 8
  store %struct._GList* %21, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.26
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool29 = icmp ne %struct._GList* %22, null
  br i1 %tobool29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %24 = bitcast %struct._GimpTextBuffer* %23 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_text_buffer_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call30)
  %25 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTextBuffer*
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8
  %28 = bitcast i8* %27 to %struct._GtkTextTag*
  %29 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %30 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  call void @gtk_text_buffer_remove_tag(%struct._GtkTextBuffer* %25, %struct._GtkTextTag* %28, %struct._GtkTextIter* %29, %struct._GtkTextIter* %30)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool32 = icmp ne %struct._GList* %31, null
  br i1 %tobool32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %33, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %kerning.addr, align 4
  %cmp33 = icmp ne i32 %34, 0
  br i1 %cmp33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %for.end
  %35 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %36 = load i32, i32* %kerning.addr, align 4
  %call36 = call %struct._GtkTextTag* @gimp_text_buffer_get_kerning_tag(%struct._GimpTextBuffer* %35, i32 %36)
  store %struct._GtkTextTag* %call36, %struct._GtkTextTag** %tag, align 8
  %37 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %38 = bitcast %struct._GimpTextBuffer* %37 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_text_buffer_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call37)
  %39 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTextBuffer*
  %40 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %41 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %42 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  call void @gtk_text_buffer_apply_tag(%struct._GtkTextBuffer* %39, %struct._GtkTextTag* %40, %struct._GtkTextIter* %41, %struct._GtkTextIter* %42)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %for.end
  %43 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %44 = bitcast %struct._GimpTextBuffer* %43 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_text_buffer_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call40)
  %45 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_end_user_action(%struct._GtkTextBuffer* %45)
  br label %return

return:                                           ; preds = %if.end.39, %if.then.25, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkTextTag* @gimp_text_buffer_get_kerning_tag(%struct._GimpTextBuffer* %buffer, i32 %kerning) #3 {
entry:
  %retval = alloca %struct._GtkTextTag*, align 8
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %kerning.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %tag = alloca %struct._GtkTextTag*, align 8
  %name = alloca [32 x i8], align 16
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store i32 %kerning, i32* %kerning.addr, align 4
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %kerning_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %0, i32 0, i32 7
  %1 = load %struct._GList*, %struct._GList** %kerning_tags, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %5, %struct._GtkTextTag** %tag, align 8
  %6 = load i32, i32* %kerning.addr, align 4
  %7 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %call = call i32 @gimp_text_tag_get_kerning(%struct._GtkTextTag* %7)
  %cmp = icmp eq i32 %6, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  store %struct._GtkTextTag* %8, %struct._GtkTextTag** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool1 = icmp ne %struct._GList* %9, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %11, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %name, i32 0, i32 0
  %12 = load i32, i32* %kerning.addr, align 4
  %call2 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i32 %12)
  %13 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %14 = bitcast %struct._GimpTextBuffer* %13 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_text_buffer_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call3)
  %15 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTextBuffer*
  %arraydecay5 = getelementptr inbounds [32 x i8], [32 x i8]* %name, i32 0, i32 0
  %16 = load i32, i32* %kerning.addr, align 4
  %call6 = call %struct._GtkTextTag* (%struct._GtkTextBuffer*, i8*, i8*, ...) @gtk_text_buffer_create_tag(%struct._GtkTextBuffer* %15, i8* %arraydecay5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 %16, i8* null)
  store %struct._GtkTextTag* %call6, %struct._GtkTextTag** %tag, align 8
  %17 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %kerning_tags7 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %17, i32 0, i32 7
  %18 = load %struct._GList*, %struct._GList** %kerning_tags7, align 8
  %19 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %20 = bitcast %struct._GtkTextTag* %19 to i8*
  %call8 = call %struct._GList* @g_list_prepend(%struct._GList* %18, i8* %20)
  %21 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %kerning_tags9 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %21, i32 0, i32 7
  store %struct._GList* %call8, %struct._GList** %kerning_tags9, align 8
  %22 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  store %struct._GtkTextTag* %22, %struct._GtkTextTag** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %23 = load %struct._GtkTextTag*, %struct._GtkTextTag** %retval
  ret %struct._GtkTextTag* %23
}

; Function Attrs: nounwind uwtable
define void @gimp_text_buffer_change_kerning(%struct._GimpTextBuffer* %buffer, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i32 %count) #3 {
entry:
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %start.addr = alloca %struct._GtkTextIter*, align 8
  %end.addr = alloca %struct._GtkTextIter*, align 8
  %count.addr = alloca i32, align 4
  %iter = alloca %struct._GtkTextIter, align 8
  %span_start = alloca %struct._GtkTextIter, align 8
  %span_end = alloca %struct._GtkTextIter, align 8
  %span_tag = alloca %struct._GtkTextTag*, align 8
  %span_kerning = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %iter_tag = alloca %struct._GtkTextTag*, align 8
  %iter_kerning = alloca i32, align 4
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GtkTextIter* %start, %struct._GtkTextIter** %start.addr, align 8
  store %struct._GtkTextIter* %end, %struct._GtkTextIter** %end.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_text_buffer_change_kerning, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %cmp12 = icmp ne %struct._GtkTextIter* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_text_buffer_change_kerning, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %cmp18 = icmp ne %struct._GtkTextIter* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_text_buffer_change_kerning, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %16 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call23 = call i32 @gtk_text_iter_equal(%struct._GtkTextIter* %15, %struct._GtkTextIter* %16)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %do.end.22
  br label %return

if.end.26:                                        ; preds = %do.end.22
  %17 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %18 = bitcast %struct._GtkTextIter* %iter to i8*
  %19 = bitcast %struct._GtkTextIter* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 80, i32 8, i1 false)
  %20 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %21 = bitcast %struct._GtkTextIter* %span_start to i8*
  %22 = bitcast %struct._GtkTextIter* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 80, i32 8, i1 false)
  %23 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %call27 = call %struct._GtkTextTag* @gimp_text_buffer_get_iter_kerning(%struct._GimpTextBuffer* %23, %struct._GtkTextIter* %iter, i32* %span_kerning)
  store %struct._GtkTextTag* %call27, %struct._GtkTextTag** %span_tag, align 8
  %24 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %25 = bitcast %struct._GimpTextBuffer* %24 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_text_buffer_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call28)
  %26 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_begin_user_action(%struct._GtkTextBuffer* %26)
  br label %do.body.30

do.body.30:                                       ; preds = %do.cond, %if.end.26
  %call33 = call i32 @gtk_text_iter_forward_char(%struct._GtkTextIter* %iter)
  %27 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %call34 = call %struct._GtkTextTag* @gimp_text_buffer_get_iter_kerning(%struct._GimpTextBuffer* %27, %struct._GtkTextIter* %iter, i32* %iter_kerning)
  store %struct._GtkTextTag* %call34, %struct._GtkTextTag** %iter_tag, align 8
  %28 = bitcast %struct._GtkTextIter* %span_end to i8*
  %29 = bitcast %struct._GtkTextIter* %iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 80, i32 8, i1 false)
  %30 = load i32, i32* %iter_kerning, align 4
  %31 = load i32, i32* %span_kerning, align 4
  %cmp35 = icmp ne i32 %30, %31
  br i1 %cmp35, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.30
  %32 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call36 = call i32 @gtk_text_iter_compare(%struct._GtkTextIter* %iter, %struct._GtkTextIter* %32)
  %cmp37 = icmp sge i32 %call36, 0
  br i1 %cmp37, label %if.then.38, label %if.end.51

if.then.38:                                       ; preds = %lor.lhs.false, %do.body.30
  %33 = load i32, i32* %span_kerning, align 4
  %cmp39 = icmp ne i32 %33, 0
  br i1 %cmp39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.then.38
  %34 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %35 = bitcast %struct._GimpTextBuffer* %34 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_text_buffer_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call41)
  %36 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTextBuffer*
  %37 = load %struct._GtkTextTag*, %struct._GtkTextTag** %span_tag, align 8
  call void @gtk_text_buffer_remove_tag(%struct._GtkTextBuffer* %36, %struct._GtkTextTag* %37, %struct._GtkTextIter* %span_start, %struct._GtkTextIter* %span_end)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.then.38
  %38 = load i32, i32* %span_kerning, align 4
  %39 = load i32, i32* %count.addr, align 4
  %add = add nsw i32 %38, %39
  %cmp44 = icmp ne i32 %add, 0
  br i1 %cmp44, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %if.end.43
  %40 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %41 = load i32, i32* %span_kerning, align 4
  %42 = load i32, i32* %count.addr, align 4
  %add46 = add nsw i32 %41, %42
  %call47 = call %struct._GtkTextTag* @gimp_text_buffer_get_kerning_tag(%struct._GimpTextBuffer* %40, i32 %add46)
  store %struct._GtkTextTag* %call47, %struct._GtkTextTag** %span_tag, align 8
  %43 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %44 = bitcast %struct._GimpTextBuffer* %43 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_text_buffer_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call48)
  %45 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkTextBuffer*
  %46 = load %struct._GtkTextTag*, %struct._GtkTextTag** %span_tag, align 8
  call void @gtk_text_buffer_apply_tag(%struct._GtkTextBuffer* %45, %struct._GtkTextTag* %46, %struct._GtkTextIter* %span_start, %struct._GtkTextIter* %span_end)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.45, %if.end.43
  %47 = bitcast %struct._GtkTextIter* %span_start to i8*
  %48 = bitcast %struct._GtkTextIter* %iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 80, i32 8, i1 false)
  %49 = load i32, i32* %iter_kerning, align 4
  store i32 %49, i32* %span_kerning, align 4
  %50 = load %struct._GtkTextTag*, %struct._GtkTextTag** %iter_tag, align 8
  store %struct._GtkTextTag* %50, %struct._GtkTextTag** %span_tag, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %lor.lhs.false
  %51 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call52 = call i32 @gtk_text_iter_compare(%struct._GtkTextIter* %iter, %struct._GtkTextIter* %51)
  %cmp53 = icmp sgt i32 %call52, 0
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  %52 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %53 = bitcast %struct._GtkTextIter* %iter to i8*
  %54 = bitcast %struct._GtkTextIter* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 80, i32 8, i1 false)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.51
  br label %do.cond

do.cond:                                          ; preds = %if.end.55
  %55 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call56 = call i32 @gtk_text_iter_equal(%struct._GtkTextIter* %iter, %struct._GtkTextIter* %55)
  %tobool57 = icmp ne i32 %call56, 0
  %lnot = xor i1 %tobool57, true
  br i1 %lnot, label %do.body.30, label %do.end.58

do.end.58:                                        ; preds = %do.cond
  %56 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %57 = bitcast %struct._GimpTextBuffer* %56 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_text_buffer_get_type() #7
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call59)
  %58 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_end_user_action(%struct._GtkTextBuffer* %58)
  br label %return

return:                                           ; preds = %do.end.58, %if.then.25, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkTextTag* @gimp_text_buffer_get_iter_font(%struct._GimpTextBuffer* %buffer, %struct._GtkTextIter* %iter, i8** %font) #3 {
entry:
  %retval = alloca %struct._GtkTextTag*, align 8
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %iter.addr = alloca %struct._GtkTextIter*, align 8
  %font.addr = alloca i8**, align 8
  %list = alloca %struct._GList*, align 8
  %tag = alloca %struct._GtkTextTag*, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GtkTextIter* %iter, %struct._GtkTextIter** %iter.addr, align 8
  store i8** %font, i8*** %font.addr, align 8
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %font_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %0, i32 0, i32 8
  %1 = load %struct._GList*, %struct._GList** %font_tags, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %5, %struct._GtkTextTag** %tag, align 8
  %6 = load %struct._GtkTextIter*, %struct._GtkTextIter** %iter.addr, align 8
  %7 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %call = call i32 @gtk_text_iter_has_tag(%struct._GtkTextIter* %6, %struct._GtkTextTag* %7)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end.5

if.then:                                          ; preds = %for.body
  %8 = load i8**, i8*** %font.addr, align 8
  %tobool2 = icmp ne i8** %8, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %call4 = call i8* @gimp_text_tag_get_font(%struct._GtkTextTag* %9)
  %10 = load i8**, i8*** %font.addr, align 8
  store i8* %call4, i8** %10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %11 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  store %struct._GtkTextTag* %11, %struct._GtkTextTag** %retval
  br label %return

if.end.5:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool6 = icmp ne %struct._GList* %12, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %14, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i8**, i8*** %font.addr, align 8
  %tobool7 = icmp ne i8** %15, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.end
  %16 = load i8**, i8*** %font.addr, align 8
  store i8* null, i8** %16, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %for.end
  store %struct._GtkTextTag* null, %struct._GtkTextTag** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.end
  %17 = load %struct._GtkTextTag*, %struct._GtkTextTag** %retval
  ret %struct._GtkTextTag* %17
}

declare i8* @gimp_text_tag_get_font(%struct._GtkTextTag*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkTextTag* @gimp_text_buffer_get_font_tag(%struct._GimpTextBuffer* %buffer, i8* %font) #3 {
entry:
  %retval = alloca %struct._GtkTextTag*, align 8
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %font.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %tag = alloca %struct._GtkTextTag*, align 8
  %name = alloca [256 x i8], align 16
  %pfd = alloca %struct._PangoFontDescription*, align 8
  %description = alloca i8*, align 8
  %tag_font = alloca i8*, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store i8* %font, i8** %font.addr, align 8
  %0 = load i8*, i8** %font.addr, align 8
  %call = call %struct._PangoFontDescription* @pango_font_description_from_string(i8* %0)
  store %struct._PangoFontDescription* %call, %struct._PangoFontDescription** %pfd, align 8
  %1 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %pfd, align 8
  %call1 = call i8* @pango_font_description_to_string(%struct._PangoFontDescription* %1)
  store i8* %call1, i8** %description, align 8
  %2 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %pfd, align 8
  call void @pango_font_description_free(%struct._PangoFontDescription* %2)
  %3 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %font_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %3, i32 0, i32 8
  %4 = load %struct._GList*, %struct._GList** %font_tags, align 8
  store %struct._GList* %4, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %8, %struct._GtkTextTag** %tag, align 8
  %9 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %call2 = call i8* @gimp_text_tag_get_font(%struct._GtkTextTag* %9)
  store i8* %call2, i8** %tag_font, align 8
  %10 = load i8*, i8** %description, align 8
  %11 = load i8*, i8** %tag_font, align 8
  %call3 = call i32 @strcmp(i8* %10, i8* %11) #8
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %12 = load i8*, i8** %tag_font, align 8
  call void @g_free(i8* %12)
  %13 = load i8*, i8** %description, align 8
  call void @g_free(i8* %13)
  %14 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  store %struct._GtkTextTag* %14, %struct._GtkTextTag** %retval
  br label %return

if.end:                                           ; preds = %for.body
  %15 = load i8*, i8** %tag_font, align 8
  call void @g_free(i8* %15)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %16, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %18, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %19 = load i8*, i8** %description, align 8
  %call6 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* %19)
  %20 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %21 = bitcast %struct._GimpTextBuffer* %20 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_text_buffer_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call7)
  %22 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTextBuffer*
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %23 = load i8*, i8** %description, align 8
  %call10 = call %struct._GtkTextTag* (%struct._GtkTextBuffer*, i8*, i8*, ...) @gtk_text_buffer_create_tag(%struct._GtkTextBuffer* %22, i8* %arraydecay9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* %23, i8* null)
  store %struct._GtkTextTag* %call10, %struct._GtkTextTag** %tag, align 8
  %24 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  call void @gtk_text_tag_set_priority(%struct._GtkTextTag* %24, i32 0)
  %25 = load i8*, i8** %description, align 8
  call void @g_free(i8* %25)
  %26 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %font_tags11 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %26, i32 0, i32 8
  %27 = load %struct._GList*, %struct._GList** %font_tags11, align 8
  %28 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %29 = bitcast %struct._GtkTextTag* %28 to i8*
  %call12 = call %struct._GList* @g_list_prepend(%struct._GList* %27, i8* %29)
  %30 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %font_tags13 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %30, i32 0, i32 8
  store %struct._GList* %call12, %struct._GList** %font_tags13, align 8
  %31 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  store %struct._GtkTextTag* %31, %struct._GtkTextTag** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %32 = load %struct._GtkTextTag*, %struct._GtkTextTag** %retval
  ret %struct._GtkTextTag* %32
}

declare %struct._PangoFontDescription* @pango_font_description_from_string(i8*) #1

declare i8* @pango_font_description_to_string(%struct._PangoFontDescription*) #1

declare void @pango_font_description_free(%struct._PangoFontDescription*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @g_free(i8*) #1

declare void @gtk_text_tag_set_priority(%struct._GtkTextTag*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_buffer_set_font(%struct._GimpTextBuffer* %buffer, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i8* %font) #3 {
entry:
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %start.addr = alloca %struct._GtkTextIter*, align 8
  %end.addr = alloca %struct._GtkTextIter*, align 8
  %font.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tag = alloca %struct._GtkTextTag*, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GtkTextIter* %start, %struct._GtkTextIter** %start.addr, align 8
  store %struct._GtkTextIter* %end, %struct._GtkTextIter** %end.addr, align 8
  store i8* %font, i8** %font.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_text_buffer_set_font, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %cmp12 = icmp ne %struct._GtkTextIter* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_text_buffer_set_font, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %cmp18 = icmp ne %struct._GtkTextIter* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_text_buffer_set_font, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %16 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call23 = call i32 @gtk_text_iter_equal(%struct._GtkTextIter* %15, %struct._GtkTextIter* %16)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %do.end.22
  br label %return

if.end.26:                                        ; preds = %do.end.22
  %17 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %18 = bitcast %struct._GimpTextBuffer* %17 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_text_buffer_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call27)
  %19 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_begin_user_action(%struct._GtkTextBuffer* %19)
  %20 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %font_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %20, i32 0, i32 8
  %21 = load %struct._GList*, %struct._GList** %font_tags, align 8
  store %struct._GList* %21, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.26
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool29 = icmp ne %struct._GList* %22, null
  br i1 %tobool29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %24 = bitcast %struct._GimpTextBuffer* %23 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_text_buffer_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call30)
  %25 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTextBuffer*
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8
  %28 = bitcast i8* %27 to %struct._GtkTextTag*
  %29 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %30 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  call void @gtk_text_buffer_remove_tag(%struct._GtkTextBuffer* %25, %struct._GtkTextTag* %28, %struct._GtkTextIter* %29, %struct._GtkTextIter* %30)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool32 = icmp ne %struct._GList* %31, null
  br i1 %tobool32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %33, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i8*, i8** %font.addr, align 8
  %tobool33 = icmp ne i8* %34, null
  br i1 %tobool33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %for.end
  %35 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %36 = load i8*, i8** %font.addr, align 8
  %call36 = call %struct._GtkTextTag* @gimp_text_buffer_get_font_tag(%struct._GimpTextBuffer* %35, i8* %36)
  store %struct._GtkTextTag* %call36, %struct._GtkTextTag** %tag, align 8
  %37 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %38 = bitcast %struct._GimpTextBuffer* %37 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_text_buffer_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call37)
  %39 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTextBuffer*
  %40 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %41 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %42 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  call void @gtk_text_buffer_apply_tag(%struct._GtkTextBuffer* %39, %struct._GtkTextTag* %40, %struct._GtkTextIter* %41, %struct._GtkTextIter* %42)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %for.end
  %43 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %44 = bitcast %struct._GimpTextBuffer* %43 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_text_buffer_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call40)
  %45 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_end_user_action(%struct._GtkTextBuffer* %45)
  br label %return

return:                                           ; preds = %if.end.39, %if.then.25, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkTextTag* @gimp_text_buffer_get_iter_color(%struct._GimpTextBuffer* %buffer, %struct._GtkTextIter* %iter, %struct._GimpRGB* %color) #3 {
entry:
  %retval = alloca %struct._GtkTextTag*, align 8
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %iter.addr = alloca %struct._GtkTextIter*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %list = alloca %struct._GList*, align 8
  %tag = alloca %struct._GtkTextTag*, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GtkTextIter* %iter, %struct._GtkTextIter** %iter.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %color_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %0, i32 0, i32 9
  %1 = load %struct._GList*, %struct._GList** %color_tags, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %5, %struct._GtkTextTag** %tag, align 8
  %6 = load %struct._GtkTextIter*, %struct._GtkTextIter** %iter.addr, align 8
  %7 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %call = call i32 @gtk_text_iter_has_tag(%struct._GtkTextIter* %6, %struct._GtkTextTag* %7)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end.4

if.then:                                          ; preds = %for.body
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %tobool2 = icmp ne %struct._GimpRGB* %8, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_text_tag_get_color(%struct._GtkTextTag* %9, %struct._GimpRGB* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %11 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  store %struct._GtkTextTag* %11, %struct._GtkTextTag** %retval
  br label %return

if.end.4:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %12, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %14, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._GtkTextTag* null, %struct._GtkTextTag** %retval
  br label %return

return:                                           ; preds = %for.end, %if.end
  %15 = load %struct._GtkTextTag*, %struct._GtkTextTag** %retval
  ret %struct._GtkTextTag* %15
}

declare void @gimp_text_tag_get_color(%struct._GtkTextTag*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkTextTag* @gimp_text_buffer_get_color_tag(%struct._GimpTextBuffer* %buffer, %struct._GimpRGB* %color) #3 {
entry:
  %retval = alloca %struct._GtkTextTag*, align 8
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %list = alloca %struct._GList*, align 8
  %tag = alloca %struct._GtkTextTag*, align 8
  %name = alloca [256 x i8], align 16
  %gdk_color = alloca %struct._GdkColor, align 4
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %tag_color = alloca %struct._GimpRGB, align 8
  %tag_r = alloca i8, align 1
  %tag_g = alloca i8, align 1
  %tag_b = alloca i8, align 1
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %0, i8* %r, i8* %g, i8* %b)
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %color_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %1, i32 0, i32 9
  %2 = load %struct._GList*, %struct._GList** %color_tags, align 8
  store %struct._GList* %2, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %6, %struct._GtkTextTag** %tag, align 8
  %7 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  call void @gimp_text_tag_get_color(%struct._GtkTextTag* %7, %struct._GimpRGB* %tag_color)
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %tag_color, i8* %tag_r, i8* %tag_g, i8* %tag_b)
  %8 = load i8, i8* %tag_r, align 1
  %conv = zext i8 %8 to i32
  %9 = load i8, i8* %r, align 1
  %conv1 = zext i8 %9 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load i8, i8* %tag_g, align 1
  %conv3 = zext i8 %10 to i32
  %11 = load i8, i8* %g, align 1
  %conv4 = zext i8 %11 to i32
  %cmp5 = icmp eq i32 %conv3, %conv4
  br i1 %cmp5, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %12 = load i8, i8* %tag_b, align 1
  %conv8 = zext i8 %12 to i32
  %13 = load i8, i8* %b, align 1
  %conv9 = zext i8 %13 to i32
  %cmp10 = icmp eq i32 %conv8, %conv9
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.7
  %14 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  store %struct._GtkTextTag* %14, %struct._GtkTextTag** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.7, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool12 = icmp ne %struct._GList* %15, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 1
  %17 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %17, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %18 = load i8, i8* %r, align 1
  %conv13 = zext i8 %18 to i32
  %19 = load i8, i8* %g, align 1
  %conv14 = zext i8 %19 to i32
  %20 = load i8, i8* %b, align 1
  %conv15 = zext i8 %20 to i32
  %call = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i32 %conv13, i32 %conv14, i32 %conv15)
  %21 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_rgb_get_gdk_color(%struct._GimpRGB* %21, %struct._GdkColor* %gdk_color)
  %22 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %23 = bitcast %struct._GimpTextBuffer* %22 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_text_buffer_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call16)
  %24 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkTextBuffer*
  %arraydecay18 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %call19 = call %struct._GtkTextTag* (%struct._GtkTextBuffer*, i8*, i8*, ...) @gtk_text_buffer_create_tag(%struct._GtkTextBuffer* %24, i8* %arraydecay18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), %struct._GdkColor* %gdk_color, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 1, i8* null)
  store %struct._GtkTextTag* %call19, %struct._GtkTextTag** %tag, align 8
  %25 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %color_tags20 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %25, i32 0, i32 9
  %26 = load %struct._GList*, %struct._GList** %color_tags20, align 8
  %27 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %28 = bitcast %struct._GtkTextTag* %27 to i8*
  %call21 = call %struct._GList* @g_list_prepend(%struct._GList* %26, i8* %28)
  %29 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %color_tags22 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %29, i32 0, i32 9
  store %struct._GList* %call21, %struct._GList** %color_tags22, align 8
  %30 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  store %struct._GtkTextTag* %30, %struct._GtkTextTag** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %31 = load %struct._GtkTextTag*, %struct._GtkTextTag** %retval
  ret %struct._GtkTextTag* %31
}

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare void @gimp_rgb_get_gdk_color(%struct._GimpRGB*, %struct._GdkColor*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_buffer_set_color(%struct._GimpTextBuffer* %buffer, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, %struct._GimpRGB* %color) #3 {
entry:
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %start.addr = alloca %struct._GtkTextIter*, align 8
  %end.addr = alloca %struct._GtkTextIter*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tag = alloca %struct._GtkTextTag*, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GtkTextIter* %start, %struct._GtkTextIter** %start.addr, align 8
  store %struct._GtkTextIter* %end, %struct._GtkTextIter** %end.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_text_buffer_set_color, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %cmp12 = icmp ne %struct._GtkTextIter* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_text_buffer_set_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %cmp18 = icmp ne %struct._GtkTextIter* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_text_buffer_set_color, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %16 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call23 = call i32 @gtk_text_iter_equal(%struct._GtkTextIter* %15, %struct._GtkTextIter* %16)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %do.end.22
  br label %return

if.end.26:                                        ; preds = %do.end.22
  %17 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %18 = bitcast %struct._GimpTextBuffer* %17 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_text_buffer_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call27)
  %19 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_begin_user_action(%struct._GtkTextBuffer* %19)
  %20 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %color_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %20, i32 0, i32 9
  %21 = load %struct._GList*, %struct._GList** %color_tags, align 8
  store %struct._GList* %21, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.26
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool29 = icmp ne %struct._GList* %22, null
  br i1 %tobool29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %24 = bitcast %struct._GimpTextBuffer* %23 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_text_buffer_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call30)
  %25 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTextBuffer*
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8
  %28 = bitcast i8* %27 to %struct._GtkTextTag*
  %29 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %30 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  call void @gtk_text_buffer_remove_tag(%struct._GtkTextBuffer* %25, %struct._GtkTextTag* %28, %struct._GtkTextIter* %29, %struct._GtkTextIter* %30)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool32 = icmp ne %struct._GList* %31, null
  br i1 %tobool32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %33, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %tobool33 = icmp ne %struct._GimpRGB* %34, null
  br i1 %tobool33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %for.end
  %35 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %36 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call36 = call %struct._GtkTextTag* @gimp_text_buffer_get_color_tag(%struct._GimpTextBuffer* %35, %struct._GimpRGB* %36)
  store %struct._GtkTextTag* %call36, %struct._GtkTextTag** %tag, align 8
  %37 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %38 = bitcast %struct._GimpTextBuffer* %37 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_text_buffer_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call37)
  %39 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTextBuffer*
  %40 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %41 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %42 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  call void @gtk_text_buffer_apply_tag(%struct._GtkTextBuffer* %39, %struct._GtkTextTag* %40, %struct._GtkTextIter* %41, %struct._GtkTextIter* %42)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %for.end
  %43 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %44 = bitcast %struct._GimpTextBuffer* %43 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_text_buffer_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call40)
  %45 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_end_user_action(%struct._GtkTextBuffer* %45)
  br label %return

return:                                           ; preds = %if.end.39, %if.then.25, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gimp_text_buffer_tag_to_name(%struct._GimpTextBuffer* %buffer, %struct._GtkTextTag* %tag, i8** %attribute, i8** %value) #3 {
entry:
  %retval = alloca i8*, align 8
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %tag.addr = alloca %struct._GtkTextTag*, align 8
  %attribute.addr = alloca i8**, align 8
  %value.addr = alloca i8**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GtkTextTag* %tag, %struct._GtkTextTag** %tag.addr, align 8
  store i8** %attribute, i8*** %attribute.addr, align 8
  store i8** %value, i8*** %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_buffer_tag_to_name, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %14 = bitcast %struct._GtkTextTag* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_text_tag_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_buffer_tag_to_name, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load i8**, i8*** %attribute.addr, align 8
  %tobool39 = icmp ne i8** %26, null
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %do.end.38
  %27 = load i8**, i8*** %attribute.addr, align 8
  store i8* null, i8** %27, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %do.end.38
  %28 = load i8**, i8*** %value.addr, align 8
  %tobool42 = icmp ne i8** %28, null
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.41
  %29 = load i8**, i8*** %value.addr, align 8
  store i8* null, i8** %29, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.41
  %30 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %31 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %bold_tag = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %31, i32 0, i32 1
  %32 = load %struct._GtkTextTag*, %struct._GtkTextTag** %bold_tag, align 8
  %cmp45 = icmp eq %struct._GtkTextTag* %30, %32
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.end.44
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8** %retval
  br label %return

if.else.47:                                       ; preds = %if.end.44
  %33 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %34 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %italic_tag = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %34, i32 0, i32 2
  %35 = load %struct._GtkTextTag*, %struct._GtkTextTag** %italic_tag, align 8
  %cmp48 = icmp eq %struct._GtkTextTag* %33, %35
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.else.47
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8** %retval
  br label %return

if.else.50:                                       ; preds = %if.else.47
  %36 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %37 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %underline_tag = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %37, i32 0, i32 3
  %38 = load %struct._GtkTextTag*, %struct._GtkTextTag** %underline_tag, align 8
  %cmp51 = icmp eq %struct._GtkTextTag* %36, %38
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.else.50
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8** %retval
  br label %return

if.else.53:                                       ; preds = %if.else.50
  %39 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %40 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %strikethrough_tag = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %40, i32 0, i32 4
  %41 = load %struct._GtkTextTag*, %struct._GtkTextTag** %strikethrough_tag, align 8
  %cmp54 = icmp eq %struct._GtkTextTag* %39, %41
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.else.53
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8** %retval
  br label %return

if.else.56:                                       ; preds = %if.else.53
  %42 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %size_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %42, i32 0, i32 5
  %43 = load %struct._GList*, %struct._GList** %size_tags, align 8
  %44 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %45 = bitcast %struct._GtkTextTag* %44 to i8*
  %call57 = call %struct._GList* @g_list_find(%struct._GList* %43, i8* %45)
  %tobool58 = icmp ne %struct._GList* %call57, null
  br i1 %tobool58, label %if.then.59, label %if.else.68

if.then.59:                                       ; preds = %if.else.56
  %46 = load i8**, i8*** %attribute.addr, align 8
  %tobool60 = icmp ne i8** %46, null
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.59
  %47 = load i8**, i8*** %attribute.addr, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8** %47, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.then.59
  %48 = load i8**, i8*** %value.addr, align 8
  %tobool63 = icmp ne i8** %48, null
  br i1 %tobool63, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %if.end.62
  %49 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %call65 = call i32 @gimp_text_tag_get_size(%struct._GtkTextTag* %49)
  %call66 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 %call65)
  %50 = load i8**, i8*** %value.addr, align 8
  store i8* %call66, i8** %50, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %if.end.62
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8** %retval
  br label %return

if.else.68:                                       ; preds = %if.else.56
  %51 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %baseline_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %51, i32 0, i32 6
  %52 = load %struct._GList*, %struct._GList** %baseline_tags, align 8
  %53 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %54 = bitcast %struct._GtkTextTag* %53 to i8*
  %call69 = call %struct._GList* @g_list_find(%struct._GList* %52, i8* %54)
  %tobool70 = icmp ne %struct._GList* %call69, null
  br i1 %tobool70, label %if.then.71, label %if.else.80

if.then.71:                                       ; preds = %if.else.68
  %55 = load i8**, i8*** %attribute.addr, align 8
  %tobool72 = icmp ne i8** %55, null
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.then.71
  %56 = load i8**, i8*** %attribute.addr, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8** %56, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.then.71
  %57 = load i8**, i8*** %value.addr, align 8
  %tobool75 = icmp ne i8** %57, null
  br i1 %tobool75, label %if.then.76, label %if.end.79

if.then.76:                                       ; preds = %if.end.74
  %58 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %call77 = call i32 @gimp_text_tag_get_baseline(%struct._GtkTextTag* %58)
  %call78 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 %call77)
  %59 = load i8**, i8*** %value.addr, align 8
  store i8* %call78, i8** %59, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.76, %if.end.74
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8** %retval
  br label %return

if.else.80:                                       ; preds = %if.else.68
  %60 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %kerning_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %60, i32 0, i32 7
  %61 = load %struct._GList*, %struct._GList** %kerning_tags, align 8
  %62 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %63 = bitcast %struct._GtkTextTag* %62 to i8*
  %call81 = call %struct._GList* @g_list_find(%struct._GList* %61, i8* %63)
  %tobool82 = icmp ne %struct._GList* %call81, null
  br i1 %tobool82, label %if.then.83, label %if.else.92

if.then.83:                                       ; preds = %if.else.80
  %64 = load i8**, i8*** %attribute.addr, align 8
  %tobool84 = icmp ne i8** %64, null
  br i1 %tobool84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.then.83
  %65 = load i8**, i8*** %attribute.addr, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8** %65, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %if.then.83
  %66 = load i8**, i8*** %value.addr, align 8
  %tobool87 = icmp ne i8** %66, null
  br i1 %tobool87, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %if.end.86
  %67 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %call89 = call i32 @gimp_text_tag_get_kerning(%struct._GtkTextTag* %67)
  %call90 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 %call89)
  %68 = load i8**, i8*** %value.addr, align 8
  store i8* %call90, i8** %68, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.88, %if.end.86
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8** %retval
  br label %return

if.else.92:                                       ; preds = %if.else.80
  %69 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %font_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %69, i32 0, i32 8
  %70 = load %struct._GList*, %struct._GList** %font_tags, align 8
  %71 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %72 = bitcast %struct._GtkTextTag* %71 to i8*
  %call93 = call %struct._GList* @g_list_find(%struct._GList* %70, i8* %72)
  %tobool94 = icmp ne %struct._GList* %call93, null
  br i1 %tobool94, label %if.then.95, label %if.else.103

if.then.95:                                       ; preds = %if.else.92
  %73 = load i8**, i8*** %attribute.addr, align 8
  %tobool96 = icmp ne i8** %73, null
  br i1 %tobool96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.then.95
  %74 = load i8**, i8*** %attribute.addr, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8** %74, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %if.then.95
  %75 = load i8**, i8*** %value.addr, align 8
  %tobool99 = icmp ne i8** %75, null
  br i1 %tobool99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %if.end.98
  %76 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %call101 = call i8* @gimp_text_tag_get_font(%struct._GtkTextTag* %76)
  %77 = load i8**, i8*** %value.addr, align 8
  store i8* %call101, i8** %77, align 8
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %if.end.98
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8** %retval
  br label %return

if.else.103:                                      ; preds = %if.else.92
  %78 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %color_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %78, i32 0, i32 9
  %79 = load %struct._GList*, %struct._GList** %color_tags, align 8
  %80 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %81 = bitcast %struct._GtkTextTag* %80 to i8*
  %call104 = call %struct._GList* @g_list_find(%struct._GList* %79, i8* %81)
  %tobool105 = icmp ne %struct._GList* %call104, null
  br i1 %tobool105, label %if.then.106, label %if.end.120

if.then.106:                                      ; preds = %if.else.103
  %82 = load i8**, i8*** %attribute.addr, align 8
  %tobool107 = icmp ne i8** %82, null
  br i1 %tobool107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.then.106
  %83 = load i8**, i8*** %attribute.addr, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8** %83, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %if.then.106
  %84 = load i8**, i8*** %value.addr, align 8
  %tobool110 = icmp ne i8** %84, null
  br i1 %tobool110, label %if.then.111, label %if.end.119

if.then.111:                                      ; preds = %if.end.109
  %85 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  call void @gimp_text_tag_get_color(%struct._GtkTextTag* %85, %struct._GimpRGB* %color)
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* %r, i8* %g, i8* %b)
  %86 = load i8, i8* %r, align 1
  %conv = zext i8 %86 to i32
  %87 = load i8, i8* %g, align 1
  %conv116 = zext i8 %87 to i32
  %88 = load i8, i8* %b, align 1
  %conv117 = zext i8 %88 to i32
  %call118 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32 %conv, i32 %conv116, i32 %conv117)
  %89 = load i8**, i8*** %value.addr, align 8
  store i8* %call118, i8** %89, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.111, %if.end.109
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8** %retval
  br label %return

if.end.120:                                       ; preds = %if.else.103
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.128, %if.end.119, %if.end.102, %if.end.91, %if.end.79, %if.end.67, %if.then.55, %if.then.52, %if.then.49, %if.then.46, %if.else.36, %if.else.9
  %90 = load i8*, i8** %retval
  ret i8* %90
}

; Function Attrs: nounwind readnone
declare i64 @gtk_text_tag_get_type() #2

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GtkTextTag* @gimp_text_buffer_name_to_tag(%struct._GimpTextBuffer* %buffer, i8* %name, i8* %attribute, i8* %value) #3 {
entry:
  %retval = alloca %struct._GtkTextTag*, align 8
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %name.addr = alloca i8*, align 8
  %attribute.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %attribute, i8** %attribute.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_buffer_name_to_tag, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkTextTag* null, %struct._GtkTextTag** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_buffer_name_to_tag, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GtkTextTag* null, %struct._GtkTextTag** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load i8*, i8** %name.addr, align 8
  %call17 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0)) #8
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else.20, label %if.then.19

if.then.19:                                       ; preds = %do.end.16
  %15 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %bold_tag = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %15, i32 0, i32 1
  %16 = load %struct._GtkTextTag*, %struct._GtkTextTag** %bold_tag, align 8
  store %struct._GtkTextTag* %16, %struct._GtkTextTag** %retval
  br label %return

if.else.20:                                       ; preds = %do.end.16
  %17 = load i8*, i8** %name.addr, align 8
  %call21 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)) #8
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %if.else.20
  %18 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %italic_tag = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %18, i32 0, i32 2
  %19 = load %struct._GtkTextTag*, %struct._GtkTextTag** %italic_tag, align 8
  store %struct._GtkTextTag* %19, %struct._GtkTextTag** %retval
  br label %return

if.else.24:                                       ; preds = %if.else.20
  %20 = load i8*, i8** %name.addr, align 8
  %call25 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %if.else.24
  %21 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %underline_tag = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %21, i32 0, i32 3
  %22 = load %struct._GtkTextTag*, %struct._GtkTextTag** %underline_tag, align 8
  store %struct._GtkTextTag* %22, %struct._GtkTextTag** %retval
  br label %return

if.else.28:                                       ; preds = %if.else.24
  %23 = load i8*, i8** %name.addr, align 8
  %call29 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #8
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.else.32, label %if.then.31

if.then.31:                                       ; preds = %if.else.28
  %24 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %strikethrough_tag = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %24, i32 0, i32 4
  %25 = load %struct._GtkTextTag*, %struct._GtkTextTag** %strikethrough_tag, align 8
  store %struct._GtkTextTag* %25, %struct._GtkTextTag** %retval
  br label %return

if.else.32:                                       ; preds = %if.else.28
  %26 = load i8*, i8** %name.addr, align 8
  %call33 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0)) #8
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.79, label %land.lhs.true.35

land.lhs.true.35:                                 ; preds = %if.else.32
  %27 = load i8*, i8** %attribute.addr, align 8
  %cmp36 = icmp ne i8* %27, null
  br i1 %cmp36, label %land.lhs.true.37, label %if.end.79

land.lhs.true.37:                                 ; preds = %land.lhs.true.35
  %28 = load i8*, i8** %value.addr, align 8
  %cmp38 = icmp ne i8* %28, null
  br i1 %cmp38, label %if.then.39, label %if.end.79

if.then.39:                                       ; preds = %land.lhs.true.37
  %29 = load i8*, i8** %attribute.addr, align 8
  %call40 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)) #8
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.else.45, label %if.then.42

if.then.42:                                       ; preds = %if.then.39
  %30 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %31 = load i8*, i8** %value.addr, align 8
  %call43 = call i32 @atoi(i8* %31) #8
  %call44 = call %struct._GtkTextTag* @gimp_text_buffer_get_size_tag(%struct._GimpTextBuffer* %30, i32 %call43)
  store %struct._GtkTextTag* %call44, %struct._GtkTextTag** %retval
  br label %return

if.else.45:                                       ; preds = %if.then.39
  %32 = load i8*, i8** %attribute.addr, align 8
  %call46 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)) #8
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.else.51, label %if.then.48

if.then.48:                                       ; preds = %if.else.45
  %33 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %34 = load i8*, i8** %value.addr, align 8
  %call49 = call i32 @atoi(i8* %34) #8
  %call50 = call %struct._GtkTextTag* @gimp_text_buffer_get_baseline_tag(%struct._GimpTextBuffer* %33, i32 %call49)
  store %struct._GtkTextTag* %call50, %struct._GtkTextTag** %retval
  br label %return

if.else.51:                                       ; preds = %if.else.45
  %35 = load i8*, i8** %attribute.addr, align 8
  %call52 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0)) #8
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.else.57, label %if.then.54

if.then.54:                                       ; preds = %if.else.51
  %36 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %37 = load i8*, i8** %value.addr, align 8
  %call55 = call i32 @atoi(i8* %37) #8
  %call56 = call %struct._GtkTextTag* @gimp_text_buffer_get_kerning_tag(%struct._GimpTextBuffer* %36, i32 %call55)
  store %struct._GtkTextTag* %call56, %struct._GtkTextTag** %retval
  br label %return

if.else.57:                                       ; preds = %if.else.51
  %38 = load i8*, i8** %attribute.addr, align 8
  %call58 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)) #8
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.else.62, label %if.then.60

if.then.60:                                       ; preds = %if.else.57
  %39 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %40 = load i8*, i8** %value.addr, align 8
  %call61 = call %struct._GtkTextTag* @gimp_text_buffer_get_font_tag(%struct._GimpTextBuffer* %39, i8* %40)
  store %struct._GtkTextTag* %call61, %struct._GtkTextTag** %retval
  br label %return

if.else.62:                                       ; preds = %if.else.57
  %41 = load i8*, i8** %attribute.addr, align 8
  %call63 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0)) #8
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.end.74, label %if.then.65

if.then.65:                                       ; preds = %if.else.62
  %42 = load i8*, i8** %value.addr, align 8
  %call70 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32* %r, i32* %g, i32* %b) #5
  %43 = load i32, i32* %r, align 4
  %conv = trunc i32 %43 to i8
  %44 = load i32, i32* %g, align 4
  %conv71 = trunc i32 %44 to i8
  %45 = load i32, i32* %b, align 4
  %conv72 = trunc i32 %45 to i8
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* %color, i8 zeroext %conv, i8 zeroext %conv71, i8 zeroext %conv72)
  %46 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %call73 = call %struct._GtkTextTag* @gimp_text_buffer_get_color_tag(%struct._GimpTextBuffer* %46, %struct._GimpRGB* %color)
  store %struct._GtkTextTag* %call73, %struct._GtkTextTag** %retval
  br label %return

if.end.74:                                        ; preds = %if.else.62
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %land.lhs.true.37, %land.lhs.true.35, %if.else.32
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82
  store %struct._GtkTextTag* null, %struct._GtkTextTag** %retval
  br label %return

return:                                           ; preds = %if.end.83, %if.then.65, %if.then.60, %if.then.54, %if.then.48, %if.then.42, %if.then.31, %if.then.27, %if.then.23, %if.then.19, %if.else.14, %if.else.9
  %47 = load %struct._GtkTextTag*, %struct._GtkTextTag** %retval
  ret %struct._GtkTextTag* %47
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #6

declare void @gimp_rgb_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_buffer_set_insert_tags(%struct._GimpTextBuffer* %buffer, %struct._GList* %insert_tags, %struct._GList* %remove_tags) #3 {
entry:
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %insert_tags.addr = alloca %struct._GList*, align 8
  %remove_tags.addr = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GList* %insert_tags, %struct._GList** %insert_tags.addr, align 8
  store %struct._GList* %remove_tags, %struct._GList** %remove_tags.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_text_buffer_set_insert_tags, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %insert_tags_set = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %13, i32 0, i32 10
  store i32 1, i32* %insert_tags_set, align 4
  %14 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %insert_tags11 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %14, i32 0, i32 11
  %15 = load %struct._GList*, %struct._GList** %insert_tags11, align 8
  call void @g_list_free(%struct._GList* %15)
  %16 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %remove_tags12 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %16, i32 0, i32 12
  %17 = load %struct._GList*, %struct._GList** %remove_tags12, align 8
  call void @g_list_free(%struct._GList* %17)
  %18 = load %struct._GList*, %struct._GList** %insert_tags.addr, align 8
  %19 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %insert_tags13 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %19, i32 0, i32 11
  store %struct._GList* %18, %struct._GList** %insert_tags13, align 8
  %20 = load %struct._GList*, %struct._GList** %remove_tags.addr, align 8
  %21 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %remove_tags14 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %21, i32 0, i32 12
  store %struct._GList* %20, %struct._GList** %remove_tags14, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @g_list_free(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_buffer_insert(%struct._GimpTextBuffer* %buffer, i8* %text) #3 {
entry:
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %text.addr = alloca i8*, align 8
  %iter = alloca %struct._GtkTextIter, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %start_offset = alloca i32, align 4
  %insert_tags_set = alloca i32, align 4
  %insert_tags = alloca %struct._GList*, align 8
  %remove_tags = alloca %struct._GList*, align 8
  %tags_off = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %tag = alloca %struct._GtkTextTag*, align 8
  %tag42 = alloca %struct._GtkTextTag*, align 8
  %slist = alloca %struct._GSList*, align 8
  %tag62 = alloca %struct._GtkTextTag*, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store %struct._GSList* null, %struct._GSList** %tags_off, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_text_buffer_insert, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %14 = bitcast %struct._GimpTextBuffer* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_text_buffer_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTextBuffer*
  %16 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %17 = bitcast %struct._GimpTextBuffer* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_text_buffer_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkTextBuffer*
  %call15 = call %struct._GtkTextMark* @gtk_text_buffer_get_insert(%struct._GtkTextBuffer* %18)
  call void @gtk_text_buffer_get_iter_at_mark(%struct._GtkTextBuffer* %15, %struct._GtkTextIter* %iter, %struct._GtkTextMark* %call15)
  %call16 = call i32 @gtk_text_iter_get_offset(%struct._GtkTextIter* %iter)
  store i32 %call16, i32* %start_offset, align 4
  %19 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %insert_tags_set17 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %19, i32 0, i32 10
  %20 = load i32, i32* %insert_tags_set17, align 4
  store i32 %20, i32* %insert_tags_set, align 4
  %21 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %insert_tags18 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %21, i32 0, i32 11
  %22 = load %struct._GList*, %struct._GList** %insert_tags18, align 8
  store %struct._GList* %22, %struct._GList** %insert_tags, align 8
  %23 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %remove_tags19 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %23, i32 0, i32 12
  %24 = load %struct._GList*, %struct._GList** %remove_tags19, align 8
  store %struct._GList* %24, %struct._GList** %remove_tags, align 8
  %25 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %insert_tags_set20 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %25, i32 0, i32 10
  store i32 0, i32* %insert_tags_set20, align 4
  %26 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %insert_tags21 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %26, i32 0, i32 11
  store %struct._GList* null, %struct._GList** %insert_tags21, align 8
  %27 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %remove_tags22 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %27, i32 0, i32 12
  store %struct._GList* null, %struct._GList** %remove_tags22, align 8
  %call23 = call %struct._GSList* @gtk_text_iter_get_toggled_tags(%struct._GtkTextIter* %iter, i32 0)
  store %struct._GSList* %call23, %struct._GSList** %tags_off, align 8
  %28 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %29 = bitcast %struct._GimpTextBuffer* %28 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_text_buffer_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call24)
  %30 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_begin_user_action(%struct._GtkTextBuffer* %30)
  %31 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %32 = bitcast %struct._GimpTextBuffer* %31 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_text_buffer_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call26)
  %33 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTextBuffer*
  %34 = load i8*, i8** %text.addr, align 8
  call void @gtk_text_buffer_insert(%struct._GtkTextBuffer* %33, %struct._GtkTextIter* %iter, i8* %34, i32 -1)
  %35 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %36 = bitcast %struct._GimpTextBuffer* %35 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_text_buffer_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call28)
  %37 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkTextBuffer*
  %38 = load i32, i32* %start_offset, align 4
  call void @gtk_text_buffer_get_iter_at_offset(%struct._GtkTextBuffer* %37, %struct._GtkTextIter* %start, i32 %38)
  %39 = load i32, i32* %insert_tags_set, align 4
  %tobool30 = icmp ne i32 %39, 0
  br i1 %tobool30, label %if.then.31, label %if.end.54

if.then.31:                                       ; preds = %do.end
  %40 = load %struct._GList*, %struct._GList** %remove_tags, align 8
  store %struct._GList* %40, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.31
  %41 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool33 = icmp ne %struct._GList* %41, null
  br i1 %tobool33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %42, i32 0, i32 0
  %43 = load i8*, i8** %data, align 8
  %44 = bitcast i8* %43 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %44, %struct._GtkTextTag** %tag, align 8
  %45 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %46 = bitcast %struct._GimpTextBuffer* %45 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_text_buffer_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call35)
  %47 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkTextBuffer*
  %48 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  call void @gtk_text_buffer_remove_tag(%struct._GtkTextBuffer* %47, %struct._GtkTextTag* %48, %struct._GtkTextIter* %start, %struct._GtkTextIter* %iter)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool37 = icmp ne %struct._GList* %49, null
  br i1 %tobool37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %50 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %50, i32 0, i32 1
  %51 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %51, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load %struct._GList*, %struct._GList** %insert_tags, align 8
  store %struct._GList* %52, %struct._GList** %list, align 8
  br label %for.cond.38

for.cond.38:                                      ; preds = %cond.end.51, %for.end
  %53 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool39 = icmp ne %struct._GList* %53, null
  br i1 %tobool39, label %for.body.40, label %for.end.53

for.body.40:                                      ; preds = %for.cond.38
  %54 = load %struct._GList*, %struct._GList** %list, align 8
  %data43 = getelementptr inbounds %struct._GList, %struct._GList* %54, i32 0, i32 0
  %55 = load i8*, i8** %data43, align 8
  %56 = bitcast i8* %55 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %56, %struct._GtkTextTag** %tag42, align 8
  %57 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %58 = bitcast %struct._GimpTextBuffer* %57 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_text_buffer_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call44)
  %59 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkTextBuffer*
  %60 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag42, align 8
  call void @gtk_text_buffer_apply_tag(%struct._GtkTextBuffer* %59, %struct._GtkTextTag* %60, %struct._GtkTextIter* %start, %struct._GtkTextIter* %iter)
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.40
  %61 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool47 = icmp ne %struct._GList* %61, null
  br i1 %tobool47, label %cond.true.48, label %cond.false.50

cond.true.48:                                     ; preds = %for.inc.46
  %62 = load %struct._GList*, %struct._GList** %list, align 8
  %next49 = getelementptr inbounds %struct._GList, %struct._GList* %62, i32 0, i32 1
  %63 = load %struct._GList*, %struct._GList** %next49, align 8
  br label %cond.end.51

cond.false.50:                                    ; preds = %for.inc.46
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.50, %cond.true.48
  %cond52 = phi %struct._GList* [ %63, %cond.true.48 ], [ null, %cond.false.50 ]
  store %struct._GList* %cond52, %struct._GList** %list, align 8
  br label %for.cond.38

for.end.53:                                       ; preds = %for.cond.38
  br label %if.end.54

if.end.54:                                        ; preds = %for.end.53, %do.end
  %64 = load %struct._GSList*, %struct._GSList** %tags_off, align 8
  %tobool55 = icmp ne %struct._GSList* %64, null
  br i1 %tobool55, label %if.then.56, label %if.end.81

if.then.56:                                       ; preds = %if.end.54
  %65 = load %struct._GSList*, %struct._GSList** %tags_off, align 8
  store %struct._GSList* %65, %struct._GSList** %slist, align 8
  br label %for.cond.58

for.cond.58:                                      ; preds = %cond.end.78, %if.then.56
  %66 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %tobool59 = icmp ne %struct._GSList* %66, null
  br i1 %tobool59, label %for.body.60, label %for.end.80

for.body.60:                                      ; preds = %for.cond.58
  %67 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %data63 = getelementptr inbounds %struct._GSList, %struct._GSList* %67, i32 0, i32 0
  %68 = load i8*, i8** %data63, align 8
  %69 = bitcast i8* %68 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %69, %struct._GtkTextTag** %tag62, align 8
  %70 = load %struct._GList*, %struct._GList** %remove_tags, align 8
  %71 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag62, align 8
  %72 = bitcast %struct._GtkTextTag* %71 to i8*
  %call64 = call %struct._GList* @g_list_find(%struct._GList* %70, i8* %72)
  %tobool65 = icmp ne %struct._GList* %call64, null
  br i1 %tobool65, label %if.end.72, label %land.lhs.true.66

land.lhs.true.66:                                 ; preds = %for.body.60
  %73 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %kerning_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %73, i32 0, i32 7
  %74 = load %struct._GList*, %struct._GList** %kerning_tags, align 8
  %75 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag62, align 8
  %76 = bitcast %struct._GtkTextTag* %75 to i8*
  %call67 = call %struct._GList* @g_list_find(%struct._GList* %74, i8* %76)
  %tobool68 = icmp ne %struct._GList* %call67, null
  br i1 %tobool68, label %if.end.72, label %if.then.69

if.then.69:                                       ; preds = %land.lhs.true.66
  %77 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %78 = bitcast %struct._GimpTextBuffer* %77 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_text_buffer_get_type() #7
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call70)
  %79 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkTextBuffer*
  %80 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag62, align 8
  call void @gtk_text_buffer_apply_tag(%struct._GtkTextBuffer* %79, %struct._GtkTextTag* %80, %struct._GtkTextIter* %start, %struct._GtkTextIter* %iter)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.69, %land.lhs.true.66, %for.body.60
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %81 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %tobool74 = icmp ne %struct._GSList* %81, null
  br i1 %tobool74, label %cond.true.75, label %cond.false.77

cond.true.75:                                     ; preds = %for.inc.73
  %82 = load %struct._GSList*, %struct._GSList** %slist, align 8
  %next76 = getelementptr inbounds %struct._GSList, %struct._GSList* %82, i32 0, i32 1
  %83 = load %struct._GSList*, %struct._GSList** %next76, align 8
  br label %cond.end.78

cond.false.77:                                    ; preds = %for.inc.73
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.77, %cond.true.75
  %cond79 = phi %struct._GSList* [ %83, %cond.true.75 ], [ null, %cond.false.77 ]
  store %struct._GSList* %cond79, %struct._GSList** %slist, align 8
  br label %for.cond.58

for.end.80:                                       ; preds = %for.cond.58
  %84 = load %struct._GSList*, %struct._GSList** %tags_off, align 8
  call void @g_slist_free(%struct._GSList* %84)
  br label %if.end.81

if.end.81:                                        ; preds = %for.end.80, %if.end.54
  %85 = load %struct._GList*, %struct._GList** %remove_tags, align 8
  call void @g_list_free(%struct._GList* %85)
  %86 = load %struct._GList*, %struct._GList** %insert_tags, align 8
  call void @g_list_free(%struct._GList* %86)
  %87 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %88 = bitcast %struct._GimpTextBuffer* %87 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_text_buffer_get_type() #7
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call82)
  %89 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_end_user_action(%struct._GtkTextBuffer* %89)
  br label %return

return:                                           ; preds = %if.end.81, %if.else.9
  ret void
}

declare void @gtk_text_buffer_get_iter_at_mark(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextMark*) #1

declare %struct._GtkTextMark* @gtk_text_buffer_get_insert(%struct._GtkTextBuffer*) #1

declare i32 @gtk_text_iter_get_offset(%struct._GtkTextIter*) #1

declare %struct._GSList* @gtk_text_iter_get_toggled_tags(%struct._GtkTextIter*, i32) #1

declare void @gtk_text_buffer_insert(%struct._GtkTextBuffer*, %struct._GtkTextIter*, i8*, i32) #1

declare void @gtk_text_buffer_get_iter_at_offset(%struct._GtkTextBuffer*, %struct._GtkTextIter*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_text_buffer_get_iter_index(%struct._GimpTextBuffer* %buffer, %struct._GtkTextIter* %iter, i32 %layout_index) #3 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %iter.addr = alloca %struct._GtkTextIter*, align 8
  %layout_index.addr = alloca i32, align 4
  %start = alloca %struct._GtkTextIter, align 8
  %string = alloca i8*, align 8
  %index = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tags = alloca %struct._GSList*, align 8
  %list = alloca %struct._GSList*, align 8
  %tag = alloca %struct._GtkTextTag*, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GtkTextIter* %iter, %struct._GtkTextIter** %iter.addr, align 8
  store i32 %layout_index, i32* %layout_index.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_text_buffer_get_iter_index, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %14 = bitcast %struct._GimpTextBuffer* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_text_buffer_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_get_start_iter(%struct._GtkTextBuffer* %15, %struct._GtkTextIter* %start)
  %16 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %17 = bitcast %struct._GimpTextBuffer* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_text_buffer_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkTextBuffer*
  %19 = load %struct._GtkTextIter*, %struct._GtkTextIter** %iter.addr, align 8
  %call15 = call i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer* %18, %struct._GtkTextIter* %start, %struct._GtkTextIter* %19, i32 1)
  store i8* %call15, i8** %string, align 8
  %20 = load i8*, i8** %string, align 8
  %call16 = call i64 @strlen(i8* %20) #8
  %conv = trunc i64 %call16 to i32
  store i32 %conv, i32* %index, align 4
  %21 = load i8*, i8** %string, align 8
  call void @g_free(i8* %21)
  %22 = load i32, i32* %layout_index.addr, align 4
  %tobool17 = icmp ne i32 %22, 0
  br i1 %tobool17, label %if.then.18, label %if.end.39

if.then.18:                                       ; preds = %do.end
  br label %do.body.19

do.body.19:                                       ; preds = %do.cond, %if.then.18
  %call21 = call %struct._GSList* @gtk_text_iter_get_tags(%struct._GtkTextIter* %start)
  store %struct._GSList* %call21, %struct._GSList** %tags, align 8
  %23 = load %struct._GSList*, %struct._GSList** %tags, align 8
  store %struct._GSList* %23, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.body.19
  %24 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool23 = icmp ne %struct._GSList* %24, null
  br i1 %tobool23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 0
  %26 = load i8*, i8** %data, align 8
  %27 = bitcast i8* %26 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %27, %struct._GtkTextTag** %tag, align 8
  %28 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %kerning_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %28, i32 0, i32 7
  %29 = load %struct._GList*, %struct._GList** %kerning_tags, align 8
  %30 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %31 = bitcast %struct._GtkTextTag* %30 to i8*
  %call25 = call %struct._GList* @g_list_find(%struct._GList* %29, i8* %31)
  %tobool26 = icmp ne %struct._GList* %call25, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body
  %32 = load i32, i32* %index, align 4
  %add = add nsw i32 %32, 3
  store i32 %add, i32* %index, align 4
  br label %for.end

if.end.28:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %33 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool29 = icmp ne %struct._GSList* %33, null
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %34 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 1
  %35 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %35, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.27, %for.cond
  %36 = load %struct._GSList*, %struct._GSList** %tags, align 8
  call void @g_slist_free(%struct._GSList* %36)
  %call30 = call i32 @gtk_text_iter_forward_char(%struct._GtkTextIter* %start)
  %37 = load %struct._GtkTextIter*, %struct._GtkTextIter** %iter.addr, align 8
  %call31 = call i32 @gtk_text_iter_compare(%struct._GtkTextIter* %start, %struct._GtkTextIter* %37)
  %cmp32 = icmp sgt i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.end
  %38 = load %struct._GtkTextIter*, %struct._GtkTextIter** %iter.addr, align 8
  %39 = bitcast %struct._GtkTextIter* %start to i8*
  %40 = bitcast %struct._GtkTextIter* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 80, i32 8, i1 false)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %for.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.35
  %41 = load %struct._GtkTextIter*, %struct._GtkTextIter** %iter.addr, align 8
  %call36 = call i32 @gtk_text_iter_equal(%struct._GtkTextIter* %start, %struct._GtkTextIter* %41)
  %tobool37 = icmp ne i32 %call36, 0
  %lnot = xor i1 %tobool37, true
  br i1 %lnot, label %do.body.19, label %do.end.38

do.end.38:                                        ; preds = %do.cond
  br label %if.end.39

if.end.39:                                        ; preds = %do.end.38, %do.end
  %42 = load i32, i32* %index, align 4
  store i32 %42, i32* %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.else.9
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define void @gimp_text_buffer_get_iter_at_index(%struct._GimpTextBuffer* %buffer, %struct._GtkTextIter* %iter, i32 %index, i32 %layout_index) #3 {
entry:
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %iter.addr = alloca %struct._GtkTextIter*, align 8
  %index.addr = alloca i32, align 4
  %layout_index.addr = alloca i32, align 4
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  %string = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %my_string = alloca i8*, align 8
  %my_index = alloca i32, align 4
  %tmp21 = alloca i8*, align 8
  %tags = alloca %struct._GSList*, align 8
  %list = alloca %struct._GSList*, align 8
  %tag = alloca %struct._GtkTextTag*, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GtkTextIter* %iter, %struct._GtkTextIter** %iter.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i32 %layout_index, i32* %layout_index.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_text_buffer_get_iter_at_index, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %14 = bitcast %struct._GimpTextBuffer* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_text_buffer_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer* %15, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %16 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %17 = bitcast %struct._GimpTextBuffer* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_text_buffer_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkTextBuffer*
  %call15 = call i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer* %18, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i32 1)
  store i8* %call15, i8** %string, align 8
  %19 = load i32, i32* %layout_index.addr, align 4
  %tobool16 = icmp ne i32 %19, 0
  br i1 %tobool16, label %if.then.17, label %if.end.53

if.then.17:                                       ; preds = %do.end
  %20 = load i8*, i8** %string, align 8
  store i8* %20, i8** %my_string, align 8
  store i32 0, i32* %my_index, align 4
  br label %do.body.22

do.body.22:                                       ; preds = %land.end, %if.then.17
  %call24 = call %struct._GSList* @gtk_text_iter_get_tags(%struct._GtkTextIter* %start)
  store %struct._GSList* %call24, %struct._GSList** %tags, align 8
  %21 = load i8*, i8** %my_string, align 8
  %22 = load i8*, i8** %my_string, align 8
  %23 = load i8, i8* %22, align 1
  %idxprom = zext i8 %23 to i64
  %24 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  %25 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %25 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  store i8* %add.ptr, i8** %tmp21, align 8
  %26 = load i8*, i8** %tmp21, align 8
  %27 = load i8*, i8** %my_string, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %28 = load i32, i32* %my_index, align 4
  %conv26 = sext i32 %28 to i64
  %add = add nsw i64 %conv26, %sub.ptr.sub
  %conv27 = trunc i64 %add to i32
  store i32 %conv27, i32* %my_index, align 4
  %29 = load i8*, i8** %tmp21, align 8
  store i8* %29, i8** %my_string, align 8
  %30 = load %struct._GSList*, %struct._GSList** %tags, align 8
  store %struct._GSList* %30, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.40, %do.body.22
  %31 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool28 = icmp ne %struct._GSList* %31, null
  br i1 %tobool28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 0
  %33 = load i8*, i8** %data, align 8
  %34 = bitcast i8* %33 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %34, %struct._GtkTextTag** %tag, align 8
  %35 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %kerning_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %35, i32 0, i32 7
  %36 = load %struct._GList*, %struct._GList** %kerning_tags, align 8
  %37 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %38 = bitcast %struct._GtkTextTag* %37 to i8*
  %call30 = call %struct._GList* @g_list_find(%struct._GList* %36, i8* %38)
  %tobool31 = icmp ne %struct._GList* %call30, null
  br i1 %tobool31, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %for.body
  %39 = load i32, i32* %index.addr, align 4
  %sub = sub nsw i32 %39, 3
  %cmp33 = icmp sgt i32 0, %sub
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.32
  br label %cond.end

cond.false:                                       ; preds = %if.then.32
  %40 = load i32, i32* %index.addr, align 4
  %sub35 = sub nsw i32 %40, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub35, %cond.false ]
  store i32 %cond, i32* %index.addr, align 4
  br label %for.end

if.end.36:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %41 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool37 = icmp ne %struct._GSList* %41, null
  br i1 %tobool37, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %for.inc
  %42 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %42, i32 0, i32 1
  %43 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end.40

cond.false.39:                                    ; preds = %for.inc
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.38
  %cond41 = phi %struct._GSList* [ %43, %cond.true.38 ], [ null, %cond.false.39 ]
  store %struct._GSList* %cond41, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end, %for.cond
  %44 = load %struct._GSList*, %struct._GSList** %tags, align 8
  call void @g_slist_free(%struct._GSList* %44)
  %call42 = call i32 @gtk_text_iter_forward_char(%struct._GtkTextIter* %start)
  %call43 = call i32 @gtk_text_iter_compare(%struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %cmp44 = icmp sgt i32 %call43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %for.end
  %45 = bitcast %struct._GtkTextIter* %start to i8*
  %46 = bitcast %struct._GtkTextIter* %end to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 80, i32 8, i1 false)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %for.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.47
  %47 = load i32, i32* %my_index, align 4
  %48 = load i32, i32* %index.addr, align 4
  %cmp48 = icmp slt i32 %47, %48
  br i1 %cmp48, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %call50 = call i32 @gtk_text_iter_equal(%struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %tobool51 = icmp ne i32 %call50, 0
  %lnot = xor i1 %tobool51, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %49 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %49, label %do.body.22, label %do.end.52

do.end.52:                                        ; preds = %land.end
  br label %if.end.53

if.end.53:                                        ; preds = %do.end.52, %do.end
  %50 = load i32, i32* %index.addr, align 4
  %idxprom54 = sext i32 %50 to i64
  %51 = load i8*, i8** %string, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %51, i64 %idxprom54
  store i8 0, i8* %arrayidx55, align 1
  %52 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %53 = bitcast %struct._GimpTextBuffer* %52 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_text_buffer_get_type() #7
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call56)
  %54 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkTextBuffer*
  %55 = load %struct._GtkTextIter*, %struct._GtkTextIter** %iter.addr, align 8
  %56 = load i8*, i8** %string, align 8
  %call58 = call i64 @g_utf8_strlen(i8* %56, i64 -1) #8
  %conv59 = trunc i64 %call58 to i32
  call void @gtk_text_buffer_get_iter_at_offset(%struct._GtkTextBuffer* %54, %struct._GtkTextIter* %55, i32 %conv59)
  %57 = load i8*, i8** %string, align 8
  call void @g_free(i8* %57)
  br label %return

return:                                           ; preds = %if.end.53, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @g_utf8_strlen(i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @gimp_text_buffer_load(%struct._GimpTextBuffer* %buffer, i8* %filename, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %buf = alloca [2048 x i8], align 16
  %remaining = alloca i32, align 4
  %iter = alloca %struct._GtkTextIter, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %leftover = alloca i8*, align 8
  %count = alloca i32, align 4
  %to_read = alloca i32, align 4
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %remaining, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_text_buffer_load, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %filename.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_text_buffer_load, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp18 = icmp eq %struct._GError** %14, null
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.17
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  %cmp19 = icmp eq %struct._GError* %16, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %lor.lhs.false, %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_text_buffer_load, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %17 = load i8*, i8** %filename.addr, align 8
  %call24 = call %struct._IO_FILE* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0))
  store %struct._IO_FILE* %call24, %struct._IO_FILE** %file, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool25 = icmp ne %struct._IO_FILE* %18, null
  br i1 %tobool25, label %if.end.32, label %if.then.26

if.then.26:                                       ; preds = %do.end.23
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call27 = call i32 @g_file_error_quark()
  %call28 = call i32* @__errno_location() #7
  %20 = load i32, i32* %call28, align 4
  %call29 = call i32 @g_file_error_from_errno(i32 %20)
  %call30 = call i32* @__errno_location() #7
  %21 = load i32, i32* %call30, align 4
  %call31 = call i8* @g_strerror(i32 %21) #7
  call void @g_set_error_literal(%struct._GError** %19, i32 %call27, i32 %call29, i8* %call31)
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %do.end.23
  %22 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %23 = bitcast %struct._GimpTextBuffer* %22 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_text_buffer_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call33)
  %24 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_begin_user_action(%struct._GtkTextBuffer* %24)
  %25 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  call void @gimp_text_buffer_set_text(%struct._GimpTextBuffer* %25, i8* null)
  %26 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %27 = bitcast %struct._GimpTextBuffer* %26 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_text_buffer_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call35)
  %28 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer* %28, %struct._GtkTextIter* %iter)
  br label %while.cond

while.cond:                                       ; preds = %if.end.76, %if.end.32
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call37 = call i32 @feof(%struct._IO_FILE* %29) #5
  %tobool38 = icmp ne i32 %call37, 0
  %lnot = xor i1 %tobool38, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load i32, i32* %remaining, align 4
  %conv = sext i32 %30 to i64
  %sub = sub i64 2048, %conv
  %sub42 = sub i64 %sub, 1
  %conv43 = trunc i64 %sub42 to i32
  store i32 %conv43, i32* %to_read, align 4
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %31 = load i32, i32* %remaining, align 4
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %32 = load i32, i32* %to_read, align 4
  %conv44 = sext i32 %32 to i64
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call45 = call i64 @fread(i8* %add.ptr, i64 1, i64 %conv44, %struct._IO_FILE* %33)
  %conv46 = trunc i64 %call45 to i32
  store i32 %conv46, i32* %count, align 4
  %34 = load i32, i32* %count, align 4
  %35 = load i32, i32* %remaining, align 4
  %add = add nsw i32 %34, %35
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %arraydecay47 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %36 = load i32, i32* %count, align 4
  %37 = load i32, i32* %remaining, align 4
  %add48 = add nsw i32 %36, %37
  %conv49 = sext i32 %add48 to i64
  %call50 = call i32 @g_utf8_validate(i8* %arraydecay47, i64 %conv49, i8** %leftover)
  %38 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %39 = bitcast %struct._GimpTextBuffer* %38 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_text_buffer_get_type() #7
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call51)
  %40 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkTextBuffer*
  %arraydecay53 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %41 = load i8*, i8** %leftover, align 8
  %arraydecay54 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay54 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv55 = trunc i64 %sub.ptr.sub to i32
  call void @gtk_text_buffer_insert(%struct._GtkTextBuffer* %40, %struct._GtkTextIter* %iter, i8* %arraydecay53, i32 %conv55)
  %42 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %43 = bitcast %struct._GimpTextBuffer* %42 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_text_buffer_get_type() #7
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call56)
  %44 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer* %44, %struct._GtkTextIter* %iter)
  %arraydecay58 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %45 = load i32, i32* %remaining, align 4
  %idx.ext59 = sext i32 %45 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %arraydecay58, i64 %idx.ext59
  %46 = load i32, i32* %count, align 4
  %idx.ext61 = sext i32 %46 to i64
  %add.ptr62 = getelementptr inbounds i8, i8* %add.ptr60, i64 %idx.ext61
  %47 = load i8*, i8** %leftover, align 8
  %sub.ptr.lhs.cast63 = ptrtoint i8* %add.ptr62 to i64
  %sub.ptr.rhs.cast64 = ptrtoint i8* %47 to i64
  %sub.ptr.sub65 = sub i64 %sub.ptr.lhs.cast63, %sub.ptr.rhs.cast64
  %conv66 = trunc i64 %sub.ptr.sub65 to i32
  store i32 %conv66, i32* %remaining, align 4
  br label %do.body.67

do.body.67:                                       ; preds = %while.body
  %48 = bitcast [2048 x i8]* %buf to i8*
  %49 = load i8*, i8** %leftover, align 8
  %50 = load i32, i32* %remaining, align 4
  %conv68 = sext i32 %50 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %48, i8* %49, i64 %conv68, i32 1, i1 false)
  br label %do.end.69

do.end.69:                                        ; preds = %do.body.67
  %51 = load i32, i32* %remaining, align 4
  %cmp70 = icmp sgt i32 %51, 6
  br i1 %cmp70, label %if.then.75, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %do.end.69
  %52 = load i32, i32* %count, align 4
  %53 = load i32, i32* %to_read, align 4
  %cmp73 = icmp slt i32 %52, %53
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %lor.lhs.false.72, %do.end.69
  br label %while.end

if.end.76:                                        ; preds = %lor.lhs.false.72
  br label %while.cond

while.end:                                        ; preds = %if.then.75, %while.cond
  %54 = load i32, i32* %remaining, align 4
  %tobool77 = icmp ne i32 %54, 0
  br i1 %tobool77, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %while.end
  %call79 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i32 0, i32 0)) #5
  %55 = load i8*, i8** %filename.addr, align 8
  %call80 = call i8* @gimp_filename_to_utf8(i8* %55)
  call void (i8*, ...) @g_message(i8* %call79, i8* %call80)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.78, %while.end
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call82 = call i32 @fclose(%struct._IO_FILE* %56)
  %57 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %58 = bitcast %struct._GimpTextBuffer* %57 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_text_buffer_get_type() #7
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call83)
  %59 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_end_user_action(%struct._GtkTextBuffer* %59)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.81, %if.then.26, %if.else.21, %if.else.14, %if.else.9
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #2

declare void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer*, %struct._GtkTextIter*) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #6

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @g_utf8_validate(i8*, i64, i8**) #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare i8* @gimp_filename_to_utf8(i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_text_buffer_save(%struct._GimpTextBuffer* %buffer, i8* %filename, i32 %selection_only, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %filename.addr = alloca i8*, align 8
  %selection_only.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %start_iter = alloca %struct._GtkTextIter, align 8
  %end_iter = alloca %struct._GtkTextIter, align 8
  %fd = alloca i32, align 4
  %text_contents = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %text_length = alloca i32, align 4
  %bytes_written = alloca i32, align 4
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %selection_only, i32* %selection_only.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpTextBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_text_buffer_save, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %filename.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_text_buffer_save, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp18 = icmp eq %struct._GError** %14, null
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.17
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  %cmp19 = icmp eq %struct._GError* %16, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %lor.lhs.false, %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_text_buffer_save, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %17 = load i8*, i8** %filename.addr, align 8
  %call24 = call i32 (i8*, i32, ...) @open(i8* %17, i32 1089, i32 438)
  store i32 %call24, i32* %fd, align 4
  %18 = load i32, i32* %fd, align 4
  %cmp25 = icmp eq i32 %18, -1
  br i1 %cmp25, label %if.then.26, label %if.end.32

if.then.26:                                       ; preds = %do.end.23
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call27 = call i32 @g_file_error_quark()
  %call28 = call i32* @__errno_location() #7
  %20 = load i32, i32* %call28, align 4
  %call29 = call i32 @g_file_error_from_errno(i32 %20)
  %call30 = call i32* @__errno_location() #7
  %21 = load i32, i32* %call30, align 4
  %call31 = call i8* @g_strerror(i32 %21) #7
  call void @g_set_error_literal(%struct._GError** %19, i32 %call27, i32 %call29, i8* %call31)
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %do.end.23
  %22 = load i32, i32* %selection_only.addr, align 4
  %tobool33 = icmp ne i32 %22, 0
  br i1 %tobool33, label %if.then.34, label %if.else.38

if.then.34:                                       ; preds = %if.end.32
  %23 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %24 = bitcast %struct._GimpTextBuffer* %23 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_text_buffer_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call35)
  %25 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkTextBuffer*
  %call37 = call i32 @gtk_text_buffer_get_selection_bounds(%struct._GtkTextBuffer* %25, %struct._GtkTextIter* %start_iter, %struct._GtkTextIter* %end_iter)
  br label %if.end.41

if.else.38:                                       ; preds = %if.end.32
  %26 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %27 = bitcast %struct._GimpTextBuffer* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_text_buffer_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer* %28, %struct._GtkTextIter* %start_iter, %struct._GtkTextIter* %end_iter)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.34
  %29 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %30 = bitcast %struct._GimpTextBuffer* %29 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_text_buffer_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call42)
  %31 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkTextBuffer*
  %call44 = call i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer* %31, %struct._GtkTextIter* %start_iter, %struct._GtkTextIter* %end_iter, i32 1)
  store i8* %call44, i8** %text_contents, align 8
  %32 = load i8*, i8** %text_contents, align 8
  %tobool45 = icmp ne i8* %32, null
  br i1 %tobool45, label %if.then.46, label %if.end.67

if.then.46:                                       ; preds = %if.end.41
  %33 = load i8*, i8** %text_contents, align 8
  %call48 = call i64 @strlen(i8* %33) #8
  %conv = trunc i64 %call48 to i32
  store i32 %conv, i32* %text_length, align 4
  %34 = load i32, i32* %text_length, align 4
  %cmp49 = icmp sgt i32 %34, 0
  br i1 %cmp49, label %if.then.51, label %if.end.66

if.then.51:                                       ; preds = %if.then.46
  %35 = load i32, i32* %fd, align 4
  %36 = load i8*, i8** %text_contents, align 8
  %37 = load i32, i32* %text_length, align 4
  %conv53 = sext i32 %37 to i64
  %call54 = call i64 @write(i32 %35, i8* %36, i64 %conv53)
  %conv55 = trunc i64 %call54 to i32
  store i32 %conv55, i32* %bytes_written, align 4
  %38 = load i32, i32* %bytes_written, align 4
  %39 = load i32, i32* %text_length, align 4
  %cmp56 = icmp ne i32 %38, %39
  br i1 %cmp56, label %if.then.58, label %if.end.65

if.then.58:                                       ; preds = %if.then.51
  %40 = load i8*, i8** %text_contents, align 8
  call void @g_free(i8* %40)
  %41 = load i32, i32* %fd, align 4
  %call59 = call i32 @close(i32 %41)
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call60 = call i32 @g_file_error_quark()
  %call61 = call i32* @__errno_location() #7
  %43 = load i32, i32* %call61, align 4
  %call62 = call i32 @g_file_error_from_errno(i32 %43)
  %call63 = call i32* @__errno_location() #7
  %44 = load i32, i32* %call63, align 4
  %call64 = call i8* @g_strerror(i32 %44) #7
  call void @g_set_error_literal(%struct._GError** %42, i32 %call60, i32 %call62, i8* %call64)
  store i32 0, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.then.51
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.46
  %45 = load i8*, i8** %text_contents, align 8
  call void @g_free(i8* %45)
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.41
  %46 = load i32, i32* %fd, align 4
  %call68 = call i32 @close(i32 %46)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.67, %if.then.58, %if.then.26, %if.else.21, %if.else.14, %if.else.9
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare i32 @open(i8*, i32, ...) #1

declare i32 @gtk_text_buffer_get_selection_bounds(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare i64 @write(i32, i8*, i64) #1

declare i32 @close(i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_buffer_class_init(%struct._GimpTextBufferClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpTextBufferClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %buffer_class = alloca %struct._GtkTextBufferClass*, align 8
  store %struct._GimpTextBufferClass* %klass, %struct._GimpTextBufferClass** %klass.addr, align 8
  %0 = load %struct._GimpTextBufferClass*, %struct._GimpTextBufferClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTextBufferClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpTextBufferClass*, %struct._GimpTextBufferClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpTextBufferClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_text_buffer_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkTextBufferClass*
  store %struct._GtkTextBufferClass* %5, %struct._GtkTextBufferClass** %buffer_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_text_buffer_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_text_buffer_dispose, void (%struct._GObject*)** %dispose, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_text_buffer_finalize, void (%struct._GObject*)** %finalize, align 8
  %9 = load %struct._GtkTextBufferClass*, %struct._GtkTextBufferClass** %buffer_class, align 8
  %mark_set = getelementptr inbounds %struct._GtkTextBufferClass, %struct._GtkTextBufferClass* %9, i32 0, i32 7
  store void (%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextMark*)* @gimp_text_buffer_mark_set, void (%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextMark*)** %mark_set, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_buffer_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %buffer = alloca %struct._GimpTextBuffer*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_buffer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextBuffer*
  store %struct._GimpTextBuffer* %2, %struct._GimpTextBuffer** %buffer, align 8
  %3 = load i8*, i8** @gimp_text_buffer_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_text_buffer_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %13 = bitcast %struct._GimpTextBuffer* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_text_buffer_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkTextBuffer*
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i32 -1)
  %15 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %16 = bitcast %struct._GimpTextBuffer* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_text_buffer_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTextBuffer*
  %call9 = call %struct._GtkTextTag* (%struct._GtkTextBuffer*, i8*, i8*, ...) @gtk_text_buffer_create_tag(%struct._GtkTextBuffer* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 700, i8* null)
  %18 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %bold_tag = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %18, i32 0, i32 1
  store %struct._GtkTextTag* %call9, %struct._GtkTextTag** %bold_tag, align 8
  %19 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %20 = bitcast %struct._GimpTextBuffer* %19 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_text_buffer_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call10)
  %21 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkTextBuffer*
  %call12 = call %struct._GtkTextTag* (%struct._GtkTextBuffer*, i8*, i8*, ...) @gtk_text_buffer_create_tag(%struct._GtkTextBuffer* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 2, i8* null)
  %22 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %italic_tag = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %22, i32 0, i32 2
  store %struct._GtkTextTag* %call12, %struct._GtkTextTag** %italic_tag, align 8
  %23 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %24 = bitcast %struct._GimpTextBuffer* %23 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_text_buffer_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call13)
  %25 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkTextBuffer*
  %call15 = call %struct._GtkTextTag* (%struct._GtkTextBuffer*, i8*, i8*, ...) @gtk_text_buffer_create_tag(%struct._GtkTextBuffer* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i32 1, i8* null)
  %26 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %underline_tag = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %26, i32 0, i32 3
  store %struct._GtkTextTag* %call15, %struct._GtkTextTag** %underline_tag, align 8
  %27 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %28 = bitcast %struct._GimpTextBuffer* %27 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_text_buffer_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call16)
  %29 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkTextBuffer*
  %call18 = call %struct._GtkTextTag* (%struct._GtkTextBuffer*, i8*, i8*, ...) @gtk_text_buffer_create_tag(%struct._GtkTextBuffer* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i32 1, i8* null)
  %30 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %strikethrough_tag = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %30, i32 0, i32 4
  store %struct._GtkTextTag* %call18, %struct._GtkTextTag** %strikethrough_tag, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_buffer_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_text_buffer_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 5
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %4 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %3(%struct._GObject* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_buffer_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %buffer = alloca %struct._GimpTextBuffer*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_buffer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextBuffer*
  store %struct._GimpTextBuffer* %2, %struct._GimpTextBuffer** %buffer, align 8
  %3 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %size_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %3, i32 0, i32 5
  %4 = load %struct._GList*, %struct._GList** %size_tags, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %size_tags2 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %5, i32 0, i32 5
  %6 = load %struct._GList*, %struct._GList** %size_tags2, align 8
  call void @g_list_free(%struct._GList* %6)
  %7 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %size_tags3 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %7, i32 0, i32 5
  store %struct._GList* null, %struct._GList** %size_tags3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %baseline_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %8, i32 0, i32 6
  %9 = load %struct._GList*, %struct._GList** %baseline_tags, align 8
  %tobool4 = icmp ne %struct._GList* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %baseline_tags6 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %10, i32 0, i32 6
  %11 = load %struct._GList*, %struct._GList** %baseline_tags6, align 8
  call void @g_list_free(%struct._GList* %11)
  %12 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %baseline_tags7 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %12, i32 0, i32 6
  store %struct._GList* null, %struct._GList** %baseline_tags7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %kerning_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %13, i32 0, i32 7
  %14 = load %struct._GList*, %struct._GList** %kerning_tags, align 8
  %tobool9 = icmp ne %struct._GList* %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %15 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %kerning_tags11 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %15, i32 0, i32 7
  %16 = load %struct._GList*, %struct._GList** %kerning_tags11, align 8
  call void @g_list_free(%struct._GList* %16)
  %17 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %kerning_tags12 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %17, i32 0, i32 7
  store %struct._GList* null, %struct._GList** %kerning_tags12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %18 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %font_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %18, i32 0, i32 8
  %19 = load %struct._GList*, %struct._GList** %font_tags, align 8
  %tobool14 = icmp ne %struct._GList* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %20 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %font_tags16 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %20, i32 0, i32 8
  %21 = load %struct._GList*, %struct._GList** %font_tags16, align 8
  call void @g_list_free(%struct._GList* %21)
  %22 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %font_tags17 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %22, i32 0, i32 8
  store %struct._GList* null, %struct._GList** %font_tags17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %23 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %color_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %23, i32 0, i32 9
  %24 = load %struct._GList*, %struct._GList** %color_tags, align 8
  %tobool19 = icmp ne %struct._GList* %24, null
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.18
  %25 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %color_tags21 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %25, i32 0, i32 9
  %26 = load %struct._GList*, %struct._GList** %color_tags21, align 8
  call void @g_list_free(%struct._GList* %26)
  %27 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %color_tags22 = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %27, i32 0, i32 9
  store %struct._GList* null, %struct._GList** %color_tags22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.18
  %28 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  call void @gimp_text_buffer_clear_insert_tags(%struct._GimpTextBuffer* %28)
  %29 = load i8*, i8** @gimp_text_buffer_parent_class, align 8
  %30 = bitcast i8* %29 to %struct._GTypeClass*
  %call24 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %30, i64 80)
  %31 = bitcast %struct._GTypeClass* %call24 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %31, i32 0, i32 6
  %32 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %33 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %32(%struct._GObject* %33)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_buffer_mark_set(%struct._GtkTextBuffer* %buffer, %struct._GtkTextIter* %location, %struct._GtkTextMark* %mark) #3 {
entry:
  %buffer.addr = alloca %struct._GtkTextBuffer*, align 8
  %location.addr = alloca %struct._GtkTextIter*, align 8
  %mark.addr = alloca %struct._GtkTextMark*, align 8
  store %struct._GtkTextBuffer* %buffer, %struct._GtkTextBuffer** %buffer.addr, align 8
  store %struct._GtkTextIter* %location, %struct._GtkTextIter** %location.addr, align 8
  store %struct._GtkTextMark* %mark, %struct._GtkTextMark** %mark.addr, align 8
  %0 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GtkTextBuffer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_buffer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextBuffer*
  call void @gimp_text_buffer_clear_insert_tags(%struct._GimpTextBuffer* %2)
  %3 = load i8*, i8** @gimp_text_buffer_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_text_buffer_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkTextBufferClass*
  %mark_set = getelementptr inbounds %struct._GtkTextBufferClass, %struct._GtkTextBufferClass* %5, i32 0, i32 7
  %6 = load void (%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextMark*)*, void (%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextMark*)** %mark_set, align 8
  %7 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  %8 = load %struct._GtkTextIter*, %struct._GtkTextIter** %location.addr, align 8
  %9 = load %struct._GtkTextMark*, %struct._GtkTextMark** %mark.addr, align 8
  call void %6(%struct._GtkTextBuffer* %7, %struct._GtkTextIter* %8, %struct._GtkTextMark* %9)
  ret void
}

declare %struct._GdkAtom* @gtk_text_buffer_register_serialize_format(%struct._GtkTextBuffer*, i8*, i8* (%struct._GtkTextBuffer*, %struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i64*, i8*)*, i8*, void (i8*)*) #1

declare i8* @gimp_text_buffer_serialize(%struct._GtkTextBuffer*, %struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i64*, i8*) #1

declare %struct._GdkAtom* @gtk_text_buffer_register_deserialize_format(%struct._GtkTextBuffer*, i8*, i32 (%struct._GtkTextBuffer*, %struct._GtkTextBuffer*, %struct._GtkTextIter*, i8*, i64, i32, i8*, %struct._GError**)*, i8*, void (i8*)*) #1

declare i32 @gimp_text_buffer_deserialize(%struct._GtkTextBuffer*, %struct._GtkTextBuffer*, %struct._GtkTextIter*, i8*, i64, i32, i8*, %struct._GError**) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

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
