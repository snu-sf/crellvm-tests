; ModuleID = './plug-ins/help/gimphelplocale.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GMarkupParser = type { void (%struct._GMarkupParseContext*, i8*, i8**, i8**, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, %struct._GError*, i8*)* }
%struct._GMarkupParseContext = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpHelpLocale = type { i8*, %struct._GHashTable*, i8*, %struct._GList* }
%struct._GHashTable = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpHelpItem = type { i8*, i8*, i8*, i8*, %struct._GList*, i64 }
%struct._GimpHelpProgress = type opaque
%struct._GFile = type opaque
%struct._GFileInputStream = type { %struct._GInputStream, %struct._GFileInputStreamPrivate* }
%struct._GInputStream = type { %struct._GObject, %struct._GInputStreamPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GInputStreamPrivate = type opaque
%struct._GFileInputStreamPrivate = type opaque
%struct._GCancellable = type { %struct._GObject, %struct._GCancellablePrivate* }
%struct._GCancellablePrivate = type opaque
%struct.LocaleParser = type { %struct._GFile*, i32, i32, i32, i32, %struct._GString*, %struct._GimpHelpLocale*, i8*, i8* }
%struct._GString = type { i8*, i64, i64 }
%struct._GFileInfo = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@__func__.gimp_help_locale_free = private unnamed_addr constant [22 x i8] c"gimp_help_locale_free\00", align 1
@.str = private unnamed_addr constant [15 x i8] c"locale != NULL\00", align 1
@__func__.gimp_help_locale_map = private unnamed_addr constant [21 x i8] c"gimp_help_locale_map\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"help_id != NULL\00", align 1
@__func__.gimp_help_locale_parse = private unnamed_addr constant [23 x i8] c"gimp_help_locale_parse\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"uri != NULL\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Loading index from '%s'\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"standard::size\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@markup_parser = internal constant %struct._GMarkupParser { void (%struct._GMarkupParseContext*, i8*, i8**, i8**, i8*, %struct._GError**)* @locale_parser_start_element, void (%struct._GMarkupParseContext*, i8*, i8*, %struct._GError**)* @locale_parser_end_element, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)* null, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)* null, void (%struct._GMarkupParseContext*, %struct._GError*, i8*)* @locale_parser_error }, align 8
@.str.8 = private unnamed_addr constant [24 x i8] c"Parse error in '%s':\0A%s\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"gimp-help\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"help-item\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"help-missing\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"xmlns:\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%s:id\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"locale_parser: This shouldn't happen.\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"gimphelplocale.c\00", align 1
@__func__.locale_parser_end_unknown = private unnamed_addr constant [26 x i8] c"locale_parser_end_unknown\00", align 1
@.str.20 = private unnamed_addr constant [64 x i8] c"parser->unknown_depth > 0 && parser->state == LOCALE_IN_UNKNOWN\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"help (parsing %s): %s\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpHelpLocale* @gimp_help_locale_new(i8* %locale_id) #0 {
entry:
  %locale_id.addr = alloca i8*, align 8
  %locale = alloca %struct._GimpHelpLocale*, align 8
  store i8* %locale_id, i8** %locale_id.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 32)
  %0 = bitcast i8* %call to %struct._GimpHelpLocale*
  store %struct._GimpHelpLocale* %0, %struct._GimpHelpLocale** %locale, align 8
  %1 = load i8*, i8** %locale_id.addr, align 8
  %call1 = call noalias i8* @g_strdup(i8* %1)
  %2 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale, align 8
  %locale_id2 = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %2, i32 0, i32 0
  store i8* %call1, i8** %locale_id2, align 8
  %3 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale, align 8
  ret %struct._GimpHelpLocale* %3
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_help_locale_free(%struct._GimpHelpLocale* %locale) #0 {
entry:
  %locale.addr = alloca %struct._GimpHelpLocale*, align 8
  store %struct._GimpHelpLocale* %locale, %struct._GimpHelpLocale** %locale.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %cmp = icmp ne %struct._GimpHelpLocale* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_help_locale_free, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %do.end.5

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %help_id_mapping = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %1, i32 0, i32 1
  %2 = load %struct._GHashTable*, %struct._GHashTable** %help_id_mapping, align 8
  %tobool = icmp ne %struct._GHashTable* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %do.end
  %3 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %help_id_mapping2 = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %3, i32 0, i32 1
  %4 = load %struct._GHashTable*, %struct._GHashTable** %help_id_mapping2, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %4)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %do.end
  %5 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %locale_id = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %5, i32 0, i32 0
  %6 = load i8*, i8** %locale_id, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %help_missing = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %7, i32 0, i32 2
  %8 = load i8*, i8** %help_missing, align 8
  call void @g_free(i8* %8)
  %9 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %toplevel_items = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %9, i32 0, i32 3
  %10 = load %struct._GList*, %struct._GList** %toplevel_items, align 8
  call void @g_list_free(%struct._GList* %10)
  br label %do.body.4

do.body.4:                                        ; preds = %if.end.3
  %11 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %12 = bitcast %struct._GimpHelpLocale* %11 to i8*
  call void @g_slice_free1(i64 32, i8* %12)
  br label %do.end.5

