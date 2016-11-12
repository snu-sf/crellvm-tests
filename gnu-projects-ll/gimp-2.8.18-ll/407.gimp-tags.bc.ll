; ModuleID = './app/core/gimp-tags.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GMarkupParser = type { void (%struct._GMarkupParseContext*, i8*, i8**, i8**, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, %struct._GError*, i8*)* }
%struct._GMarkupParseContext = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpXmlParser = type opaque
%struct.GimpTagsInstaller = type { i8*, %struct._GString*, i32 }
%struct._GString = type { i8*, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"tags-locale:C\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"tags-locale:\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Wrong translation for 'tags-locale:', fix the translation!\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"<?xml version='1.0' encoding='UTF-8'?>\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"<tags>\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"tags\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"gimp-tags-default.xml\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"\0A</tags>\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"tags.xml\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Error while creating tags.xml: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"resource\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"\0A  <resource\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c" %s=\22%s\22\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"thetag\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"xml:lang\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"  </resource>\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"    <tag>%s</tag>\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_tags_user_install() #0 {
entry:
  %retval = alloca i32, align 4
  %filename = alloca i8*, align 8
  %markup_parser = alloca %struct._GMarkupParser, align 8
  %xml_parser = alloca %struct._GimpXmlParser*, align 8
  %tags_locale = alloca i8*, align 8
  %tags_installer = alloca %struct.GimpTagsInstaller, align 8
  %error = alloca %struct._GError*, align 8
  %result = alloca i32, align 4
  %0 = bitcast %struct.GimpTagsInstaller* %tags_installer to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  store %struct._GError* null, %struct._GError** %error, align 8
  store i32 1, i32* %result, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)) #1
  store i8* %call, i8** %tags_locale, align 8
  %1 = load i8*, i8** %tags_locale, align 8
  %call1 = call i32 @g_str_has_prefix(i8* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %tags_locale, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 12
  store i8* %add.ptr, i8** %tags_locale, align 8
  %3 = load i8*, i8** %tags_locale, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %5 = load i8*, i8** %tags_locale, align 8
  %6 = load i8, i8* %5, align 1
  %conv3 = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv3, 67
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %7 = load i8*, i8** %tags_locale, align 8
  %locale = getelementptr inbounds %struct.GimpTagsInstaller, %struct.GimpTagsInstaller* %tags_installer, i32 0, i32 0
  store i8* %7, i8** %locale, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %if.then
  br label %if.end.6

if.else:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end
  %call7 = call %struct._GString* @g_string_new(i8* null)
  %buf = getelementptr inbounds %struct.GimpTagsInstaller, %struct.GimpTagsInstaller* %tags_installer, i32 0, i32 1
  store %struct._GString* %call7, %struct._GString** %buf, align 8
  %buf8 = getelementptr inbounds %struct.GimpTagsInstaller, %struct.GimpTagsInstaller* %tags_installer, i32 0, i32 1
  %8 = load %struct._GString*, %struct._GString** %buf8, align 8
  %call9 = call %struct._GString* @g_string_append(%struct._GString* %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0))
  %buf10 = getelementptr inbounds %struct.GimpTagsInstaller, %struct.GimpTagsInstaller* %tags_installer, i32 0, i32 1
  %9 = load %struct._GString*, %struct._GString** %buf10, align 8
  %call11 = call %struct._GString* @g_string_append(%struct._GString* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0))
  %call12 = call i8* @gimp_data_directory() #6
  %call13 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* null)
  store i8* %call13, i8** %filename, align 8
  %start_element = getelementptr inbounds %struct._GMarkupParser, %struct._GMarkupParser* %markup_parser, i32 0, i32 0
  store void (%struct._GMarkupParseContext*, i8*, i8**, i8**, i8*, %struct._GError**)* @gimp_tags_installer_load_start_element, void (%struct._GMarkupParseContext*, i8*, i8**, i8**, i8*, %struct._GError**)** %start_element, align 8
  %end_element = getelementptr inbounds %struct._GMarkupParser, %struct._GMarkupParser* %markup_parser, i32 0, i32 1
  store void (%struct._GMarkupParseContext*, i8*, i8*, %struct._GError**)* @gimp_tags_installer_load_end_element, void (%struct._GMarkupParseContext*, i8*, i8*, %struct._GError**)** %end_element, align 8
  %text = getelementptr inbounds %struct._GMarkupParser, %struct._GMarkupParser* %markup_parser, i32 0, i32 2
  store void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)* @gimp_tags_installer_load_text, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)** %text, align 8
  %passthrough = getelementptr inbounds %struct._GMarkupParser, %struct._GMarkupParser* %markup_parser, i32 0, i32 3
  store void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)* null, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)** %passthrough, align 8
  %error14 = getelementptr inbounds %struct._GMarkupParser, %struct._GMarkupParser* %markup_parser, i32 0, i32 4
  store void (%struct._GMarkupParseContext*, %struct._GError*, i8*)* null, void (%struct._GMarkupParseContext*, %struct._GError*, i8*)** %error14, align 8
  %10 = bitcast %struct.GimpTagsInstaller* %tags_installer to i8*
  %call15 = call %struct._GimpXmlParser* @gimp_xml_parser_new(%struct._GMarkupParser* %markup_parser, i8* %10)
  store %struct._GimpXmlParser* %call15, %struct._GimpXmlParser** %xml_parser, align 8
  %11 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %xml_parser, align 8
  %12 = load i8*, i8** %filename, align 8
  %call16 = call i32 @gimp_xml_parser_parse_file(%struct._GimpXmlParser* %11, i8* %12, %struct._GError** %error)
  store i32 %call16, i32* %result, align 4
  %13 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %13)
  %14 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %xml_parser, align 8
  call void @gimp_xml_parser_free(%struct._GimpXmlParser* %14)
  %15 = load i32, i32* %result, align 4
  %tobool17 = icmp ne i32 %15, 0
  br i1 %tobool17, label %if.end.21, label %if.then.18

