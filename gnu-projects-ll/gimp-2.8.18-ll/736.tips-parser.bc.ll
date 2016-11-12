; ModuleID = './app/dialogs/tips-parser.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GMarkupParser = type { void (%struct._GMarkupParseContext*, i8*, i8**, i8**, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, %struct._GError*, i8*)* }
%struct._GMarkupParseContext = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpTip = type { i8*, i8* }
%struct._GString = type { i8*, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpXmlParser = type opaque
%struct.TipsParser = type { i32, i32, i8*, i8*, i32, i32, i32, %struct._GString*, %struct._GimpTip*, %struct._GList* }

@.str = private unnamed_addr constant [4 x i8] c"<b>\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"</b>\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.gimp_tips_from_file = private unnamed_addr constant [20 x i8] c"gimp_tips_from_file\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"tips-locale:C\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"tips-locale:\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"Wrong translation for 'tips-locale:', fix the translation!\00", align 1
@markup_parser = internal constant %struct._GMarkupParser { void (%struct._GMarkupParseContext*, i8*, i8**, i8**, i8*, %struct._GError**)* @tips_parser_start_element, void (%struct._GMarkupParseContext*, i8*, i8*, %struct._GError**)* @tips_parser_end_element, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)* @tips_parser_characters, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)* null, void (%struct._GMarkupParseContext*, %struct._GError*, i8*)* null }, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"gimp-tips\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"tip\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"thetip\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"big\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"xml:lang\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"<%s>\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"%s: shouldn't get here\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"tips-parser.c:306\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"tips-parser.c\00", align 1
@__func__.tips_parser_end_markup = private unnamed_addr constant [23 x i8] c"tips_parser_end_markup\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"parser->markup_depth > 0\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"</%s>\00", align 1
@__func__.tips_parser_end_unknown = private unnamed_addr constant [24 x i8] c"tips_parser_end_unknown\00", align 1
@.str.23 = private unnamed_addr constant [62 x i8] c"parser->unknown_depth > 0 && parser->state == TIPS_IN_UNKNOWN\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpTip* @gimp_tip_new(i8* %title, i8* %format, ...) #0 {
entry:
  %title.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %tip = alloca %struct._GimpTip*, align 8
  %str = alloca %struct._GString*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %title, i8** %title.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 16)
  %0 = bitcast i8* %call to %struct._GimpTip*
  store %struct._GimpTip* %0, %struct._GimpTip** %tip, align 8
  %call1 = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call1, %struct._GString** %str, align 8
  %1 = load i8*, i8** %title.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %2 = load %struct._GString*, %struct._GString** %str, align 8
  %call2 = call %struct._GString* @g_string_append(%struct._GString* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GString*, %struct._GString** %str, align 8
  %4 = load i8*, i8** %title.addr, align 8
  %call3 = call %struct._GString* @g_string_append(%struct._GString* %3, i8* %4)
  %5 = load %struct._GString*, %struct._GString** %str, align 8
  %call4 = call %struct._GString* @g_string_append(%struct._GString* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %6 = load i8*, i8** %format.addr, align 8
  %tobool5 = icmp ne i8* %6, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %7 = load %struct._GString*, %struct._GString** %str, align 8
  %call7 = call %struct._GString* @g_string_append(%struct._GString* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %8 = load i8*, i8** %format.addr, align 8
  %tobool9 = icmp ne i8* %8, null
  br i1 %tobool9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end.8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay11 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay11)
  %9 = load %struct._GString*, %struct._GString** %str, align 8
  %10 = load i8*, i8** %format.addr, align 8
  %arraydecay12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_string_append_vprintf(%struct._GString* %9, i8* %10, %struct.__va_list_tag* %arraydecay12)
  %arraydecay13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1314 = bitcast %struct.__va_list_tag* %arraydecay13 to i8*
  call void @llvm.va_end(i8* %arraydecay1314)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %if.end.8
  %11 = load %struct._GString*, %struct._GString** %str, align 8
  %call16 = call i8* @g_string_free(%struct._GString* %11, i32 0)
  %12 = load %struct._GimpTip*, %struct._GimpTip** %tip, align 8
  %text = getelementptr inbounds %struct._GimpTip, %struct._GimpTip* %12, i32 0, i32 0
  store i8* %call16, i8** %text, align 8
  %13 = load %struct._GimpTip*, %struct._GimpTip** %tip, align 8
  ret %struct._GimpTip* %13
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare %struct._GString* @g_string_new(i8*) #1

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare void @g_string_append_vprintf(%struct._GString*, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare i8* @g_string_free(%struct._GString*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_tip_free(%struct._GimpTip* %tip) #0 {
entry:
  %tip.addr = alloca %struct._GimpTip*, align 8
  store %struct._GimpTip* %tip, %struct._GimpTip** %tip.addr, align 8
  %0 = load %struct._GimpTip*, %struct._GimpTip** %tip.addr, align 8
  %tobool = icmp ne %struct._GimpTip* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.end

if.end:                                           ; preds = %entry
  %1 = load %struct._GimpTip*, %struct._GimpTip** %tip.addr, align 8
  %text = getelementptr inbounds %struct._GimpTip, %struct._GimpTip* %1, i32 0, i32 0
  %2 = load i8*, i8** %text, align 8
  call void @g_free(i8* %2)
  %3 = load %struct._GimpTip*, %struct._GimpTip** %tip.addr, align 8
  %help_id = getelementptr inbounds %struct._GimpTip, %struct._GimpTip* %3, i32 0, i32 1
  %4 = load i8*, i8** %help_id, align 8
  call void @g_free(i8* %4)
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._GimpTip*, %struct._GimpTip** %tip.addr, align 8
  %6 = bitcast %struct._GimpTip* %5 to i8*
  call void @g_slice_free1(i64 16, i8* %6)
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  ret void
}

declare void @g_free(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_tips_from_file(i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %xml_parser = alloca %struct._GimpXmlParser*, align 8
  %parser = alloca %struct.TipsParser, align 8
  %tips_locale = alloca i8*, align 8
  %tips = alloca %struct._GList*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = bitcast %struct.TipsParser* %parser to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 64, i32 8, i1 false)
  store %struct._GList* null, %struct._GList** %tips, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_tips_from_file, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp2 = icmp eq %struct._GError** %2, null
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.1
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %4 = load %struct._GError*, %struct._GError** %3, align 8
  %cmp3 = icmp eq %struct._GError* %4, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %lor.lhs.false, %do.body.1
  br label %if.end.6

if.else.5:                                        ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_tips_from_file, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %call = call %struct._GString* @g_string_new(i8* null)
  %value = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %parser, i32 0, i32 7
  store %struct._GString* %call, %struct._GString** %value, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0)) #2
  store i8* %call8, i8** %tips_locale, align 8
  %5 = load i8*, i8** %tips_locale, align 8
  %call9 = call i32 @g_str_has_prefix(i8* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then.10, label %if.else.17

if.then.10:                                       ; preds = %do.end.7
  %6 = load i8*, i8** %tips_locale, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 12
  store i8* %add.ptr, i8** %tips_locale, align 8
  %7 = load i8*, i8** %tips_locale, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %tobool11 = icmp ne i32 %conv, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.then.10
  %9 = load i8*, i8** %tips_locale, align 8
  %10 = load i8, i8* %9, align 1
  %conv12 = sext i8 %10 to i32
  %cmp13 = icmp ne i32 %conv12, 67
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  %11 = load i8*, i8** %tips_locale, align 8
  %locale = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %parser, i32 0, i32 2
  store i8* %11, i8** %locale, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %land.lhs.true, %if.then.10
  br label %if.end.18

if.else.17:                                       ; preds = %do.end.7
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.end.16
  %12 = bitcast %struct.TipsParser* %parser to i8*
  %call19 = call %struct._GimpXmlParser* @gimp_xml_parser_new(%struct._GMarkupParser* @markup_parser, i8* %12)
  store %struct._GimpXmlParser* %call19, %struct._GimpXmlParser** %xml_parser, align 8
  %13 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %xml_parser, align 8
  %14 = load i8*, i8** %filename.addr, align 8
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call20 = call i32 @gimp_xml_parser_parse_file(%struct._GimpXmlParser* %13, i8* %14, %struct._GError** %15)
  %16 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %xml_parser, align 8
  call void @gimp_xml_parser_free(%struct._GimpXmlParser* %16)
  %tips21 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %parser, i32 0, i32 9
  %17 = load %struct._GList*, %struct._GList** %tips21, align 8
  %call22 = call %struct._GList* @g_list_reverse(%struct._GList* %17)
  store %struct._GList* %call22, %struct._GList** %tips, align 8
  %current_tip = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %parser, i32 0, i32 8
  %18 = load %struct._GimpTip*, %struct._GimpTip** %current_tip, align 8
  call void @gimp_tip_free(%struct._GimpTip* %18)
  %value23 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %parser, i32 0, i32 7
  %19 = load %struct._GString*, %struct._GString** %value23, align 8
  %call24 = call i8* @g_string_free(%struct._GString* %19, i32 1)
  %20 = load %struct._GList*, %struct._GList** %tips, align 8
  store %struct._GList* %20, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.else.5, %if.else
  %21 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %21
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i32 @g_str_has_prefix(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare %struct._GimpXmlParser* @gimp_xml_parser_new(%struct._GMarkupParser*, i8*) #1

declare i32 @gimp_xml_parser_parse_file(%struct._GimpXmlParser*, i8*, %struct._GError**) #1

declare void @gimp_xml_parser_free(%struct._GimpXmlParser*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define void @gimp_tips_free(%struct._GList* %tips) #0 {
entry:
  %tips.addr = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GList* %tips, %struct._GList** %tips.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %tips.addr, align 8
  store %struct._GList* %0, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GimpTip*
  call void @gimp_tip_free(%struct._GimpTip* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 1
  %6 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %6, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct._GList*, %struct._GList** %tips.addr, align 8
  call void @g_list_free(%struct._GList* %7)
  ret void
}

declare void @g_list_free(%struct._GList*) #1

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind uwtable
define internal void @tips_parser_start_element(%struct._GMarkupParseContext* %context, i8* %element_name, i8** %attribute_names, i8** %attribute_values, i8* %user_data, %struct._GError** %error) #0 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %element_name.addr = alloca i8*, align 8
  %attribute_names.addr = alloca i8**, align 8
  %attribute_values.addr = alloca i8**, align 8
  %user_data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %parser = alloca %struct.TipsParser*, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i8* %element_name, i8** %element_name.addr, align 8
  store i8** %attribute_names, i8*** %attribute_names.addr, align 8
  store i8** %attribute_values, i8*** %attribute_values.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.TipsParser*
  store %struct.TipsParser* %1, %struct.TipsParser** %parser, align 8
  %2 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %state = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %2, i32 0, i32 0
  %3 = load i32, i32* %state, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.12
    i32 3, label %sw.bb.19
    i32 4, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %entry
  %4 = load i8*, i8** %element_name.addr, align 8
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %5 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %state1 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %5, i32 0, i32 0
  store i32 1, i32* %state1, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %6 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  call void @tips_parser_start_unknown(%struct.TipsParser* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load i8*, i8** %element_name.addr, align 8
  %call3 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)) #7
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.else.10

if.then.5:                                        ; preds = %sw.bb.2
  %8 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %state6 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %8, i32 0, i32 0
  store i32 2, i32* %state6, align 4
  %call7 = call noalias i8* @g_slice_alloc0(i64 16)
  %9 = bitcast i8* %call7 to %struct._GimpTip*
  %10 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %current_tip = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %10, i32 0, i32 8
  store %struct._GimpTip* %9, %struct._GimpTip** %current_tip, align 8
  %11 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %12 = load i8**, i8*** %attribute_names.addr, align 8
  %13 = load i8**, i8*** %attribute_values.addr, align 8
  %call8 = call i8* @tips_parser_parse_help_id(%struct.TipsParser* %11, i8** %12, i8** %13)
  %14 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %current_tip9 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %14, i32 0, i32 8
  %15 = load %struct._GimpTip*, %struct._GimpTip** %current_tip9, align 8
  %help_id = getelementptr inbounds %struct._GimpTip, %struct._GimpTip* %15, i32 0, i32 1
  store i8* %call8, i8** %help_id, align 8
  br label %if.end.11

if.else.10:                                       ; preds = %sw.bb.2
  %16 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  call void @tips_parser_start_unknown(%struct.TipsParser* %16)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.then.5
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %17 = load i8*, i8** %element_name.addr, align 8
  %call13 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)) #7
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %sw.bb.12
  %18 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %state16 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %18, i32 0, i32 0
  store i32 3, i32* %state16, align 4
  %19 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %20 = load i8**, i8*** %attribute_names.addr, align 8
  %21 = load i8**, i8*** %attribute_values.addr, align 8
  call void @tips_parser_parse_locale(%struct.TipsParser* %19, i8** %20, i8** %21)
  br label %if.end.18

if.else.17:                                       ; preds = %sw.bb.12
  %22 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  call void @tips_parser_start_unknown(%struct.TipsParser* %22)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.15
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %23 = load i8*, i8** %element_name.addr, align 8
  %call20 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #7
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.19
  %24 = load i8*, i8** %element_name.addr, align 8
  %call22 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)) #7
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.27, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false
  %25 = load i8*, i8** %element_name.addr, align 8
  %call25 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0)) #7
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %lor.lhs.false.24, %lor.lhs.false, %sw.bb.19
  %26 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %27 = load i8*, i8** %element_name.addr, align 8
  call void @tips_parser_start_markup(%struct.TipsParser* %26, i8* %27)
  br label %if.end.29

