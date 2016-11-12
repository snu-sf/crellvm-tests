; ModuleID = './plug-ins/help/gimphelpdomain.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpHelpDomain = type { i8*, i8*, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GimpHelpLocale = type { i8*, %struct._GHashTable*, i8*, %struct._GList* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpHelpProgress = type opaque
%struct._GError = type { i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@__func__.gimp_help_domain_free = private unnamed_addr constant [22 x i8] c"gimp_help_domain_free\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"domain != NULL\00", align 1
@__func__.gimp_help_domain_map = private unnamed_addr constant [21 x i8] c"gimp_help_domain_map\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"help_locales != NULL\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"help_id != NULL\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"The help pages for '%s' are not available.\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s\0A\0A%s\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"The GIMP user manual is not available.\00", align 1
@.str.8 = private unnamed_addr constant [99 x i8] c"Please install the additional help package or use the online user manual at: http://docs.gimp.org/\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"Perhaps you are missing GIO backends and need to install GVFS?\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Help ID '%s' unknown\00", align 1
@__func__.domain_locale_parse = private unnamed_addr constant [20 x i8] c"domain_locale_parse\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"locale != NULL\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"%s/%s/gimp-help.xml\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpHelpDomain* @gimp_help_domain_new(i8* %domain_name, i8* %domain_uri) #0 {
entry:
  %domain_name.addr = alloca i8*, align 8
  %domain_uri.addr = alloca i8*, align 8
  %domain = alloca %struct._GimpHelpDomain*, align 8
  store i8* %domain_name, i8** %domain_name.addr, align 8
  store i8* %domain_uri, i8** %domain_uri.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 24)
  %0 = bitcast i8* %call to %struct._GimpHelpDomain*
  store %struct._GimpHelpDomain* %0, %struct._GimpHelpDomain** %domain, align 8
  %1 = load i8*, i8** %domain_name.addr, align 8
  %call1 = call noalias i8* @g_strdup(i8* %1)
  %2 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain, align 8
  %help_domain = getelementptr inbounds %struct._GimpHelpDomain, %struct._GimpHelpDomain* %2, i32 0, i32 0
  store i8* %call1, i8** %help_domain, align 8
  %3 = load i8*, i8** %domain_uri.addr, align 8
  %call2 = call noalias i8* @g_strdup(i8* %3)
  %4 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain, align 8
  %help_uri = getelementptr inbounds %struct._GimpHelpDomain, %struct._GimpHelpDomain* %4, i32 0, i32 1
  store i8* %call2, i8** %help_uri, align 8
  %5 = load i8*, i8** %domain_uri.addr, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain, align 8
  %help_uri3 = getelementptr inbounds %struct._GimpHelpDomain, %struct._GimpHelpDomain* %6, i32 0, i32 1
  %7 = load i8*, i8** %help_uri3, align 8
  %call4 = call i32 @g_str_has_suffix(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %8 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain, align 8
  %help_uri7 = getelementptr inbounds %struct._GimpHelpDomain, %struct._GimpHelpDomain* %8, i32 0, i32 1
  %9 = load i8*, i8** %help_uri7, align 8
  %call8 = call i64 @strlen(i8* %9) #5
  %sub = sub i64 %call8, 1
  %10 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain, align 8
  %help_uri9 = getelementptr inbounds %struct._GimpHelpDomain, %struct._GimpHelpDomain* %10, i32 0, i32 1
  %11 = load i8*, i8** %help_uri9, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %12 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain, align 8
  ret %struct._GimpHelpDomain* %12
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare i32 @g_str_has_suffix(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define void @gimp_help_domain_free(%struct._GimpHelpDomain* %domain) #0 {
entry:
  %domain.addr = alloca %struct._GimpHelpDomain*, align 8
  store %struct._GimpHelpDomain* %domain, %struct._GimpHelpDomain** %domain.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %cmp = icmp ne %struct._GimpHelpDomain* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_help_domain_free, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  br label %do.end.5

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %help_locales = getelementptr inbounds %struct._GimpHelpDomain, %struct._GimpHelpDomain* %1, i32 0, i32 2
  %2 = load %struct._GHashTable*, %struct._GHashTable** %help_locales, align 8
  %tobool = icmp ne %struct._GHashTable* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %do.end
  %3 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %help_locales2 = getelementptr inbounds %struct._GimpHelpDomain, %struct._GimpHelpDomain* %3, i32 0, i32 2
  %4 = load %struct._GHashTable*, %struct._GHashTable** %help_locales2, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %4)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %do.end
  %5 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %help_domain = getelementptr inbounds %struct._GimpHelpDomain, %struct._GimpHelpDomain* %5, i32 0, i32 0
  %6 = load i8*, i8** %help_domain, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %help_uri = getelementptr inbounds %struct._GimpHelpDomain, %struct._GimpHelpDomain* %7, i32 0, i32 1
  %8 = load i8*, i8** %help_uri, align 8
  call void @g_free(i8* %8)
  br label %do.body.4

do.body.4:                                        ; preds = %if.end.3
  %9 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %10 = bitcast %struct._GimpHelpDomain* %9 to i8*
  call void @g_slice_free1(i64 24, i8* %10)
  br label %do.end.5

do.end.5:                                         ; preds = %if.else, %do.body.4
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_hash_table_destroy(%struct._GHashTable*) #1

declare void @g_free(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpHelpLocale* @gimp_help_domain_lookup_locale(%struct._GimpHelpDomain* %domain, i8* %locale_id, %struct._GimpHelpProgress* %progress) #0 {
entry:
  %retval = alloca %struct._GimpHelpLocale*, align 8
  %domain.addr = alloca %struct._GimpHelpDomain*, align 8
  %locale_id.addr = alloca i8*, align 8
  %progress.addr = alloca %struct._GimpHelpProgress*, align 8
  %locale = alloca %struct._GimpHelpLocale*, align 8
  store %struct._GimpHelpDomain* %domain, %struct._GimpHelpDomain** %domain.addr, align 8
  store i8* %locale_id, i8** %locale_id.addr, align 8
  store %struct._GimpHelpProgress* %progress, %struct._GimpHelpProgress** %progress.addr, align 8
  store %struct._GimpHelpLocale* null, %struct._GimpHelpLocale** %locale, align 8
  %0 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %help_locales = getelementptr inbounds %struct._GimpHelpDomain, %struct._GimpHelpDomain* %0, i32 0, i32 2
  %1 = load %struct._GHashTable*, %struct._GHashTable** %help_locales, align 8
  %tobool = icmp ne %struct._GHashTable* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %help_locales1 = getelementptr inbounds %struct._GimpHelpDomain, %struct._GimpHelpDomain* %2, i32 0, i32 2
  %3 = load %struct._GHashTable*, %struct._GHashTable** %help_locales1, align 8
  %4 = load i8*, i8** %locale_id.addr, align 8
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %3, i8* %4)
  %5 = bitcast i8* %call to %struct._GimpHelpLocale*
  store %struct._GimpHelpLocale* %5, %struct._GimpHelpLocale** %locale, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* bitcast (void (%struct._GimpHelpLocale*)* @gimp_help_locale_free to void (i8*)*))
  %6 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %help_locales3 = getelementptr inbounds %struct._GimpHelpDomain, %struct._GimpHelpDomain* %6, i32 0, i32 2
  store %struct._GHashTable* %call2, %struct._GHashTable** %help_locales3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale, align 8
  %tobool4 = icmp ne %struct._GimpHelpLocale* %7, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %8 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale, align 8
  store %struct._GimpHelpLocale* %8, %struct._GimpHelpLocale** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %9 = load i8*, i8** %locale_id.addr, align 8
  %call7 = call %struct._GimpHelpLocale* @gimp_help_locale_new(i8* %9)
  store %struct._GimpHelpLocale* %call7, %struct._GimpHelpLocale** %locale, align 8
  %10 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %help_locales8 = getelementptr inbounds %struct._GimpHelpDomain, %struct._GimpHelpDomain* %10, i32 0, i32 2
  %11 = load %struct._GHashTable*, %struct._GHashTable** %help_locales8, align 8
  %12 = load i8*, i8** %locale_id.addr, align 8
  %call9 = call noalias i8* @g_strdup(i8* %12)
  %13 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale, align 8
  %14 = bitcast %struct._GimpHelpLocale* %13 to i8*
  %call10 = call i32 @g_hash_table_insert(%struct._GHashTable* %11, i8* %call9, i8* %14)
  %15 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %16 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale, align 8
  %17 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %call11 = call i32 @domain_locale_parse(%struct._GimpHelpDomain* %15, %struct._GimpHelpLocale* %16, %struct._GimpHelpProgress* %17, %struct._GError** null)
  %18 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale, align 8
  store %struct._GimpHelpLocale* %18, %struct._GimpHelpLocale** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5
  %19 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %retval
  ret %struct._GimpHelpLocale* %19
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