do.end.5:                                         ; preds = %if.else, %do.body.4
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_hash_table_destroy(%struct._GHashTable*) #1

declare void @g_free(i8*) #1

declare void @g_list_free(%struct._GList*) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_help_locale_map(%struct._GimpHelpLocale* %locale, i8* %help_id) #0 {
entry:
  %retval = alloca i8*, align 8
  %locale.addr = alloca %struct._GimpHelpLocale*, align 8
  %help_id.addr = alloca i8*, align 8
  %item = alloca %struct._GimpHelpItem*, align 8
  store %struct._GimpHelpLocale* %locale, %struct._GimpHelpLocale** %locale.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %cmp = icmp ne %struct._GimpHelpLocale* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_help_locale_map, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %help_id.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_help_locale_map, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %help_id_mapping = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %2, i32 0, i32 1
  %3 = load %struct._GHashTable*, %struct._GHashTable** %help_id_mapping, align 8
  %tobool = icmp ne %struct._GHashTable* %3, null
  br i1 %tobool, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %do.end.6
  %4 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %help_id_mapping8 = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %4, i32 0, i32 1
  %5 = load %struct._GHashTable*, %struct._GHashTable** %help_id_mapping8, align 8
  %6 = load i8*, i8** %help_id.addr, align 8
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %5, i8* %6)
  %7 = bitcast i8* %call to %struct._GimpHelpItem*
  store %struct._GimpHelpItem* %7, %struct._GimpHelpItem** %item, align 8
  %8 = load %struct._GimpHelpItem*, %struct._GimpHelpItem** %item, align 8
  %tobool9 = icmp ne %struct._GimpHelpItem* %8, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %9 = load %struct._GimpHelpItem*, %struct._GimpHelpItem** %item, align 8
  %ref = getelementptr inbounds %struct._GimpHelpItem, %struct._GimpHelpItem* %9, i32 0, i32 0
  %10 = load i8*, i8** %ref, align 8
  store i8* %10, i8** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %do.end.6
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.10, %if.else.4, %if.else
  %11 = load i8*, i8** %retval
  ret i8* %11
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_help_locale_parse(%struct._GimpHelpLocale* %locale, i8* %uri, i8* %help_domain, %struct._GimpHelpProgress* %progress, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %locale.addr = alloca %struct._GimpHelpLocale*, align 8
  %uri.addr = alloca i8*, align 8
  %help_domain.addr = alloca i8*, align 8
  %progress.addr = alloca %struct._GimpHelpProgress*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %context = alloca %struct._GMarkupParseContext*, align 8
  %file = alloca %struct._GFile*, align 8
  %stream = alloca %struct._GFileInputStream*, align 8
  %cancellable = alloca %struct._GCancellable*, align 8
  %parser = alloca %struct.LocaleParser, align 8
  %size = alloca i64, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %info = alloca %struct._GFileInfo*, align 8
  store %struct._GimpHelpLocale* %locale, %struct._GimpHelpLocale** %locale.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i8* %help_domain, i8** %help_domain.addr, align 8
  store %struct._GimpHelpProgress* %progress, %struct._GimpHelpProgress** %progress.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GCancellable* null, %struct._GCancellable** %cancellable, align 8
  %0 = bitcast %struct.LocaleParser* %parser to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 56, i32 8, i1 false)
  store i64 0, i64* %size, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %cmp = icmp ne %struct._GimpHelpLocale* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_help_locale_parse, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %uri.addr, align 8
  %cmp2 = icmp ne i8* %2, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_help_locale_parse, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp8 = icmp eq %struct._GError** %3, null
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.7
  %4 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %5 = load %struct._GError*, %struct._GError** %4, align 8
  %cmp9 = icmp eq %struct._GError* %5, null
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %lor.lhs.false, %do.body.7
  br label %if.end.12

if.else.11:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_help_locale_parse, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  %6 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %help_id_mapping = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %6, i32 0, i32 1
  %7 = load %struct._GHashTable*, %struct._GHashTable** %help_id_mapping, align 8
  %tobool = icmp ne %struct._GHashTable* %7, null
  br i1 %tobool, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %do.end.13
  %8 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %help_id_mapping15 = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %8, i32 0, i32 1
  %9 = load %struct._GHashTable*, %struct._GHashTable** %help_id_mapping15, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %9)
  %10 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %help_id_mapping16 = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %10, i32 0, i32 1
  store %struct._GHashTable* null, %struct._GHashTable** %help_id_mapping16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %do.end.13
  %11 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %help_missing = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %11, i32 0, i32 2
  %12 = load i8*, i8** %help_missing, align 8
  %tobool18 = icmp ne i8* %12, null
  br i1 %tobool18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.end.17
  %13 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %help_missing20 = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %13, i32 0, i32 2
  %14 = load i8*, i8** %help_missing20, align 8
  call void @g_free(i8* %14)
  %15 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %help_missing21 = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %15, i32 0, i32 2
  store i8* null, i8** %help_missing21, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.end.17
  %16 = load i8*, i8** %uri.addr, align 8
  %call = call %struct._GFile* @g_file_new_for_uri(i8* %16)
  store %struct._GFile* %call, %struct._GFile** %file, align 8
  %17 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %tobool23 = icmp ne %struct._GimpHelpProgress* %17, null
  br i1 %tobool23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %if.end.22
  %18 = load %struct._GFile*, %struct._GFile** %file, align 8
  %call25 = call i8* @g_file_get_parse_name(%struct._GFile* %18)
  store i8* %call25, i8** %name, align 8
  %call26 = call %struct._GCancellable* @g_cancellable_new()
  store %struct._GCancellable* %call26, %struct._GCancellable** %cancellable, align 8
  %19 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %20 = load %struct._GCancellable*, %struct._GCancellable** %cancellable, align 8
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0)) #2
  %21 = load i8*, i8** %name, align 8
  call void (%struct._GimpHelpProgress*, %struct._GCancellable*, i8*, ...) @_gimp_help_progress_start(%struct._GimpHelpProgress* %19, %struct._GCancellable* %20, i8* %call27, i8* %21)
  %22 = load %struct._GCancellable*, %struct._GCancellable** %cancellable, align 8
  %23 = bitcast %struct._GCancellable* %22 to i8*
  call void @g_object_unref(i8* %23)
  %24 = load i8*, i8** %name, align 8
  call void @g_free(i8* %24)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.24, %if.end.22
  %25 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %tobool29 = icmp ne %struct._GimpHelpProgress* %25, null
  br i1 %tobool29, label %if.then.30, label %if.end.37