if.else.28:                                       ; preds = %lor.lhs.false.24
  %28 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  call void @tips_parser_start_unknown(%struct.TipsParser* %28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.27
  br label %sw.epilog

sw.bb.30:                                         ; preds = %entry
  %29 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  call void @tips_parser_start_unknown(%struct.TipsParser* %29)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.30, %if.end.29, %if.end.18, %if.end.11, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tips_parser_end_element(%struct._GMarkupParseContext* %context, i8* %element_name, i8* %user_data, %struct._GError** %error) #0 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %element_name.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %parser = alloca %struct.TipsParser*, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i8* %element_name, i8** %element_name.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.TipsParser*
  store %struct.TipsParser* %1, %struct.TipsParser** %parser, align 8
  %2 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %state = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %2, i32 0, i32 0
  %3 = load i32, i32* %state, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0))
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %state2 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %4, i32 0, i32 0
  store i32 0, i32* %state2, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %5 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %tips = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %5, i32 0, i32 9
  %6 = load %struct._GList*, %struct._GList** %tips, align 8
  %7 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %current_tip = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %7, i32 0, i32 8
  %8 = load %struct._GimpTip*, %struct._GimpTip** %current_tip, align 8
  %9 = bitcast %struct._GimpTip* %8 to i8*
  %call = call %struct._GList* @g_list_prepend(%struct._GList* %6, i8* %9)
  %10 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %tips4 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %10, i32 0, i32 9
  store %struct._GList* %call, %struct._GList** %tips4, align 8
  %11 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %current_tip5 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %11, i32 0, i32 8
  store %struct._GimpTip* null, %struct._GimpTip** %current_tip5, align 8
  %12 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %state6 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %12, i32 0, i32 0
  store i32 1, i32* %state6, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %13 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %markup_depth = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %13, i32 0, i32 5
  %14 = load i32, i32* %markup_depth, align 4
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.7
  %15 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %16 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %current_tip8 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %16, i32 0, i32 8
  %17 = load %struct._GimpTip*, %struct._GimpTip** %current_tip8, align 8
  %text = getelementptr inbounds %struct._GimpTip, %struct._GimpTip* %17, i32 0, i32 0
  call void @tips_parser_set_by_locale(%struct.TipsParser* %15, i8** %text)
  %18 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %value = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %18, i32 0, i32 7
  %19 = load %struct._GString*, %struct._GString** %value, align 8
  %call9 = call %struct._GString* @g_string_truncate(%struct._GString* %19, i64 0)
  %20 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %state10 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %20, i32 0, i32 0
  store i32 2, i32* %state10, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb.7
  %21 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %22 = load i8*, i8** %element_name.addr, align 8
  call void @tips_parser_end_markup(%struct.TipsParser* %21, i8* %22)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %23 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  call void @tips_parser_end_unknown(%struct.TipsParser* %23)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.11, %if.end, %sw.bb.3, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tips_parser_characters(%struct._GMarkupParseContext* %context, i8* %text, i64 %text_len, i8* %user_data, %struct._GError** %error) #0 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %text.addr = alloca i8*, align 8
  %text_len.addr = alloca i64, align 8
  %user_data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %parser = alloca %struct.TipsParser*, align 8
  %i = alloca i32, align 4
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store i64 %text_len, i64* %text_len.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.TipsParser*
  store %struct.TipsParser* %1, %struct.TipsParser** %parser, align 8
  %2 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %state = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %2, i32 0, i32 0
  %3 = load i32, i32* %state, align 4
  switch i32 %3, label %sw.default [
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %locale_state = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %4, i32 0, i32 4
  %5 = load i32, i32* %locale_state, align 4
  %cmp = icmp ne i32 %5, 2
  br i1 %cmp, label %if.then, label %if.end.41

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %conv = sext i32 %6 to i64
  %7 = load i64, i64* %text_len.addr, align 8
  %cmp1 = icmp ult i64 %conv, %7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8*, i8** %text.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %10 to i32
  %cmp4 = icmp ne i32 %conv3, 32
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load i8*, i8** %text.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 %idxprom6
  %13 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %13 to i32
  %cmp9 = icmp ne i32 %conv8, 9
  br i1 %cmp9, label %land.lhs.true.11, label %if.else

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %14 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load i8*, i8** %text.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %15, i64 %idxprom12
  %16 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %16 to i32
  %cmp15 = icmp ne i32 %conv14, 10
  br i1 %cmp15, label %land.lhs.true.17, label %if.else

land.lhs.true.17:                                 ; preds = %land.lhs.true.11
  %17 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load i8*, i8** %text.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %18, i64 %idxprom18
  %19 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %19 to i32
  %cmp21 = icmp ne i32 %conv20, 13
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %land.lhs.true.17
  %20 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %value = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %20, i32 0, i32 7
  %21 = load %struct._GString*, %struct._GString** %value, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %22 to i64
  %23 = load i8*, i8** %text.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %23, i64 %idxprom24
  %24 = load i8, i8* %arrayidx25, align 1
  %call = call %struct._GString* @g_string_append_c_inline(%struct._GString* %21, i8 signext %24)
  br label %if.end.40

if.else:                                          ; preds = %land.lhs.true.17, %land.lhs.true.11, %land.lhs.true, %for.body
  %25 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %value26 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %25, i32 0, i32 7
  %26 = load %struct._GString*, %struct._GString** %value26, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 1
  %27 = load i64, i64* %len, align 8
  %cmp27 = icmp ugt i64 %27, 0
  br i1 %cmp27, label %land.lhs.true.29, label %if.end

land.lhs.true.29:                                 ; preds = %if.else
  %28 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %value30 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %28, i32 0, i32 7
  %29 = load %struct._GString*, %struct._GString** %value30, align 8
  %len31 = getelementptr inbounds %struct._GString, %struct._GString* %29, i32 0, i32 1
  %30 = load i64, i64* %len31, align 8
  %sub = sub i64 %30, 1
  %31 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %value32 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %31, i32 0, i32 7
  %32 = load %struct._GString*, %struct._GString** %value32, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %32, i32 0, i32 0
  %33 = load i8*, i8** %str, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %33, i64 %sub
  %34 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %34 to i32
  %cmp35 = icmp ne i32 %conv34, 32
  br i1 %cmp35, label %if.then.37, label %if.end

if.then.37:                                       ; preds = %land.lhs.true.29
  %35 = load %struct.TipsParser*, %struct.TipsParser** %parser, align 8
  %value38 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %35, i32 0, i32 7
  %36 = load %struct._GString*, %struct._GString** %value38, align 8
  %call39 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %36, i8 signext 32)
  br label %if.end