if.then.18:                                       ; preds = %if.end.6
  %buf19 = getelementptr inbounds %struct.GimpTagsInstaller, %struct.GimpTagsInstaller* %tags_installer, i32 0, i32 1
  %16 = load %struct._GString*, %struct._GString** %buf19, align 8
  %call20 = call i8* @g_string_free(%struct._GString* %16, i32 1)
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.6
  %buf22 = getelementptr inbounds %struct.GimpTagsInstaller, %struct.GimpTagsInstaller* %tags_installer, i32 0, i32 1
  %17 = load %struct._GString*, %struct._GString** %buf22, align 8
  %call23 = call %struct._GString* @g_string_append(%struct._GString* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  %call24 = call i8* @gimp_directory() #6
  %call25 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* null)
  store i8* %call25, i8** %filename, align 8
  %18 = load i8*, i8** %filename, align 8
  %buf26 = getelementptr inbounds %struct.GimpTagsInstaller, %struct.GimpTagsInstaller* %tags_installer, i32 0, i32 1
  %19 = load %struct._GString*, %struct._GString** %buf26, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0
  %20 = load i8*, i8** %str, align 8
  %buf27 = getelementptr inbounds %struct.GimpTagsInstaller, %struct.GimpTagsInstaller* %tags_installer, i32 0, i32 1
  %21 = load %struct._GString*, %struct._GString** %buf27, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %21, i32 0, i32 1
  %22 = load i64, i64* %len, align 8
  %call28 = call i32 @g_file_set_contents(i8* %18, i8* %20, i64 %22, %struct._GError** %error)
  store i32 %call28, i32* %result, align 4
  %23 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %23)
  %buf29 = getelementptr inbounds %struct.GimpTagsInstaller, %struct.GimpTagsInstaller* %tags_installer, i32 0, i32 1
  %24 = load %struct._GString*, %struct._GString** %buf29, align 8
  %call30 = call i8* @g_string_free(%struct._GString* %24, i32 1)
  %25 = load i32, i32* %result, align 4
  %tobool31 = icmp ne i32 %25, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.end.21
  %26 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %26, i32 0, i32 2
  %27 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0), i8* %27)
  %28 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %28)
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.end.21
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then.32, %if.then.18
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i32 @g_str_has_prefix(i8*, i8*) #3

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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare %struct._GString* @g_string_new(i8*) #3

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #3

declare noalias i8* @g_build_filename(i8*, ...) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_data_directory() #4