declare void @gimp_help_locale_free(%struct._GimpHelpLocale*) #1

declare %struct._GimpHelpLocale* @gimp_help_locale_new(i8*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @domain_locale_parse(%struct._GimpHelpDomain* %domain, %struct._GimpHelpLocale* %locale, %struct._GimpHelpProgress* %progress, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %domain.addr = alloca %struct._GimpHelpDomain*, align 8
  %locale.addr = alloca %struct._GimpHelpLocale*, align 8
  %progress.addr = alloca %struct._GimpHelpProgress*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %uri = alloca i8*, align 8
  %success = alloca i32, align 4
  store %struct._GimpHelpDomain* %domain, %struct._GimpHelpDomain** %domain.addr, align 8
  store %struct._GimpHelpLocale* %locale, %struct._GimpHelpLocale** %locale.addr, align 8
  store %struct._GimpHelpProgress* %progress, %struct._GimpHelpProgress** %progress.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %cmp = icmp ne %struct._GimpHelpDomain* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.domain_locale_parse, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %cmp2 = icmp ne %struct._GimpHelpLocale* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.domain_locale_parse, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.domain_locale_parse, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  %5 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %help_uri = getelementptr inbounds %struct._GimpHelpDomain, %struct._GimpHelpDomain* %5, i32 0, i32 1
  %6 = load i8*, i8** %help_uri, align 8
  %7 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %locale_id = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %7, i32 0, i32 0
  %8 = load i8*, i8** %locale_id, align 8
  %call = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* %6, i8* %8)
  store i8* %call, i8** %uri, align 8
  %9 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale.addr, align 8
  %10 = load i8*, i8** %uri, align 8
  %11 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %help_domain = getelementptr inbounds %struct._GimpHelpDomain, %struct._GimpHelpDomain* %11, i32 0, i32 0
  %12 = load i8*, i8** %help_domain, align 8
  %13 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call14 = call i32 @gimp_help_locale_parse(%struct._GimpHelpLocale* %9, i8* %10, i8* %12, %struct._GimpHelpProgress* %13, %struct._GError** %14)
  store i32 %call14, i32* %success, align 4
  %15 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %15)
  %16 = load i32, i32* %success, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end.13, %if.else.11, %if.else.4, %if.else
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i8* @gimp_help_domain_map(%struct._GimpHelpDomain* %domain, %struct._GList* %help_locales, i8* %help_id, %struct._GimpHelpProgress* %progress, %struct._GimpHelpLocale** %ret_locale, i32* %fatal_error) #0 {
entry:
  %retval = alloca i8*, align 8
  %domain.addr = alloca %struct._GimpHelpDomain*, align 8
  %help_locales.addr = alloca %struct._GList*, align 8
  %help_id.addr = alloca i8*, align 8
  %progress.addr = alloca %struct._GimpHelpProgress*, align 8
  %ret_locale.addr = alloca %struct._GimpHelpLocale**, align 8
  %fatal_error.addr = alloca i32*, align 8
  %locale = alloca %struct._GimpHelpLocale*, align 8
  %ref = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GimpHelpDomain* %domain, %struct._GimpHelpDomain** %domain.addr, align 8
  store %struct._GList* %help_locales, %struct._GList** %help_locales.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store %struct._GimpHelpProgress* %progress, %struct._GimpHelpProgress** %progress.addr, align 8
  store %struct._GimpHelpLocale** %ret_locale, %struct._GimpHelpLocale*** %ret_locale.addr, align 8
  store i32* %fatal_error, i32** %fatal_error.addr, align 8
  store %struct._GimpHelpLocale* null, %struct._GimpHelpLocale** %locale, align 8
  store i8* null, i8** %ref, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %cmp = icmp ne %struct._GimpHelpDomain* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_help_domain_map, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GList*, %struct._GList** %help_locales.addr, align 8
  %cmp2 = icmp ne %struct._GList* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_help_domain_map, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i8*, i8** %help_id.addr, align 8
  %cmp8 = icmp ne i8* %2, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_help_domain_map, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %3 = load i32*, i32** %fatal_error.addr, align 8
  %tobool = icmp ne i32* %3, null
  br i1 %tobool, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end.12
  %4 = load i32*, i32** %fatal_error.addr, align 8
  store i32 0, i32* %4, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %do.end.12
  %5 = load %struct._GList*, %struct._GList** %help_locales.addr, align 8
  store %struct._GList* %5, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool15 = icmp ne %struct._GList* %6, null
  br i1 %tobool15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load i8*, i8** %ref, align 8
  %tobool16 = icmp ne i8* %7, null
  %lnot = xor i1 %tobool16, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %9 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8
  %12 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %call = call %struct._GimpHelpLocale* @gimp_help_domain_lookup_locale(%struct._GimpHelpDomain* %9, i8* %11, %struct._GimpHelpProgress* %12)
  store %struct._GimpHelpLocale* %call, %struct._GimpHelpLocale** %locale, align 8
  %13 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale, align 8
  %14 = load i8*, i8** %help_id.addr, align 8
  %call17 = call i8* @gimp_help_locale_map(%struct._GimpHelpLocale* %13, i8* %14)
  store i8* %call17, i8** %ref, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 1
  %16 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %16, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %17 = load %struct._GList*, %struct._GList** %help_locales.addr, align 8
  store %struct._GList* %17, %struct._GList** %list, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.27, %for.end
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool19 = icmp ne %struct._GList* %18, null
  br i1 %tobool19, label %land.rhs.20, label %land.end.23