if.end:                                           ; preds = %if.then.37, %land.lhs.true.29, %if.else
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %if.then.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.41

if.end.41:                                        ; preds = %for.end, %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.41
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @tips_parser_start_unknown(%struct.TipsParser* %parser) #0 {
entry:
  %parser.addr = alloca %struct.TipsParser*, align 8
  store %struct.TipsParser* %parser, %struct.TipsParser** %parser.addr, align 8
  %0 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %unknown_depth = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %0, i32 0, i32 6
  %1 = load i32, i32* %unknown_depth, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %state = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %2, i32 0, i32 0
  %3 = load i32, i32* %state, align 4
  %4 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %last_known_state = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %4, i32 0, i32 1
  store i32 %3, i32* %last_known_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %state1 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %5, i32 0, i32 0
  store i32 4, i32* %state1, align 4
  %6 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %unknown_depth2 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %6, i32 0, i32 6
  %7 = load i32, i32* %unknown_depth2, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %unknown_depth2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @tips_parser_parse_help_id(%struct.TipsParser* %parser, i8** %names, i8** %values) #0 {
entry:
  %retval = alloca i8*, align 8
  %parser.addr = alloca %struct.TipsParser*, align 8
  %names.addr = alloca i8**, align 8
  %values.addr = alloca i8**, align 8
  store %struct.TipsParser* %parser, %struct.TipsParser** %parser.addr, align 8
  store i8** %names, i8*** %names.addr, align 8
  store i8** %values, i8*** %values.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8**, i8*** %names.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8**, i8*** %values.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %tobool1 = icmp ne i8* %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i8**, i8*** %names.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %call = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %7 = load i8**, i8*** %values.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load i8**, i8*** %values.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %call3 = call noalias i8* @g_strdup(i8* %11)
  store i8* %call3, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %12 = load i8**, i8*** %names.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %incdec.ptr, i8*** %names.addr, align 8
  %13 = load i8**, i8*** %values.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %incdec.ptr4, i8*** %values.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %14 = load i8*, i8** %retval
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define internal void @tips_parser_parse_locale(%struct.TipsParser* %parser, i8** %names, i8** %values) #0 {
entry:
  %parser.addr = alloca %struct.TipsParser*, align 8
  %names.addr = alloca i8**, align 8
  %values.addr = alloca i8**, align 8
  store %struct.TipsParser* %parser, %struct.TipsParser** %parser.addr, align 8
  store i8** %names, i8*** %names.addr, align 8
  store i8** %values, i8*** %values.addr, align 8
  %0 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %locale_state = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %0, i32 0, i32 4
  store i32 0, i32* %locale_state, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i8**, i8*** %names.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i8**, i8*** %values.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %tobool1 = icmp ne i8* %4, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i8**, i8*** %names.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %call = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %8 = load i8**, i8*** %values.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %locale = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %11, i32 0, i32 2
  %12 = load i8*, i8** %locale, align 8
  %tobool3 = icmp ne i8* %12, null
  br i1 %tobool3, label %land.rhs.4, label %land.end.9