; Function Attrs: nounwind uwtable
define internal void @gimp_tags_installer_load_start_element(%struct._GMarkupParseContext* %context, i8* %element_name, i8** %attribute_names, i8** %attribute_values, i8* %user_data, %struct._GError** %error) #0 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %element_name.addr = alloca i8*, align 8
  %attribute_names.addr = alloca i8**, align 8
  %attribute_values.addr = alloca i8**, align 8
  %user_data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %tags_installer = alloca %struct.GimpTagsInstaller*, align 8
  %current_locale = alloca i8*, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i8* %element_name, i8** %element_name.addr, align 8
  store i8** %attribute_names, i8*** %attribute_names.addr, align 8
  store i8** %attribute_values, i8*** %attribute_values.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GimpTagsInstaller*
  store %struct.GimpTagsInstaller* %1, %struct.GimpTagsInstaller** %tags_installer, align 8
  %2 = load i8*, i8** %element_name.addr, align 8
  %call = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.GimpTagsInstaller*, %struct.GimpTagsInstaller** %tags_installer, align 8
  %buf = getelementptr inbounds %struct.GimpTagsInstaller, %struct.GimpTagsInstaller* %3, i32 0, i32 1
  %4 = load %struct._GString*, %struct._GString** %buf, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %5 = load i8**, i8*** %attribute_names.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %tobool1 = icmp ne i8* %6, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.GimpTagsInstaller*, %struct.GimpTagsInstaller** %tags_installer, align 8
  %buf2 = getelementptr inbounds %struct.GimpTagsInstaller, %struct.GimpTagsInstaller* %7, i32 0, i32 1
  %8 = load %struct._GString*, %struct._GString** %buf2, align 8
  %9 = load i8**, i8*** %attribute_names.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8**, i8*** %attribute_values.addr, align 8
  %12 = load i8*, i8** %11, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* %10, i8* %12)
  %13 = load i8**, i8*** %attribute_names.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %incdec.ptr, i8*** %attribute_names.addr, align 8
  %14 = load i8**, i8*** %attribute_values.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %incdec.ptr3, i8*** %attribute_values.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct.GimpTagsInstaller*, %struct.GimpTagsInstaller** %tags_installer, align 8
  %buf4 = getelementptr inbounds %struct.GimpTagsInstaller, %struct.GimpTagsInstaller* %15, i32 0, i32 1
  %16 = load %struct._GString*, %struct._GString** %buf4, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.19

if.else:                                          ; preds = %entry
  %17 = load i8*, i8** %element_name.addr, align 8
  %call5 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)) #7
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.18, label %if.then.7

if.then.7:                                        ; preds = %if.else
  %18 = load i8**, i8*** %attribute_names.addr, align 8
  %19 = load i8**, i8*** %attribute_values.addr, align 8
  %call8 = call i8* @attribute_name_to_value(i8** %18, i8** %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0))
  store i8* %call8, i8** %current_locale, align 8
  %20 = load i8*, i8** %current_locale, align 8
  %tobool9 = icmp ne i8* %20, null
  br i1 %tobool9, label %land.lhs.true, label %if.else.15

land.lhs.true:                                    ; preds = %if.then.7
  %21 = load %struct.GimpTagsInstaller*, %struct.GimpTagsInstaller** %tags_installer, align 8
  %locale = getelementptr inbounds %struct.GimpTagsInstaller, %struct.GimpTagsInstaller* %21, i32 0, i32 0
  %22 = load i8*, i8** %locale, align 8
  %tobool10 = icmp ne i8* %22, null
  br i1 %tobool10, label %if.then.11, label %if.else.15

if.then.11:                                       ; preds = %land.lhs.true
  %23 = load i8*, i8** %current_locale, align 8
  %24 = load %struct.GimpTagsInstaller*, %struct.GimpTagsInstaller** %tags_installer, align 8
  %locale12 = getelementptr inbounds %struct.GimpTagsInstaller, %struct.GimpTagsInstaller* %24, i32 0, i32 0
  %25 = load i8*, i8** %locale12, align 8
  %call13 = call i32 @strcmp(i8* %23, i8* %25) #7
  %tobool14 = icmp ne i32 %call13, 0
  %lnot = xor i1 %tobool14, true
  %lnot.ext = zext i1 %lnot to i32
  %26 = load %struct.GimpTagsInstaller*, %struct.GimpTagsInstaller** %tags_installer, align 8
  %locale_matches = getelementptr inbounds %struct.GimpTagsInstaller, %struct.GimpTagsInstaller* %26, i32 0, i32 2
  store i32 %lnot.ext, i32* %locale_matches, align 4
  br label %if.end