land.rhs.20:                                      ; preds = %for.cond.18
  %19 = load i8*, i8** %ref, align 8
  %tobool21 = icmp ne i8* %19, null
  %lnot22 = xor i1 %tobool21, true
  br label %land.end.23

land.end.23:                                      ; preds = %land.rhs.20, %for.cond.18
  %20 = phi i1 [ false, %for.cond.18 ], [ %lnot22, %land.rhs.20 ]
  br i1 %20, label %for.body.24, label %for.end.29

for.body.24:                                      ; preds = %land.end.23
  %21 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %data25 = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 0
  %23 = load i8*, i8** %data25, align 8
  %24 = load %struct._GimpHelpProgress*, %struct._GimpHelpProgress** %progress.addr, align 8
  %call26 = call %struct._GimpHelpLocale* @gimp_help_domain_lookup_locale(%struct._GimpHelpDomain* %21, i8* %23, %struct._GimpHelpProgress* %24)
  store %struct._GimpHelpLocale* %call26, %struct._GimpHelpLocale** %locale, align 8
  %25 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale, align 8
  %help_missing = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %25, i32 0, i32 2
  %26 = load i8*, i8** %help_missing, align 8
  store i8* %26, i8** %ref, align 8
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.24
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %next28 = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 1
  %28 = load %struct._GList*, %struct._GList** %next28, align 8
  store %struct._GList* %28, %struct._GList** %list, align 8
  br label %for.cond.18