land.rhs.4:                                       ; preds = %if.then
  %13 = load i8**, i8*** %values.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %locale5 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %15, i32 0, i32 2
  %16 = load i8*, i8** %locale5, align 8
  %call6 = call i32 @strcmp(i8* %14, i8* %16) #7
  %cmp7 = icmp eq i32 %call6, 0
  br label %land.end.9

land.end.9:                                       ; preds = %land.rhs.4, %if.then
  %17 = phi i1 [ false, %if.then ], [ %cmp7, %land.rhs.4 ]
  %cond = select i1 %17, i32 1, i32 2
  %18 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %locale_state10 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %18, i32 0, i32 4
  store i32 %cond, i32* %locale_state10, align 4
  br label %if.end

if.end:                                           ; preds = %land.end.9, %land.lhs.true, %while.body
  %19 = load i8**, i8*** %names.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %incdec.ptr, i8*** %names.addr, align 8
  %20 = load i8**, i8*** %values.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %incdec.ptr11, i8*** %values.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tips_parser_start_markup(%struct.TipsParser* %parser, i8* %markup_name) #0 {
entry:
  %parser.addr = alloca %struct.TipsParser*, align 8
  %markup_name.addr = alloca i8*, align 8
  store %struct.TipsParser* %parser, %struct.TipsParser** %parser.addr, align 8
  store i8* %markup_name, i8** %markup_name.addr, align 8
  %0 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %markup_depth = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %0, i32 0, i32 5
  %1 = load i32, i32* %markup_depth, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %markup_depth, align 4
  %2 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %value = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %2, i32 0, i32 7
  %3 = load %struct._GString*, %struct._GString** %value, align 8
  %4 = load i8*, i8** %markup_name.addr, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* %4)
  ret void
}

