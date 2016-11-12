; ModuleID = './app/core/gimp-utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeQuery = type { i64, i8*, i32, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GHashTable = type opaque
%struct.HashMemsize = type { i64 (i8*, i64*)*, i64, i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpArray = type { i8*, i64, i32 }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GParameter = type { i8*, %struct._GValue }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%union._GTypeCValue = type { i64 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
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
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GError = type { i32, i32, i8* }
%struct._GString = type { i8*, i64, i64 }
%struct._GimpVector2 = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_g_hash_table_get_memsize_foreach = private unnamed_addr constant [38 x i8] c"gimp_g_hash_table_get_memsize_foreach\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"func != NULL\00", align 1
@__func__.gimp_g_slist_get_memsize_foreach = private unnamed_addr constant [33 x i8] c"gimp_g_slist_get_memsize_foreach\00", align 1
@__func__.gimp_g_list_get_memsize_foreach = private unnamed_addr constant [32 x i8] c"gimp_g_list_get_memsize_foreach\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: unhandled boxed value type: %s\0A\00", align 1
@__func__.gimp_g_value_get_memsize = private unnamed_addr constant [25 x i8] c"gimp_g_value_get_memsize\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"%s: unhandled object value type: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"LC_MESSAGES\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"unsupported category used with gimp_get_default_language()\00", align 1
@__func__.gimp_parameters_append = private unnamed_addr constant [23 x i8] c"gimp_parameters_append\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"g_type_is_a (object_type, G_TYPE_OBJECT)\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"n_params != NULL\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"params != NULL || *n_params == 0\00", align 1
@__func__.gimp_parameters_append_valist = private unnamed_addr constant [30 x i8] c"gimp_parameters_append_valist\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"%s: object class `%s' has no property named `%s'\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"gimp-utils.c\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@__func__.gimp_parameters_free = private unnamed_addr constant [21 x i8] c"gimp_parameters_free\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"params != NULL || n_params == 0\00", align 1
@__func__.gimp_value_array_truncate = private unnamed_addr constant [26 x i8] c"gimp_value_array_truncate\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"args != NULL\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"n_values > 0 && n_values <= args->n_values\00", align 1
@gimp_get_temp_filename.id = internal global i32 0, align 4
@gimp_get_temp_filename.pid = internal global i32 0, align 4
@__func__.gimp_get_temp_filename = private unnamed_addr constant [23 x i8] c"gimp_get_temp_filename\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"gimp-temp-%d%d.%s\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"gimp-temp-%d%d\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"lt;\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"gt;\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"amp;\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"quot;\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"apos;\00", align 1
@__func__.unescape_gstring = private unnamed_addr constant [17 x i8] c"unescape_gstring\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"to - string->str <= string->len\00", align 1

; Function Attrs: nounwind uwtable
define i64 @gimp_g_type_instance_get_memsize(%struct._GTypeInstance* %instance) #0 {
entry:
  %retval = alloca i64, align 8
  %instance.addr = alloca %struct._GTypeInstance*, align 8
  %type_query = alloca %struct._GTypeQuery, align 8
  store %struct._GTypeInstance* %instance, %struct._GTypeInstance** %instance.addr, align 8
  %0 = load %struct._GTypeInstance*, %struct._GTypeInstance** %instance.addr, align 8
  %tobool = icmp ne %struct._GTypeInstance* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GTypeInstance*, %struct._GTypeInstance** %instance.addr, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  call void @g_type_query(i64 %3, %struct._GTypeQuery* %type_query)
  %instance_size = getelementptr inbounds %struct._GTypeQuery, %struct._GTypeQuery* %type_query, i32 0, i32 3
  %4 = load i32, i32* %instance_size, align 4
  %conv = zext i32 %4 to i64
  store i64 %conv, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval
  ret i64 %5
}

declare void @g_type_query(i64, %struct._GTypeQuery*) #1

; Function Attrs: nounwind uwtable
define i64 @gimp_g_object_get_memsize(%struct._GObject* %object) #0 {
entry:
  %retval = alloca i64, align 8
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %tobool = icmp ne %struct._GObject* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %2 = bitcast %struct._GObject* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_g_type_instance_get_memsize(%struct._GTypeInstance* %2)
  store i64 %call, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @gimp_g_hash_table_get_memsize(%struct._GHashTable* %hash, i64 %data_size) #0 {
entry:
  %retval = alloca i64, align 8
  %hash.addr = alloca %struct._GHashTable*, align 8
  %data_size.addr = alloca i64, align 8
  store %struct._GHashTable* %hash, %struct._GHashTable** %hash.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  %0 = load %struct._GHashTable*, %struct._GHashTable** %hash.addr, align 8
  %tobool = icmp ne %struct._GHashTable* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GHashTable*, %struct._GHashTable** %hash.addr, align 8
  %call = call i32 @g_hash_table_size(%struct._GHashTable* %1)
  %conv = zext i32 %call to i64
  %2 = load i64, i64* %data_size.addr, align 8
  %add = add i64 24, %2
  %mul = mul i64 %conv, %add
  %add1 = add i64 48, %mul
  store i64 %add1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval
  ret i64 %3
}

declare i32 @g_hash_table_size(%struct._GHashTable*) #1

; Function Attrs: nounwind uwtable
define i64 @gimp_g_hash_table_get_memsize_foreach(%struct._GHashTable* %hash, i64 (i8*, i64*)* %func, i64* %gui_size) #0 {
entry:
  %retval = alloca i64, align 8
  %hash.addr = alloca %struct._GHashTable*, align 8
  %func.addr = alloca i64 (i8*, i64*)*, align 8
  %gui_size.addr = alloca i64*, align 8
  %memsize = alloca %struct.HashMemsize, align 8
  store %struct._GHashTable* %hash, %struct._GHashTable** %hash.addr, align 8
  store i64 (i8*, i64*)* %func, i64 (i8*, i64*)** %func.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64 (i8*, i64*)*, i64 (i8*, i64*)** %func.addr, align 8
  %cmp = icmp ne i64 (i8*, i64*)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_g_hash_table_get_memsize_foreach, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GHashTable*, %struct._GHashTable** %hash.addr, align 8
  %tobool = icmp ne %struct._GHashTable* %1, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  store i64 0, i64* %retval
  br label %return

if.end.2:                                         ; preds = %do.end
  %2 = load i64 (i8*, i64*)*, i64 (i8*, i64*)** %func.addr, align 8
  %func3 = getelementptr inbounds %struct.HashMemsize, %struct.HashMemsize* %memsize, i32 0, i32 0
  store i64 (i8*, i64*)* %2, i64 (i8*, i64*)** %func3, align 8
  %memsize4 = getelementptr inbounds %struct.HashMemsize, %struct.HashMemsize* %memsize, i32 0, i32 1
  store i64 0, i64* %memsize4, align 8
  %gui_size5 = getelementptr inbounds %struct.HashMemsize, %struct.HashMemsize* %memsize, i32 0, i32 2
  store i64 0, i64* %gui_size5, align 8
  %3 = load %struct._GHashTable*, %struct._GHashTable** %hash.addr, align 8
  %4 = bitcast %struct.HashMemsize* %memsize to i8*
  call void @g_hash_table_foreach(%struct._GHashTable* %3, void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct.HashMemsize*)* @hash_memsize_foreach to void (i8*, i8*, i8*)*), i8* %4)
  %5 = load i64*, i64** %gui_size.addr, align 8
  %tobool6 = icmp ne i64* %5, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.2
  %gui_size8 = getelementptr inbounds %struct.HashMemsize, %struct.HashMemsize* %memsize, i32 0, i32 2
  %6 = load i64, i64* %gui_size8, align 8
  %7 = load i64*, i64** %gui_size.addr, align 8
  store i64 %6, i64* %7, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.2
  %memsize10 = getelementptr inbounds %struct.HashMemsize, %struct.HashMemsize* %memsize, i32 0, i32 1
  %8 = load i64, i64* %memsize10, align 8
  %9 = load %struct._GHashTable*, %struct._GHashTable** %hash.addr, align 8
  %call = call i64 @gimp_g_hash_table_get_memsize(%struct._GHashTable* %9, i64 0)
  %add = add nsw i64 %8, %call
  store i64 %add, i64* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.1, %if.else
  %10 = load i64, i64* %retval
  ret i64 %10
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @hash_memsize_foreach(i8* %key, i8* %value, %struct.HashMemsize* %memsize) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %memsize.addr = alloca %struct.HashMemsize*, align 8
  %gui_size = alloca i64, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.HashMemsize* %memsize, %struct.HashMemsize** %memsize.addr, align 8
  store i64 0, i64* %gui_size, align 8
  %0 = load %struct.HashMemsize*, %struct.HashMemsize** %memsize.addr, align 8
  %func = getelementptr inbounds %struct.HashMemsize, %struct.HashMemsize* %0, i32 0, i32 0
  %1 = load i64 (i8*, i64*)*, i64 (i8*, i64*)** %func, align 8
  %2 = load i8*, i8** %value.addr, align 8
  %call = call i64 %1(i8* %2, i64* %gui_size)
  %3 = load %struct.HashMemsize*, %struct.HashMemsize** %memsize.addr, align 8
  %memsize1 = getelementptr inbounds %struct.HashMemsize, %struct.HashMemsize* %3, i32 0, i32 1
  %4 = load i64, i64* %memsize1, align 8
  %add = add nsw i64 %4, %call
  store i64 %add, i64* %memsize1, align 8
  %5 = load i64, i64* %gui_size, align 8
  %6 = load %struct.HashMemsize*, %struct.HashMemsize** %memsize.addr, align 8
  %gui_size2 = getelementptr inbounds %struct.HashMemsize, %struct.HashMemsize* %6, i32 0, i32 2
  %7 = load i64, i64* %gui_size2, align 8
  %add3 = add nsw i64 %7, %5
  store i64 %add3, i64* %gui_size2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @gimp_g_slist_get_memsize(%struct._GSList* %slist, i64 %data_size) #0 {
entry:
  %slist.addr = alloca %struct._GSList*, align 8
  %data_size.addr = alloca i64, align 8
  store %struct._GSList* %slist, %struct._GSList** %slist.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  %0 = load %struct._GSList*, %struct._GSList** %slist.addr, align 8
  %call = call i32 @g_slist_length(%struct._GSList* %0)
  %conv = zext i32 %call to i64
  %1 = load i64, i64* %data_size.addr, align 8
  %add = add i64 %1, 16
  %mul = mul i64 %conv, %add
  ret i64 %mul
}

declare i32 @g_slist_length(%struct._GSList*) #1

; Function Attrs: nounwind uwtable
define i64 @gimp_g_slist_get_memsize_foreach(%struct._GSList* %slist, i64 (i8*, i64*)* %func, i64* %gui_size) #0 {
entry:
  %retval = alloca i64, align 8
  %slist.addr = alloca %struct._GSList*, align 8
  %func.addr = alloca i64 (i8*, i64*)*, align 8
  %gui_size.addr = alloca i64*, align 8
  %l = alloca %struct._GSList*, align 8
  %memsize = alloca i64, align 8
  store %struct._GSList* %slist, %struct._GSList** %slist.addr, align 8
  store i64 (i8*, i64*)* %func, i64 (i8*, i64*)** %func.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  store i64 0, i64* %memsize, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64 (i8*, i64*)*, i64 (i8*, i64*)** %func.addr, align 8
  %cmp = icmp ne i64 (i8*, i64*)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_g_slist_get_memsize_foreach, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GSList*, %struct._GSList** %slist.addr, align 8
  store %struct._GSList* %1, %struct._GSList** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %2 = load %struct._GSList*, %struct._GSList** %l, align 8
  %tobool = icmp ne %struct._GSList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64 (i8*, i64*)*, i64 (i8*, i64*)** %func.addr, align 8
  %4 = load %struct._GSList*, %struct._GSList** %l, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = load i64*, i64** %gui_size.addr, align 8
  %call = call i64 %3(i8* %5, i64* %6)
  %add = add i64 16, %call
  %7 = load i64, i64* %memsize, align 8
  %add1 = add i64 %7, %add
  store i64 %add1, i64* %memsize, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct._GSList*, %struct._GSList** %l, align 8
  %tobool2 = icmp ne %struct._GSList* %8, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %9 = load %struct._GSList*, %struct._GSList** %l, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %9, i32 0, i32 1
  %10 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %10, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i64, i64* %memsize, align 8
  store i64 %11, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else
  %12 = load i64, i64* %retval
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define i64 @gimp_g_list_get_memsize(%struct._GList* %list, i64 %data_size) #0 {
entry:
  %list.addr = alloca %struct._GList*, align 8
  %data_size.addr = alloca i64, align 8
  store %struct._GList* %list, %struct._GList** %list.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %call = call i32 @g_list_length(%struct._GList* %0)
  %conv = zext i32 %call to i64
  %1 = load i64, i64* %data_size.addr, align 8
  %add = add i64 %1, 24
  %mul = mul i64 %conv, %add
  ret i64 %mul
}

