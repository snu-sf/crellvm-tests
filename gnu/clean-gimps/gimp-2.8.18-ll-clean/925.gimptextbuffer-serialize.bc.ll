; ModuleID = './app/widgets/gimptextbuffer-serialize.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GMarkupParser = type { void (%struct._GMarkupParseContext*, i8*, i8**, i8**, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, %struct._GError*, i8*)* }
%struct._GMarkupParseContext = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }
%struct._GString = type { i8*, i64, i64 }
%struct._GtkTextTag = type { %struct._GObject, %struct._GtkTextTagTable*, i8*, i32, %struct._GtkTextAttributes*, i24 }
%struct._GtkTextAttributes = type { i32, %struct._GtkTextAppearance, i32, i32, %struct._PangoFontDescription*, double, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i32, %struct._PangoLanguage*, %struct._GdkColor*, i8 }
%struct._GtkTextAppearance = type { %struct._GdkColor, %struct._GdkColor, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i8*, i16 }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._PangoFontDescription = type opaque
%struct._PangoTabArray = type opaque
%struct._PangoLanguage = type opaque
%struct._GimpTextBuffer = type { %struct._GtkTextBuffer, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GList*, i32, %struct._GList*, %struct._GList*, %struct._GdkAtom* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GdkAtom = type opaque
%struct.ParseInfo = type { %struct._GSList*, %struct._GtkTextBuffer*, %struct._GtkTextBuffer*, %struct._GSList*, %struct._GList* }
%struct.TextSpan = type { i8*, %struct._GSList* }
%struct._GtkTextMark = type { %struct._GObject, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"<markup>\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"</markup>\00", align 1
@gimp_text_buffer_deserialize.markup_parser = internal constant %struct._GMarkupParser { void (%struct._GMarkupParseContext*, i8*, i8**, i8**, i8*, %struct._GError**)* @start_element_handler, void (%struct._GMarkupParseContext*, i8*, i8*, %struct._GError**)* @end_element_handler, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)* @text_handler, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)* null, void (%struct._GMarkupParseContext*, %struct._GError*, i8*)* null }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_text_buffer_pre_serialize = private unnamed_addr constant [31 x i8] c"gimp_text_buffer_pre_serialize\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"GIMP_IS_TEXT_BUFFER (buffer)\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"GTK_IS_TEXT_BUFFER (content)\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\E2\81\A0\00", align 1
@__func__.gimp_text_buffer_post_deserialize = private unnamed_addr constant [34 x i8] c"gimp_text_buffer_post_deserialize\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"<%s %s=\22%s\22>\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"<%s>\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"</%s>\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"markup\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"Outermost element in text must be <markup> not <%s>\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"gimptextbuffer-serialize.c\00", align 1
@__func__.start_element_handler = private unnamed_addr constant [22 x i8] c"start_element_handler\00", align 1
@__func__.peek_state = private unnamed_addr constant [11 x i8] c"peek_state\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"info->states != NULL\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"Attribute \22%s\22 is invalid on <%s> element in this context\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Line %d character %d: %s\00", align 1
@__func__.parse_tag_element = private unnamed_addr constant [18 x i8] c"parse_tag_element\00", align 1
@.str.15 = private unnamed_addr constant [106 x i8] c"peek_state (info) == STATE_MARKUP || peek_state (info) == STATE_TAG || peek_state (info) == STATE_UNKNOWN\00", align 1
@__func__.end_element_handler = private unnamed_addr constant [20 x i8] c"end_element_handler\00", align 1
@.str.16 = private unnamed_addr constant [106 x i8] c"peek_state (info) == STATE_UNKNOWN || peek_state (info) == STATE_TAG || peek_state (info) == STATE_MARKUP\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"peek_state (info) == STATE_START\00", align 1
@__func__.pop_state = private unnamed_addr constant [10 x i8] c"pop_state\00", align 1
@__func__.text_handler = private unnamed_addr constant [13 x i8] c"text_handler\00", align 1
@g_ascii_table = external constant i16*, align 8
@g_utf8_skip = external constant i8*, align 8
@.str.18 = private unnamed_addr constant [25 x i8] c"deserialize-insert-point\00", align 1

; Function Attrs: nounwind uwtable
define i8* @gimp_text_buffer_serialize(%struct._GtkTextBuffer* %register_buffer, %struct._GtkTextBuffer* %content_buffer, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i64* %length, i8* %user_data) #0 {
entry:
  %register_buffer.addr = alloca %struct._GtkTextBuffer*, align 8
  %content_buffer.addr = alloca %struct._GtkTextBuffer*, align 8
  %start.addr = alloca %struct._GtkTextIter*, align 8
  %end.addr = alloca %struct._GtkTextIter*, align 8
  %length.addr = alloca i64*, align 8
  %user_data.addr = alloca i8*, align 8
  %string = alloca %struct._GString*, align 8
  %iter = alloca %struct._GtkTextIter, align 8
  %old_iter = alloca %struct._GtkTextIter, align 8
  %tag_list = alloca %struct._GSList*, align 8
  %active_tags = alloca %struct._GSList*, align 8
  %tmp = alloca %struct._GSList*, align 8
  %tmp_text = alloca i8*, align 8
  %escaped_text = alloca i8*, align 8
  %tag = alloca %struct._GtkTextTag*, align 8
  %ch = alloca i32, align 4
  store %struct._GtkTextBuffer* %register_buffer, %struct._GtkTextBuffer** %register_buffer.addr, align 8
  store %struct._GtkTextBuffer* %content_buffer, %struct._GtkTextBuffer** %content_buffer.addr, align 8
  store %struct._GtkTextIter* %start, %struct._GtkTextIter** %start.addr, align 8
  store %struct._GtkTextIter* %end, %struct._GtkTextIter** %end.addr, align 8
  store i64* %length, i64** %length.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %call = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  store %struct._GString* %call, %struct._GString** %string, align 8
  %0 = load %struct._GtkTextIter*, %struct._GtkTextIter** %start.addr, align 8
  %1 = bitcast %struct._GtkTextIter* %iter to i8*
  %2 = bitcast %struct._GtkTextIter* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 80, i32 8, i1 false)
  store %struct._GSList* null, %struct._GSList** %tag_list, align 8
  store %struct._GSList* null, %struct._GSList** %active_tags, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store %struct._GSList* null, %struct._GSList** %active_tags, align 8
  %call3 = call %struct._GSList* @gtk_text_iter_get_tags(%struct._GtkTextIter* %iter)
  store %struct._GSList* %call3, %struct._GSList** %tag_list, align 8
  %3 = load %struct._GSList*, %struct._GSList** %tag_list, align 8
  store %struct._GSList* %3, %struct._GSList** %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %4 = load %struct._GSList*, %struct._GSList** %tmp, align 8
  %tobool = icmp ne %struct._GSList* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GSList*, %struct._GSList** %tmp, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %7, %struct._GtkTextTag** %tag, align 8
  %8 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %register_buffer.addr, align 8
  %9 = bitcast %struct._GtkTextBuffer* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_text_buffer_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpTextBuffer*
  %11 = load %struct._GString*, %struct._GString** %string, align 8
  %12 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %call7 = call i32 @open_tag(%struct._GimpTextBuffer* %10, %struct._GString* %11, %struct._GtkTextTag* %12)
  %13 = load %struct._GSList*, %struct._GSList** %active_tags, align 8
  %14 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %15 = bitcast %struct._GtkTextTag* %14 to i8*
  %call8 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %13, i8* %15)
  store %struct._GSList* %call8, %struct._GSList** %active_tags, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct._GSList*, %struct._GSList** %tmp, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 1
  %17 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %17, %struct._GSList** %tmp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._GSList*, %struct._GSList** %tag_list, align 8
  call void @g_slist_free(%struct._GSList* %18)
  %19 = bitcast %struct._GtkTextIter* %old_iter to i8*
  %20 = bitcast %struct._GtkTextIter* %iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 80, i32 8, i1 false)
  br label %while.body