declare noalias i8* @g_strdup(i8*) #1

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @tips_parser_set_by_locale(%struct.TipsParser* %parser, i8** %dest) #0 {
entry:
  %parser.addr = alloca %struct.TipsParser*, align 8
  %dest.addr = alloca i8**, align 8
  store %struct.TipsParser* %parser, %struct.TipsParser** %parser.addr, align 8
  store i8** %dest, i8*** %dest.addr, align 8
  %0 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %locale_state = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %0, i32 0, i32 4
  %1 = load i32, i32* %locale_state, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
    i32 2, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %locale = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %2, i32 0, i32 2
  %3 = load i8*, i8** %locale, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %4 = load i8**, i8*** %dest.addr, align 8
  %5 = load i8*, i8** %4, align 8
  call void @g_free(i8* %5)
  %6 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %value = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %6, i32 0, i32 7
  %7 = load %struct._GString*, %struct._GString** %value, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %7, i32 0, i32 0
  %8 = load i8*, i8** %str, align 8
  %call = call noalias i8* @g_strdup(i8* %8)
  %9 = load i8**, i8*** %dest.addr, align 8
  store i8* %call, i8** %9, align 8
  br label %if.end.5

if.else:                                          ; preds = %sw.bb
  %10 = load i8**, i8*** %dest.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %cmp = icmp eq i8* %11, null
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.else
  %12 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %value2 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %12, i32 0, i32 7
  %13 = load %struct._GString*, %struct._GString** %value2, align 8
  %str3 = getelementptr inbounds %struct._GString, %struct._GString* %13, i32 0, i32 0
  %14 = load i8*, i8** %str3, align 8
  %call4 = call noalias i8* @g_strdup(i8* %14)
  %15 = load i8**, i8*** %dest.addr, align 8
  store i8* %call4, i8** %15, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %16 = load i8**, i8*** %dest.addr, align 8
  %17 = load i8*, i8** %16, align 8
  call void @g_free(i8* %17)
  %18 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %value7 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %18, i32 0, i32 7
  %19 = load %struct._GString*, %struct._GString** %value7, align 8
  %str8 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0
  %20 = load i8*, i8** %str8, align 8
  %call9 = call noalias i8* @g_strdup(i8* %20)
  %21 = load i8**, i8*** %dest.addr, align 8
  store i8* %call9, i8** %21, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.10, %sw.bb.6, %if.end.5
  ret void
}

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @tips_parser_end_markup(%struct.TipsParser* %parser, i8* %markup_name) #0 {
entry:
  %parser.addr = alloca %struct.TipsParser*, align 8
  %markup_name.addr = alloca i8*, align 8
  store %struct.TipsParser* %parser, %struct.TipsParser** %parser.addr, align 8
  store i8* %markup_name, i8** %markup_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %markup_depth = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %0, i32 0, i32 5
  %1 = load i32, i32* %markup_depth, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i32 385, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tips_parser_end_markup, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %markup_depth1 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %2, i32 0, i32 5
  %3 = load i32, i32* %markup_depth1, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %markup_depth1, align 4
  %4 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %value = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %4, i32 0, i32 7
  %5 = load %struct._GString*, %struct._GString** %value, align 8
  %6 = load i8*, i8** %markup_name.addr, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tips_parser_end_unknown(%struct.TipsParser* %parser) #0 {