if.then.30:                                       ; preds = %if.end.28
  %26 = load %struct._GFile*, %struct._GFile** %file, align 8
  %27 = load %struct._GCancellable*, %struct._GCancellable** %cancellable, align 8
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call31 = call %struct._GFileInfo* @g_file_query_info(%struct._GFile* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct._GCancellable* %27, %struct._GError** %28)
  store %struct._GFileInfo* %call31, %struct._GFileInfo** %info, align 8
  %29 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %tobool32 = icmp ne %struct._GFileInfo* %29, null
  br i1 %tobool32, label %if.end.35, label %if.then.33

if.then.33:                                       ; preds = %if.then.30
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0)) #2
  %31 = load %struct._GFile*, %struct._GFile** %file, align 8
  call void @locale_set_error(%struct._GError** %30, i8* %call34, %struct._GFile* %31)
  %32 = load %struct._GFile*, %struct._GFile** %file, align 8
  %33 = bitcast %struct._GFile* %32 to i8*
  call void @g_object_unref(i8* %33)
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.30
  %34 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %call36 = call i64 @g_file_info_get_size(%struct._GFileInfo* %34)
  store i64 %call36, i64* %size, align 8
  %35 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %36 = bitcast %struct._GFileInfo* %35 to i8*
  call void @g_object_unref(i8* %36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.35, %if.end.28
  %37 = load %struct._GFile*, %struct._GFile** %file, align 8
  %38 = load %struct._GCancellable*, %struct._GCancellable** %cancellable, align 8
  %39 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call38 = call %struct._GFileInputStream* @g_file_read(%struct._GFile* %37, %struct._GCancellable* %38, %struct._GError** %39)
  store %struct._GFileInputStream* %call38, %struct._GFileInputStream** %stream, align 8
  %40 = load %struct._GFileInputStream*, %struct._GFileInputStream** %stream, align 8
  %tobool39 = icmp ne %struct._GFileInputStream* %40, null
  br i1 %tobool39, label %if.end.42, label %if.then.40

if.then.40:                                       ; preds = %if.end.37
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0)) #2
  %42 = load %struct._GFile*, %struct._GFile** %file, align 8
  call void @locale_set_error(%struct._GError** %41, i8* %call41, %struct._GFile* %42)
  %43 = load %struct._GFile*, %struct._GFile** %file, align 8
  %44 = bitcast %struct._GFile* %43 to i8*
  call void @g_object_unref(i8* %44)
  store i32 0, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.37
  %45 = load %struct._GFile*, %struct._GFile** %file, align 8
  %file43 = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %parser, i32 0, i32 0
  store %struct._GFile* %45, %struct._GFile** %file43, align 8
  %call44 = call %struct._GString* @g_string_new(i8* null)
  %value = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %parser, i32 0, i32 5
  store %struct._GString* %call44, %struct._GString** %value, align 8
  %46 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %locale45 = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %parser, i32 0, i32 6
  store %struct._GimpHelpLocale* %46, %struct._GimpHelpLocale** %locale45, align 8
  %47 = load i8*, i8** %help_domain.addr, align 8
  %help_domain46 = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %parser, i32 0, i32 7
  store i8* %47, i8** %help_domain46, align 8
  %call47 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  %id_attr_name = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %parser, i32 0, i32 8
  store i8* %call47, i8** %id_attr_name, align 8
  %48 = bitcast %struct.LocaleParser* %parser to i8*
  %call48 = call %struct._GMarkupParseContext* @g_markup_parse_context_new(%struct._GMarkupParser* @markup_parser, i32 0, i8* %48, void (i8*)* null)
  store %struct._GMarkupParseContext* %call48, %struct._GMarkupParseContext** %context, align 8
  %49 = load %struct._GMarkupParseContext*, %struct._GMarkupParseContext** %context, align 8
  %50 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %51 = load %struct._GFileInputStream*, %struct._GFileInputStream** %stream, align 8
  %52 = bitcast %struct._GFileInputStream* %51 to %struct._GTypeInstance*
  %call49 = call i64 @g_input_stream_get_type() #7
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call49)
  %53 = bitcast %struct._GTypeInstance* %call50 to %struct._GInputStream*
  %54 = load i64, i64* %size, align 8
  %55 = load %struct._GCancellable*, %struct._GCancellable** %cancellable, align 8
  %56 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call51 = call i32 @locale_parser_parse(%struct._GMarkupParseContext* %49, %struct._GimpHelpProgress* %50, %struct._GInputStream* %53, i64 %54, %struct._GCancellable* %55, %struct._GError** %56)
  store i32 %call51, i32* %success, align 4
  %57 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %tobool52 = icmp ne %struct._GimpHelpProgress* %57, null
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.42
  %58 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  call void @_gimp_help_progress_finish(%struct._GimpHelpProgress* %58)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.42
  %59 = load %struct._GMarkupParseContext*, %struct._GMarkupParseContext** %context, align 8
  call void @g_markup_parse_context_free(%struct._GMarkupParseContext* %59)
  %60 = load %struct._GFileInputStream*, %struct._GFileInputStream** %stream, align 8
  %61 = bitcast %struct._GFileInputStream* %60 to i8*
  call void @g_object_unref(i8* %61)
  %value55 = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %parser, i32 0, i32 5
  %62 = load %struct._GString*, %struct._GString** %value55, align 8
  %call56 = call i8* @g_string_free(%struct._GString* %62, i32 1)
  %id_attr_name57 = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %parser, i32 0, i32 8
  %63 = load i8*, i8** %id_attr_name57, align 8
  call void @g_free(i8* %63)
  %64 = load i32, i32* %success, align 4
  %tobool58 = icmp ne i32 %64, 0
  br i1 %tobool58, label %if.end.61, label %if.then.59