declare i32 @g_list_length(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define i64 @gimp_g_list_get_memsize_foreach(%struct._GList* %list, i64 (i8*, i64*)* %func, i64* %gui_size) #0 {
entry:
  %retval = alloca i64, align 8
  %list.addr = alloca %struct._GList*, align 8
  %func.addr = alloca i64 (i8*, i64*)*, align 8
  %gui_size.addr = alloca i64*, align 8
  %l = alloca %struct._GList*, align 8
  %memsize = alloca i64, align 8
  store %struct._GList* %list, %struct._GList** %list.addr, align 8
  store i64 (i8*, i64*)* %func, i64 (i8*, i64*)** %func.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  store i64 0, i64* %memsize, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64 (i8*, i64*)*, i64 (i8*, i64*)** %func.addr, align 8
  %cmp = icmp ne i64 (i8*, i64*)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_g_list_get_memsize_foreach, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GList*, %struct._GList** %list.addr, align 8
  store %struct._GList* %1, %struct._GList** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %2 = load %struct._GList*, %struct._GList** %l, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64 (i8*, i64*)*, i64 (i8*, i64*)** %func.addr, align 8
  %4 = load %struct._GList*, %struct._GList** %l, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = load i64*, i64** %gui_size.addr, align 8
  %call = call i64 %3(i8* %5, i64* %6)
  %add = add i64 24, %call
  %7 = load i64, i64* %memsize, align 8
  %add1 = add i64 %7, %add
  store i64 %add1, i64* %memsize, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct._GList*, %struct._GList** %l, align 8
  %tobool2 = icmp ne %struct._GList* %8, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %9 = load %struct._GList*, %struct._GList** %l, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 1
  %10 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %10, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i64, i64* %memsize, align 8
  store i64 %11, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else
  %12 = load i64, i64* %retval
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define i64 @gimp_g_value_get_memsize(%struct._GValue* %value) #0 {
entry:
  %retval = alloca i64, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %memsize = alloca i64, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__val13 = alloca %struct._GValue*, align 8
  %__t15 = alloca i64, align 8
  %__r17 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  %__val32 = alloca %struct._GValue*, align 8
  %__t34 = alloca i64, align 8
  %__r37 = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  %__val54 = alloca %struct._GValue*, align 8
  %__t56 = alloca i64, align 8
  %__r59 = alloca i32, align 4
  %tmp70 = alloca i32, align 4
  %__val76 = alloca %struct._GValue*, align 8
  %__t78 = alloca i64, align 8
  %__r81 = alloca i32, align 4
  %tmp92 = alloca i32, align 4
  %__val100 = alloca %struct._GValue*, align 8
  %__t102 = alloca i64, align 8
  %__r105 = alloca i32, align 4
  %tmp116 = alloca i32, align 4
  %__val119 = alloca %struct._GValue*, align 8
  %__t121 = alloca i64, align 8
  %__r124 = alloca i32, align 4
  %tmp135 = alloca i32, align 4
  %__val139 = alloca %struct._GValue*, align 8
  %__t141 = alloca i64, align 8
  %__r144 = alloca i32, align 4
  %tmp155 = alloca i32, align 4
  %__val159 = alloca %struct._GValue*, align 8
  %__t161 = alloca i64, align 8
  %__r164 = alloca i32, align 4
  %tmp175 = alloca i32, align 4
  %__val179 = alloca %struct._GValue*, align 8
  %__t181 = alloca i64, align 8
  %__r184 = alloca i32, align 4
  %tmp195 = alloca i32, align 4
  %array = alloca %struct._GimpArray*, align 8
  %__val208 = alloca %struct._GValue*, align 8
  %__t210 = alloca i64, align 8
  %__r213 = alloca i32, align 4
  %tmp225 = alloca i32, align 4
  %array229 = alloca %struct._GimpArray*, align 8
  %tmp238 = alloca i8**, align 8
  %i = alloca i32, align 4
  %__val260 = alloca %struct._GValue*, align 8
  %__t262 = alloca i64, align 8
  %__r264 = alloca i32, align 4
  %tmp276 = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store i64 0, i64* %memsize, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %tobool = icmp ne %struct._GValue* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %1, %struct._GValue** %__val, align 8
  store i64 64, i64* %__t, align 8
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool1 = icmp ne %struct._GValue* %2, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %3 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i32 0, i32 0
  %4 = load i64, i64* %g_type, align 8
  %5 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %4, %5
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end.5

if.else.4:                                        ; preds = %if.else
  %6 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %7 = load i64, i64* %__t, align 8
  %call = call i32 @g_type_check_value_holds(%struct._GValue* %6, i64 %7) #8
  store i32 %call, i32* %__r, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.then.2
  %8 = load i32, i32* %__r, align 4
  store i32 %8, i32* %tmp
  %9 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %9, 0
  br i1 %tobool7, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %if.end.6
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call9 = call i8* @g_value_get_string(%struct._GValue* %10)
  %call10 = call i64 @gimp_string_get_memsize(i8* %call9)
  %11 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %11, %call10
  store i64 %add, i64* %memsize, align 8
  br label %if.end.283

if.else.11:                                       ; preds = %if.end.6
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %12, %struct._GValue** %__val13, align 8
  store i64 72, i64* %__t15, align 8
  %13 = load %struct._GValue*, %struct._GValue** %__val13, align 8
  %tobool18 = icmp ne %struct._GValue* %13, null
  br i1 %tobool18, label %if.else.20, label %if.then.19

if.then.19:                                       ; preds = %if.else.11
  store i32 0, i32* %__r17, align 4
  br label %if.end.27

if.else.20:                                       ; preds = %if.else.11
  %14 = load %struct._GValue*, %struct._GValue** %__val13, align 8
  %g_type21 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type21, align 8
  %16 = load i64, i64* %__t15, align 8
  %cmp22 = icmp eq i64 %15, %16
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else.20
  store i32 1, i32* %__r17, align 4
  br label %if.end.26

if.else.24:                                       ; preds = %if.else.20
  %17 = load %struct._GValue*, %struct._GValue** %__val13, align 8
  %18 = load i64, i64* %__t15, align 8
  %call25 = call i32 @g_type_check_value_holds(%struct._GValue* %17, i64 %18) #8
  store i32 %call25, i32* %__r17, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.19
  %19 = load i32, i32* %__r17, align 4
  store i32 %19, i32* %tmp28
  %20 = load i32, i32* %tmp28
  %tobool29 = icmp ne i32 %20, 0
  br i1 %tobool29, label %if.then.30, label %if.else.258

if.then.30:                                       ; preds = %if.end.27
  %21 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %21, %struct._GValue** %__val32, align 8
  %call35 = call i64 @gimp_rgb_get_type() #9
  store i64 %call35, i64* %__t34, align 8
  %22 = load %struct._GValue*, %struct._GValue** %__val32, align 8
  %tobool38 = icmp ne %struct._GValue* %22, null
  br i1 %tobool38, label %if.else.40, label %if.then.39

if.then.39:                                       ; preds = %if.then.30
  store i32 0, i32* %__r37, align 4
  br label %if.end.47

if.else.40:                                       ; preds = %if.then.30
  %23 = load %struct._GValue*, %struct._GValue** %__val32, align 8
  %g_type41 = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type41, align 8
  %25 = load i64, i64* %__t34, align 8
  %cmp42 = icmp eq i64 %24, %25
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.else.40
  store i32 1, i32* %__r37, align 4
  br label %if.end.46

if.else.44:                                       ; preds = %if.else.40
  %26 = load %struct._GValue*, %struct._GValue** %__val32, align 8
  %27 = load i64, i64* %__t34, align 8
  %call45 = call i32 @g_type_check_value_holds(%struct._GValue* %26, i64 %27) #8
  store i32 %call45, i32* %__r37, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.then.43
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.39
  %28 = load i32, i32* %__r37, align 4
  store i32 %28, i32* %tmp48
  %29 = load i32, i32* %tmp48
  %tobool49 = icmp ne i32 %29, 0
  br i1 %tobool49, label %if.then.50, label %if.else.52

if.then.50:                                       ; preds = %if.end.47
  %30 = load i64, i64* %memsize, align 8
  %add51 = add i64 %30, 32
  store i64 %add51, i64* %memsize, align 8
  br label %if.end.257

if.else.52:                                       ; preds = %if.end.47
  %31 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %31, %struct._GValue** %__val54, align 8
  %call57 = call i64 @gimp_matrix2_get_type() #9
  store i64 %call57, i64* %__t56, align 8
  %32 = load %struct._GValue*, %struct._GValue** %__val54, align 8
  %tobool60 = icmp ne %struct._GValue* %32, null
  br i1 %tobool60, label %if.else.62, label %if.then.61

if.then.61:                                       ; preds = %if.else.52
  store i32 0, i32* %__r59, align 4
  br label %if.end.69

if.else.62:                                       ; preds = %if.else.52
  %33 = load %struct._GValue*, %struct._GValue** %__val54, align 8
  %g_type63 = getelementptr inbounds %struct._GValue, %struct._GValue* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type63, align 8
  %35 = load i64, i64* %__t56, align 8
  %cmp64 = icmp eq i64 %34, %35
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.else.62
  store i32 1, i32* %__r59, align 4
  br label %if.end.68

if.else.66:                                       ; preds = %if.else.62
  %36 = load %struct._GValue*, %struct._GValue** %__val54, align 8
  %37 = load i64, i64* %__t56, align 8
  %call67 = call i32 @g_type_check_value_holds(%struct._GValue* %36, i64 %37) #8
  store i32 %call67, i32* %__r59, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.65
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.61
  %38 = load i32, i32* %__r59, align 4
  store i32 %38, i32* %tmp70
  %39 = load i32, i32* %tmp70
  %tobool71 = icmp ne i32 %39, 0
  br i1 %tobool71, label %if.then.72, label %if.else.74

if.then.72:                                       ; preds = %if.end.69
  %40 = load i64, i64* %memsize, align 8
  %add73 = add i64 %40, 32
  store i64 %add73, i64* %memsize, align 8
  br label %if.end.256

if.else.74:                                       ; preds = %if.end.69
  %41 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %41, %struct._GValue** %__val76, align 8
  %call79 = call i64 @gimp_parasite_get_type() #9
  store i64 %call79, i64* %__t78, align 8
  %42 = load %struct._GValue*, %struct._GValue** %__val76, align 8
  %tobool82 = icmp ne %struct._GValue* %42, null
  br i1 %tobool82, label %if.else.84, label %if.then.83

if.then.83:                                       ; preds = %if.else.74
  store i32 0, i32* %__r81, align 4
  br label %if.end.91

if.else.84:                                       ; preds = %if.else.74
  %43 = load %struct._GValue*, %struct._GValue** %__val76, align 8
  %g_type85 = getelementptr inbounds %struct._GValue, %struct._GValue* %43, i32 0, i32 0
  %44 = load i64, i64* %g_type85, align 8
  %45 = load i64, i64* %__t78, align 8
  %cmp86 = icmp eq i64 %44, %45
  br i1 %cmp86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %if.else.84
  store i32 1, i32* %__r81, align 4
  br label %if.end.90

if.else.88:                                       ; preds = %if.else.84
  %46 = load %struct._GValue*, %struct._GValue** %__val76, align 8
  %47 = load i64, i64* %__t78, align 8
  %call89 = call i32 @g_type_check_value_holds(%struct._GValue* %46, i64 %47) #8
  store i32 %call89, i32* %__r81, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.88, %if.then.87
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.83
  %48 = load i32, i32* %__r81, align 4
  store i32 %48, i32* %tmp92
  %49 = load i32, i32* %tmp92
  %tobool93 = icmp ne i32 %49, 0
  br i1 %tobool93, label %if.then.94, label %if.else.98

if.then.94:                                       ; preds = %if.end.91
  %50 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call95 = call i8* @g_value_get_boxed(%struct._GValue* %50)
  %51 = bitcast i8* %call95 to %struct._GimpParasite*
  %call96 = call i64 @gimp_parasite_get_memsize(%struct._GimpParasite* %51, i64* null)
  %52 = load i64, i64* %memsize, align 8
  %add97 = add nsw i64 %52, %call96
  store i64 %add97, i64* %memsize, align 8
  br label %if.end.255

if.else.98:                                       ; preds = %if.end.91
  %53 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %53, %struct._GValue** %__val100, align 8
  %call103 = call i64 @gimp_array_get_type() #9
  store i64 %call103, i64* %__t102, align 8
  %54 = load %struct._GValue*, %struct._GValue** %__val100, align 8
  %tobool106 = icmp ne %struct._GValue* %54, null
  br i1 %tobool106, label %if.else.108, label %if.then.107

if.then.107:                                      ; preds = %if.else.98
  store i32 0, i32* %__r105, align 4
  br label %if.end.115

if.else.108:                                      ; preds = %if.else.98
  %55 = load %struct._GValue*, %struct._GValue** %__val100, align 8
  %g_type109 = getelementptr inbounds %struct._GValue, %struct._GValue* %55, i32 0, i32 0
  %56 = load i64, i64* %g_type109, align 8
  %57 = load i64, i64* %__t102, align 8
  %cmp110 = icmp eq i64 %56, %57
  br i1 %cmp110, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %if.else.108
  store i32 1, i32* %__r105, align 4
  br label %if.end.114

if.else.112:                                      ; preds = %if.else.108
  %58 = load %struct._GValue*, %struct._GValue** %__val100, align 8
  %59 = load i64, i64* %__t102, align 8
  %call113 = call i32 @g_type_check_value_holds(%struct._GValue* %58, i64 %59) #8
  store i32 %call113, i32* %__r105, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.112, %if.then.111
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.107
  %60 = load i32, i32* %__r105, align 4
  store i32 %60, i32* %tmp116
  %61 = load i32, i32* %tmp116
  %tobool117 = icmp ne i32 %61, 0
  br i1 %tobool117, label %if.then.197, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.115
  %62 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %62, %struct._GValue** %__val119, align 8
  %call122 = call i64 @gimp_int8_array_get_type() #9
  store i64 %call122, i64* %__t121, align 8
  %63 = load %struct._GValue*, %struct._GValue** %__val119, align 8
  %tobool125 = icmp ne %struct._GValue* %63, null
  br i1 %tobool125, label %if.else.127, label %if.then.126

if.then.126:                                      ; preds = %lor.lhs.false
  store i32 0, i32* %__r124, align 4
  br label %if.end.134

if.else.127:                                      ; preds = %lor.lhs.false
  %64 = load %struct._GValue*, %struct._GValue** %__val119, align 8
  %g_type128 = getelementptr inbounds %struct._GValue, %struct._GValue* %64, i32 0, i32 0
  %65 = load i64, i64* %g_type128, align 8
  %66 = load i64, i64* %__t121, align 8
  %cmp129 = icmp eq i64 %65, %66
  br i1 %cmp129, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %if.else.127
  store i32 1, i32* %__r124, align 4
  br label %if.end.133

if.else.131:                                      ; preds = %if.else.127
  %67 = load %struct._GValue*, %struct._GValue** %__val119, align 8
  %68 = load i64, i64* %__t121, align 8
  %call132 = call i32 @g_type_check_value_holds(%struct._GValue* %67, i64 %68) #8
  store i32 %call132, i32* %__r124, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.131, %if.then.130
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.126
  %69 = load i32, i32* %__r124, align 4
  store i32 %69, i32* %tmp135
  %70 = load i32, i32* %tmp135
  %tobool136 = icmp ne i32 %70, 0
  br i1 %tobool136, label %if.then.197, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %if.end.134
  %71 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %71, %struct._GValue** %__val139, align 8
  %call142 = call i64 @gimp_int16_array_get_type() #9
  store i64 %call142, i64* %__t141, align 8
  %72 = load %struct._GValue*, %struct._GValue** %__val139, align 8
  %tobool145 = icmp ne %struct._GValue* %72, null
  br i1 %tobool145, label %if.else.147, label %if.then.146

if.then.146:                                      ; preds = %lor.lhs.false.137
  store i32 0, i32* %__r144, align 4
  br label %if.end.154

if.else.147:                                      ; preds = %lor.lhs.false.137
  %73 = load %struct._GValue*, %struct._GValue** %__val139, align 8
  %g_type148 = getelementptr inbounds %struct._GValue, %struct._GValue* %73, i32 0, i32 0
  %74 = load i64, i64* %g_type148, align 8
  %75 = load i64, i64* %__t141, align 8
  %cmp149 = icmp eq i64 %74, %75
  br i1 %cmp149, label %if.then.150, label %if.else.151

if.then.150:                                      ; preds = %if.else.147
  store i32 1, i32* %__r144, align 4
  br label %if.end.153

if.else.151:                                      ; preds = %if.else.147
  %76 = load %struct._GValue*, %struct._GValue** %__val139, align 8
  %77 = load i64, i64* %__t141, align 8
  %call152 = call i32 @g_type_check_value_holds(%struct._GValue* %76, i64 %77) #8
  store i32 %call152, i32* %__r144, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.151, %if.then.150
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.146
  %78 = load i32, i32* %__r144, align 4
  store i32 %78, i32* %tmp155
  %79 = load i32, i32* %tmp155
  %tobool156 = icmp ne i32 %79, 0
  br i1 %tobool156, label %if.then.197, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %if.end.154
  %80 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %80, %struct._GValue** %__val159, align 8
  %call162 = call i64 @gimp_int32_array_get_type() #9
  store i64 %call162, i64* %__t161, align 8
  %81 = load %struct._GValue*, %struct._GValue** %__val159, align 8
  %tobool165 = icmp ne %struct._GValue* %81, null
  br i1 %tobool165, label %if.else.167, label %if.then.166

if.then.166:                                      ; preds = %lor.lhs.false.157
  store i32 0, i32* %__r164, align 4
  br label %if.end.174

if.else.167:                                      ; preds = %lor.lhs.false.157
  %82 = load %struct._GValue*, %struct._GValue** %__val159, align 8
  %g_type168 = getelementptr inbounds %struct._GValue, %struct._GValue* %82, i32 0, i32 0
  %83 = load i64, i64* %g_type168, align 8
  %84 = load i64, i64* %__t161, align 8
  %cmp169 = icmp eq i64 %83, %84
  br i1 %cmp169, label %if.then.170, label %if.else.171

if.then.170:                                      ; preds = %if.else.167
  store i32 1, i32* %__r164, align 4
  br label %if.end.173

if.else.171:                                      ; preds = %if.else.167
  %85 = load %struct._GValue*, %struct._GValue** %__val159, align 8
  %86 = load i64, i64* %__t161, align 8
  %call172 = call i32 @g_type_check_value_holds(%struct._GValue* %85, i64 %86) #8
  store i32 %call172, i32* %__r164, align 4
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.171, %if.then.170
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.then.166
  %87 = load i32, i32* %__r164, align 4
  store i32 %87, i32* %tmp175
  %88 = load i32, i32* %tmp175
  %tobool176 = icmp ne i32 %88, 0
  br i1 %tobool176, label %if.then.197, label %lor.lhs.false.177

lor.lhs.false.177:                                ; preds = %if.end.174
  %89 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %89, %struct._GValue** %__val179, align 8
  %call182 = call i64 @gimp_float_array_get_type() #9
  store i64 %call182, i64* %__t181, align 8
  %90 = load %struct._GValue*, %struct._GValue** %__val179, align 8
  %tobool185 = icmp ne %struct._GValue* %90, null
  br i1 %tobool185, label %if.else.187, label %if.then.186

if.then.186:                                      ; preds = %lor.lhs.false.177
  store i32 0, i32* %__r184, align 4
  br label %if.end.194

if.else.187:                                      ; preds = %lor.lhs.false.177
  %91 = load %struct._GValue*, %struct._GValue** %__val179, align 8
  %g_type188 = getelementptr inbounds %struct._GValue, %struct._GValue* %91, i32 0, i32 0
  %92 = load i64, i64* %g_type188, align 8
  %93 = load i64, i64* %__t181, align 8
  %cmp189 = icmp eq i64 %92, %93
  br i1 %cmp189, label %if.then.190, label %if.else.191

if.then.190:                                      ; preds = %if.else.187
  store i32 1, i32* %__r184, align 4
  br label %if.end.193

if.else.191:                                      ; preds = %if.else.187
  %94 = load %struct._GValue*, %struct._GValue** %__val179, align 8
  %95 = load i64, i64* %__t181, align 8
  %call192 = call i32 @g_type_check_value_holds(%struct._GValue* %94, i64 %95) #8
  store i32 %call192, i32* %__r184, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.191, %if.then.190
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.then.186
  %96 = load i32, i32* %__r184, align 4
  store i32 %96, i32* %tmp195
  %97 = load i32, i32* %tmp195
  %tobool196 = icmp ne i32 %97, 0
  br i1 %tobool196, label %if.then.197, label %if.else.206

if.then.197:                                      ; preds = %if.end.194, %if.end.174, %if.end.154, %if.end.134, %if.end.115
  %98 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call199 = call i8* @g_value_get_boxed(%struct._GValue* %98)
  %99 = bitcast i8* %call199 to %struct._GimpArray*
  store %struct._GimpArray* %99, %struct._GimpArray** %array, align 8
  %100 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %tobool200 = icmp ne %struct._GimpArray* %100, null
  br i1 %tobool200, label %if.then.201, label %if.end.205

if.then.201:                                      ; preds = %if.then.197
  %101 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %static_data = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %101, i32 0, i32 2
  %102 = load i32, i32* %static_data, align 4
  %conv = sext i32 %102 to i64
  %add202 = add i64 24, %conv
  %tobool203 = icmp ne i64 %add202, 0
  br i1 %tobool203, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.201
  br label %cond.end

cond.false:                                       ; preds = %if.then.201
  %103 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %length = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %103, i32 0, i32 1
  %104 = load i64, i64* %length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %104, %cond.false ]
  %105 = load i64, i64* %memsize, align 8
  %add204 = add i64 %105, %cond
  store i64 %add204, i64* %memsize, align 8
  br label %if.end.205