entry:
  %parser.addr = alloca %struct.TipsParser*, align 8
  store %struct.TipsParser* %parser, %struct.TipsParser** %parser.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %unknown_depth = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %0, i32 0, i32 6
  %1 = load i32, i32* %unknown_depth, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %2 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %state = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %2, i32 0, i32 0
  %3 = load i32, i32* %state, align 4
  %cmp1 = icmp eq i32 %3, 4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i32 404, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tips_parser_end_unknown, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.23, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %unknown_depth2 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %4, i32 0, i32 6
  %5 = load i32, i32* %unknown_depth2, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %unknown_depth2, align 4
  %6 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %unknown_depth3 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %6, i32 0, i32 6
  %7 = load i32, i32* %unknown_depth3, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %do.end
  %8 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %last_known_state = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %8, i32 0, i32 1
  %9 = load i32, i32* %last_known_state, align 4
  %10 = load %struct.TipsParser*, %struct.TipsParser** %parser.addr, align 8
  %state6 = getelementptr inbounds %struct.TipsParser, %struct.TipsParser* %10, i32 0, i32 0
  store i32 %9, i32* %state6, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %do.end
  ret void
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #6 {
entry:
  %gstring.addr = alloca %struct._GString*, align 8
  %c.addr = alloca i8, align 1
  store %struct._GString* %gstring, %struct._GString** %gstring.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %2 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %allocated_len = getelementptr inbounds %struct._GString, %struct._GString* %2, i32 0, i32 2
  %3 = load i64, i64* %allocated_len, align 8
  %cmp = icmp ult i64 %add, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %c.addr, align 1
  %5 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len1 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1
  %6 = load i64, i64* %len1, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %len1, align 8
  %7 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %7, i32 0, i32 0
  %8 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %6
  store i8 %4, i8* %arrayidx, align 1
  %9 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len2 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 1
  %10 = load i64, i64* %len2, align 8
  %11 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str3 = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 0
  %12 = load i8*, i8** %str3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %10
  store i8 0, i8* %arrayidx4, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %14 = load i8, i8* %c.addr, align 1
  %call = call %struct._GString* @g_string_insert_c(%struct._GString* %13, i64 -1, i8 signext %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  ret %struct._GString* %15
}

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