if.then.59:                                       ; preds = %if.end.54
  %65 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0)) #2
  %66 = load %struct._GFile*, %struct._GFile** %file, align 8
  call void @locale_set_error(%struct._GError** %65, i8* %call60, %struct._GFile* %66)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %if.end.54
  %67 = load %struct._GFile*, %struct._GFile** %file, align 8
  %68 = bitcast %struct._GFile* %67 to i8*
  call void @g_object_unref(i8* %68)
  %69 = load i32, i32* %success, align 4
  store i32 %69, i32* %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.40, %if.then.33, %if.else.11, %if.else.4, %if.else
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare %struct._GFile* @g_file_new_for_uri(i8*) #1

declare i8* @g_file_get_parse_name(%struct._GFile*) #1

declare %struct._GCancellable* @g_cancellable_new() #1

declare hidden void @_gimp_help_progress_start(%struct._GimpHelpProgress*, %struct._GCancellable*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @g_object_unref(i8*) #1

declare %struct._GFileInfo* @g_file_query_info(%struct._GFile*, i8*, i32, %struct._GCancellable*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal void @locale_set_error(%struct._GError** %error, i8* %format, %struct._GFile* %file) #0 {
entry:
  %error.addr = alloca %struct._GError**, align 8
  %format.addr = alloca i8*, align 8
  %file.addr = alloca %struct._GFile*, align 8
  %name = alloca i8*, align 8
  %msg = alloca i8*, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct._GFile* %file, %struct._GFile** %file.addr, align 8
  %0 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool = icmp ne %struct._GError** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %2 = load %struct._GError*, %struct._GError** %1, align 8
  %tobool1 = icmp ne %struct._GError* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._GFile*, %struct._GFile** %file.addr, align 8
  %call = call i8* @g_file_get_parse_name(%struct._GFile* %3)
  store i8* %call, i8** %name, align 8
  %4 = load i8*, i8** %format.addr, align 8
  %5 = load i8*, i8** %name, align 8
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %7 = load %struct._GError*, %struct._GError** %6, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %7, i32 0, i32 2
  %8 = load i8*, i8** %message, align 8
  %call2 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %4, i8* %5, i8* %8)
  store i8* %call2, i8** %msg, align 8
  %9 = load i8*, i8** %name, align 8
  call void @g_free(i8* %9)
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %11 = load %struct._GError*, %struct._GError** %10, align 8
  %message3 = getelementptr inbounds %struct._GError, %struct._GError* %11, i32 0, i32 2
  %12 = load i8*, i8** %message3, align 8
  call void @g_free(i8* %12)
  %13 = load i8*, i8** %msg, align 8
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %message4 = getelementptr inbounds %struct._GError, %struct._GError* %15, i32 0, i32 2
  store i8* %13, i8** %message4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare i64 @g_file_info_get_size(%struct._GFileInfo*) #1

declare %struct._GFileInputStream* @g_file_read(%struct._GFile*, %struct._GCancellable*, %struct._GError**) #1

declare %struct._GString* @g_string_new(i8*) #1

declare %struct._GMarkupParseContext* @g_markup_parse_context_new(%struct._GMarkupParser*, i32, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @locale_parser_parse(%struct._GMarkupParseContext* %context, %struct._GimpHelpProgress* %progress, %struct._GInputStream* %stream, i64 %size, %struct._GCancellable* %cancellable, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %progress.addr = alloca %struct._GimpHelpProgress*, align 8
  %stream.addr = alloca %struct._GInputStream*, align 8
  %size.addr = alloca i64, align 8
  %cancellable.addr = alloca %struct._GCancellable*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %len = alloca i64, align 8
  %done = alloca i64, align 8
  %buffer = alloca [4096 x i8], align 16
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store %struct._GimpHelpProgress* %progress, %struct._GimpHelpProgress** %progress.addr, align 8
  store %struct._GInputStream* %stream, %struct._GInputStream** %stream.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store %struct._GCancellable* %cancellable, %struct._GCancellable** %cancellable.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i64 0, i64* %done, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load %struct._GInputStream*, %struct._GInputStream** %stream.addr, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %1 = load %struct._GCancellable*, %struct._GCancellable** %cancellable.addr, align 8
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call i64 @g_input_stream_read(%struct._GInputStream* %0, i8* %arraydecay, i64 4096, %struct._GCancellable* %1, %struct._GError** %2)
  store i64 %call, i64* %len, align 8
  %cmp = icmp ne i64 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %len, align 8
  switch i64 %3, label %sw.default [
    i64 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body
  %4 = load %struct._GMarkupParseContext*, %struct._GMarkupParseContext** %context.addr, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @g_markup_parse_context_end_parse(%struct._GMarkupParseContext* %4, %struct._GError** %5)
  store i32 %call1, i32* %retval
  br label %return

sw.default:                                       ; preds = %while.body
  %6 = load i64, i64* %len, align 8
  %7 = load i64, i64* %done, align 8
  %add = add nsw i64 %7, %6
  store i64 %add, i64* %done, align 8
  %8 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %tobool = icmp ne %struct._GimpHelpProgress* %8, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %sw.default
  %9 = load i64, i64* %size.addr, align 8
  %cmp2 = icmp sgt i64 %9, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %10 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %11 = load i64, i64* %done, align 8
  %conv = sitofp i64 %11 to double
  %12 = load i64, i64* %size.addr, align 8
  %conv4 = sitofp i64 %12 to double
  %div = fdiv double %conv, %conv4
  call void @_gimp_help_progress_update(%struct._GimpHelpProgress* %10, double %div)
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  call void @_gimp_help_progress_pulse(%struct._GimpHelpProgress* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %sw.default
  %14 = load %struct._GMarkupParseContext*, %struct._GMarkupParseContext** %context.addr, align 8
  %arraydecay6 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %15 = load i64, i64* %len, align 8
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @g_markup_parse_context_parse(%struct._GMarkupParseContext* %14, i8* %arraydecay6, i64 %15, %struct._GError** %16)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.9, %sw.bb
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @g_input_stream_get_type() #4

declare hidden void @_gimp_help_progress_finish(%struct._GimpHelpProgress*) #1

declare void @g_markup_parse_context_free(%struct._GMarkupParseContext*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @locale_parser_start_element(%struct._GMarkupParseContext* %context, i8* %element_name, i8** %attribute_names, i8** %attribute_values, i8* %user_data, %struct._GError** %error) #0 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %element_name.addr = alloca i8*, align 8
  %attribute_names.addr = alloca i8**, align 8
  %attribute_values.addr = alloca i8**, align 8
  %user_data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %parser = alloca %struct.LocaleParser*, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i8* %element_name, i8** %element_name.addr, align 8
  store i8** %attribute_names, i8*** %attribute_names.addr, align 8
  store i8** %attribute_values, i8*** %attribute_values.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.LocaleParser*
  store %struct.LocaleParser* %1, %struct.LocaleParser** %parser, align 8
  %2 = load %struct.LocaleParser*, %struct.LocaleParser** %parser, align 8
  %state = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %2, i32 0, i32 1
  %3 = load i32, i32* %state, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.15
    i32 3, label %sw.bb.15
    i32 4, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %4 = load i8*, i8** %element_name.addr, align 8
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %5 = load %struct.LocaleParser*, %struct.LocaleParser** %parser, align 8
  %state1 = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %5, i32 0, i32 1
  store i32 1, i32* %state1, align 4
  %6 = load %struct.LocaleParser*, %struct.LocaleParser** %parser, align 8
  %7 = load i8**, i8*** %attribute_names.addr, align 8
  %8 = load i8**, i8*** %attribute_values.addr, align 8
  call void @locale_parser_parse_namespace(%struct.LocaleParser* %6, i8** %7, i8** %8)
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %9 = load %struct.LocaleParser*, %struct.LocaleParser** %parser, align 8
  call void @locale_parser_start_unknown(%struct.LocaleParser* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %10 = load i8*, i8** %element_name.addr, align 8
  %call3 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0)) #8
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %sw.bb.2
  %11 = load %struct.LocaleParser*, %struct.LocaleParser** %parser, align 8
  %state6 = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %11, i32 0, i32 1
  store i32 2, i32* %state6, align 4
  %12 = load %struct.LocaleParser*, %struct.LocaleParser** %parser, align 8
  %13 = load i8**, i8*** %attribute_names.addr, align 8
  %14 = load i8**, i8*** %attribute_values.addr, align 8
  call void @locale_parser_parse_item(%struct.LocaleParser* %12, i8** %13, i8** %14)
  br label %if.end.14

if.else.7:                                        ; preds = %sw.bb.2
  %15 = load i8*, i8** %element_name.addr, align 8
  %call8 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0)) #8
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.else.7
  %16 = load %struct.LocaleParser*, %struct.LocaleParser** %parser, align 8
  %state11 = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %16, i32 0, i32 1
  store i32 3, i32* %state11, align 4
  %17 = load %struct.LocaleParser*, %struct.LocaleParser** %parser, align 8
  %18 = load i8**, i8*** %attribute_names.addr, align 8
  %19 = load i8**, i8*** %attribute_values.addr, align 8
  call void @locale_parser_parse_missing(%struct.LocaleParser* %17, i8** %18, i8** %19)
  br label %if.end.13

if.else.12:                                       ; preds = %if.else.7
  %20 = load %struct.LocaleParser*, %struct.LocaleParser** %parser, align 8
  call void @locale_parser_start_unknown(%struct.LocaleParser* %20)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.5
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry, %entry, %entry
  %21 = load %struct.LocaleParser*, %struct.LocaleParser** %parser, align 8
  call void @locale_parser_start_unknown(%struct.LocaleParser* %21)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.15, %if.end.14, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @locale_parser_end_element(%struct._GMarkupParseContext* %context, i8* %element_name, i8* %user_data, %struct._GError** %error) #0 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %element_name.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %parser = alloca %struct.LocaleParser*, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i8* %element_name, i8** %element_name.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.LocaleParser*
  store %struct.LocaleParser* %1, %struct.LocaleParser** %parser, align 8
  %2 = load %struct.LocaleParser*, %struct.LocaleParser** %parser, align 8
  %state = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %2, i32 0, i32 1
  %3 = load i32, i32* %state, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct.LocaleParser*, %struct.LocaleParser** %parser, align 8
  %state2 = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %4, i32 0, i32 1
  store i32 0, i32* %state2, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry, %entry
  %5 = load %struct.LocaleParser*, %struct.LocaleParser** %parser, align 8
  %state4 = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %5, i32 0, i32 1
  store i32 1, i32* %state4, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %6 = load %struct.LocaleParser*, %struct.LocaleParser** %parser, align 8
  call void @locale_parser_end_unknown(%struct.LocaleParser* %6)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @locale_parser_error(%struct._GMarkupParseContext* %context, %struct._GError* %error, i8* %user_data) #0 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %error.addr = alloca %struct._GError*, align 8
  %user_data.addr = alloca i8*, align 8
  %parser = alloca %struct.LocaleParser*, align 8
  %name = alloca i8*, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store %struct._GError* %error, %struct._GError** %error.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.LocaleParser*
  store %struct.LocaleParser* %1, %struct.LocaleParser** %parser, align 8
  %2 = load %struct.LocaleParser*, %struct.LocaleParser** %parser, align 8
  %file = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %2, i32 0, i32 0
  %3 = load %struct._GFile*, %struct._GFile** %file, align 8
  %call = call i8* @g_file_get_parse_name(%struct._GFile* %3)
  store i8* %call, i8** %name, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GError*, %struct._GError** %error.addr, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %5, i32 0, i32 2
  %6 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i8* %4, i8* %6)
  %7 = load i8*, i8** %name, align 8
  call void @g_free(i8* %7)
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal void @locale_parser_parse_namespace(%struct.LocaleParser* %parser, i8** %names, i8** %values) #0 {
entry:
  %parser.addr = alloca %struct.LocaleParser*, align 8
  %names.addr = alloca i8**, align 8
  %values.addr = alloca i8**, align 8
  store %struct.LocaleParser* %parser, %struct.LocaleParser** %parser.addr, align 8
  store i8** %names, i8*** %names.addr, align 8
  store i8** %values, i8*** %values.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8**, i8*** %names.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %values.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %tobool1 = icmp ne i8* %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %tobool1, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i8**, i8*** %names.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %call = call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i64 6) #8
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %7 = load i8**, i8*** %values.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.LocaleParser*, %struct.LocaleParser** %parser.addr, align 8
  %help_domain = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %9, i32 0, i32 7
  %10 = load i8*, i8** %help_domain, align 8
  %call3 = call i32 @strcmp(i8* %8, i8* %10) #8
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.LocaleParser*, %struct.LocaleParser** %parser.addr, align 8
  %id_attr_name = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %11, i32 0, i32 8
  %12 = load i8*, i8** %id_attr_name, align 8
  call void @g_free(i8* %12)
  %13 = load i8**, i8*** %names.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 6
  %call5 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* %add.ptr)
  %15 = load %struct.LocaleParser*, %struct.LocaleParser** %parser.addr, align 8
  %id_attr_name6 = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %15, i32 0, i32 8
  store i8* %call5, i8** %id_attr_name6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i8**, i8*** %names.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %incdec.ptr, i8*** %names.addr, align 8
  %17 = load i8**, i8*** %values.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %incdec.ptr7, i8*** %values.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @locale_parser_start_unknown(%struct.LocaleParser* %parser) #0 {