if.end.205:                                       ; preds = %cond.end, %if.then.197
  br label %if.end.254

if.else.206:                                      ; preds = %if.end.194
  %106 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %106, %struct._GValue** %__val208, align 8
  %call211 = call i64 @gimp_string_array_get_type() #9
  store i64 %call211, i64* %__t210, align 8
  %107 = load %struct._GValue*, %struct._GValue** %__val208, align 8
  %tobool214 = icmp ne %struct._GValue* %107, null
  br i1 %tobool214, label %if.else.216, label %if.then.215

if.then.215:                                      ; preds = %if.else.206
  store i32 0, i32* %__r213, align 4
  br label %if.end.224

if.else.216:                                      ; preds = %if.else.206
  %108 = load %struct._GValue*, %struct._GValue** %__val208, align 8
  %g_type217 = getelementptr inbounds %struct._GValue, %struct._GValue* %108, i32 0, i32 0
  %109 = load i64, i64* %g_type217, align 8
  %110 = load i64, i64* %__t210, align 8
  %cmp218 = icmp eq i64 %109, %110
  br i1 %cmp218, label %if.then.220, label %if.else.221

if.then.220:                                      ; preds = %if.else.216
  store i32 1, i32* %__r213, align 4
  br label %if.end.223

if.else.221:                                      ; preds = %if.else.216
  %111 = load %struct._GValue*, %struct._GValue** %__val208, align 8
  %112 = load i64, i64* %__t210, align 8
  %call222 = call i32 @g_type_check_value_holds(%struct._GValue* %111, i64 %112) #8
  store i32 %call222, i32* %__r213, align 4
  br label %if.end.223

if.end.223:                                       ; preds = %if.else.221, %if.then.220
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.223, %if.then.215
  %113 = load i32, i32* %__r213, align 4
  store i32 %113, i32* %tmp225
  %114 = load i32, i32* %tmp225
  %tobool226 = icmp ne i32 %114, 0
  br i1 %tobool226, label %if.then.227, label %if.else.250

if.then.227:                                      ; preds = %if.end.224
  %115 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call230 = call i8* @g_value_get_boxed(%struct._GValue* %115)
  %116 = bitcast i8* %call230 to %struct._GimpArray*
  store %struct._GimpArray* %116, %struct._GimpArray** %array229, align 8
  %117 = load %struct._GimpArray*, %struct._GimpArray** %array229, align 8
  %tobool231 = icmp ne %struct._GimpArray* %117, null
  br i1 %tobool231, label %if.then.232, label %if.end.249

if.then.232:                                      ; preds = %if.then.227
  %118 = load i64, i64* %memsize, align 8
  %add233 = add i64 %118, 24
  store i64 %add233, i64* %memsize, align 8
  %119 = load %struct._GimpArray*, %struct._GimpArray** %array229, align 8
  %static_data234 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %119, i32 0, i32 2
  %120 = load i32, i32* %static_data234, align 4
  %tobool235 = icmp ne i32 %120, 0
  br i1 %tobool235, label %if.end.248, label %if.then.236

if.then.236:                                      ; preds = %if.then.232
  %121 = load %struct._GimpArray*, %struct._GimpArray** %array229, align 8
  %data = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %121, i32 0, i32 0
  %122 = load i8*, i8** %data, align 8
  %123 = bitcast i8* %122 to i8**
  store i8** %123, i8*** %tmp238, align 8
  %124 = load %struct._GimpArray*, %struct._GimpArray** %array229, align 8
  %length240 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %124, i32 0, i32 1
  %125 = load i64, i64* %length240, align 8
  %mul = mul i64 %125, 8
  %126 = load i64, i64* %memsize, align 8
  %add241 = add i64 %126, %mul
  store i64 %add241, i64* %memsize, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.236
  %127 = load i32, i32* %i, align 4
  %conv242 = sext i32 %127 to i64
  %128 = load %struct._GimpArray*, %struct._GimpArray** %array229, align 8
  %length243 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %128, i32 0, i32 1
  %129 = load i64, i64* %length243, align 8
  %cmp244 = icmp ult i64 %conv242, %129
  br i1 %cmp244, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %130 = load i32, i32* %i, align 4
  %idxprom = sext i32 %130 to i64
  %131 = load i8**, i8*** %tmp238, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %131, i64 %idxprom
  %132 = load i8*, i8** %arrayidx, align 8
  %call246 = call i64 @gimp_string_get_memsize(i8* %132)
  %133 = load i64, i64* %memsize, align 8
  %add247 = add nsw i64 %133, %call246
  store i64 %add247, i64* %memsize, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %134 = load i32, i32* %i, align 4
  %inc = add nsw i32 %134, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.248