for.end.29:                                       ; preds = %land.end.23
  %29 = load %struct._GimpHelpLocale**, %struct._GimpHelpLocale*** %ret_locale.addr, align 8
  %tobool30 = icmp ne %struct._GimpHelpLocale** %29, null
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.end.29
  %30 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale, align 8
  %31 = load %struct._GimpHelpLocale**, %struct._GimpHelpLocale*** %ret_locale.addr, align 8
  store %struct._GimpHelpLocale* %30, %struct._GimpHelpLocale** %31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %for.end.29
  %32 = load i8*, i8** %ref, align 8
  %tobool33 = icmp ne i8* %32, null
  br i1 %tobool33, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.end.32
  %33 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %help_uri = getelementptr inbounds %struct._GimpHelpDomain, %struct._GimpHelpDomain* %33, i32 0, i32 1
  %34 = load i8*, i8** %help_uri, align 8
  %35 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale, align 8
  %locale_id = getelementptr inbounds %struct._GimpHelpLocale, %struct._GimpHelpLocale* %35, i32 0, i32 0
  %36 = load i8*, i8** %locale_id, align 8
  %37 = load i8*, i8** %ref, align 8
  %call35 = call noalias i8* (i8*, ...) @g_strconcat(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* %37, i8* null)
  store i8* %call35, i8** %retval
  br label %return