entry:
  %parser.addr = alloca %struct.LocaleParser*, align 8
  store %struct.LocaleParser* %parser, %struct.LocaleParser** %parser.addr, align 8
  %0 = load %struct.LocaleParser*, %struct.LocaleParser** %parser.addr, align 8
  %unknown_depth = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %0, i32 0, i32 4
  %1 = load i32, i32* %unknown_depth, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.LocaleParser*, %struct.LocaleParser** %parser.addr, align 8
  %state = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %2, i32 0, i32 1
  %3 = load i32, i32* %state, align 4
  %4 = load %struct.LocaleParser*, %struct.LocaleParser** %parser.addr, align 8
  %last_known_state = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %4, i32 0, i32 2
  store i32 %3, i32* %last_known_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.LocaleParser*, %struct.LocaleParser** %parser.addr, align 8
  %state1 = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %5, i32 0, i32 1
  store i32 4, i32* %state1, align 4
  %6 = load %struct.LocaleParser*, %struct.LocaleParser** %parser.addr, align 8
  %unknown_depth2 = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %6, i32 0, i32 4
  %7 = load i32, i32* %unknown_depth2, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %unknown_depth2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @locale_parser_parse_item(%struct.LocaleParser* %parser, i8** %names, i8** %values) #0 {
entry:
  %parser.addr = alloca %struct.LocaleParser*, align 8
  %names.addr = alloca i8**, align 8
  %values.addr = alloca i8**, align 8
  %id = alloca i8*, align 8
  %ref = alloca i8*, align 8
  %title = alloca i8*, align 8
  %sort = alloca i8*, align 8
  %parent = alloca i8*, align 8
  store %struct.LocaleParser* %parser, %struct.LocaleParser** %parser.addr, align 8
  store i8** %names, i8*** %names.addr, align 8
  store i8** %values, i8*** %values.addr, align 8
  store i8* null, i8** %id, align 8
  store i8* null, i8** %ref, align 8
  store i8* null, i8** %title, align 8
  store i8* null, i8** %sort, align 8
  store i8* null, i8** %parent, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8**, i8*** %names.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %values.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %tobool1 = icmp ne i8* %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %tobool1, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i8**, i8*** %names.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load %struct.LocaleParser*, %struct.LocaleParser** %parser.addr, align 8
  %id_attr_name = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %7, i32 0, i32 8
  %8 = load i8*, i8** %id_attr_name, align 8
  %call = call i32 @strcmp(i8* %6, i8* %8) #8
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %9 = load i8**, i8*** %values.addr, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %id, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %11 = load i8**, i8*** %names.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %call3 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)) #8
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %13 = load i8**, i8*** %values.addr, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %ref, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %15 = load i8**, i8*** %names.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %call7 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #8
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  %17 = load i8**, i8*** %values.addr, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %title, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.6
  %19 = load i8**, i8*** %names.addr, align 8
  %20 = load i8*, i8** %19, align 8
  %call11 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)) #8
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  %21 = load i8**, i8*** %values.addr, align 8
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %sort, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.10
  %23 = load i8**, i8*** %names.addr, align 8
  %24 = load i8*, i8** %23, align 8
  %call15 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)) #8
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  %25 = load i8**, i8*** %values.addr, align 8
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %parent, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %27 = load i8**, i8*** %names.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %27, i32 1
  store i8** %incdec.ptr, i8*** %names.addr, align 8
  %28 = load i8**, i8*** %values.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %incdec.ptr19, i8*** %values.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %29 = load i8*, i8** %id, align 8
  %tobool20 = icmp ne i8* %29, null
  br i1 %tobool20, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %for.end
  %30 = load i8*, i8** %ref, align 8
  %tobool21 = icmp ne i8* %30, null
  br i1 %tobool21, label %if.then.22, label %if.end.34