while.body:                                       ; preds = %for.end, %if.end.19
  %call10 = call i32 @gtk_text_iter_get_char(%struct._GtkTextIter* %iter)
  store i32 %call10, i32* %ch, align 4
  %21 = load i32, i32* %ch, align 4
  %cmp = icmp eq i32 %21, 65532
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  br label %if.end.15

if.else:                                          ; preds = %while.body
  %22 = load i32, i32* %ch, align 4
  %cmp11 = icmp eq i32 %22, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else
  br label %while.end

if.else.13:                                       ; preds = %if.else
  %call14 = call i32 @gtk_text_iter_forward_char(%struct._GtkTextIter* %iter)
  br label %if.end

if.end:                                           ; preds = %if.else.13
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then
  %call16 = call i32 @gtk_text_iter_toggles_tag(%struct._GtkTextIter* %iter, %struct._GtkTextTag* null)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  br label %while.end

if.end.19:                                        ; preds = %if.end.15
  br label %while.body

while.end:                                        ; preds = %if.then.18, %if.then.12
  %23 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call20 = call i32 @gtk_text_iter_compare(%struct._GtkTextIter* %iter, %struct._GtkTextIter* %23)
  %cmp21 = icmp sgt i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %while.end
  %24 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %25 = bitcast %struct._GtkTextIter* %iter to i8*
  %26 = bitcast %struct._GtkTextIter* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 80, i32 8, i1 false)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %while.end
  %call24 = call i8* @gtk_text_iter_get_slice(%struct._GtkTextIter* %old_iter, %struct._GtkTextIter* %iter)
  store i8* %call24, i8** %tmp_text, align 8
  %27 = load i8*, i8** %tmp_text, align 8
  %call25 = call i8* @g_markup_escape_text(i8* %27, i64 -1)
  store i8* %call25, i8** %escaped_text, align 8
  %28 = load i8*, i8** %tmp_text, align 8
  call void @g_free(i8* %28)
  %29 = load %struct._GString*, %struct._GString** %string, align 8
  %30 = load i8*, i8** %escaped_text, align 8
  %call26 = call %struct._GString* @g_string_append(%struct._GString* %29, i8* %30)
  %31 = load i8*, i8** %escaped_text, align 8
  call void @g_free(i8* %31)
  %32 = load %struct._GSList*, %struct._GSList** %active_tags, align 8
  store %struct._GSList* %32, %struct._GSList** %tmp, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.34, %if.end.23
  %33 = load %struct._GSList*, %struct._GSList** %tmp, align 8
  %tobool28 = icmp ne %struct._GSList* %33, null
  br i1 %tobool28, label %for.body.29, label %for.end.36

for.body.29:                                      ; preds = %for.cond.27
  %34 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %register_buffer.addr, align 8
  %35 = bitcast %struct._GtkTextBuffer* %34 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_text_buffer_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call30)
  %36 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpTextBuffer*
  %37 = load %struct._GString*, %struct._GString** %string, align 8
  %38 = load %struct._GSList*, %struct._GSList** %tmp, align 8
  %data32 = getelementptr inbounds %struct._GSList, %struct._GSList* %38, i32 0, i32 0
  %39 = load i8*, i8** %data32, align 8
  %40 = bitcast i8* %39 to %struct._GtkTextTag*
  %call33 = call i32 @close_tag(%struct._GimpTextBuffer* %36, %struct._GString* %37, %struct._GtkTextTag* %40)
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.29
  %41 = load %struct._GSList*, %struct._GSList** %tmp, align 8
  %next35 = getelementptr inbounds %struct._GSList, %struct._GSList* %41, i32 0, i32 1
  %42 = load %struct._GSList*, %struct._GSList** %next35, align 8
  store %struct._GSList* %42, %struct._GSList** %tmp, align 8
  br label %for.cond.27

for.end.36:                                       ; preds = %for.cond.27
  %43 = load %struct._GSList*, %struct._GSList** %active_tags, align 8
  call void @g_slist_free(%struct._GSList* %43)
  br label %do.cond

do.cond:                                          ; preds = %for.end.36
  %44 = load %struct._GtkTextIter*, %struct._GtkTextIter** %end.addr, align 8
  %call37 = call i32 @gtk_text_iter_equal(%struct._GtkTextIter* %iter, %struct._GtkTextIter* %44)
  %tobool38 = icmp ne i32 %call37, 0
  %lnot = xor i1 %tobool38, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %45 = load %struct._GString*, %struct._GString** %string, align 8
  %call39 = call %struct._GString* @g_string_append(%struct._GString* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  %46 = load %struct._GString*, %struct._GString** %string, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %46, i32 0, i32 1
  %47 = load i64, i64* %len, align 8
  %48 = load i64*, i64** %length.addr, align 8
  store i64 %47, i64* %48, align 8
  %49 = load %struct._GString*, %struct._GString** %string, align 8
  %call40 = call i8* @g_string_free(%struct._GString* %49, i32 0)
  ret i8* %call40
}

declare %struct._GString* @g_string_new(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._GSList* @gtk_text_iter_get_tags(%struct._GtkTextIter*) #1

; Function Attrs: nounwind uwtable
define internal i32 @open_tag(%struct._GimpTextBuffer* %buffer, %struct._GString* %string, %struct._GtkTextTag* %tag) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %string.addr = alloca %struct._GString*, align 8
  %tag.addr = alloca %struct._GtkTextTag*, align 8
  %name = alloca i8*, align 8
  %attribute = alloca i8*, align 8
  %attribute_value = alloca i8*, align 8
  %escaped = alloca i8*, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GString* %string, %struct._GString** %string.addr, align 8
  store %struct._GtkTextTag* %tag, %struct._GtkTextTag** %tag.addr, align 8
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %call = call i8* @gimp_text_buffer_tag_to_name(%struct._GimpTextBuffer* %0, %struct._GtkTextTag* %1, i8** %attribute, i8** %attribute_value)
  store i8* %call, i8** %name, align 8
  %2 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %attribute, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %4 = load i8*, i8** %attribute_value, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %5 = load i8*, i8** %attribute_value, align 8
  %call4 = call i8* @g_markup_escape_text(i8* %5, i64 -1)
  store i8* %call4, i8** %escaped, align 8
  %6 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %7 = load i8*, i8** %name, align 8
  %8 = load i8*, i8** %attribute, align 8
  %9 = load i8*, i8** %escaped, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* %7, i8* %8, i8* %9)
  %10 = load i8*, i8** %escaped, align 8
  call void @g_free(i8* %10)
  %11 = load i8*, i8** %attribute_value, align 8
  call void @g_free(i8* %11)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %12 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %13 = load i8*, i8** %name, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.end
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_buffer_get_type() #3

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #1