if.end.248:                                       ; preds = %for.end, %if.then.232
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.then.227
  br label %if.end.253

if.else.250:                                      ; preds = %if.end.224
  %135 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %g_type251 = getelementptr inbounds %struct._GValue, %struct._GValue* %135, i32 0, i32 0
  %136 = load i64, i64* %g_type251, align 8
  %call252 = call i8* @g_type_name(i64 %136)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_g_value_get_memsize, i32 0, i32 0), i8* %call252)
  br label %if.end.253

if.end.253:                                       ; preds = %if.else.250, %if.end.249
  br label %if.end.254

if.end.254:                                       ; preds = %if.end.253, %if.end.205
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.254, %if.then.94
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.255, %if.then.72
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256, %if.then.50
  br label %if.end.282

if.else.258:                                      ; preds = %if.end.27
  %137 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %137, %struct._GValue** %__val260, align 8
  store i64 80, i64* %__t262, align 8
  %138 = load %struct._GValue*, %struct._GValue** %__val260, align 8
  %tobool265 = icmp ne %struct._GValue* %138, null
  br i1 %tobool265, label %if.else.267, label %if.then.266

if.then.266:                                      ; preds = %if.else.258
  store i32 0, i32* %__r264, align 4
  br label %if.end.275

if.else.267:                                      ; preds = %if.else.258
  %139 = load %struct._GValue*, %struct._GValue** %__val260, align 8
  %g_type268 = getelementptr inbounds %struct._GValue, %struct._GValue* %139, i32 0, i32 0
  %140 = load i64, i64* %g_type268, align 8
  %141 = load i64, i64* %__t262, align 8
  %cmp269 = icmp eq i64 %140, %141
  br i1 %cmp269, label %if.then.271, label %if.else.272

if.then.271:                                      ; preds = %if.else.267
  store i32 1, i32* %__r264, align 4
  br label %if.end.274

if.else.272:                                      ; preds = %if.else.267
  %142 = load %struct._GValue*, %struct._GValue** %__val260, align 8
  %143 = load i64, i64* %__t262, align 8
  %call273 = call i32 @g_type_check_value_holds(%struct._GValue* %142, i64 %143) #8
  store i32 %call273, i32* %__r264, align 4
  br label %if.end.274

if.end.274:                                       ; preds = %if.else.272, %if.then.271
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %if.then.266
  %144 = load i32, i32* %__r264, align 4
  store i32 %144, i32* %tmp276
  %145 = load i32, i32* %tmp276
  %tobool277 = icmp ne i32 %145, 0
  br i1 %tobool277, label %if.then.278, label %if.end.281

if.then.278:                                      ; preds = %if.end.275
  %146 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %g_type279 = getelementptr inbounds %struct._GValue, %struct._GValue* %146, i32 0, i32 0
  %147 = load i64, i64* %g_type279, align 8
  %call280 = call i8* @g_type_name(i64 %147)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_g_value_get_memsize, i32 0, i32 0), i8* %call280)
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.278, %if.end.275
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281, %if.end.257
  br label %if.end.283

if.end.283:                                       ; preds = %if.end.282, %if.then.8
  %148 = load i64, i64* %memsize, align 8
  %add284 = add i64 %148, 24
  store i64 %add284, i64* %retval
  br label %return

return:                                           ; preds = %if.end.283, %if.then
  %149 = load i64, i64* %retval
  ret i64 %149
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_value_holds(%struct._GValue*, i64) #2

; Function Attrs: nounwind uwtable
define i64 @gimp_string_get_memsize(i8* %string) #0 {
entry:
  %retval = alloca i64, align 8
  %string.addr = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %string.addr, align 8
  %call = call i64 @strlen(i8* %1) #8
  %add = add i64 %call, 1
  store i64 %add, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i64, i64* %retval
  ret i64 %2
}

declare i8* @g_value_get_string(%struct._GValue*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_rgb_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_matrix2_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_parasite_get_type() #3

; Function Attrs: nounwind uwtable
define i64 @gimp_parasite_get_memsize(%struct._GimpParasite* %parasite, i64* %gui_size) #0 {
entry:
  %retval = alloca i64, align 8
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  %gui_size.addr = alloca i64*, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %tobool = icmp ne %struct._GimpParasite* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %name = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %call = call i64 @gimp_string_get_memsize(i8* %2)
  %add = add i64 24, %call
  %3 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %size = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %3, i32 0, i32 2
  %4 = load i32, i32* %size, align 4
  %conv = zext i32 %4 to i64
  %add1 = add i64 %add, %conv
  store i64 %add1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval
  ret i64 %5
}

declare i8* @g_value_get_boxed(%struct._GValue*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_array_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_int8_array_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_int16_array_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_int32_array_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_float_array_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_string_array_get_type() #3

declare void @g_printerr(i8*, ...) #1

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind uwtable
define i64 @gimp_g_param_spec_get_memsize(%struct._GParamSpec* %pspec) #0 {
entry:
  %retval = alloca i64, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %memsize = alloca i64, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store i64 0, i64* %memsize, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %tobool = icmp ne %struct._GParamSpec* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %1, i32 0, i32 2
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 32
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call = call i8* @g_param_spec_get_name(%struct._GParamSpec* %3)
  %call3 = call i64 @gimp_string_get_memsize(i8* %call)
  %4 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %4, %call3
  store i64 %add, i64* %memsize, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %flags5 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 2
  %6 = load i32, i32* %flags5, align 4
  %and6 = and i32 %6, 64
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.end.12, label %if.then.8

if.then.8:                                        ; preds = %if.end.4
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call9 = call i8* @g_param_spec_get_nick(%struct._GParamSpec* %7)
  %call10 = call i64 @gimp_string_get_memsize(i8* %call9)
  %8 = load i64, i64* %memsize, align 8
  %add11 = add nsw i64 %8, %call10
  store i64 %add11, i64* %memsize, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end.4
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %flags13 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %9, i32 0, i32 2
  %10 = load i32, i32* %flags13, align 4
  %and14 = and i32 %10, 128
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.end.20, label %if.then.16

if.then.16:                                       ; preds = %if.end.12
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call17 = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %11)
  %call18 = call i64 @gimp_string_get_memsize(i8* %call17)
  %12 = load i64, i64* %memsize, align 8
  %add19 = add nsw i64 %12, %call18
  store i64 %add19, i64* %memsize, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.end.12
  %13 = load i64, i64* %memsize, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %15 = bitcast %struct._GParamSpec* %14 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_g_type_instance_get_memsize(%struct._GTypeInstance* %15)
  %add22 = add nsw i64 %13, %call21
  store i64 %add22, i64* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then
  %16 = load i64, i64* %retval
  ret i64 %16
}

declare i8* @g_param_spec_get_name(%struct._GParamSpec*) #1

declare i8* @g_param_spec_get_nick(%struct._GParamSpec*) #1

declare i8* @g_param_spec_get_blurb(%struct._GParamSpec*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @gimp_get_default_language(i8* %category) #0 {
entry:
  %category.addr = alloca i8*, align 8
  %lang = alloca i8*, align 8
  %p = alloca i8*, align 8
  %cat = alloca i32, align 4
  store i8* %category, i8** %category.addr, align 8
  store i32 0, i32* %cat, align 4
  %0 = load i8*, i8** %category.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8** %category.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %category.addr, align 8
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %cat, align 4
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %2 = load i8*, i8** %category.addr, align 8
  %call2 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0)) #8
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  store i32 5, i32* %cat, align 4
  br label %if.end.6

if.else.5:                                        ; preds = %if.else
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.then.1
  %3 = load i32, i32* %cat, align 4
  %call8 = call i8* @setlocale(i32 %3, i8* null) #5
  %call9 = call noalias i8* @g_strdup(i8* %call8)
  store i8* %call9, i8** %lang, align 8
  %4 = load i8*, i8** %lang, align 8
  %call10 = call i8* @strchr(i8* %4, i32 46) #8
  store i8* %call10, i8** %p, align 8
  %5 = load i8*, i8** %p, align 8
  %tobool11 = icmp ne i8* %5, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.7
  %6 = load i8*, i8** %p, align 8
  store i8 0, i8* %6, align 1
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.7
  %7 = load i8*, i8** %lang, align 8
  %call14 = call i8* @strchr(i8* %7, i32 64) #8
  store i8* %call14, i8** %p, align 8
  %8 = load i8*, i8** %p, align 8
  %tobool15 = icmp ne i8* %8, null
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  %9 = load i8*, i8** %p, align 8
  store i8 0, i8* %9, align 1
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.13
  %10 = load i8*, i8** %lang, align 8
  ret i8* %10
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_get_default_unit() #0 {
entry:
  %retval = alloca i32, align 4
  %measurement = alloca i8*, align 8
  %call = call i8* @nl_langinfo(i32 720896) #5
  store i8* %call, i8** %measurement, align 8
  %0 = load i8*, i8** %measurement, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 2, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) #4

; Function Attrs: nounwind uwtable
define %struct._GParameter* @gimp_parameters_append(i64 %object_type, %struct._GParameter* %params, i32* %n_params, ...) #0 {
entry:
  %retval = alloca %struct._GParameter*, align 8
  %object_type.addr = alloca i64, align 8
  %params.addr = alloca %struct._GParameter*, align 8
  %n_params.addr = alloca i32*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i64 %object_type, i64* %object_type.addr, align 8
  store %struct._GParameter* %params, %struct._GParameter** %params.addr, align 8
  store i32* %n_params, i32** %n_params.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %object_type.addr, align 8
  %call = call i32 @g_type_is_a(i64 %0, i64 80)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_parameters_append, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GParameter* null, %struct._GParameter** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32*, i32** %n_params.addr, align 8
  %cmp = icmp ne i32* %1, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_parameters_append, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GParameter* null, %struct._GParameter** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %2 = load %struct._GParameter*, %struct._GParameter** %params.addr, align 8
  %cmp7 = icmp ne %struct._GParameter* %2, null
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.6
  %3 = load i32*, i32** %n_params.addr, align 8
  %4 = load i32, i32* %3, align 4
  %cmp8 = icmp eq i32 %4, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %lor.lhs.false, %do.body.6
  br label %if.end.11

if.else.10:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_parameters_append, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GParameter* null, %struct._GParameter** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay13 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay13)
  %5 = load i64, i64* %object_type.addr, align 8
  %6 = load %struct._GParameter*, %struct._GParameter** %params.addr, align 8
  %7 = load i32*, i32** %n_params.addr, align 8
  %arraydecay14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call15 = call %struct._GParameter* @gimp_parameters_append_valist(i64 %5, %struct._GParameter* %6, i32* %7, %struct.__va_list_tag* %arraydecay14)
  store %struct._GParameter* %call15, %struct._GParameter** %params.addr, align 8
  %arraydecay16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1617 = bitcast %struct.__va_list_tag* %arraydecay16 to i8*
  call void @llvm.va_end(i8* %arraydecay1617)
  %8 = load %struct._GParameter*, %struct._GParameter** %params.addr, align 8
  store %struct._GParameter* %8, %struct._GParameter** %retval
  br label %return

return:                                           ; preds = %do.end.12, %if.else.10, %if.else.3, %if.else
  %9 = load %struct._GParameter*, %struct._GParameter** %retval
  ret %struct._GParameter* %9
}

declare i32 @g_type_is_a(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind uwtable
define %struct._GParameter* @gimp_parameters_append_valist(i64 %object_type, %struct._GParameter* %params, i32* %n_params, %struct.__va_list_tag* %args) #0 {
entry:
  %retval = alloca %struct._GParameter*, align 8
  %object_type.addr = alloca i64, align 8
  %params.addr = alloca %struct._GParameter*, align 8
  %n_params.addr = alloca i32*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %param_name = alloca i8*, align 8
  %error = alloca i8*, align 8
  %pspec = alloca %struct._GParamSpec*, align 8
  %_value = alloca %struct._GValue*, align 8
  %_value_type = alloca i64, align 8
  %_vtable = alloca %struct._GTypeValueTable*, align 8
  %_val = alloca %struct._GValue*, align 8
  %_flags = alloca i32, align 4
  %_vtab = alloca %struct._GTypeValueTable*, align 8
  %_collect_format = alloca i8*, align 8
  %_cvalues = alloca [8 x %union._GTypeCValue], align 16
  %_n_values = alloca i32, align 4
  %_cvalue = alloca %union._GTypeCValue*, align 8
  store i64 %object_type, i64* %object_type.addr, align 8
  store %struct._GParameter* %params, %struct._GParameter** %params.addr, align 8
  store i32* %n_params, i32** %n_params.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %object_type.addr, align 8
  %call = call i32 @g_type_is_a(i64 %0, i64 80)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_parameters_append_valist, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GParameter* null, %struct._GParameter** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32*, i32** %n_params.addr, align 8
  %cmp = icmp ne i32* %1, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_parameters_append_valist, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GParameter* null, %struct._GParameter** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %2 = load %struct._GParameter*, %struct._GParameter** %params.addr, align 8
  %cmp7 = icmp ne %struct._GParameter* %2, null
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.6
  %3 = load i32*, i32** %n_params.addr, align 8
  %4 = load i32, i32* %3, align 4
  %cmp8 = icmp eq i32 %4, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %lor.lhs.false, %do.body.6
  br label %if.end.11

if.else.10:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_parameters_append_valist, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GParameter* null, %struct._GParameter** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %5 = load i64, i64* %object_type.addr, align 8
  %call13 = call i8* @g_type_class_ref(i64 %5)
  %6 = bitcast i8* %call13 to %struct._GObjectClass*
  store %struct._GObjectClass* %6, %struct._GObjectClass** %object_class, align 8
  %7 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %do.end.12
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 3
  %reg_save_area = load i8*, i8** %8
  %9 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %10 = bitcast i8* %9 to i8**
  %11 = add i32 %gp_offset, 8
  store i32 %11, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %do.end.12
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %12 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %10, %vaarg.in_reg ], [ %12, %vaarg.in_mem ]
  %13 = load i8*, i8** %vaarg.addr
  store i8* %13, i8** %param_name, align 8
  br label %while.cond