if.then.22:                                       ; preds = %land.lhs.true
  %31 = load %struct.LocaleParser*, %struct.LocaleParser** %parser.addr, align 8
  %locale = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %31, i32 0, i32 6
  %32 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale, align 8
  %help_id_mapping = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %32, i32 0, i32 1
  %33 = load %struct._GHashTable*, %struct._GHashTable** %help_id_mapping, align 8
  %tobool23 = icmp ne %struct._GHashTable* %33, null
  br i1 %tobool23, label %if.end.28, label %if.then.24

if.then.24:                                       ; preds = %if.then.22
  %call25 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* bitcast (void (%struct._GimpHelpItem*)* @gimp_help_item_free to void (i8*)*))
  %34 = load %struct.LocaleParser*, %struct.LocaleParser** %parser.addr, align 8
  %locale26 = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %34, i32 0, i32 6
  %35 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale26, align 8
  %help_id_mapping27 = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %35, i32 0, i32 1
  store %struct._GHashTable* %call25, %struct._GHashTable** %help_id_mapping27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.24, %if.then.22
  %36 = load %struct.LocaleParser*, %struct.LocaleParser** %parser.addr, align 8
  %locale29 = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %36, i32 0, i32 6
  %37 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale29, align 8
  %help_id_mapping30 = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %37, i32 0, i32 1
  %38 = load %struct._GHashTable*, %struct._GHashTable** %help_id_mapping30, align 8
  %39 = load i8*, i8** %id, align 8
  %call31 = call noalias i8* @g_strdup(i8* %39)
  %40 = load i8*, i8** %ref, align 8
  %41 = load i8*, i8** %title, align 8
  %42 = load i8*, i8** %sort, align 8
  %43 = load i8*, i8** %parent, align 8
  %call32 = call %struct._GimpHelpItem* @gimp_help_item_new(i8* %40, i8* %41, i8* %42, i8* %43)
  %44 = bitcast %struct._GimpHelpItem* %call32 to i8*
  %call33 = call i32 @g_hash_table_insert(%struct._GHashTable* %38, i8* %call31, i8* %44)
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.28, %land.lhs.true, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @locale_parser_parse_missing(%struct.LocaleParser* %parser, i8** %names, i8** %values) #0 {
entry:
  %parser.addr = alloca %struct.LocaleParser*, align 8
  %names.addr = alloca i8**, align 8
  %values.addr = alloca i8**, align 8
  %ref = alloca i8*, align 8
  store %struct.LocaleParser* %parser, %struct.LocaleParser** %parser.addr, align 8
  store i8** %names, i8*** %names.addr, align 8
  store i8** %values, i8*** %values.addr, align 8
  store i8* null, i8** %ref, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8**, i8*** %names.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %values.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %tobool1 = icmp ne i8* %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %tobool1, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i8**, i8*** %names.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %call = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)) #8
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %7 = load i8**, i8*** %values.addr, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %ref, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i8**, i8*** %names.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %9, i32 1
  store i8** %incdec.ptr, i8*** %names.addr, align 8
  %10 = load i8**, i8*** %values.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %incdec.ptr3, i8*** %values.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load i8*, i8** %ref, align 8
  %tobool4 = icmp ne i8* %11, null
  br i1 %tobool4, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %for.end
  %12 = load %struct.LocaleParser*, %struct.LocaleParser** %parser.addr, align 8
  %locale = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %12, i32 0, i32 6
  %13 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale, align 8
  %help_missing = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %13, i32 0, i32 2
  %14 = load i8*, i8** %help_missing, align 8
  %cmp = icmp eq i8* %14, null
  br i1 %cmp, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %land.lhs.true
  %15 = load i8*, i8** %ref, align 8
  %call6 = call noalias i8* @g_strdup(i8* %15)
  %16 = load %struct.LocaleParser*, %struct.LocaleParser** %parser.addr, align 8
  %locale7 = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %16, i32 0, i32 6
  %17 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale7, align 8
  %help_missing8 = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %17, i32 0, i32 2
  store i8* %call6, i8** %help_missing8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %land.lhs.true, %for.end
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