declare void @g_slist_free(%struct._GSList*) #1

declare i32 @gtk_text_iter_get_char(%struct._GtkTextIter*) #1

declare i32 @gtk_text_iter_forward_char(%struct._GtkTextIter*) #1

declare i32 @gtk_text_iter_toggles_tag(%struct._GtkTextIter*, %struct._GtkTextTag*) #1

declare i32 @gtk_text_iter_compare(%struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare i8* @gtk_text_iter_get_slice(%struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare i8* @g_markup_escape_text(i8*, i64) #1

declare void @g_free(i8*) #1

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @close_tag(%struct._GimpTextBuffer* %buffer, %struct._GString* %string, %struct._GtkTextTag* %tag) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %string.addr = alloca %struct._GString*, align 8
  %tag.addr = alloca %struct._GtkTextTag*, align 8
  %name = alloca i8*, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GString* %string, %struct._GString** %string.addr, align 8
  store %struct._GtkTextTag* %tag, %struct._GtkTextTag** %tag.addr, align 8
  %0 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %1 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %call = call i8* @gimp_text_buffer_tag_to_name(%struct._GimpTextBuffer* %0, %struct._GtkTextTag* %1, i8** null, i8** null)
  store i8* %call, i8** %name, align 8
  %2 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %4 = load i8*, i8** %name, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* %4)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i32 @gtk_text_iter_equal(%struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_text_buffer_deserialize(%struct._GtkTextBuffer* %register_buffer, %struct._GtkTextBuffer* %content_buffer, %struct._GtkTextIter* %iter, i8* %text, i64 %length, i32 %create_tags, i8* %user_data, %struct._GError** %error) #0 {
entry:
  %register_buffer.addr = alloca %struct._GtkTextBuffer*, align 8
  %content_buffer.addr = alloca %struct._GtkTextBuffer*, align 8
  %iter.addr = alloca %struct._GtkTextIter*, align 8
  %text.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %create_tags.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %context = alloca %struct._GMarkupParseContext*, align 8
  %info = alloca %struct.ParseInfo, align 8
  %retval1 = alloca i32, align 4
  store %struct._GtkTextBuffer* %register_buffer, %struct._GtkTextBuffer** %register_buffer.addr, align 8
  store %struct._GtkTextBuffer* %content_buffer, %struct._GtkTextBuffer** %content_buffer.addr, align 8
  store %struct._GtkTextIter* %iter, %struct._GtkTextIter** %iter.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i32 %create_tags, i32* %create_tags.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %retval1, align 4
  %0 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %register_buffer.addr, align 8
  %1 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content_buffer.addr, align 8
  call void @parse_info_init(%struct.ParseInfo* %info, %struct._GtkTextBuffer* %0, %struct._GtkTextBuffer* %1)
  %2 = bitcast %struct.ParseInfo* %info to i8*
  %call = call %struct._GMarkupParseContext* @g_markup_parse_context_new(%struct._GMarkupParser* @gimp_text_buffer_deserialize.markup_parser, i32 0, i8* %2, void (i8*)* null)
  store %struct._GMarkupParseContext* %call, %struct._GMarkupParseContext** %context, align 8
  %3 = load %struct._GMarkupParseContext*, %struct._GMarkupParseContext** %context, align 8
  %4 = load i8*, i8** %text.addr, align 8
  %5 = load i64, i64* %length.addr, align 8
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call2 = call i32 @g_markup_parse_context_parse(%struct._GMarkupParseContext* %3, i8* %4, i64 %5, %struct._GError** %6)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %7 = load %struct._GMarkupParseContext*, %struct._GMarkupParseContext** %context, align 8
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @g_markup_parse_context_end_parse(%struct._GMarkupParseContext* %7, %struct._GError** %8)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  br label %out

if.end.6:                                         ; preds = %if.end
  store i32 1, i32* %retval1, align 4
  %9 = load %struct._GtkTextIter*, %struct._GtkTextIter** %iter.addr, align 8
  call void @insert_text(%struct.ParseInfo* %info, %struct._GtkTextIter* %9)
  br label %out

out:                                              ; preds = %if.end.6, %if.then.5, %if.then
  call void @parse_info_free(%struct.ParseInfo* %info)
  %10 = load %struct._GMarkupParseContext*, %struct._GMarkupParseContext** %context, align 8
  call void @g_markup_parse_context_free(%struct._GMarkupParseContext* %10)
  %11 = load i32, i32* %retval1, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal void @start_element_handler(%struct._GMarkupParseContext* %context, i8* %element_name, i8** %attribute_names, i8** %attribute_values, i8* %user_data, %struct._GError** %error) #0 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %element_name.addr = alloca i8*, align 8
  %attribute_names.addr = alloca i8**, align 8
  %attribute_values.addr = alloca i8**, align 8
  %user_data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %info = alloca %struct.ParseInfo*, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i8* %element_name, i8** %element_name.addr, align 8
  store i8** %attribute_names, i8*** %attribute_names.addr, align 8
  store i8** %attribute_values, i8*** %attribute_values.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.ParseInfo*
  store %struct.ParseInfo* %1, %struct.ParseInfo** %info, align 8
  %2 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %call = call i32 @peek_state(%struct.ParseInfo* %2)
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.8
    i32 2, label %sw.bb.8
    i32 3, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %3 = load i8*, i8** %element_name.addr, align 8
  %call1 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)) #8
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %4 = load %struct._GMarkupParseContext*, %struct._GMarkupParseContext** %context.addr, align 8
  %5 = load i8*, i8** %element_name.addr, align 8
  %6 = load i8**, i8*** %attribute_names.addr, align 8
  %7 = load i8**, i8*** %attribute_values.addr, align 8
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call2 = call i32 @check_no_attributes(%struct._GMarkupParseContext* %4, i8* %5, i8** %6, i8** %7, %struct._GError** %8)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  %9 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  call void @push_state(%struct.ParseInfo* %9, i32 1)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %11 = load %struct._GMarkupParseContext*, %struct._GMarkupParseContext** %context.addr, align 8
  %call5 = call i32 @g_markup_error_quark()
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i32 0, i32 0)) #2
  %12 = load i8*, i8** %element_name.addr, align 8
  call void (%struct._GError**, %struct._GMarkupParseContext*, i32, i32, i8*, ...) @set_error(%struct._GError** %10, %struct._GMarkupParseContext* %11, i32 %call5, i32 2, i8* %call6, i8* %12)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry, %entry, %entry
  %13 = load %struct._GMarkupParseContext*, %struct._GMarkupParseContext** %context.addr, align 8
  %14 = load i8*, i8** %element_name.addr, align 8
  %15 = load i8**, i8*** %attribute_names.addr, align 8
  %16 = load i8**, i8*** %attribute_values.addr, align 8
  %17 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  call void @parse_tag_element(%struct._GMarkupParseContext* %13, i8* %14, i8** %15, i8** %16, %struct.ParseInfo* %17, %struct._GError** %18)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i32 355, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.start_element_handler, i32 0, i32 0), i8* null) #9
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.4, %do.end, %sw.bb.8, %if.end.7, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @end_element_handler(%struct._GMarkupParseContext* %context, i8* %element_name, i8* %user_data, %struct._GError** %error) #0 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %element_name.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %info = alloca %struct.ParseInfo*, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i8* %element_name, i8** %element_name.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.ParseInfo*
  store %struct.ParseInfo* %1, %struct.ParseInfo** %info, align 8
  %2 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %call = call i32 @peek_state(%struct.ParseInfo* %2)
  switch i32 %call, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.7
    i32 1, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  call void @pop_state(%struct.ParseInfo* %3)
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %4 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %call1 = call i32 @peek_state(%struct.ParseInfo* %4)
  %cmp = icmp eq i32 %call1, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %5 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %call2 = call i32 @peek_state(%struct.ParseInfo* %5)
  %cmp3 = icmp eq i32 %call2, 2
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %6 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %call5 = call i32 @peek_state(%struct.ParseInfo* %6)
  %cmp6 = icmp eq i32 %call5, 1
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %do.body
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.4
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i32 374, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.end_element_handler, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.16, i32 0, i32 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %7 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  call void @pop_state(%struct.ParseInfo* %7)
  br label %do.body.8