while.cond:                                       ; preds = %vaarg.end.126, %vaarg.end
  %14 = load i8*, i8** %param_name, align 8
  %tobool14 = icmp ne i8* %14, null
  br i1 %tobool14, label %while.body, label %while.end.128

while.body:                                       ; preds = %while.cond
  store i8* null, i8** %error, align 8
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %16 = load i8*, i8** %param_name, align 8
  %call15 = call %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass* %15, i8* %16)
  store %struct._GParamSpec* %call15, %struct._GParamSpec** %pspec, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %tobool16 = icmp ne %struct._GParamSpec* %17, null
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %while.body
  %18 = load i64, i64* %object_type.addr, align 8
  %call18 = call i8* @g_type_name(i64 %18)
  %19 = load i8*, i8** %param_name, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_parameters_append_valist, i32 0, i32 0), i8* %call18, i8* %19)
  br label %while.end.128

if.end.19:                                        ; preds = %while.body
  %20 = load %struct._GParameter*, %struct._GParameter** %params.addr, align 8
  %21 = bitcast %struct._GParameter* %20 to i8*
  %22 = load i32*, i32** %n_params.addr, align 8
  %23 = load i32, i32* %22, align 4
  %add = add nsw i32 %23, 1
  %conv = sext i32 %add to i64
  %call20 = call i8* @g_realloc_n(i8* %21, i64 %conv, i64 32)
  %24 = bitcast i8* %call20 to %struct._GParameter*
  store %struct._GParameter* %24, %struct._GParameter** %params.addr, align 8
  %25 = load i8*, i8** %param_name, align 8
  %26 = load i32*, i32** %n_params.addr, align 8
  %27 = load i32, i32* %26, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load %struct._GParameter*, %struct._GParameter** %params.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GParameter, %struct._GParameter* %28, i64 %idxprom
  %name = getelementptr inbounds %struct._GParameter, %struct._GParameter* %arrayidx, i32 0, i32 0
  store i8* %25, i8** %name, align 8
  %29 = load i32*, i32** %n_params.addr, align 8
  %30 = load i32, i32* %29, align 4
  %idxprom21 = sext i32 %30 to i64
  %31 = load %struct._GParameter*, %struct._GParameter** %params.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GParameter, %struct._GParameter* %31, i64 %idxprom21
  %value = getelementptr inbounds %struct._GParameter, %struct._GParameter* %arrayidx22, i32 0, i32 1
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %value, i32 0, i32 0
  store i64 0, i64* %g_type, align 8
  %32 = load i32*, i32** %n_params.addr, align 8
  %33 = load i32, i32* %32, align 4
  %idxprom23 = sext i32 %33 to i64
  %34 = load %struct._GParameter*, %struct._GParameter** %params.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct._GParameter, %struct._GParameter* %34, i64 %idxprom23
  %value25 = getelementptr inbounds %struct._GParameter, %struct._GParameter* %arrayidx24, i32 0, i32 1
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %36 = bitcast %struct._GParamSpec* %35 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 76)
  %37 = bitcast %struct._GTypeInstance* %call26 to %struct._GParamSpec*
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %37, i32 0, i32 3
  %38 = load i64, i64* %value_type, align 8
  %call27 = call %struct._GValue* @g_value_init(%struct._GValue* %value25, i64 %38)
  br label %do.body.28

do.body.28:                                       ; preds = %if.end.19
  %39 = load i32*, i32** %n_params.addr, align 8
  %40 = load i32, i32* %39, align 4
  %idxprom29 = sext i32 %40 to i64
  %41 = load %struct._GParameter*, %struct._GParameter** %params.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct._GParameter, %struct._GParameter* %41, i64 %idxprom29
  %value31 = getelementptr inbounds %struct._GParameter, %struct._GParameter* %arrayidx30, i32 0, i32 1
  store %struct._GValue* %value31, %struct._GValue** %_value, align 8
  %42 = load %struct._GValue*, %struct._GValue** %_value, align 8
  %g_type32 = getelementptr inbounds %struct._GValue, %struct._GValue* %42, i32 0, i32 0
  %43 = load i64, i64* %g_type32, align 8
  store i64 %43, i64* %_value_type, align 8
  %44 = load i64, i64* %_value_type, align 8
  %call33 = call %struct._GTypeValueTable* @g_type_value_table_peek(i64 %44)
  store %struct._GTypeValueTable* %call33, %struct._GTypeValueTable** %_vtable, align 8
  %45 = load %struct._GTypeValueTable*, %struct._GTypeValueTable** %_vtable, align 8
  %value_free = getelementptr inbounds %struct._GTypeValueTable, %struct._GTypeValueTable* %45, i32 0, i32 1
  %46 = load void (%struct._GValue*)*, void (%struct._GValue*)** %value_free, align 8
  %tobool34 = icmp ne void (%struct._GValue*)* %46, null
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %do.body.28
  %47 = load %struct._GTypeValueTable*, %struct._GTypeValueTable** %_vtable, align 8
  %value_free36 = getelementptr inbounds %struct._GTypeValueTable, %struct._GTypeValueTable* %47, i32 0, i32 1
  %48 = load void (%struct._GValue*)*, void (%struct._GValue*)** %value_free36, align 8
  %49 = load %struct._GValue*, %struct._GValue** %_value, align 8
  call void %48(%struct._GValue* %49)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %do.body.28
  %50 = load %struct._GValue*, %struct._GValue** %_value, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %50, i32 0, i32 1
  %51 = bitcast [2 x %union.anon]* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %51, i8 0, i64 16, i32 8, i1 false)
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.37
  %52 = load i32*, i32** %n_params.addr, align 8
  %53 = load i32, i32* %52, align 4
  %idxprom39 = sext i32 %53 to i64
  %54 = load %struct._GParameter*, %struct._GParameter** %params.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct._GParameter, %struct._GParameter* %54, i64 %idxprom39
  %value41 = getelementptr inbounds %struct._GParameter, %struct._GParameter* %arrayidx40, i32 0, i32 1
  store %struct._GValue* %value41, %struct._GValue** %_val, align 8
  store i32 0, i32* %_flags, align 4
  %55 = load i64, i64* %_value_type, align 8
  %call42 = call %struct._GTypeValueTable* @g_type_value_table_peek(i64 %55)
  store %struct._GTypeValueTable* %call42, %struct._GTypeValueTable** %_vtab, align 8
  %56 = load %struct._GTypeValueTable*, %struct._GTypeValueTable** %_vtab, align 8
  %collect_format = getelementptr inbounds %struct._GTypeValueTable, %struct._GTypeValueTable* %56, i32 0, i32 4
  %57 = load i8*, i8** %collect_format, align 8
  store i8* %57, i8** %_collect_format, align 8
  %58 = bitcast [8 x %union._GTypeCValue]* %_cvalues to i8*
  call void @llvm.memset.p0i8.i64(i8* %58, i8 0, i64 64, i32 16, i1 false)
  %59 = bitcast i8* %58 to <{ { i32, [4 x i8] }, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue }>*
  %60 = getelementptr <{ { i32, [4 x i8] }, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue }>, <{ { i32, [4 x i8] }, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue, %union._GTypeCValue }>* %59, i32 0, i32 0
  store i32 0, i32* %_n_values, align 4
  %61 = load i64, i64* %_value_type, align 8
  %62 = load %struct._GValue*, %struct._GValue** %_val, align 8
  %g_type43 = getelementptr inbounds %struct._GValue, %struct._GValue* %62, i32 0, i32 0
  store i64 %61, i64* %g_type43, align 8
  br label %while.cond.44

while.cond.44:                                    ; preds = %sw.epilog, %do.body.38
  %63 = load i8*, i8** %_collect_format, align 8
  %64 = load i8, i8* %63, align 1
  %tobool45 = icmp ne i8 %64, 0
  br i1 %tobool45, label %while.body.46, label %while.end

while.body.46:                                    ; preds = %while.cond.44
  %arraydecay = getelementptr inbounds [8 x %union._GTypeCValue], [8 x %union._GTypeCValue]* %_cvalues, i32 0, i32 0
  %65 = load i32, i32* %_n_values, align 4
  %inc = add i32 %65, 1
  store i32 %inc, i32* %_n_values, align 4
  %idx.ext = zext i32 %65 to i64
  %add.ptr = getelementptr inbounds %union._GTypeCValue, %union._GTypeCValue* %arraydecay, i64 %idx.ext
  store %union._GTypeCValue* %add.ptr, %union._GTypeCValue** %_cvalue, align 8
  %66 = load i8*, i8** %_collect_format, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr, i8** %_collect_format, align 8
  %67 = load i8, i8* %66, align 1
  %conv47 = sext i8 %67 to i32
  switch i32 %conv47, label %sw.default [
    i32 105, label %sw.bb
    i32 108, label %sw.bb.59
    i32 113, label %sw.bb.71
    i32 100, label %sw.bb.83
    i32 112, label %sw.bb.92
  ]

sw.bb:                                            ; preds = %while.body.46
  %68 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %68, i32 0, i32 0
  %gp_offset49 = load i32, i32* %gp_offset_p48
  %fits_in_gp50 = icmp ule i32 %gp_offset49, 40
  br i1 %fits_in_gp50, label %vaarg.in_reg.51, label %vaarg.in_mem.53

vaarg.in_reg.51:                                  ; preds = %sw.bb
  %69 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %68, i32 0, i32 3
  %reg_save_area52 = load i8*, i8** %69
  %70 = getelementptr i8, i8* %reg_save_area52, i32 %gp_offset49
  %71 = bitcast i8* %70 to i32*
  %72 = add i32 %gp_offset49, 8
  store i32 %72, i32* %gp_offset_p48
  br label %vaarg.end.57

vaarg.in_mem.53:                                  ; preds = %sw.bb
  %overflow_arg_area_p54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %68, i32 0, i32 2
  %overflow_arg_area55 = load i8*, i8** %overflow_arg_area_p54
  %73 = bitcast i8* %overflow_arg_area55 to i32*
  %overflow_arg_area.next56 = getelementptr i8, i8* %overflow_arg_area55, i32 8
  store i8* %overflow_arg_area.next56, i8** %overflow_arg_area_p54
  br label %vaarg.end.57

vaarg.end.57:                                     ; preds = %vaarg.in_mem.53, %vaarg.in_reg.51
  %vaarg.addr58 = phi i32* [ %71, %vaarg.in_reg.51 ], [ %73, %vaarg.in_mem.53 ]
  %74 = load i32, i32* %vaarg.addr58
  %75 = load %union._GTypeCValue*, %union._GTypeCValue** %_cvalue, align 8
  %v_int = bitcast %union._GTypeCValue* %75 to i32*
  store i32 %74, i32* %v_int, align 4
  br label %sw.epilog

sw.bb.59:                                         ; preds = %while.body.46
  %76 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %76, i32 0, i32 0
  %gp_offset61 = load i32, i32* %gp_offset_p60
  %fits_in_gp62 = icmp ule i32 %gp_offset61, 40
  br i1 %fits_in_gp62, label %vaarg.in_reg.63, label %vaarg.in_mem.65

vaarg.in_reg.63:                                  ; preds = %sw.bb.59
  %77 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %76, i32 0, i32 3
  %reg_save_area64 = load i8*, i8** %77
  %78 = getelementptr i8, i8* %reg_save_area64, i32 %gp_offset61
  %79 = bitcast i8* %78 to i64*
  %80 = add i32 %gp_offset61, 8
  store i32 %80, i32* %gp_offset_p60
  br label %vaarg.end.69

vaarg.in_mem.65:                                  ; preds = %sw.bb.59
  %overflow_arg_area_p66 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %76, i32 0, i32 2
  %overflow_arg_area67 = load i8*, i8** %overflow_arg_area_p66
  %81 = bitcast i8* %overflow_arg_area67 to i64*
  %overflow_arg_area.next68 = getelementptr i8, i8* %overflow_arg_area67, i32 8
  store i8* %overflow_arg_area.next68, i8** %overflow_arg_area_p66
  br label %vaarg.end.69