if.else.36:                                       ; preds = %if.end.32
  store %struct._GError* null, %struct._GError** %error, align 8
  %38 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %call37 = call %struct._GimpHelpLocale* @gimp_help_domain_lookup_locale(%struct._GimpHelpDomain* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), %struct._GimpHelpProgress* null)
  store %struct._GimpHelpLocale* %call37, %struct._GimpHelpLocale** %locale, align 8
  %39 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %40 = load %struct._GimpHelpLocale*, %struct._GimpHelpLocale** %locale, align 8
  %call38 = call i32 @domain_locale_parse(%struct._GimpHelpDomain* %39, %struct._GimpHelpLocale* %40, %struct._GimpHelpProgress* null, %struct._GError** %error)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.else.56, label %if.then.40

if.then.40:                                       ; preds = %if.else.36
  %41 = load %struct._GError*, %struct._GError** %error, align 8
  %code = getelementptr inbounds %struct._GError, %struct._GError* %41, i32 0, i32 1
  %42 = load i32, i32* %code, align 4
  switch i32 %42, label %sw.default [
    i32 1, label %sw.bb
    i32 15, label %sw.bb.49
    i32 19, label %sw.bb.51
  ]

sw.bb:                                            ; preds = %if.then.40
  %43 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %help_domain = getelementptr inbounds %struct._GimpHelpDomain, %struct._GimpHelpDomain* %43, i32 0, i32 0
  %44 = load i8*, i8** %help_domain, align 8
  %tobool41 = icmp ne i8* %44, null
  br i1 %tobool41, label %if.then.42, label %if.else.45

if.then.42:                                       ; preds = %sw.bb
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0)) #4
  %45 = load %struct._GimpHelpDomain*, %struct._GimpHelpDomain** %domain.addr, align 8
  %help_domain44 = getelementptr inbounds %struct._GimpHelpDomain, %struct._GimpHelpDomain* %45, i32 0, i32 0
  %46 = load i8*, i8** %help_domain44, align 8
  call void (i8*, ...) @g_message(i8* %call43, i8* %46)
  br label %if.end.48

if.else.45:                                       ; preds = %sw.bb
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0)) #4
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.8, i32 0, i32 0)) #4
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %call46, i8* %call47)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.42
  br label %sw.epilog

sw.bb.49:                                         ; preds = %if.then.40
  %47 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %47, i32 0, i32 2
  %48 = load i8*, i8** %message, align 8
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i32 0, i32 0)) #4
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %48, i8* %call50)
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.then.40
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.40
  %49 = load %struct._GError*, %struct._GError** %error, align 8
  %message52 = getelementptr inbounds %struct._GError, %struct._GError* %49, i32 0, i32 2
  %50 = load i8*, i8** %message52, align 8
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %50)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.51, %sw.bb.49, %if.end.48
  %51 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %51)
  %52 = load i32*, i32** %fatal_error.addr, align 8
  %tobool53 = icmp ne i32* %52, null
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %sw.epilog
  %53 = load i32*, i32** %fatal_error.addr, align 8
  store i32 1, i32* %53, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %sw.epilog
  br label %if.end.58

if.else.56:                                       ; preds = %if.else.36
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0)) #4
  %54 = load i8*, i8** %help_id.addr, align 8
  call void (i8*, ...) @g_message(i8* %call57, i8* %54)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.end.55
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.then.34, %if.else.10, %if.else.4, %if.else
  %55 = load i8*, i8** %retval
  ret i8* %55
}

declare i8* @gimp_help_locale_map(%struct._GimpHelpLocale*, i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @g_error_free(%struct._GError*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @gimp_help_locale_parse(%struct._GimpHelpLocale*, i8*, i8*, %struct._GimpHelpProgress*, %struct._GError**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