do.body.8:                                        ; preds = %sw.bb.7
  %8 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %call9 = call i32 @peek_state(%struct.ParseInfo* %8)
  %cmp10 = icmp eq i32 %call9, 3
  br i1 %cmp10, label %if.then.17, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %do.body.8
  %9 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %call12 = call i32 @peek_state(%struct.ParseInfo* %9)
  %cmp13 = icmp eq i32 %call12, 2
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %10 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %call15 = call i32 @peek_state(%struct.ParseInfo* %10)
  %cmp16 = icmp eq i32 %call15, 1
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %lor.lhs.false.14, %lor.lhs.false.11, %do.body.8
  br label %if.end.19

if.else.18:                                       ; preds = %lor.lhs.false.14
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i32 381, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.end_element_handler, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.16, i32 0, i32 0)) #9
  unreachable

if.end.19:                                        ; preds = %if.then.17
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  %11 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %tag_stack = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %11, i32 0, i32 3
  %12 = load %struct._GSList*, %struct._GSList** %tag_stack, align 8
  %13 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %tag_stack21 = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %13, i32 0, i32 3
  %14 = load %struct._GSList*, %struct._GSList** %tag_stack21, align 8
  %call22 = call %struct._GSList* @g_slist_delete_link(%struct._GSList* %12, %struct._GSList* %14)
  %15 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %tag_stack23 = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %15, i32 0, i32 3
  store %struct._GSList* %call22, %struct._GSList** %tag_stack23, align 8
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %16 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  call void @pop_state(%struct.ParseInfo* %16)
  br label %do.body.25

do.body.25:                                       ; preds = %sw.bb.24
  %17 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %call26 = call i32 @peek_state(%struct.ParseInfo* %17)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.25
  br label %if.end.30

if.else.29:                                       ; preds = %do.body.25
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i32 390, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.end_element_handler, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i32 0, i32 0)) #9
  unreachable

if.end.30:                                        ; preds = %if.then.28
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %18 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %spans = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %18, i32 0, i32 4
  %19 = load %struct._GList*, %struct._GList** %spans, align 8
  %call32 = call %struct._GList* @g_list_reverse(%struct._GList* %19)
  %20 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %spans33 = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %20, i32 0, i32 4
  store %struct._GList* %call32, %struct._GList** %spans33, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body.34

do.body.34:                                       ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i32 396, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.end_element_handler, i32 0, i32 0), i8* null) #9
  unreachable

do.end.35:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.35, %do.end.31, %do.end.20, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @text_handler(%struct._GMarkupParseContext* %context, i8* %text, i64 %text_len, i8* %user_data, %struct._GError** %error) #0 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %text.addr = alloca i8*, align 8
  %text_len.addr = alloca i64, align 8
  %user_data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %info = alloca %struct.ParseInfo*, align 8
  %span = alloca %struct.TextSpan*, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store i64 %text_len, i64* %text_len.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.ParseInfo*
  store %struct.ParseInfo* %1, %struct.ParseInfo** %info, align 8
  %2 = load i8*, i8** %text.addr, align 8
  %3 = load i64, i64* %text_len.addr, align 8
  %conv = trunc i64 %3 to i32
  %call = call i32 @all_whitespace(i8* %2, i32 %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %call1 = call i32 @peek_state(%struct.ParseInfo* %4)
  %cmp = icmp ne i32 %call1, 1
  br i1 %cmp, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %5 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %call4 = call i32 @peek_state(%struct.ParseInfo* %5)
  %cmp5 = icmp ne i32 %call4, 2
  br i1 %cmp5, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.3
  %6 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %call8 = call i32 @peek_state(%struct.ParseInfo* %6)
  %cmp9 = icmp ne i32 %call8, 3
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.7
  br label %sw.epilog

if.end:                                           ; preds = %land.lhs.true.7, %land.lhs.true.3, %land.lhs.true, %entry
  %7 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %call11 = call i32 @peek_state(%struct.ParseInfo* %7)
  switch i32 %call11, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.12
    i32 3, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %sw.bb
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i32 438, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.text_handler, i32 0, i32 0), i8* null) #9
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end, %if.end, %if.end
  %8 = load i64, i64* %text_len.addr, align 8
  %cmp13 = icmp eq i64 %8, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.bb.12
  br label %sw.epilog

if.end.16:                                        ; preds = %sw.bb.12
  %call17 = call noalias i8* @g_malloc0_n(i64 1, i64 16)
  %9 = bitcast i8* %call17 to %struct.TextSpan*
  store %struct.TextSpan* %9, %struct.TextSpan** %span, align 8
  %10 = load i8*, i8** %text.addr, align 8
  %11 = load i64, i64* %text_len.addr, align 8
  %call18 = call noalias i8* @g_strndup(i8* %10, i64 %11)
  %12 = load %struct.TextSpan*, %struct.TextSpan** %span, align 8
  %text19 = getelementptr inbounds %struct.TextSpan, %struct.TextSpan* %12, i32 0, i32 0
  store i8* %call18, i8** %text19, align 8
  %13 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %tag_stack = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %13, i32 0, i32 3
  %14 = load %struct._GSList*, %struct._GSList** %tag_stack, align 8
  %call20 = call %struct._GSList* @g_slist_copy(%struct._GSList* %14)
  %15 = load %struct.TextSpan*, %struct.TextSpan** %span, align 8
  %tags = getelementptr inbounds %struct.TextSpan, %struct.TextSpan* %15, i32 0, i32 1
  store %struct._GSList* %call20, %struct._GSList** %tags, align 8
  %16 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %spans = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %16, i32 0, i32 4
  %17 = load %struct._GList*, %struct._GList** %spans, align 8
  %18 = load %struct.TextSpan*, %struct.TextSpan** %span, align 8
  %19 = bitcast %struct.TextSpan* %18 to i8*
  %call21 = call %struct._GList* @g_list_prepend(%struct._GList* %17, i8* %19)
  %20 = load %struct.ParseInfo*, %struct.ParseInfo** %info, align 8
  %spans22 = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %20, i32 0, i32 4
  store %struct._GList* %call21, %struct._GList** %spans22, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %do.body.23