vaarg.end.69:                                     ; preds = %vaarg.in_mem.65, %vaarg.in_reg.63
  %vaarg.addr70 = phi i64* [ %79, %vaarg.in_reg.63 ], [ %81, %vaarg.in_mem.65 ]
  %82 = load i64, i64* %vaarg.addr70
  %83 = load %union._GTypeCValue*, %union._GTypeCValue** %_cvalue, align 8
  %v_long = bitcast %union._GTypeCValue* %83 to i64*
  store i64 %82, i64* %v_long, align 8
  br label %sw.epilog

sw.bb.71:                                         ; preds = %while.body.46
  %84 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p72 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %84, i32 0, i32 0
  %gp_offset73 = load i32, i32* %gp_offset_p72
  %fits_in_gp74 = icmp ule i32 %gp_offset73, 40
  br i1 %fits_in_gp74, label %vaarg.in_reg.75, label %vaarg.in_mem.77

vaarg.in_reg.75:                                  ; preds = %sw.bb.71
  %85 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %84, i32 0, i32 3
  %reg_save_area76 = load i8*, i8** %85
  %86 = getelementptr i8, i8* %reg_save_area76, i32 %gp_offset73
  %87 = bitcast i8* %86 to i64*
  %88 = add i32 %gp_offset73, 8
  store i32 %88, i32* %gp_offset_p72
  br label %vaarg.end.81

vaarg.in_mem.77:                                  ; preds = %sw.bb.71
  %overflow_arg_area_p78 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %84, i32 0, i32 2
  %overflow_arg_area79 = load i8*, i8** %overflow_arg_area_p78
  %89 = bitcast i8* %overflow_arg_area79 to i64*
  %overflow_arg_area.next80 = getelementptr i8, i8* %overflow_arg_area79, i32 8
  store i8* %overflow_arg_area.next80, i8** %overflow_arg_area_p78
  br label %vaarg.end.81

vaarg.end.81:                                     ; preds = %vaarg.in_mem.77, %vaarg.in_reg.75
  %vaarg.addr82 = phi i64* [ %87, %vaarg.in_reg.75 ], [ %89, %vaarg.in_mem.77 ]
  %90 = load i64, i64* %vaarg.addr82
  %91 = load %union._GTypeCValue*, %union._GTypeCValue** %_cvalue, align 8
  %v_int64 = bitcast %union._GTypeCValue* %91 to i64*
  store i64 %90, i64* %v_int64, align 8
  br label %sw.epilog

sw.bb.83:                                         ; preds = %while.body.46
  %92 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %92, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg.84, label %vaarg.in_mem.86

vaarg.in_reg.84:                                  ; preds = %sw.bb.83
  %93 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %92, i32 0, i32 3
  %reg_save_area85 = load i8*, i8** %93
  %94 = getelementptr i8, i8* %reg_save_area85, i32 %fp_offset
  %95 = bitcast i8* %94 to double*
  %96 = add i32 %fp_offset, 16
  store i32 %96, i32* %fp_offset_p
  br label %vaarg.end.90

vaarg.in_mem.86:                                  ; preds = %sw.bb.83
  %overflow_arg_area_p87 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %92, i32 0, i32 2
  %overflow_arg_area88 = load i8*, i8** %overflow_arg_area_p87
  %97 = bitcast i8* %overflow_arg_area88 to double*
  %overflow_arg_area.next89 = getelementptr i8, i8* %overflow_arg_area88, i32 8
  store i8* %overflow_arg_area.next89, i8** %overflow_arg_area_p87
  br label %vaarg.end.90

vaarg.end.90:                                     ; preds = %vaarg.in_mem.86, %vaarg.in_reg.84
  %vaarg.addr91 = phi double* [ %95, %vaarg.in_reg.84 ], [ %97, %vaarg.in_mem.86 ]
  %98 = load double, double* %vaarg.addr91
  %99 = load %union._GTypeCValue*, %union._GTypeCValue** %_cvalue, align 8
  %v_double = bitcast %union._GTypeCValue* %99 to double*
  store double %98, double* %v_double, align 8
  br label %sw.epilog

sw.bb.92:                                         ; preds = %while.body.46
  %100 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p93 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %100, i32 0, i32 0
  %gp_offset94 = load i32, i32* %gp_offset_p93
  %fits_in_gp95 = icmp ule i32 %gp_offset94, 40
  br i1 %fits_in_gp95, label %vaarg.in_reg.96, label %vaarg.in_mem.98

vaarg.in_reg.96:                                  ; preds = %sw.bb.92
  %101 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %100, i32 0, i32 3
  %reg_save_area97 = load i8*, i8** %101
  %102 = getelementptr i8, i8* %reg_save_area97, i32 %gp_offset94
  %103 = bitcast i8* %102 to i8**
  %104 = add i32 %gp_offset94, 8
  store i32 %104, i32* %gp_offset_p93
  br label %vaarg.end.102

vaarg.in_mem.98:                                  ; preds = %sw.bb.92
  %overflow_arg_area_p99 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %100, i32 0, i32 2
  %overflow_arg_area100 = load i8*, i8** %overflow_arg_area_p99
  %105 = bitcast i8* %overflow_arg_area100 to i8**
  %overflow_arg_area.next101 = getelementptr i8, i8* %overflow_arg_area100, i32 8
  store i8* %overflow_arg_area.next101, i8** %overflow_arg_area_p99
  br label %vaarg.end.102

vaarg.end.102:                                    ; preds = %vaarg.in_mem.98, %vaarg.in_reg.96
  %vaarg.addr103 = phi i8** [ %103, %vaarg.in_reg.96 ], [ %105, %vaarg.in_mem.98 ]
  %106 = load i8*, i8** %vaarg.addr103
  %107 = load %union._GTypeCValue*, %union._GTypeCValue** %_cvalue, align 8
  %v_pointer = bitcast %union._GTypeCValue* %107 to i8**
  store i8* %106, i8** %v_pointer, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.body.46
  br label %do.body.104

do.body.104:                                      ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 449, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_parameters_append_valist, i32 0, i32 0), i8* null) #10
  unreachable

do.end.105:                                       ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.105, %vaarg.end.102, %vaarg.end.90, %vaarg.end.81, %vaarg.end.69, %vaarg.end.57
  br label %while.cond.44

while.end:                                        ; preds = %while.cond.44
  %108 = load %struct._GTypeValueTable*, %struct._GTypeValueTable** %_vtab, align 8
  %collect_value = getelementptr inbounds %struct._GTypeValueTable, %struct._GTypeValueTable* %108, i32 0, i32 5
  %109 = load i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)** %collect_value, align 8
  %110 = load %struct._GValue*, %struct._GValue** %_val, align 8
  %111 = load i32, i32* %_n_values, align 4
  %arraydecay106 = getelementptr inbounds [8 x %union._GTypeCValue], [8 x %union._GTypeCValue]* %_cvalues, i32 0, i32 0
  %112 = load i32, i32* %_flags, align 4
  %call107 = call i8* %109(%struct._GValue* %110, i32 %111, %union._GTypeCValue* %arraydecay106, i32 %112)
  store i8* %call107, i8** %error, align 8
  br label %do.end.108

do.end.108:                                       ; preds = %while.end
  br label %do.end.109

do.end.109:                                       ; preds = %do.end.108
  %113 = load i8*, i8** %error, align 8
  %tobool110 = icmp ne i8* %113, null
  br i1 %tobool110, label %if.then.111, label %if.end.115

if.then.111:                                      ; preds = %do.end.109
  %114 = load i8*, i8** %error, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_parameters_append_valist, i32 0, i32 0), i8* %114)
  %115 = load i8*, i8** %error, align 8
  call void @g_free(i8* %115)
  %116 = load i32*, i32** %n_params.addr, align 8
  %117 = load i32, i32* %116, align 4
  %idxprom112 = sext i32 %117 to i64
  %118 = load %struct._GParameter*, %struct._GParameter** %params.addr, align 8
  %arrayidx113 = getelementptr inbounds %struct._GParameter, %struct._GParameter* %118, i64 %idxprom112
  %value114 = getelementptr inbounds %struct._GParameter, %struct._GParameter* %arrayidx113, i32 0, i32 1
  call void @g_value_unset(%struct._GValue* %value114)
  br label %while.end.128

if.end.115:                                       ; preds = %do.end.109
  %119 = load i32*, i32** %n_params.addr, align 8
  %120 = load i32, i32* %119, align 4
  %add116 = add nsw i32 %120, 1
  %121 = load i32*, i32** %n_params.addr, align 8
  store i32 %add116, i32* %121, align 4
  %122 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p117 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %122, i32 0, i32 0
  %gp_offset118 = load i32, i32* %gp_offset_p117
  %fits_in_gp119 = icmp ule i32 %gp_offset118, 40
  br i1 %fits_in_gp119, label %vaarg.in_reg.120, label %vaarg.in_mem.122

vaarg.in_reg.120:                                 ; preds = %if.end.115
  %123 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %122, i32 0, i32 3
  %reg_save_area121 = load i8*, i8** %123
  %124 = getelementptr i8, i8* %reg_save_area121, i32 %gp_offset118
  %125 = bitcast i8* %124 to i8**
  %126 = add i32 %gp_offset118, 8
  store i32 %126, i32* %gp_offset_p117
  br label %vaarg.end.126

vaarg.in_mem.122:                                 ; preds = %if.end.115
  %overflow_arg_area_p123 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %122, i32 0, i32 2
  %overflow_arg_area124 = load i8*, i8** %overflow_arg_area_p123
  %127 = bitcast i8* %overflow_arg_area124 to i8**
  %overflow_arg_area.next125 = getelementptr i8, i8* %overflow_arg_area124, i32 8
  store i8* %overflow_arg_area.next125, i8** %overflow_arg_area_p123
  br label %vaarg.end.126

vaarg.end.126:                                    ; preds = %vaarg.in_mem.122, %vaarg.in_reg.120
  %vaarg.addr127 = phi i8** [ %125, %vaarg.in_reg.120 ], [ %127, %vaarg.in_mem.122 ]
  %128 = load i8*, i8** %vaarg.addr127
  store i8* %128, i8** %param_name, align 8
  br label %while.cond

while.end.128:                                    ; preds = %if.then.111, %if.then.17, %while.cond
  %129 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %130 = bitcast %struct._GObjectClass* %129 to i8*
  call void @g_type_class_unref(i8* %130)
  %131 = load %struct._GParameter*, %struct._GParameter** %params.addr, align 8
  store %struct._GParameter* %131, %struct._GParameter** %retval
  br label %return

return:                                           ; preds = %while.end.128, %if.else.10, %if.else.3, %if.else
  %132 = load %struct._GParameter*, %struct._GParameter** %retval
  ret %struct._GParameter* %132
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i8* @g_type_class_ref(i64) #1

declare %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass*, i8*) #1

declare i8* @g_realloc_n(i8*, i64, i64) #1

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GTypeValueTable* @g_type_value_table_peek(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

declare void @g_free(i8*) #1

declare void @g_value_unset(%struct._GValue*) #1

declare void @g_type_class_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_parameters_free(%struct._GParameter* %params, i32 %n_params) #0 {
entry:
  %params.addr = alloca %struct._GParameter*, align 8
  %n_params.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GParameter* %params, %struct._GParameter** %params.addr, align 8
  store i32 %n_params, i32* %n_params.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GParameter*, %struct._GParameter** %params.addr, align 8
  %cmp = icmp ne %struct._GParameter* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load i32, i32* %n_params.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.body
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_parameters_free, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.4

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._GParameter*, %struct._GParameter** %params.addr, align 8
  %tobool = icmp ne %struct._GParameter* %2, null
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n_params.addr, align 4
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct._GParameter*, %struct._GParameter** %params.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GParameter, %struct._GParameter* %6, i64 %idxprom
  %value = getelementptr inbounds %struct._GParameter, %struct._GParameter* %arrayidx, i32 0, i32 1
  call void @g_value_unset(%struct._GValue* %value)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct._GParameter*, %struct._GParameter** %params.addr, align 8
  %9 = bitcast %struct._GParameter* %8 to i8*
  call void @g_free(i8* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %for.end, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_value_array_truncate(%struct._GValueArray* %args, i32 %n_values) #0 {
entry:
  %args.addr = alloca %struct._GValueArray*, align 8
  %n_values.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store i32 %n_values, i32* %n_values.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %cmp = icmp ne %struct._GValueArray* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_value_array_truncate, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %n_values.addr, align 4
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %do.body.1
  %2 = load i32, i32* %n_values.addr, align 4
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %n_values3 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 0
  %4 = load i32, i32* %n_values3, align 4
  %cmp4 = icmp ule i32 %2, %4
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  br label %if.end.7

if.else.6:                                        ; preds = %land.lhs.true, %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_value_array_truncate, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i32 0, i32 0))
  br label %for.end

if.end.7:                                         ; preds = %if.then.5
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %n_values9 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 0
  %6 = load i32, i32* %n_values9, align 4
  store i32 %6, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.8
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n_values.addr, align 4
  %cmp10 = icmp sgt i32 %7, %8
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %10 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %10, 1
  %call = call %struct._GValueArray* @g_value_array_remove(%struct._GValueArray* %9, i32 %sub)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else, %if.else.6, %for.cond
  ret void
}

