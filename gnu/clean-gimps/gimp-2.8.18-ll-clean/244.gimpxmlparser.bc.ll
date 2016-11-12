; ModuleID = './app/config/gimpxmlparser.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpXmlParser = type { %struct._GMarkupParseContext* }
%struct._GMarkupParseContext = type opaque
%struct._GMarkupParser = type { void (%struct._GMarkupParseContext*, i8*, i8**, i8**, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, %struct._GError*, i8*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"Gimp-Config\00", align 1
@__func__.gimp_xml_parser_new = private unnamed_addr constant [20 x i8] c"gimp_xml_parser_new\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"markup_parser != NULL\00", align 1
@__func__.gimp_xml_parser_parse_file = private unnamed_addr constant [27 x i8] c"gimp_xml_parser_parse_file\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"parser != NULL\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@__func__.gimp_xml_parser_parse_fd = private unnamed_addr constant [25 x i8] c"gimp_xml_parser_parse_fd\00", align 1
@__func__.gimp_xml_parser_parse_io_channel = private unnamed_addr constant [33 x i8] c"gimp_xml_parser_parse_io_channel\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"io != NULL\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.8 = private unnamed_addr constant [90 x i8] c"gimp_xml_parser_parse_io_channel():\0AThe encoding has already been set on this GIOChannel!\00", align 1
@__func__.gimp_xml_parser_parse_buffer = private unnamed_addr constant [29 x i8] c"gimp_xml_parser_parse_buffer\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"buffer != NULL || len == 0\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1
@__func__.gimp_xml_parser_free = private unnamed_addr constant [21 x i8] c"gimp_xml_parser_free\00", align 1
@__func__.parse_encoding = private unnamed_addr constant [15 x i8] c"parse_encoding\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"<?xml\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"?>\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpXmlParser* @gimp_xml_parser_new(%struct._GMarkupParser* %markup_parser, i8* %user_data) #0 {
entry:
  %retval = alloca %struct._GimpXmlParser*, align 8
  %markup_parser.addr = alloca %struct._GMarkupParser*, align 8
  %user_data.addr = alloca i8*, align 8
  %parser = alloca %struct._GimpXmlParser*, align 8
  store %struct._GMarkupParser* %markup_parser, %struct._GMarkupParser** %markup_parser.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GMarkupParser*, %struct._GMarkupParser** %markup_parser.addr, align 8
  %cmp = icmp ne %struct._GMarkupParser* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_xml_parser_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpXmlParser* null, %struct._GimpXmlParser** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call noalias i8* @g_slice_alloc(i64 8)
  %1 = bitcast i8* %call to %struct._GimpXmlParser*
  store %struct._GimpXmlParser* %1, %struct._GimpXmlParser** %parser, align 8
  %2 = load %struct._GMarkupParser*, %struct._GMarkupParser** %markup_parser.addr, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %call1 = call %struct._GMarkupParseContext* @g_markup_parse_context_new(%struct._GMarkupParser* %2, i32 0, i8* %3, void (i8*)* null)
  %4 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %parser, align 8
  %context = getelementptr inbounds %struct._GimpXmlParser, %struct._GimpXmlParser* %4, i32 0, i32 0
  store %struct._GMarkupParseContext* %call1, %struct._GMarkupParseContext** %context, align 8
  %5 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %parser, align 8
  store %struct._GimpXmlParser* %5, %struct._GimpXmlParser** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %6 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %retval
  ret %struct._GimpXmlParser* %6
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_slice_alloc(i64) #1

declare %struct._GMarkupParseContext* @g_markup_parse_context_new(%struct._GMarkupParser*, i32, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_xml_parser_parse_file(%struct._GimpXmlParser* %parser, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %parser.addr = alloca %struct._GimpXmlParser*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %io = alloca %struct._GIOChannel*, align 8
  %success = alloca i32, align 4
  store %struct._GimpXmlParser* %parser, %struct._GimpXmlParser** %parser.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %parser.addr, align 8
  %cmp = icmp ne %struct._GimpXmlParser* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_xml_parser_parse_file, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %filename.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_xml_parser_parse_file, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp8 = icmp eq %struct._GError** %2, null
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.7
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %4 = load %struct._GError*, %struct._GError** %3, align 8
  %cmp9 = icmp eq %struct._GError* %4, null
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %lor.lhs.false, %do.body.7
  br label %if.end.12

if.else.11:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_xml_parser_parse_file, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  %5 = load i8*, i8** %filename.addr, align 8
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call %struct._GIOChannel* @g_io_channel_new_file(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), %struct._GError** %6)
  store %struct._GIOChannel* %call, %struct._GIOChannel** %io, align 8
  %7 = load %struct._GIOChannel*, %struct._GIOChannel** %io, align 8
  %tobool = icmp ne %struct._GIOChannel* %7, null
  br i1 %tobool, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %do.end.13
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %do.end.13
  %8 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %parser.addr, align 8
  %9 = load %struct._GIOChannel*, %struct._GIOChannel** %io, align 8
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @gimp_xml_parser_parse_io_channel(%struct._GimpXmlParser* %8, %struct._GIOChannel* %9, %struct._GError** %10)
  store i32 %call16, i32* %success, align 4
  %11 = load %struct._GIOChannel*, %struct._GIOChannel** %io, align 8
  call void @g_io_channel_unref(%struct._GIOChannel* %11)
  %12 = load i32, i32* %success, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.else.11, %if.else.4, %if.else
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare %struct._GIOChannel* @g_io_channel_new_file(i8*, i8*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_xml_parser_parse_io_channel(%struct._GimpXmlParser* %parser, %struct._GIOChannel* %io, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %parser.addr = alloca %struct._GimpXmlParser*, align 8
  %io.addr = alloca %struct._GIOChannel*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %status = alloca i32, align 4
  %buffer = alloca [4096 x i8], align 16
  %len = alloca i64, align 8
  %bytes = alloca i64, align 8
  %io_encoding = alloca i8*, align 8
  %encoding = alloca i8*, align 8
  store %struct._GimpXmlParser* %parser, %struct._GimpXmlParser** %parser.addr, align 8
  store %struct._GIOChannel* %io, %struct._GIOChannel** %io.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i64 0, i64* %len, align 8
  store i8* null, i8** %encoding, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %parser.addr, align 8
  %cmp = icmp ne %struct._GimpXmlParser* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_xml_parser_parse_io_channel, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GIOChannel*, %struct._GIOChannel** %io.addr, align 8
  %cmp2 = icmp ne %struct._GIOChannel* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_xml_parser_parse_io_channel, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp8 = icmp eq %struct._GError** %2, null
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.7
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %4 = load %struct._GError*, %struct._GError** %3, align 8
  %cmp9 = icmp eq %struct._GError* %4, null
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %lor.lhs.false, %do.body.7
  br label %if.end.12

if.else.11:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_xml_parser_parse_io_channel, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  %5 = load %struct._GIOChannel*, %struct._GIOChannel** %io.addr, align 8
  %call = call i8* @g_io_channel_get_encoding(%struct._GIOChannel* %5)
  store i8* %call, i8** %io_encoding, align 8
  %6 = load i8*, i8** %io_encoding, align 8
  %call14 = call i32 @g_strcmp0(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %do.end.13
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %do.end.13
  %7 = load %struct._GIOChannel*, %struct._GIOChannel** %io.addr, align 8
  %call17 = call i32 @g_io_channel_set_encoding(%struct._GIOChannel* %7, i8* null, %struct._GError** null)
  br label %while.cond

while.cond:                                       ; preds = %if.end.30, %if.end.16
  %8 = load i64, i64* %len, align 8
  %cmp18 = icmp ult i64 %8, 4096
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct._GIOChannel*, %struct._GIOChannel** %io.addr, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %10 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %10
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call19 = call i32 @g_io_channel_read_chars(%struct._GIOChannel* %9, i8* %add.ptr, i64 1, i64* %bytes, %struct._GError** %11)
  store i32 %call19, i32* %status, align 4
  %12 = load i64, i64* %bytes, align 8
  %13 = load i64, i64* %len, align 8
  %add = add i64 %13, %12
  store i64 %add, i64* %len, align 8
  %14 = load i32, i32* %status, align 4
  %cmp20 = icmp eq i32 %14, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %while.body
  %15 = load i32, i32* %status, align 4
  %cmp23 = icmp eq i32 %15, 2
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  br label %while.end

if.end.25:                                        ; preds = %if.end.22
  %arraydecay26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %16 = load i64, i64* %len, align 8
  %conv = trunc i64 %16 to i32
  %call27 = call i32 @parse_encoding(i8* %arraydecay26, i32 %conv, i8** %encoding)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.25
  br label %while.end

if.end.30:                                        ; preds = %if.end.25
  br label %while.cond

while.end:                                        ; preds = %if.then.29, %if.then.24, %while.cond
  %17 = load i8*, i8** %encoding, align 8
  %tobool31 = icmp ne i8* %17, null
  br i1 %tobool31, label %if.then.32, label %if.else.37

if.then.32:                                       ; preds = %while.end
  %18 = load %struct._GIOChannel*, %struct._GIOChannel** %io.addr, align 8
  %19 = load i8*, i8** %encoding, align 8
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call33 = call i32 @g_io_channel_set_encoding(%struct._GIOChannel* %18, i8* %19, %struct._GError** %20)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.then.32
  store i32 0, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.then.32
  %21 = load i8*, i8** %encoding, align 8
  call void @g_free(i8* %21)
  br label %if.end.39

if.else.37:                                       ; preds = %while.end
  %22 = load %struct._GIOChannel*, %struct._GIOChannel** %io.addr, align 8
  %call38 = call i32 @g_io_channel_set_encoding(%struct._GIOChannel* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._GError** null)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.end.36
  br label %while.body.41

while.body.41:                                    ; preds = %if.end.39, %sw.epilog
  %23 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %parser.addr, align 8
  %context = getelementptr inbounds %struct._GimpXmlParser, %struct._GimpXmlParser* %23, i32 0, i32 0
  %24 = load %struct._GMarkupParseContext*, %struct._GMarkupParseContext** %context, align 8
  %arraydecay42 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %25 = load i64, i64* %len, align 8
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call43 = call i32 @g_markup_parse_context_parse(%struct._GMarkupParseContext* %24, i8* %arraydecay42, i64 %25, %struct._GError** %26)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %while.body.41
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %while.body.41
  %27 = load %struct._GIOChannel*, %struct._GIOChannel** %io.addr, align 8
  %arraydecay47 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call48 = call i32 @g_io_channel_read_chars(%struct._GIOChannel* %27, i8* %arraydecay47, i64 4096, i64* %len, %struct._GError** %28)
  store i32 %call48, i32* %status, align 4
  %29 = load i32, i32* %status, align 4
  switch i32 %29, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.49
    i32 1, label %sw.bb.52
    i32 3, label %sw.bb.52
  ]

sw.bb:                                            ; preds = %if.end.46
  store i32 0, i32* %retval
  br label %return

sw.bb.49:                                         ; preds = %if.end.46
  %30 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %parser.addr, align 8
  %context50 = getelementptr inbounds %struct._GimpXmlParser, %struct._GimpXmlParser* %30, i32 0, i32 0
  %31 = load %struct._GMarkupParseContext*, %struct._GMarkupParseContext** %context50, align 8
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call51 = call i32 @g_markup_parse_context_end_parse(%struct._GMarkupParseContext* %31, %struct._GError** %32)
  store i32 %call51, i32* %retval
  br label %return

sw.bb.52:                                         ; preds = %if.end.46, %if.end.46
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.46, %sw.bb.52
  br label %while.body.41

return:                                           ; preds = %sw.bb.49, %sw.bb, %if.then.45, %if.then.35, %if.then.21, %if.then.15, %if.else.11, %if.else.4, %if.else
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare void @g_io_channel_unref(%struct._GIOChannel*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_xml_parser_parse_fd(%struct._GimpXmlParser* %parser, i32 %fd, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %parser.addr = alloca %struct._GimpXmlParser*, align 8
  %fd.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %io = alloca %struct._GIOChannel*, align 8
  %success = alloca i32, align 4
  store %struct._GimpXmlParser* %parser, %struct._GimpXmlParser** %parser.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %parser.addr, align 8
  %cmp = icmp ne %struct._GimpXmlParser* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_xml_parser_parse_fd, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp2 = icmp eq %struct._GError** %1, null
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.1
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %3 = load %struct._GError*, %struct._GError** %2, align 8
  %cmp3 = icmp eq %struct._GError* %3, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %lor.lhs.false, %do.body.1
  br label %if.end.6

if.else.5:                                        ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_xml_parser_parse_fd, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %4 = load i32, i32* %fd.addr, align 4
  %call = call %struct._GIOChannel* @g_io_channel_unix_new(i32 %4)
  store %struct._GIOChannel* %call, %struct._GIOChannel** %io, align 8
  %5 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %parser.addr, align 8
  %6 = load %struct._GIOChannel*, %struct._GIOChannel** %io, align 8
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call8 = call i32 @gimp_xml_parser_parse_io_channel(%struct._GimpXmlParser* %5, %struct._GIOChannel* %6, %struct._GError** %7)
  store i32 %call8, i32* %success, align 4
  %8 = load %struct._GIOChannel*, %struct._GIOChannel** %io, align 8
  call void @g_io_channel_unref(%struct._GIOChannel* %8)
  %9 = load i32, i32* %success, align 4
  store i32 %9, i32* %retval
  br label %return

return:                                           ; preds = %do.end.7, %if.else.5, %if.else
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare %struct._GIOChannel* @g_io_channel_unix_new(i32) #1

declare i8* @g_io_channel_get_encoding(%struct._GIOChannel*) #1

declare i32 @g_strcmp0(i8*, i8*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i32 @g_io_channel_set_encoding(%struct._GIOChannel*, i8*, %struct._GError**) #1

declare i32 @g_io_channel_read_chars(%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal i32 @parse_encoding(i8* %text, i32 %text_len, i8** %encoding) #0 {
entry:
  %retval = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %text_len.addr = alloca i32, align 4
  %encoding.addr = alloca i8**, align 8
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %text, i8** %text.addr, align 8
  store i32 %text_len, i32* %text_len.addr, align 4
  store i8** %encoding, i8*** %encoding.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %text.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.parse_encoding, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %text_len.addr, align 4
  %cmp = icmp slt i32 %1, 20
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %do.end
  %2 = load i8*, i8** %text.addr, align 8
  %3 = load i32, i32* %text_len.addr, align 4
  %conv = sext i32 %3 to i64
  %call = call i8* @g_strstr_len(i8* %2, i64 %conv, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  store i8* %call, i8** %start, align 8
  %4 = load i8*, i8** %start, align 8
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %5 = load i8*, i8** %start, align 8
  %6 = load i32, i32* %text_len.addr, align 4
  %conv6 = sext i32 %6 to i64
  %7 = load i8*, i8** %start, align 8
  %8 = load i8*, i8** %text.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %conv6, %sub.ptr.sub
  %call7 = call i8* @g_strstr_len(i8* %5, i64 %sub, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0))
  store i8* %call7, i8** %end, align 8
  %9 = load i8*, i8** %end, align 8
  %tobool8 = icmp ne i8* %9, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  %10 = load i8**, i8*** %encoding.addr, align 8
  store i8* null, i8** %10, align 8
  %11 = load i8*, i8** %end, align 8
  %12 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast11 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast12 = ptrtoint i8* %12 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12
  %conv14 = trunc i64 %sub.ptr.sub13 to i32
  store i32 %conv14, i32* %text_len.addr, align 4
  %13 = load i32, i32* %text_len.addr, align 4
  %cmp15 = icmp slt i32 %13, 12
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.10
  store i32 1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.10
  %14 = load i8*, i8** %start, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i32, i32* %text_len.addr, align 4
  %sub19 = sub nsw i32 %15, 1
  %conv20 = sext i32 %sub19 to i64
  %call21 = call i8* @g_strstr_len(i8* %add.ptr, i64 %conv20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0))
  store i8* %call21, i8** %start, align 8
  %16 = load i8*, i8** %start, align 8
  %tobool22 = icmp ne i8* %16, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.18
  store i32 1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.18
  %17 = load i8*, i8** %start, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %17, i64 8
  store i8* %add.ptr25, i8** %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.24
  %18 = load i8*, i8** %start, align 8
  %19 = load i8*, i8** %end, align 8
  %cmp26 = icmp ult i8* %18, %19
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %20 = load i8*, i8** %start, align 8
  %21 = load i8, i8* %20, align 1
  %conv28 = sext i8 %21 to i32
  %cmp29 = icmp eq i32 %conv28, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %cmp29, %land.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %23 = load i8*, i8** %start, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %start, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %24 = load i8*, i8** %start, align 8
  %25 = load i8, i8* %24, align 1
  %conv31 = sext i8 %25 to i32
  %cmp32 = icmp ne i32 %conv31, 61
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %while.end
  store i32 1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %while.end
  %26 = load i8*, i8** %start, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr36, i8** %start, align 8
  br label %while.cond.37

while.cond.37:                                    ; preds = %while.body.45, %if.end.35
  %27 = load i8*, i8** %start, align 8
  %28 = load i8*, i8** %end, align 8
  %cmp38 = icmp ult i8* %27, %28
  br i1 %cmp38, label %land.rhs.40, label %land.end.44

land.rhs.40:                                      ; preds = %while.cond.37
  %29 = load i8*, i8** %start, align 8
  %30 = load i8, i8* %29, align 1
  %conv41 = sext i8 %30 to i32
  %cmp42 = icmp eq i32 %conv41, 32
  br label %land.end.44

land.end.44:                                      ; preds = %land.rhs.40, %while.cond.37
  %31 = phi i1 [ false, %while.cond.37 ], [ %cmp42, %land.rhs.40 ]
  br i1 %31, label %while.body.45, label %while.end.47

while.body.45:                                    ; preds = %land.end.44
  %32 = load i8*, i8** %start, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr46, i8** %start, align 8
  br label %while.cond.37

while.end.47:                                     ; preds = %land.end.44
  %33 = load i8*, i8** %start, align 8
  %34 = load i8, i8* %33, align 1
  %conv48 = sext i8 %34 to i32
  %cmp49 = icmp ne i32 %conv48, 34
  br i1 %cmp49, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %while.end.47
  %35 = load i8*, i8** %start, align 8
  %36 = load i8, i8* %35, align 1
  %conv51 = sext i8 %36 to i32
  %cmp52 = icmp ne i32 %conv51, 39
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.55:                                        ; preds = %land.lhs.true, %while.end.47
  %37 = load i8*, i8** %end, align 8
  %38 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast56 = ptrtoint i8* %37 to i64
  %sub.ptr.rhs.cast57 = ptrtoint i8* %38 to i64
  %sub.ptr.sub58 = sub i64 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57
  %conv59 = trunc i64 %sub.ptr.sub58 to i32
  store i32 %conv59, i32* %text_len.addr, align 4
  %39 = load i32, i32* %text_len.addr, align 4
  %cmp60 = icmp slt i32 %39, 1
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.55
  store i32 1, i32* %retval
  br label %return

if.end.63:                                        ; preds = %if.end.55
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.63
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %text_len.addr, align 4
  %cmp64 = icmp slt i32 %40, %41
  br i1 %cmp64, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* %i, align 4
  %idxprom = sext i32 %42 to i64
  %43 = load i8*, i8** %start, align 8
  %arrayidx = getelementptr inbounds i8, i8* %43, i64 %idxprom
  %44 = load i8, i8* %arrayidx, align 1
  %conv66 = sext i8 %44 to i32
  %45 = load i8*, i8** %start, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %45, i64 0
  %46 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %46 to i32
  %cmp69 = icmp eq i32 %conv66, %conv68
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %for.body
  br label %for.end

if.end.72:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %47 = load i32, i32* %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.71, %for.cond
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %text_len.addr, align 4
  %cmp73 = icmp eq i32 %48, %49
  br i1 %cmp73, label %if.then.77, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %50 = load i32, i32* %i, align 4
  %cmp75 = icmp slt i32 %50, 3
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %lor.lhs.false, %for.end
  store i32 1, i32* %retval
  br label %return

if.end.78:                                        ; preds = %lor.lhs.false
  %51 = load i8*, i8** %start, align 8
  %add.ptr79 = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i32, i32* %i, align 4
  %sub80 = sub nsw i32 %52, 1
  %conv81 = sext i32 %sub80 to i64
  %call82 = call noalias i8* @g_strndup(i8* %add.ptr79, i64 %conv81)
  %53 = load i8**, i8*** %encoding.addr, align 8
  store i8* %call82, i8** %53, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.78, %if.then.77, %if.then.62, %if.then.54, %if.then.34, %if.then.23, %if.then.17, %if.then.9, %if.then.4, %if.then.1, %if.else
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare void @g_free(i8*) #1

declare i32 @g_markup_parse_context_parse(%struct._GMarkupParseContext*, i8*, i64, %struct._GError**) #1

declare i32 @g_markup_parse_context_end_parse(%struct._GMarkupParseContext*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_xml_parser_parse_buffer(%struct._GimpXmlParser* %parser, i8* %buffer, i64 %len, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %parser.addr = alloca %struct._GimpXmlParser*, align 8
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %error.addr = alloca %struct._GError**, align 8
  %encoding = alloca i8*, align 8
  %conv = alloca i8*, align 8
  %success = alloca i32, align 4
  %written = alloca i64, align 8
  store %struct._GimpXmlParser* %parser, %struct._GimpXmlParser** %parser.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %encoding, align 8
  store i8* null, i8** %conv, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %parser.addr, align 8
  %cmp = icmp ne %struct._GimpXmlParser* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_xml_parser_parse_buffer, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %1 = load i8*, i8** %buffer.addr, align 8
  %cmp3 = icmp ne i8* %1, null
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.2
  %2 = load i64, i64* %len.addr, align 8
  %cmp5 = icmp eq i64 %2, 0
  br i1 %cmp5, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %lor.lhs.false, %do.body.2
  br label %if.end.9

if.else.8:                                        ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_xml_parser_parse_buffer, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.7
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  br label %do.body.11

do.body.11:                                       ; preds = %do.end.10
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %3, null
  br i1 %cmp12, label %if.then.17, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %do.body.11
  %4 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %5 = load %struct._GError*, %struct._GError** %4, align 8
  %cmp15 = icmp eq %struct._GError* %5, null
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %lor.lhs.false.14, %do.body.11
  br label %if.end.19

if.else.18:                                       ; preds = %lor.lhs.false.14
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_xml_parser_parse_buffer, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.17
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  %6 = load i64, i64* %len.addr, align 8
  %cmp21 = icmp slt i64 %6, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %do.end.20
  %7 = load i8*, i8** %buffer.addr, align 8
  %call = call i64 @strlen(i8* %7) #4
  store i64 %call, i64* %len.addr, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %do.end.20
  %8 = load i8*, i8** %buffer.addr, align 8
  %9 = load i64, i64* %len.addr, align 8
  %conv25 = trunc i64 %9 to i32
  %call26 = call i32 @parse_encoding(i8* %8, i32 %conv25, i8** %encoding)
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %if.end.24
  %10 = load i8*, i8** %encoding, align 8
  %tobool27 = icmp ne i8* %10, null
  br i1 %tobool27, label %if.then.28, label %if.end.40

if.then.28:                                       ; preds = %land.lhs.true
  %11 = load i8*, i8** %encoding, align 8
  %call29 = call i32 @g_ascii_strcasecmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %land.lhs.true.31, label %if.end.39

land.lhs.true.31:                                 ; preds = %if.then.28
  %12 = load i8*, i8** %encoding, align 8
  %call32 = call i32 @g_ascii_strcasecmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %land.lhs.true.31
  %13 = load i8*, i8** %buffer.addr, align 8
  %14 = load i64, i64* %len.addr, align 8
  %15 = load i8*, i8** %encoding, align 8
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call35 = call noalias i8* @g_convert(i8* %13, i64 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* %15, i64* null, i64* %written, %struct._GError** %16)
  store i8* %call35, i8** %conv, align 8
  %17 = load i8*, i8** %conv, align 8
  %tobool36 = icmp ne i8* %17, null
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.then.34
  %18 = load i8*, i8** %encoding, align 8
  call void @g_free(i8* %18)
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.34
  %19 = load i64, i64* %written, align 8
  store i64 %19, i64* %len.addr, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %land.lhs.true.31, %if.then.28
  %20 = load i8*, i8** %encoding, align 8
  call void @g_free(i8* %20)
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true, %if.end.24
  %21 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %parser.addr, align 8
  %context = getelementptr inbounds %struct._GimpXmlParser, %struct._GimpXmlParser* %21, i32 0, i32 0
  %22 = load %struct._GMarkupParseContext*, %struct._GMarkupParseContext** %context, align 8
  %23 = load i8*, i8** %conv, align 8
  %tobool41 = icmp ne i8* %23, null
  br i1 %tobool41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.40
  %24 = load i8*, i8** %conv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.40
  %25 = load i8*, i8** %buffer.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %24, %cond.true ], [ %25, %cond.false ]
  %26 = load i64, i64* %len.addr, align 8
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call42 = call i32 @g_markup_parse_context_parse(%struct._GMarkupParseContext* %22, i8* %cond, i64 %26, %struct._GError** %27)
  store i32 %call42, i32* %success, align 4
  %28 = load i8*, i8** %conv, align 8
  %tobool43 = icmp ne i8* %28, null
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %cond.end
  %29 = load i8*, i8** %conv, align 8
  call void @g_free(i8* %29)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %cond.end
  %30 = load i32, i32* %success, align 4
  store i32 %30, i32* %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then.37, %if.else.18, %if.else.8, %if.else
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare noalias i8* @g_convert(i8*, i64, i8*, i8*, i64*, i64*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define void @gimp_xml_parser_free(%struct._GimpXmlParser* %parser) #0 {
entry:
  %parser.addr = alloca %struct._GimpXmlParser*, align 8
  store %struct._GimpXmlParser* %parser, %struct._GimpXmlParser** %parser.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %parser.addr, align 8
  %cmp = icmp ne %struct._GimpXmlParser* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_xml_parser_free, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  br label %do.end.2

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %parser.addr, align 8
  %context = getelementptr inbounds %struct._GimpXmlParser, %struct._GimpXmlParser* %1, i32 0, i32 0
  %2 = load %struct._GMarkupParseContext*, %struct._GMarkupParseContext** %context, align 8
  call void @g_markup_parse_context_free(%struct._GMarkupParseContext* %2)
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %3 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %parser.addr, align 8
  %4 = bitcast %struct._GimpXmlParser* %3 to i8*
  call void @g_slice_free1(i64 8, i8* %4)
  br label %do.end.2

do.end.2:                                         ; preds = %if.else, %do.body.1
  ret void
}

declare void @g_markup_parse_context_free(%struct._GMarkupParseContext*) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

declare i8* @g_strstr_len(i8*, i64, i8*) #1

declare noalias i8* @g_strndup(i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