if.else.15:                                       ; preds = %land.lhs.true, %if.then.7
  %27 = load i8*, i8** %current_locale, align 8
  %28 = load %struct.GimpTagsInstaller*, %struct.GimpTagsInstaller** %tags_installer, align 8
  %locale16 = getelementptr inbounds %struct.GimpTagsInstaller, %struct.GimpTagsInstaller* %28, i32 0, i32 0
  %29 = load i8*, i8** %locale16, align 8
  %cmp = icmp eq i8* %27, %29
  %conv = zext i1 %cmp to i32
  %30 = load %struct.GimpTagsInstaller*, %struct.GimpTagsInstaller** %tags_installer, align 8
  %locale_matches17 = getelementptr inbounds %struct.GimpTagsInstaller, %struct.GimpTagsInstaller* %30, i32 0, i32 2
  store i32 %conv, i32* %locale_matches17, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.15, %if.then.11
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tags_installer_load_end_element(%struct._GMarkupParseContext* %context, i8* %element_name, i8* %user_data, %struct._GError** %error) #0 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %element_name.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %tags_installer = alloca %struct.GimpTagsInstaller*, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i8* %element_name, i8** %element_name.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GimpTagsInstaller*
  store %struct.GimpTagsInstaller* %1, %struct.GimpTagsInstaller** %tags_installer, align 8
  %2 = load i8*, i8** %element_name.addr, align 8
  %call = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.GimpTagsInstaller*, %struct.GimpTagsInstaller** %tags_installer, align 8
  %buf = getelementptr inbounds %struct.GimpTagsInstaller, %struct.GimpTagsInstaller* %3, i32 0, i32 1
  %4 = load %struct._GString*, %struct._GString** %buf, align 8
  %call1 = call %struct._GString* @g_string_append(%struct._GString* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tags_installer_load_text(%struct._GMarkupParseContext* %context, i8* %text, i64 %text_len, i8* %user_data, %struct._GError** %error) #0 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %text.addr = alloca i8*, align 8
  %text_len.addr = alloca i64, align 8
  %user_data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %tags_installer = alloca %struct.GimpTagsInstaller*, align 8
  %current_element = alloca i8*, align 8
  %tag_string = alloca i8*, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store i64 %text_len, i64* %text_len.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GimpTagsInstaller*
  store %struct.GimpTagsInstaller* %1, %struct.GimpTagsInstaller** %tags_installer, align 8
  %2 = load %struct._GMarkupParseContext*, %struct._GMarkupParseContext** %context.addr, align 8
  %call = call i8* @g_markup_parse_context_get_element(%struct._GMarkupParseContext* %2)
  store i8* %call, i8** %current_element, align 8
  %3 = load %struct.GimpTagsInstaller*, %struct.GimpTagsInstaller** %tags_installer, align 8
  %locale_matches = getelementptr inbounds %struct.GimpTagsInstaller, %struct.GimpTagsInstaller* %3, i32 0, i32 2
  %4 = load i32, i32* %locale_matches, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** %current_element, align 8
  %tobool1 = icmp ne i8* %5, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %6 = load i8*, i8** %current_element, align 8
  %call3 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  %7 = load i8*, i8** %text.addr, align 8
  %8 = load i64, i64* %text_len.addr, align 8
  %call4 = call i8* @g_markup_escape_text(i8* %7, i64 %8)
  store i8* %call4, i8** %tag_string, align 8
  %9 = load %struct.GimpTagsInstaller*, %struct.GimpTagsInstaller** %tags_installer, align 8
  %buf = getelementptr inbounds %struct.GimpTagsInstaller, %struct.GimpTagsInstaller* %9, i32 0, i32 1
  %10 = load %struct._GString*, %struct._GString** %buf, align 8
  %11 = load i8*, i8** %tag_string, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* %11)
  %12 = load i8*, i8** %tag_string, align 8
  call void @g_free(i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.2, %land.lhs.true, %entry
  ret void
}

declare %struct._GimpXmlParser* @gimp_xml_parser_new(%struct._GMarkupParser*, i8*) #3

declare i32 @gimp_xml_parser_parse_file(%struct._GimpXmlParser*, i8*, %struct._GError**) #3

declare void @g_free(i8*) #3

declare void @gimp_xml_parser_free(%struct._GimpXmlParser*) #3

declare i8* @g_string_free(%struct._GString*, i32) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_directory() #4

declare i32 @g_file_set_contents(i8*, i8*, i64, %struct._GError**) #3

declare void @g_error_free(%struct._GError*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i8* @attribute_name_to_value(i8** %attribute_names, i8** %attribute_values, i8* %name) #0 {
entry:
  %retval = alloca i8*, align 8
  %attribute_names.addr = alloca i8**, align 8
  %attribute_values.addr = alloca i8**, align 8
  %name.addr = alloca i8*, align 8
  store i8** %attribute_names, i8*** %attribute_names.addr, align 8
  store i8** %attribute_values, i8*** %attribute_values.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8**, i8*** %attribute_names.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8**, i8*** %attribute_names.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %3, i8* %4) #7
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %5 = load i8**, i8*** %attribute_values.addr, align 8
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %7 = load i8**, i8*** %attribute_names.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %7, i32 1
  store i8** %incdec.ptr, i8*** %attribute_names.addr, align 8
  %8 = load i8**, i8*** %attribute_values.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8*, i8** %8, i32 1
  store i8** %incdec.ptr2, i8*** %attribute_values.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %9 = load i8*, i8** %retval
  ret i8* %9
}

declare i8* @g_markup_parse_context_get_element(%struct._GMarkupParseContext*) #3

declare i8* @g_markup_escape_text(i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