declare %struct._GValueArray* @g_value_array_remove(%struct._GValueArray*, i32) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_get_temp_filename(%struct._Gimp* %gimp, i8* %extension) #0 {
entry:
  %retval = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %extension.addr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %basename = alloca i8*, align 8
  %path = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %extension, i8** %extension.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_get_temp_filename, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* @gimp_get_temp_filename.id, align 4
  %cmp11 = icmp eq i32 %13, 0
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %call13 = call i32 @get_pid()
  store i32 %call13, i32* @gimp_get_temp_filename.pid, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %14 = load i8*, i8** %extension.addr, align 8
  %tobool15 = icmp ne i8* %14, null
  br i1 %tobool15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.end.14
  %15 = load i32, i32* @gimp_get_temp_filename.pid, align 4
  %16 = load i32, i32* @gimp_get_temp_filename.id, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* @gimp_get_temp_filename.id, align 4
  %17 = load i8*, i8** %extension.addr, align 8
  %call17 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 %15, i32 %16, i8* %17)
  store i8* %call17, i8** %basename, align 8
  br label %if.end.21

if.else.18:                                       ; preds = %if.end.14
  %18 = load i32, i32* @gimp_get_temp_filename.pid, align 4
  %19 = load i32, i32* @gimp_get_temp_filename.id, align 4
  %inc19 = add nsw i32 %19, 1
  store i32 %inc19, i32* @gimp_get_temp_filename.id, align 4
  %call20 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i32 %18, i32 %19)
  store i8* %call20, i8** %basename, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.16
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %20, i32 0, i32 1
  %21 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %22 = bitcast %struct._GimpCoreConfig* %21 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_base_config_get_type() #9
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call22)
  %23 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpBaseConfig*
  %temp_path = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %23, i32 0, i32 1
  %24 = load i8*, i8** %temp_path, align 8
  %call24 = call noalias i8* @gimp_config_path_expand(i8* %24, i32 1, %struct._GError** null)
  store i8* %call24, i8** %path, align 8
  %25 = load i8*, i8** %path, align 8
  %26 = load i8*, i8** %basename, align 8
  %call25 = call noalias i8* (i8*, ...) @g_build_filename(i8* %25, i8* %26, i8* null)
  store i8* %call25, i8** %filename, align 8
  %27 = load i8*, i8** %path, align 8
  call void @g_free(i8* %27)
  %28 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %28)
  %29 = load i8*, i8** %filename, align 8
  store i8* %29, i8** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.else.9
  %30 = load i8*, i8** %retval
  ret i8* %30
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #3

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare i32 @get_pid() #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare noalias i8* @gimp_config_path_expand(i8*, i32, %struct._GError**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_base_config_get_type() #3

declare noalias i8* @g_build_filename(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_markup_extract_text(i8* %markup) #0 {
entry:
  %retval = alloca i8*, align 8
  %markup.addr = alloca i8*, align 8
  %string = alloca %struct._GString*, align 8
  %p = alloca i8*, align 8
  %in_tag = alloca i32, align 4
  store i8* %markup, i8** %markup.addr, align 8
  store i32 0, i32* %in_tag, align 4
  %0 = load i8*, i8** %markup.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call, %struct._GString** %string, align 8
  %1 = load i8*, i8** %markup.addr, align 8
  store i8* %1, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %tobool1 = icmp ne i8 %3, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %in_tag, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %for.body
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 62
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  store i32 0, i32* %in_tag, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  br label %if.end.14

if.else:                                          ; preds = %for.body
  %7 = load i8*, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 60
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  store i32 1, i32* %in_tag, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %if.else
  %9 = load %struct._GString*, %struct._GString** %string, align 8
  %10 = load i8*, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %call12 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %9, i8 signext %11)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %12 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct._GString*, %struct._GString** %string, align 8
  %call15 = call i32 @unescape_gstring(%struct._GString* %13)
  %14 = load %struct._GString*, %struct._GString** %string, align 8
  %call16 = call i8* @g_string_free(%struct._GString* %14, i32 0)
  store i8* %call16, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %15 = load i8*, i8** %retval
  ret i8* %15
}

declare %struct._GString* @g_string_new(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #7 {
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

; Function Attrs: nounwind uwtable
define internal i32 @unescape_gstring(%struct._GString* %string) #0 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca %struct._GString*, align 8
  %from = alloca i8*, align 8
  %to = alloca i8*, align 8
  %is_hex = alloca i32, align 4
  %l = alloca i64, align 8
  %end = alloca i8*, align 8
  %buf = alloca [8 x i8], align 1
  store %struct._GString* %string, %struct._GString** %string.addr, align 8
  %0 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 0
  %1 = load i8*, i8** %str, align 8
  store i8* %1, i8** %to, align 8
  store i8* %1, i8** %from, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %from, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %from, align 8
  %5 = load i8, i8* %4, align 1
  %6 = load i8*, i8** %to, align 8
  store i8 %5, i8* %6, align 1
  %7 = load i8*, i8** %to, align 8
  %8 = load i8, i8* %7, align 1
  %conv2 = sext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv2, 13
  br i1 %cmp3, label %if.then, label %if.end.9

if.then:                                          ; preds = %for.body
  %9 = load i8*, i8** %to, align 8
  store i8 10, i8* %9, align 1
  %10 = load i8*, i8** %from, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx, align 1
  %conv5 = sext i8 %11 to i32
  %cmp6 = icmp eq i32 %conv5, 10
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %12 = load i8*, i8** %from, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %from, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %for.body
  %13 = load i8*, i8** %from, align 8
  %14 = load i8, i8* %13, align 1
  %conv10 = sext i8 %14 to i32
  %cmp11 = icmp eq i32 %conv10, 38
  br i1 %cmp11, label %if.then.13, label %if.end.106

if.then.13:                                       ; preds = %if.end.9
  %15 = load i8*, i8** %from, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr14, i8** %from, align 8
  %16 = load i8*, i8** %from, align 8
  %17 = load i8, i8* %16, align 1
  %conv15 = sext i8 %17 to i32
  %cmp16 = icmp eq i32 %conv15, 35
  br i1 %cmp16, label %if.then.18, label %if.else.69

if.then.18:                                       ; preds = %if.then.13
  store i32 0, i32* %is_hex, align 4
  store i8* null, i8** %end, align 8
  %18 = load i8*, i8** %from, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr19, i8** %from, align 8
  %19 = load i8*, i8** %from, align 8
  %20 = load i8, i8* %19, align 1
  %conv20 = sext i8 %20 to i32
  %cmp21 = icmp eq i32 %conv20, 120
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.then.18
  store i32 1, i32* %is_hex, align 4
  %21 = load i8*, i8** %from, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr24, i8** %from, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.then.18
  %call = call i32* @__errno_location() #9
  store i32 0, i32* %call, align 4
  %22 = load i32, i32* %is_hex, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.25
  %23 = load i8*, i8** %from, align 8
  %call27 = call i64 @strtoul(i8* %23, i8** %end, i32 16) #5
  store i64 %call27, i64* %l, align 8
  br label %if.end.29

if.else:                                          ; preds = %if.end.25
  %24 = load i8*, i8** %from, align 8
  %call28 = call i64 @strtoul(i8* %24, i8** %end, i32 10) #5
  store i64 %call28, i64* %l, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.26
  %25 = load i8*, i8** %end, align 8
  %26 = load i8*, i8** %from, align 8
  %cmp30 = icmp eq i8* %25, %26
  br i1 %cmp30, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.29
  %call32 = call i32* @__errno_location() #9
  %27 = load i32, i32* %call32, align 4
  %cmp33 = icmp ne i32 %27, 0
  br i1 %cmp33, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %lor.lhs.false, %if.end.29
  store i32 0, i32* %retval
  br label %return

if.else.36:                                       ; preds = %lor.lhs.false
  %28 = load i8*, i8** %end, align 8
  %29 = load i8, i8* %28, align 1
  %conv37 = sext i8 %29 to i32
  %cmp38 = icmp ne i32 %conv37, 59
  br i1 %cmp38, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.else.36
  store i32 0, i32* %retval
  br label %return

if.else.41:                                       ; preds = %if.else.36
  %30 = load i64, i64* %l, align 8
  %cmp42 = icmp ult i64 0, %30
  br i1 %cmp42, label %land.lhs.true, label %lor.lhs.false.46

land.lhs.true:                                    ; preds = %if.else.41
  %31 = load i64, i64* %l, align 8
  %cmp44 = icmp ule i64 %31, 55295
  br i1 %cmp44, label %if.then.58, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %land.lhs.true, %if.else.41
  %32 = load i64, i64* %l, align 8
  %cmp47 = icmp ule i64 57344, %32
  br i1 %cmp47, label %land.lhs.true.49, label %lor.lhs.false.52

land.lhs.true.49:                                 ; preds = %lor.lhs.false.46
  %33 = load i64, i64* %l, align 8
  %cmp50 = icmp ule i64 %33, 65533
  br i1 %cmp50, label %if.then.58, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %land.lhs.true.49, %lor.lhs.false.46
  %34 = load i64, i64* %l, align 8
  %cmp53 = icmp ule i64 65536, %34
  br i1 %cmp53, label %land.lhs.true.55, label %if.else.65

land.lhs.true.55:                                 ; preds = %lor.lhs.false.52
  %35 = load i64, i64* %l, align 8
  %cmp56 = icmp ule i64 %35, 1114111
  br i1 %cmp56, label %if.then.58, label %if.else.65

if.then.58:                                       ; preds = %land.lhs.true.55, %land.lhs.true.49, %land.lhs.true
  %36 = load i64, i64* %l, align 8
  %conv59 = trunc i64 %36 to i32
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  %call60 = call i8* @char_str(i32 %conv59, i8* %arraydecay)
  %37 = load i8*, i8** %to, align 8
  %arraydecay61 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  %call62 = call i8* @strcpy(i8* %37, i8* %arraydecay61) #5
  %arraydecay63 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  %call64 = call i64 @strlen(i8* %arraydecay63) #8
  %sub = sub i64 %call64, 1
  %38 = load i8*, i8** %to, align 8
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 %sub
  store i8* %add.ptr, i8** %to, align 8
  %39 = load i8*, i8** %end, align 8
  store i8* %39, i8** %from, align 8
  br label %if.end.66

if.else.65:                                       ; preds = %land.lhs.true.55, %lor.lhs.false.52
  store i32 0, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.then.58
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67
  br label %if.end.105

if.else.69:                                       ; preds = %if.then.13
  %40 = load i8*, i8** %from, align 8
  %call70 = call i32 @strncmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i64 3) #8
  %cmp71 = icmp eq i32 %call70, 0
  br i1 %cmp71, label %if.then.73, label %if.else.75

if.then.73:                                       ; preds = %if.else.69
  %41 = load i8*, i8** %to, align 8
  store i8 60, i8* %41, align 1
  %42 = load i8*, i8** %from, align 8
  %add.ptr74 = getelementptr inbounds i8, i8* %42, i64 2
  store i8* %add.ptr74, i8** %from, align 8
  br label %if.end.104

if.else.75:                                       ; preds = %if.else.69
  %43 = load i8*, i8** %from, align 8
  %call76 = call i32 @strncmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i64 3) #8
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %if.then.79, label %if.else.81

if.then.79:                                       ; preds = %if.else.75
  %44 = load i8*, i8** %to, align 8
  store i8 62, i8* %44, align 1
  %45 = load i8*, i8** %from, align 8
  %add.ptr80 = getelementptr inbounds i8, i8* %45, i64 2
  store i8* %add.ptr80, i8** %from, align 8
  br label %if.end.103

if.else.81:                                       ; preds = %if.else.75
  %46 = load i8*, i8** %from, align 8
  %call82 = call i32 @strncmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i64 4) #8
  %cmp83 = icmp eq i32 %call82, 0
  br i1 %cmp83, label %if.then.85, label %if.else.87

if.then.85:                                       ; preds = %if.else.81
  %47 = load i8*, i8** %to, align 8
  store i8 38, i8* %47, align 1
  %48 = load i8*, i8** %from, align 8
  %add.ptr86 = getelementptr inbounds i8, i8* %48, i64 3
  store i8* %add.ptr86, i8** %from, align 8
  br label %if.end.102

if.else.87:                                       ; preds = %if.else.81
  %49 = load i8*, i8** %from, align 8
  %call88 = call i32 @strncmp(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i64 5) #8
  %cmp89 = icmp eq i32 %call88, 0
  br i1 %cmp89, label %if.then.91, label %if.else.93

if.then.91:                                       ; preds = %if.else.87
  %50 = load i8*, i8** %to, align 8
  store i8 34, i8* %50, align 1
  %51 = load i8*, i8** %from, align 8
  %add.ptr92 = getelementptr inbounds i8, i8* %51, i64 4
  store i8* %add.ptr92, i8** %from, align 8
  br label %if.end.101

if.else.93:                                       ; preds = %if.else.87
  %52 = load i8*, i8** %from, align 8
  %call94 = call i32 @strncmp(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i64 5) #8
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %if.then.97, label %if.else.99

if.then.97:                                       ; preds = %if.else.93
  %53 = load i8*, i8** %to, align 8
  store i8 39, i8* %53, align 1
  %54 = load i8*, i8** %from, align 8
  %add.ptr98 = getelementptr inbounds i8, i8* %54, i64 4
  store i8* %add.ptr98, i8** %from, align 8
  br label %if.end.100