do.body.23:                                       ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i32 455, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.text_handler, i32 0, i32 0), i8* null) #9
  unreachable

do.end.24:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.then.15, %do.end.24, %if.end.16, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @parse_info_init(%struct.ParseInfo* %info, %struct._GtkTextBuffer* %register_buffer, %struct._GtkTextBuffer* %content_buffer) #0 {
entry:
  %info.addr = alloca %struct.ParseInfo*, align 8
  %register_buffer.addr = alloca %struct._GtkTextBuffer*, align 8
  %content_buffer.addr = alloca %struct._GtkTextBuffer*, align 8
  store %struct.ParseInfo* %info, %struct.ParseInfo** %info.addr, align 8
  store %struct._GtkTextBuffer* %register_buffer, %struct._GtkTextBuffer** %register_buffer.addr, align 8
  store %struct._GtkTextBuffer* %content_buffer, %struct._GtkTextBuffer** %content_buffer.addr, align 8
  %call = call %struct._GSList* @g_slist_prepend(%struct._GSList* null, i8* null)
  %0 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %states = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %0, i32 0, i32 0
  store %struct._GSList* %call, %struct._GSList** %states, align 8
  %1 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %tag_stack = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %1, i32 0, i32 3
  store %struct._GSList* null, %struct._GSList** %tag_stack, align 8
  %2 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %spans = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %2, i32 0, i32 4
  store %struct._GList* null, %struct._GList** %spans, align 8
  %3 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %register_buffer.addr, align 8
  %4 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %register_buffer1 = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %4, i32 0, i32 1
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %register_buffer1, align 8
  %5 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content_buffer.addr, align 8
  %6 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %content_buffer2 = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %6, i32 0, i32 2
  store %struct._GtkTextBuffer* %5, %struct._GtkTextBuffer** %content_buffer2, align 8
  ret void
}

declare %struct._GMarkupParseContext* @g_markup_parse_context_new(%struct._GMarkupParser*, i32, i8*, void (i8*)*) #1

declare i32 @g_markup_parse_context_parse(%struct._GMarkupParseContext*, i8*, i64, %struct._GError**) #1

declare i32 @g_markup_parse_context_end_parse(%struct._GMarkupParseContext*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal void @insert_text(%struct.ParseInfo* %info, %struct._GtkTextIter* %iter) #0 {
entry:
  %info.addr = alloca %struct.ParseInfo*, align 8
  %iter.addr = alloca %struct._GtkTextIter*, align 8
  %start_iter = alloca %struct._GtkTextIter, align 8
  %mark = alloca %struct._GtkTextMark*, align 8
  %tmp = alloca %struct._GList*, align 8
  %tags = alloca %struct._GSList*, align 8
  %span = alloca %struct.TextSpan*, align 8
  %tag = alloca %struct._GtkTextTag*, align 8
  store %struct.ParseInfo* %info, %struct.ParseInfo** %info.addr, align 8
  store %struct._GtkTextIter* %iter, %struct._GtkTextIter** %iter.addr, align 8
  %0 = load %struct._GtkTextIter*, %struct._GtkTextIter** %iter.addr, align 8
  %1 = bitcast %struct._GtkTextIter* %start_iter to i8*
  %2 = bitcast %struct._GtkTextIter* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 80, i32 8, i1 false)
  %3 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %content_buffer = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %3, i32 0, i32 2
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content_buffer, align 8
  %call = call %struct._GtkTextMark* @gtk_text_buffer_create_mark(%struct._GtkTextBuffer* %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0), %struct._GtkTextIter* %start_iter, i32 1)
  store %struct._GtkTextMark* %call, %struct._GtkTextMark** %mark, align 8
  %5 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %spans = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %5, i32 0, i32 4
  %6 = load %struct._GList*, %struct._GList** %spans, align 8
  store %struct._GList* %6, %struct._GList** %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %7 = load %struct._GList*, %struct._GList** %tmp, align 8
  %tobool = icmp ne %struct._GList* %7, null
  br i1 %tobool, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GList*, %struct._GList** %tmp, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to %struct.TextSpan*
  store %struct.TextSpan* %10, %struct.TextSpan** %span, align 8
  %11 = load %struct.TextSpan*, %struct.TextSpan** %span, align 8
  %text = getelementptr inbounds %struct.TextSpan, %struct.TextSpan* %11, i32 0, i32 0
  %12 = load i8*, i8** %text, align 8
  %tobool3 = icmp ne i8* %12, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %content_buffer4 = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %13, i32 0, i32 2
  %14 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content_buffer4, align 8
  %15 = load %struct._GtkTextIter*, %struct._GtkTextIter** %iter.addr, align 8
  %16 = load %struct.TextSpan*, %struct.TextSpan** %span, align 8
  %text5 = getelementptr inbounds %struct.TextSpan, %struct.TextSpan* %16, i32 0, i32 0
  %17 = load i8*, i8** %text5, align 8
  call void @gtk_text_buffer_insert(%struct._GtkTextBuffer* %14, %struct._GtkTextIter* %15, i8* %17, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %18 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %content_buffer6 = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %18, i32 0, i32 2
  %19 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content_buffer6, align 8
  %20 = load %struct._GtkTextMark*, %struct._GtkTextMark** %mark, align 8
  call void @gtk_text_buffer_get_iter_at_mark(%struct._GtkTextBuffer* %19, %struct._GtkTextIter* %start_iter, %struct._GtkTextMark* %20)
  %21 = load %struct.TextSpan*, %struct.TextSpan** %span, align 8
  %tags7 = getelementptr inbounds %struct.TextSpan, %struct.TextSpan* %21, i32 0, i32 1
  %22 = load %struct._GSList*, %struct._GSList** %tags7, align 8
  store %struct._GSList* %22, %struct._GSList** %tags, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.end
  %23 = load %struct._GSList*, %struct._GSList** %tags, align 8
  %tobool9 = icmp ne %struct._GSList* %23, null
  br i1 %tobool9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %24 = load %struct._GSList*, %struct._GSList** %tags, align 8
  %data12 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 0
  %25 = load i8*, i8** %data12, align 8
  %26 = bitcast i8* %25 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %26, %struct._GtkTextTag** %tag, align 8
  %27 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %content_buffer13 = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %27, i32 0, i32 2
  %28 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content_buffer13, align 8
  %29 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %30 = load %struct._GtkTextIter*, %struct._GtkTextIter** %iter.addr, align 8
  call void @gtk_text_buffer_apply_tag(%struct._GtkTextBuffer* %28, %struct._GtkTextTag* %29, %struct._GtkTextIter* %start_iter, %struct._GtkTextIter* %30)
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %31 = load %struct._GSList*, %struct._GSList** %tags, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 1
  %32 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %32, %struct._GSList** %tags, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %33 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %content_buffer14 = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %33, i32 0, i32 2
  %34 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content_buffer14, align 8
  %35 = load %struct._GtkTextMark*, %struct._GtkTextMark** %mark, align 8
  %36 = load %struct._GtkTextIter*, %struct._GtkTextIter** %iter.addr, align 8
  call void @gtk_text_buffer_move_mark(%struct._GtkTextBuffer* %34, %struct._GtkTextMark* %35, %struct._GtkTextIter* %36)
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %37 = load %struct._GList*, %struct._GList** %tmp, align 8
  %next16 = getelementptr inbounds %struct._GList, %struct._GList* %37, i32 0, i32 1
  %38 = load %struct._GList*, %struct._GList** %next16, align 8
  store %struct._GList* %38, %struct._GList** %tmp, align 8
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  %39 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %content_buffer18 = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %39, i32 0, i32 2
  %40 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content_buffer18, align 8
  %41 = load %struct._GtkTextMark*, %struct._GtkTextMark** %mark, align 8
  call void @gtk_text_buffer_delete_mark(%struct._GtkTextBuffer* %40, %struct._GtkTextMark* %41)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @parse_info_free(%struct.ParseInfo* %info) #0 {
entry:
  %info.addr = alloca %struct.ParseInfo*, align 8
  store %struct.ParseInfo* %info, %struct.ParseInfo** %info.addr, align 8
  %0 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %tag_stack = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %0, i32 0, i32 3
  %1 = load %struct._GSList*, %struct._GSList** %tag_stack, align 8
  call void @g_slist_free(%struct._GSList* %1)
  %2 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %states = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %2, i32 0, i32 0
  %3 = load %struct._GSList*, %struct._GSList** %states, align 8
  call void @g_slist_free(%struct._GSList* %3)
  %4 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %spans = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %4, i32 0, i32 4
  %5 = load %struct._GList*, %struct._GList** %spans, align 8
  call void @g_list_free_full(%struct._GList* %5, void (i8*)* bitcast (void (%struct.TextSpan*)* @text_span_free to void (i8*)*))
  ret void
}