declare void @gimp_help_item_free(%struct._GimpHelpItem*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare %struct._GimpHelpItem* @gimp_help_item_new(i8*, i8*, i8*, i8*) #1

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
  call void @g_logv(i8* null, i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @locale_parser_end_unknown(%struct.LocaleParser* %parser) #0 {
entry:
  %parser.addr = alloca %struct.LocaleParser*, align 8
  store %struct.LocaleParser* %parser, %struct.LocaleParser** %parser.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.LocaleParser*, %struct.LocaleParser** %parser.addr, align 8
  %unknown_depth = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %0, i32 0, i32 4
  %1 = load i32, i32* %unknown_depth, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %2 = load %struct.LocaleParser*, %struct.LocaleParser** %parser.addr, align 8
  %state = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %2, i32 0, i32 1
  %3 = load i32, i32* %state, align 4
  %cmp1 = icmp eq i32 %3, 4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i32 476, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.locale_parser_end_unknown, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.20, i32 0, i32 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct.LocaleParser*, %struct.LocaleParser** %parser.addr, align 8
  %unknown_depth2 = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %4, i32 0, i32 4
  %5 = load i32, i32* %unknown_depth2, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %unknown_depth2, align 4
  %6 = load %struct.LocaleParser*, %struct.LocaleParser** %parser.addr, align 8
  %unknown_depth3 = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %6, i32 0, i32 4
  %7 = load i32, i32* %unknown_depth3, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %do.end
  %8 = load %struct.LocaleParser*, %struct.LocaleParser** %parser.addr, align 8
  %last_known_state = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %8, i32 0, i32 2
  %9 = load i32, i32* %last_known_state, align 4
  %10 = load %struct.LocaleParser*, %struct.LocaleParser** %parser.addr, align 8
  %state6 = getelementptr inbounds %struct.LocaleParser, %struct.LocaleParser* %10, i32 0, i32 1
  store i32 %9, i32* %state6, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %do.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

declare void @g_printerr(i8*, ...) #1

declare i64 @g_input_stream_read(%struct._GInputStream*, i8*, i64, %struct._GCancellable*, %struct._GError**) #1

declare i32 @g_markup_parse_context_end_parse(%struct._GMarkupParseContext*, %struct._GError**) #1

declare hidden void @_gimp_help_progress_update(%struct._GimpHelpProgress*, double) #1

declare hidden void @_gimp_help_progress_pulse(%struct._GimpHelpProgress*) #1

declare i32 @g_markup_parse_context_parse(%struct._GMarkupParseContext*, i8*, i64, %struct._GError**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