if.else.99:                                       ; preds = %if.else.93
  store i32 0, i32* %retval
  br label %return

if.end.100:                                       ; preds = %if.then.97
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.91
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.85
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.79
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.73
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.68
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.106
  %55 = load i8*, i8** %from, align 8
  %incdec.ptr107 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr107, i8** %from, align 8
  %56 = load i8*, i8** %to, align 8
  %incdec.ptr108 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr108, i8** %to, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %57 = load i8*, i8** %to, align 8
  %58 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %str109 = getelementptr inbounds %struct._GString, %struct._GString* %58, i32 0, i32 0
  %59 = load i8*, i8** %str109, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %57 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %59 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %60 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %60, i32 0, i32 1
  %61 = load i64, i64* %len, align 8
  %cmp110 = icmp ule i64 %sub.ptr.sub, %61
  br i1 %cmp110, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %do.body
  br label %if.end.114

if.else.113:                                      ; preds = %do.body
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 646, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.unescape_gstring, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i32 0, i32 0)) #10
  unreachable

if.end.114:                                       ; preds = %if.then.112
  br label %do.end

do.end:                                           ; preds = %if.end.114
  %62 = load i8*, i8** %to, align 8
  %63 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %str115 = getelementptr inbounds %struct._GString, %struct._GString* %63, i32 0, i32 0
  %64 = load i8*, i8** %str115, align 8
  %sub.ptr.lhs.cast116 = ptrtoint i8* %62 to i64
  %sub.ptr.rhs.cast117 = ptrtoint i8* %64 to i64
  %sub.ptr.sub118 = sub i64 %sub.ptr.lhs.cast116, %sub.ptr.rhs.cast117
  %65 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %len119 = getelementptr inbounds %struct._GString, %struct._GString* %65, i32 0, i32 1
  %66 = load i64, i64* %len119, align 8
  %cmp120 = icmp ne i64 %sub.ptr.sub118, %66
  br i1 %cmp120, label %if.then.122, label %if.end.128

if.then.122:                                      ; preds = %do.end
  %67 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %68 = load i8*, i8** %to, align 8
  %69 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %str123 = getelementptr inbounds %struct._GString, %struct._GString* %69, i32 0, i32 0
  %70 = load i8*, i8** %str123, align 8
  %sub.ptr.lhs.cast124 = ptrtoint i8* %68 to i64
  %sub.ptr.rhs.cast125 = ptrtoint i8* %70 to i64
  %sub.ptr.sub126 = sub i64 %sub.ptr.lhs.cast124, %sub.ptr.rhs.cast125
  %call127 = call %struct._GString* @g_string_truncate(%struct._GString* %67, i64 %sub.ptr.sub126)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.122, %do.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.128, %if.else.99, %if.else.65, %if.then.40, %if.then.35
  %71 = load i32, i32* %retval
  ret i32 %71
}

declare i8* @g_string_free(%struct._GString*, i32) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_enum_get_value_name(i64 %enum_type, i32 %value) #0 {
entry:
  %enum_type.addr = alloca i64, align 8
  %value.addr = alloca i32, align 4
  %value_name = alloca i8*, align 8
  store i64 %enum_type, i64* %enum_type.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* null, i8** %value_name, align 8
  %0 = load i64, i64* %enum_type.addr, align 8
  %1 = load i32, i32* %value.addr, align 4
  %call = call i32 @gimp_enum_get_value(i64 %0, i32 %1, i8** %value_name, i8** null, i8** null, i8** null)
  %2 = load i8*, i8** %value_name, align 8
  ret i8* %2
}

declare i32 @gimp_enum_get_value(i64, i32, i8**, i8**, i8**, i8**) #1

; Function Attrs: nounwind uwtable
define void @gimp_constrain_line(double %start_x, double %start_y, double* %end_x, double* %end_y, i32 %n_snap_lines) #0 {
entry:
  %start_x.addr = alloca double, align 8
  %start_y.addr = alloca double, align 8
  %end_x.addr = alloca double*, align 8
  %end_y.addr = alloca double*, align 8
  %n_snap_lines.addr = alloca i32, align 4
  %line_point = alloca %struct._GimpVector2, align 8
  %point = alloca %struct._GimpVector2, align 8
  %constrained_point = alloca %struct._GimpVector2, align 8
  %line_dir = alloca %struct._GimpVector2, align 8
  %shortest_dist_moved = alloca double, align 8
  %dist_moved = alloca double, align 8
  %angle = alloca double, align 8
  %i = alloca i32, align 4
  store double %start_x, double* %start_x.addr, align 8
  store double %start_y, double* %start_y.addr, align 8
  store double* %end_x, double** %end_x.addr, align 8
  store double* %end_y, double** %end_y.addr, align 8
  store i32 %n_snap_lines, i32* %n_snap_lines.addr, align 4
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %line_point, i32 0, i32 0
  %0 = load double, double* %start_x.addr, align 8
  store double %0, double* %x, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %line_point, i32 0, i32 1
  %1 = load double, double* %start_y.addr, align 8
  store double %1, double* %y, align 8
  %x1 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point, i32 0, i32 0
  %2 = load double*, double** %end_x.addr, align 8
  %3 = load double, double* %2, align 8
  store double %3, double* %x1, align 8
  %y2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point, i32 0, i32 1
  %4 = load double*, double** %end_y.addr, align 8
  %5 = load double, double* %4, align 8
  store double %5, double* %y2, align 8
  store double 0x7FEFFFFFFFFFFFFF, double* %shortest_dist_moved, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n_snap_lines.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %conv = sitofp i32 %8 to double
  %mul = fmul double %conv, 0x400921FB54442D18
  %9 = load i32, i32* %n_snap_lines.addr, align 4
  %conv3 = sitofp i32 %9 to double
  %div = fdiv double %mul, %conv3
  store double %div, double* %angle, align 8
  %10 = load double, double* %angle, align 8
  %call = call double @cos(double %10) #5
  %11 = load double, double* %angle, align 8
  %call4 = call double @sin(double %11) #5
  call void @gimp_vector2_set(%struct._GimpVector2* %line_dir, double %call, double %call4)
  %call5 = call double @gimp_utils_point_to_line_distance(%struct._GimpVector2* %point, %struct._GimpVector2* %line_point, %struct._GimpVector2* %line_dir, %struct._GimpVector2* %constrained_point)
  store double %call5, double* %dist_moved, align 8
  %12 = load double, double* %dist_moved, align 8
  %13 = load double, double* %shortest_dist_moved, align 8
  %cmp6 = fcmp olt double %12, %13
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = load double, double* %dist_moved, align 8
  store double %14, double* %shortest_dist_moved, align 8
  %x8 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %constrained_point, i32 0, i32 0
  %15 = load double, double* %x8, align 8
  %16 = load double*, double** %end_x.addr, align 8
  store double %15, double* %16, align 8
  %y9 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %constrained_point, i32 0, i32 1
  %17 = load double, double* %y9, align 8
  %18 = load double*, double** %end_y.addr, align 8
  store double %17, double* %18, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_vector2_set(%struct._GimpVector2*, double, double) #1

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind uwtable
define internal double @gimp_utils_point_to_line_distance(%struct._GimpVector2* %point, %struct._GimpVector2* %point_on_line, %struct._GimpVector2* %line_direction, %struct._GimpVector2* %closest_line_point) #0 {
entry:
  %point.addr = alloca %struct._GimpVector2*, align 8
  %point_on_line.addr = alloca %struct._GimpVector2*, align 8
  %line_direction.addr = alloca %struct._GimpVector2*, align 8
  %closest_line_point.addr = alloca %struct._GimpVector2*, align 8
  %distance_vector = alloca %struct._GimpVector2, align 8
  %tmp_a = alloca %struct._GimpVector2, align 8
  %tmp_b = alloca %struct._GimpVector2, align 8
  %d = alloca double, align 8
  %coerce = alloca %struct._GimpVector2, align 8
  %coerce3 = alloca %struct._GimpVector2, align 8
  store %struct._GimpVector2* %point, %struct._GimpVector2** %point.addr, align 8
  store %struct._GimpVector2* %point_on_line, %struct._GimpVector2** %point_on_line.addr, align 8
  store %struct._GimpVector2* %line_direction, %struct._GimpVector2** %line_direction.addr, align 8
  store %struct._GimpVector2* %closest_line_point, %struct._GimpVector2** %closest_line_point.addr, align 8
  %0 = load %struct._GimpVector2*, %struct._GimpVector2** %point.addr, align 8
  %1 = load %struct._GimpVector2*, %struct._GimpVector2** %point_on_line.addr, align 8
  call void @gimp_vector2_sub(%struct._GimpVector2* %tmp_a, %struct._GimpVector2* %0, %struct._GimpVector2* %1)
  %2 = load %struct._GimpVector2*, %struct._GimpVector2** %line_direction.addr, align 8
  %call = call double @gimp_vector2_inner_product(%struct._GimpVector2* %tmp_a, %struct._GimpVector2* %2)
  store double %call, double* %d, align 8
  %3 = load %struct._GimpVector2*, %struct._GimpVector2** %line_direction.addr, align 8
  %4 = load double, double* %d, align 8
  %5 = bitcast %struct._GimpVector2* %3 to { double, double }*
  %6 = getelementptr { double, double }, { double, double }* %5, i32 0, i32 0
  %7 = load double, double* %6, align 1
  %8 = getelementptr { double, double }, { double, double }* %5, i32 0, i32 1
  %9 = load double, double* %8, align 1
  %call1 = call { double, double } @gimp_vector2_mul_val(double %7, double %9, double %4)
  %10 = bitcast %struct._GimpVector2* %coerce to { double, double }*
  %11 = getelementptr { double, double }, { double, double }* %10, i32 0, i32 0
  %12 = extractvalue { double, double } %call1, 0
  store double %12, double* %11, align 8
  %13 = getelementptr { double, double }, { double, double }* %10, i32 0, i32 1
  %14 = extractvalue { double, double } %call1, 1
  store double %14, double* %13, align 8
  %15 = bitcast %struct._GimpVector2* %tmp_b to i8*
  %16 = bitcast %struct._GimpVector2* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  %17 = load %struct._GimpVector2*, %struct._GimpVector2** %closest_line_point.addr, align 8
  %18 = load %struct._GimpVector2*, %struct._GimpVector2** %point_on_line.addr, align 8
  %19 = bitcast %struct._GimpVector2* %18 to { double, double }*
  %20 = getelementptr { double, double }, { double, double }* %19, i32 0, i32 0
  %21 = load double, double* %20, align 1
  %22 = getelementptr { double, double }, { double, double }* %19, i32 0, i32 1
  %23 = load double, double* %22, align 1
  %24 = bitcast %struct._GimpVector2* %tmp_b to { double, double }*
  %25 = getelementptr { double, double }, { double, double }* %24, i32 0, i32 0
  %26 = load double, double* %25, align 1
  %27 = getelementptr { double, double }, { double, double }* %24, i32 0, i32 1
  %28 = load double, double* %27, align 1
  %call2 = call { double, double } @gimp_vector2_add_val(double %21, double %23, double %26, double %28)
  %29 = bitcast %struct._GimpVector2* %coerce3 to { double, double }*
  %30 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 0
  %31 = extractvalue { double, double } %call2, 0
  store double %31, double* %30, align 8
  %32 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 1
  %33 = extractvalue { double, double } %call2, 1
  store double %33, double* %32, align 8
  %34 = bitcast %struct._GimpVector2* %17 to i8*
  %35 = bitcast %struct._GimpVector2* %coerce3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 16, i32 8, i1 false)
  %36 = load %struct._GimpVector2*, %struct._GimpVector2** %closest_line_point.addr, align 8
  %37 = load %struct._GimpVector2*, %struct._GimpVector2** %point.addr, align 8
  call void @gimp_vector2_sub(%struct._GimpVector2* %distance_vector, %struct._GimpVector2* %36, %struct._GimpVector2* %37)
  %call4 = call double @gimp_vector2_length(%struct._GimpVector2* %distance_vector)
  ret double %call4
}

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #4

; Function Attrs: nounwind uwtable
define internal i8* @char_str(i32 %c, i8* %buf) #0 {
entry:
  %c.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  store i32 %c, i32* %c.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 8, i32 1, i1 false)
  %1 = load i32, i32* %c.addr, align 4
  %2 = load i8*, i8** %buf.addr, align 8
  %call = call i32 @g_unichar_to_utf8(i32 %1, i8* %2)
  %3 = load i8*, i8** %buf.addr, align 8
  ret i8* %3
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #1

declare i32 @g_unichar_to_utf8(i32, i8*) #1

declare void @gimp_vector2_sub(%struct._GimpVector2*, %struct._GimpVector2*, %struct._GimpVector2*) #1

declare double @gimp_vector2_inner_product(%struct._GimpVector2*, %struct._GimpVector2*) #1

declare { double, double } @gimp_vector2_mul_val(double, double, double) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare { double, double } @gimp_vector2_add_val(double, double, double, double) #1

declare double @gimp_vector2_length(%struct._GimpVector2*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