declare void @g_markup_parse_context_free(%struct._GMarkupParseContext*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_buffer_pre_serialize(%struct._GimpTextBuffer* %buffer, %struct._GtkTextBuffer* %content) #0 {
entry:
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %content.addr = alloca %struct._GtkTextBuffer*, align 8
  %iter = alloca %struct._GtkTextIter, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %tags = alloca %struct._GSList*, align 8
  %list = alloca %struct._GSList*, align 8
  %tag = alloca %struct._GtkTextTag*, align 8
  %end = alloca %struct._GtkTextIter, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GtkTextBuffer* %content, %struct._GtkTextBuffer** %content.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_text_buffer_pre_serialize, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0))
  br label %do.end.54

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content.addr, align 8
  %14 = bitcast %struct._GtkTextBuffer* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_text_buffer_pre_serialize, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %do.end.54

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content.addr, align 8
  call void @gtk_text_buffer_get_start_iter(%struct._GtkTextBuffer* %26, %struct._GtkTextIter* %iter)
  br label %do.body.39

do.body.39:                                       ; preds = %do.cond, %do.end.38
  %call41 = call %struct._GSList* @gtk_text_iter_get_tags(%struct._GtkTextIter* %iter)
  store %struct._GSList* %call41, %struct._GSList** %tags, align 8
  %27 = load %struct._GSList*, %struct._GSList** %tags, align 8
  store %struct._GSList* %27, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.body.39
  %28 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool43 = icmp ne %struct._GSList* %28, null
  br i1 %tobool43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0
  %30 = load i8*, i8** %data, align 8
  %31 = bitcast i8* %30 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %31, %struct._GtkTextTag** %tag, align 8
  %32 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %kerning_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %32, i32 0, i32 7
  %33 = load %struct._GList*, %struct._GList** %kerning_tags, align 8
  %34 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %35 = bitcast %struct._GtkTextTag* %34 to i8*
  %call45 = call %struct._GList* @g_list_find(%struct._GList* %33, i8* %35)
  %tobool46 = icmp ne %struct._GList* %call45, null
  br i1 %tobool46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %for.body
  %36 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content.addr, align 8
  %37 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  call void (%struct._GtkTextBuffer*, %struct._GtkTextIter*, i8*, i32, %struct._GtkTextTag*, ...) @gtk_text_buffer_insert_with_tags(%struct._GtkTextBuffer* %36, %struct._GtkTextIter* %iter, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 -1, %struct._GtkTextTag* %37, i8* null)
  %38 = bitcast %struct._GtkTextIter* %end to i8*
  %39 = bitcast %struct._GtkTextIter* %iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 80, i32 8, i1 false)
  %call49 = call i32 @gtk_text_iter_forward_char(%struct._GtkTextIter* %end)
  %40 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content.addr, align 8
  %41 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  call void @gtk_text_buffer_remove_tag(%struct._GtkTextBuffer* %40, %struct._GtkTextTag* %41, %struct._GtkTextIter* %iter, %struct._GtkTextIter* %end)
  br label %for.end

if.end.50:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %42 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool51 = icmp ne %struct._GSList* %42, null
  br i1 %tobool51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %43 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %43, i32 0, i32 1
  %44 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %44, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.47, %for.cond
  %45 = load %struct._GSList*, %struct._GSList** %tags, align 8
  call void @g_slist_free(%struct._GSList* %45)
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %call52 = call i32 @gtk_text_iter_forward_char(%struct._GtkTextIter* %iter)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %do.body.39, label %do.end.54

do.end.54:                                        ; preds = %if.else.9, %if.else.36, %do.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_text_buffer_get_type() #3

declare void @gtk_text_buffer_get_start_iter(%struct._GtkTextBuffer*, %struct._GtkTextIter*) #1

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

declare void @gtk_text_buffer_insert_with_tags(%struct._GtkTextBuffer*, %struct._GtkTextIter*, i8*, i32, %struct._GtkTextTag*, ...) #1

declare void @gtk_text_buffer_remove_tag(%struct._GtkTextBuffer*, %struct._GtkTextTag*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_buffer_post_deserialize(%struct._GimpTextBuffer* %buffer, %struct._GtkTextBuffer* %content) #0 {
entry:
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %content.addr = alloca %struct._GtkTextBuffer*, align 8
  %iter = alloca %struct._GtkTextIter, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %tags = alloca %struct._GSList*, align 8
  %list = alloca %struct._GSList*, align 8
  %tag = alloca %struct._GtkTextTag*, align 8
  %end = alloca %struct._GtkTextIter, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GtkTextBuffer* %content, %struct._GtkTextBuffer** %content.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_text_buffer_post_deserialize, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0))
  br label %do.end.56

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content.addr, align 8
  %14 = bitcast %struct._GtkTextBuffer* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_text_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_text_buffer_post_deserialize, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %do.end.56

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content.addr, align 8
  call void @gtk_text_buffer_get_start_iter(%struct._GtkTextBuffer* %26, %struct._GtkTextIter* %iter)
  br label %do.body.39

do.body.39:                                       ; preds = %do.cond, %do.end.38
  %call41 = call %struct._GSList* @gtk_text_iter_get_tags(%struct._GtkTextIter* %iter)
  store %struct._GSList* %call41, %struct._GSList** %tags, align 8
  %27 = load %struct._GSList*, %struct._GSList** %tags, align 8
  store %struct._GSList* %27, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.body.39
  %28 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool43 = icmp ne %struct._GSList* %28, null
  br i1 %tobool43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0
  %30 = load i8*, i8** %data, align 8
  %31 = bitcast i8* %30 to %struct._GtkTextTag*
  store %struct._GtkTextTag* %31, %struct._GtkTextTag** %tag, align 8
  %32 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %kerning_tags = getelementptr inbounds %struct._GimpTextBuffer, %struct._GimpTextBuffer* %32, i32 0, i32 7
  %33 = load %struct._GList*, %struct._GList** %kerning_tags, align 8
  %34 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %35 = bitcast %struct._GtkTextTag* %34 to i8*
  %call45 = call %struct._GList* @g_list_find(%struct._GList* %33, i8* %35)
  %tobool46 = icmp ne %struct._GList* %call45, null
  br i1 %tobool46, label %if.then.47, label %if.end.52

if.then.47:                                       ; preds = %for.body
  %call49 = call i32 @gtk_text_iter_forward_char(%struct._GtkTextIter* %iter)
  %36 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content.addr, align 8
  %call50 = call i32 @gtk_text_buffer_backspace(%struct._GtkTextBuffer* %36, %struct._GtkTextIter* %iter, i32 0, i32 1)
  %37 = bitcast %struct._GtkTextIter* %end to i8*
  %38 = bitcast %struct._GtkTextIter* %iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 80, i32 8, i1 false)
  %call51 = call i32 @gtk_text_iter_forward_char(%struct._GtkTextIter* %end)
  %39 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %content.addr, align 8
  %40 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  call void @gtk_text_buffer_apply_tag(%struct._GtkTextBuffer* %39, %struct._GtkTextTag* %40, %struct._GtkTextIter* %iter, %struct._GtkTextIter* %end)
  br label %for.end

if.end.52:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %41 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool53 = icmp ne %struct._GSList* %41, null
  br i1 %tobool53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %42 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %42, i32 0, i32 1
  %43 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %43, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.47, %for.cond
  %44 = load %struct._GSList*, %struct._GSList** %tags, align 8
  call void @g_slist_free(%struct._GSList* %44)
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %call54 = call i32 @gtk_text_iter_forward_char(%struct._GtkTextIter* %iter)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %do.body.39, label %do.end.56

do.end.56:                                        ; preds = %if.else.9, %if.else.36, %do.cond
  ret void
}

declare i32 @gtk_text_buffer_backspace(%struct._GtkTextBuffer*, %struct._GtkTextIter*, i32, i32) #1

declare void @gtk_text_buffer_apply_tag(%struct._GtkTextBuffer*, %struct._GtkTextTag*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare i8* @gimp_text_buffer_tag_to_name(%struct._GimpTextBuffer*, %struct._GtkTextTag*, i8**, i8**) #1

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @peek_state(%struct.ParseInfo* %info) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.ParseInfo*, align 8
  store %struct.ParseInfo* %info, %struct.ParseInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %states = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %0, i32 0, i32 0
  %1 = load %struct._GSList*, %struct._GSList** %states, align 8
  %cmp = icmp ne %struct._GSList* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.peek_state, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %states1 = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %2, i32 0, i32 0
  %3 = load %struct._GSList*, %struct._GSList** %states1, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = ptrtoint i8* %4 to i64
  %conv = trunc i64 %5 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @check_no_attributes(%struct._GMarkupParseContext* %context, i8* %element_name, i8** %attribute_names, i8** %attribute_values, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %element_name.addr = alloca i8*, align 8
  %attribute_names.addr = alloca i8**, align 8
  %attribute_values.addr = alloca i8**, align 8
  %error.addr = alloca %struct._GError**, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i8* %element_name, i8** %element_name.addr, align 8
  store i8** %attribute_names, i8*** %attribute_names.addr, align 8
  store i8** %attribute_values, i8*** %attribute_values.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8**, i8*** %attribute_names.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %3 = load %struct._GMarkupParseContext*, %struct._GMarkupParseContext** %context.addr, align 8
  %call = call i32 @g_markup_error_quark()
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i32 0, i32 0)) #2
  %4 = load i8**, i8*** %attribute_names.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx2, align 8
  %6 = load i8*, i8** %element_name.addr, align 8
  call void (%struct._GError**, %struct._GMarkupParseContext*, i32, i32, i8*, ...) @set_error(%struct._GError** %2, %struct._GMarkupParseContext* %3, i32 %call, i32 2, i8* %call1, i8* %5, i8* %6)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal void @push_state(%struct.ParseInfo* %info, i32 %state) #0 {
entry:
  %info.addr = alloca %struct.ParseInfo*, align 8
  %state.addr = alloca i32, align 4
  store %struct.ParseInfo* %info, %struct.ParseInfo** %info.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  %0 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %states = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %0, i32 0, i32 0
  %1 = load %struct._GSList*, %struct._GSList** %states, align 8
  %2 = load i32, i32* %state.addr, align 4
  %conv = zext i32 %2 to i64
  %3 = inttoptr i64 %conv to i8*
  %call = call %struct._GSList* @g_slist_prepend(%struct._GSList* %1, i8* %3)
  %4 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %states1 = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %4, i32 0, i32 0
  store %struct._GSList* %call, %struct._GSList** %states1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_error(%struct._GError** %err, %struct._GMarkupParseContext* %context, i32 %error_domain, i32 %error_code, i8* %format, ...) #0 {
entry:
  %err.addr = alloca %struct._GError**, align 8
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %error_domain.addr = alloca i32, align 4
  %error_code.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %line = alloca i32, align 4
  %ch = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %str = alloca i8*, align 8
  store %struct._GError** %err, %struct._GError*** %err.addr, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i32 %error_domain, i32* %error_domain.addr, align 4
  store i32 %error_code, i32* %error_code.addr, align 4
  store i8* %format, i8** %format.addr, align 8
  %0 = load %struct._GMarkupParseContext*, %struct._GMarkupParseContext** %context.addr, align 8
  call void @g_markup_parse_context_get_position(%struct._GMarkupParseContext* %0, i32* %line, i32* %ch)
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %1 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call noalias i8* @g_strdup_vprintf(i8* %1, %struct.__va_list_tag* %arraydecay2)
  store i8* %call, i8** %str, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %2 = load %struct._GError**, %struct._GError*** %err.addr, align 8
  %3 = load i32, i32* %error_domain.addr, align 4
  %4 = load i32, i32* %error_code.addr, align 4
  %5 = load i32, i32* %line, align 4
  %6 = load i32, i32* %ch, align 4
  %7 = load i8*, i8** %str, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %3, i32 %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0), i32 %5, i32 %6, i8* %7)
  %8 = load i8*, i8** %str, align 8
  call void @g_free(i8* %8)
  ret void
}

declare i32 @g_markup_error_quark() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @parse_tag_element(%struct._GMarkupParseContext* %context, i8* %element_name, i8** %attribute_names, i8** %attribute_values, %struct.ParseInfo* %info, %struct._GError** %error) #0 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %element_name.addr = alloca i8*, align 8
  %attribute_names.addr = alloca i8**, align 8
  %attribute_values.addr = alloca i8**, align 8
  %info.addr = alloca %struct.ParseInfo*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %tag = alloca %struct._GtkTextTag*, align 8
  %attribute_name = alloca i8*, align 8
  %attribute_value = alloca i8*, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i8* %element_name, i8** %element_name.addr, align 8
  store i8** %attribute_names, i8*** %attribute_names.addr, align 8
  store i8** %attribute_values, i8*** %attribute_values.addr, align 8
  store %struct.ParseInfo* %info, %struct.ParseInfo** %info.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %attribute_name, align 8
  store i8* null, i8** %attribute_value, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %call = call i32 @peek_state(%struct.ParseInfo* %0)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %call1 = call i32 @peek_state(%struct.ParseInfo* %1)
  %cmp2 = icmp eq i32 %call1, 2
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %2 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %call4 = call i32 @peek_state(%struct.ParseInfo* %2)
  %cmp5 = icmp eq i32 %call4, 3
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %do.body
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.3
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i32 291, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.parse_tag_element, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.15, i32 0, i32 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load i8**, i8*** %attribute_names.addr, align 8
  %tobool = icmp ne i8** %3, null
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.end
  %4 = load i8**, i8*** %attribute_names.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx, align 8
  store i8* %5, i8** %attribute_name, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %do.end
  %6 = load i8**, i8*** %attribute_values.addr, align 8
  %tobool8 = icmp ne i8** %6, null
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %7 = load i8**, i8*** %attribute_values.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx10, align 8
  store i8* %8, i8** %attribute_value, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  %9 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %register_buffer = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %9, i32 0, i32 1
  %10 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %register_buffer, align 8
  %11 = bitcast %struct._GtkTextBuffer* %10 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_text_buffer_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call12)
  %12 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpTextBuffer*
  %13 = load i8*, i8** %element_name.addr, align 8
  %14 = load i8*, i8** %attribute_name, align 8
  %15 = load i8*, i8** %attribute_value, align 8
  %call14 = call %struct._GtkTextTag* @gimp_text_buffer_name_to_tag(%struct._GimpTextBuffer* %12, i8* %13, i8* %14, i8* %15)
  store %struct._GtkTextTag* %call14, %struct._GtkTextTag** %tag, align 8
  %16 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %tobool15 = icmp ne %struct._GtkTextTag* %16, null
  br i1 %tobool15, label %if.then.16, label %if.else.19

if.then.16:                                       ; preds = %if.end.11
  %17 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %tag_stack = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %17, i32 0, i32 3
  %18 = load %struct._GSList*, %struct._GSList** %tag_stack, align 8
  %19 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag, align 8
  %20 = bitcast %struct._GtkTextTag* %19 to i8*
  %call17 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %18, i8* %20)
  %21 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %tag_stack18 = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %21, i32 0, i32 3
  store %struct._GSList* %call17, %struct._GSList** %tag_stack18, align 8
  %22 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  call void @push_state(%struct.ParseInfo* %22, i32 2)
  br label %if.end.20

if.else.19:                                       ; preds = %if.end.11
  %23 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  call void @push_state(%struct.ParseInfo* %23, i32 3)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.16
  ret void
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

declare void @g_markup_parse_context_get_position(%struct._GMarkupParseContext*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare noalias i8* @g_strdup_vprintf(i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare %struct._GtkTextTag* @gimp_text_buffer_name_to_tag(%struct._GimpTextBuffer*, i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @pop_state(%struct.ParseInfo* %info) #0 {
entry:
  %info.addr = alloca %struct.ParseInfo*, align 8
  store %struct.ParseInfo* %info, %struct.ParseInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %states = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %0, i32 0, i32 0
  %1 = load %struct._GSList*, %struct._GSList** %states, align 8
  %cmp = icmp ne %struct._GSList* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.pop_state, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %states1 = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %2, i32 0, i32 0
  %3 = load %struct._GSList*, %struct._GSList** %states1, align 8
  %4 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %states2 = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %4, i32 0, i32 0
  %5 = load %struct._GSList*, %struct._GSList** %states2, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %call = call %struct._GSList* @g_slist_remove(%struct._GSList* %3, i8* %6)
  %7 = load %struct.ParseInfo*, %struct.ParseInfo** %info.addr, align 8
  %states3 = getelementptr inbounds %struct.ParseInfo, %struct.ParseInfo* %7, i32 0, i32 0
  store %struct._GSList* %call, %struct._GSList** %states3, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare %struct._GSList* @g_slist_delete_link(%struct._GSList*, %struct._GSList*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @all_whitespace(i8* %text, i32 %text_len) #0 {
entry:
  %retval = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %text_len.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  store i8* %text, i8** %text.addr, align 8
  store i32 %text_len, i32* %text_len.addr, align 4
  %0 = load i8*, i8** %text.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %text.addr, align 8
  %2 = load i32, i32* %text_len.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i8*, i8** %p, align 8
  %4 = load i8*, i8** %end, align 8
  %cmp = icmp ne i8* %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %idxprom = zext i8 %6 to i64
  %7 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 256
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %9 = load i8*, i8** %p, align 8
  %10 = load i8*, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %idxprom3 = zext i8 %11 to i64
  %12 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %idxprom3
  %13 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %13 to i32
  %idx.ext6 = sext i32 %conv5 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %9, i64 %idx.ext6
  store i8* %add.ptr7, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare noalias i8* @g_strndup(i8*, i64) #1

declare %struct._GSList* @g_slist_copy(%struct._GSList*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare %struct._GtkTextMark* @gtk_text_buffer_create_mark(%struct._GtkTextBuffer*, i8*, %struct._GtkTextIter*, i32) #1

declare void @gtk_text_buffer_insert(%struct._GtkTextBuffer*, %struct._GtkTextIter*, i8*, i32) #1

declare void @gtk_text_buffer_get_iter_at_mark(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextMark*) #1

declare void @gtk_text_buffer_move_mark(%struct._GtkTextBuffer*, %struct._GtkTextMark*, %struct._GtkTextIter*) #1

declare void @gtk_text_buffer_delete_mark(%struct._GtkTextBuffer*, %struct._GtkTextMark*) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @text_span_free(%struct.TextSpan* %span) #0 {
entry:
  %span.addr = alloca %struct.TextSpan*, align 8
  store %struct.TextSpan* %span, %struct.TextSpan** %span.addr, align 8
  %0 = load %struct.TextSpan*, %struct.TextSpan** %span.addr, align 8
  %text = getelementptr inbounds %struct.TextSpan, %struct.TextSpan* %0, i32 0, i32 0
  %1 = load i8*, i8** %text, align 8
  call void @g_free(i8* %1)
  %2 = load %struct.TextSpan*, %struct.TextSpan** %span.addr, align 8
  %tags = getelementptr inbounds %struct.TextSpan, %struct.TextSpan* %2, i32 0, i32 1
  %3 = load %struct._GSList*, %struct._GSList** %tags, align 8
  call void @g_slist_free(%struct._GSList* %3)
  %4 = load %struct.TextSpan*, %struct.TextSpan** %span.addr, align 8
  %5 = bitcast %struct.TextSpan* %4 to i8*
  call void @g_free(i8* %5)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
