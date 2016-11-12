; ModuleID = './app/core/gimptagcache.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTagCacheClass = type { %struct._GimpObjectClass }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpTagCache = type { %struct._GimpObject, %struct._GimpTagCachePriv* }
%struct._GimpTagCachePriv = type { %struct._GArray*, %struct._GList* }
%struct._GArray = type { i8*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpTagged = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GError = type { i32, i32, i8* }
%struct.GimpTagCacheRecord = type { i32, i32, %struct._GList*, i8 }
%struct._GimpTag = type { %struct._GObject, i32, i32, i32 }
%struct._GMarkupParser = type { void (%struct._GMarkupParseContext*, i8*, i8**, i8**, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, %struct._GError*, i8*)* }
%struct._GMarkupParseContext = type opaque
%struct._GimpXmlParser = type opaque
%struct.GimpTagCacheParseData = type { %struct._GArray*, %struct.GimpTagCacheRecord }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_tag_cache_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpTagCache\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_tag_cache_add_container = private unnamed_addr constant [29 x i8] c"gimp_tag_cache_add_container\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_TAG_CACHE (cache)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"GIMP_IS_CONTAINER (container)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@__func__.gimp_tag_cache_save = private unnamed_addr constant [20 x i8] c"gimp_tag_cache_save\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"<?xml version='1.0' encoding='UTF-8'?>\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"<tags>\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"\0A  <resource identifier=\22%s\22 checksum=\22%s\22>\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"    <tag>%s</tag>\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"  </resource>\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"</tags>\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"tags.xml\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Error while saving tag cache: %s\0A\00", align 1
@__func__.gimp_tag_cache_load = private unnamed_addr constant [20 x i8] c"gimp_tag_cache_load\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Failed to parse tag cache: %s\0A\00", align 1
@gimp_tag_cache_parent_class = internal global i8* null, align 8
@GimpTagCache_private_offset = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"resource\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"checksum\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"Resource tag does not contain required attribute identifier.\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"gimp-tag-cache-error-quark\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"Tag value is too long.\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"dropping invalid tag '%s' from '%s'\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"Tag cache parse error: %s\0A\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_tag_cache_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_tag_cache_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_tag_cache_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 160, void (i8*, i8*)* bitcast (void (i8*)* @gimp_tag_cache_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTagCache*)* @gimp_tag_cache_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_tag_cache_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_tag_cache_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_cache_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_tag_cache_parent_class, align 8
  %1 = load i32, i32* @GimpTagCache_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTagCache_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTagCacheClass*
  call void @gimp_tag_cache_class_init(%struct._GimpTagCacheClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_cache_init(%struct._GimpTagCache* %cache) #3 {
entry:
  %cache.addr = alloca %struct._GimpTagCache*, align 8
  store %struct._GimpTagCache* %cache, %struct._GimpTagCache** %cache.addr, align 8
  %0 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %1 = bitcast %struct._GimpTagCache* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_cache_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpTagCachePriv*
  %3 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %priv = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %3, i32 0, i32 1
  store %struct._GimpTagCachePriv* %2, %struct._GimpTagCachePriv** %priv, align 8
  %call2 = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 24)
  %4 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %priv3 = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %4, i32 0, i32 1
  %5 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv3, align 8
  %records = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %5, i32 0, i32 0
  store %struct._GArray* %call2, %struct._GArray** %records, align 8
  %6 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %priv4 = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %6, i32 0, i32 1
  %7 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv4, align 8
  %containers = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %7, i32 0, i32 1
  store %struct._GList* null, %struct._GList** %containers, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpTagCache* @gimp_tag_cache_new() #3 {
entry:
  %call = call i64 @gimp_tag_cache_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpTagCache*
  ret %struct._GimpTagCache* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_tag_cache_add_container(%struct._GimpTagCache* %cache, %struct._GimpContainer* %container) #3 {
entry:
  %cache.addr = alloca %struct._GimpTagCache*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTagCache* %cache, %struct._GimpTagCache** %cache.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %1 = bitcast %struct._GimpTagCache* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tag_cache_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_tag_cache_add_container, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %14 = bitcast %struct._GimpContainer* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_container_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_tag_cache_add_container, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %priv = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %26, i32 0, i32 1
  %27 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv, align 8
  %containers = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %27, i32 0, i32 1
  %28 = load %struct._GList*, %struct._GList** %containers, align 8
  %29 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %30 = bitcast %struct._GimpContainer* %29 to i8*
  %call39 = call %struct._GList* @g_list_append(%struct._GList* %28, i8* %30)
  %31 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %priv40 = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %31, i32 0, i32 1
  %32 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv40, align 8
  %containers41 = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %32, i32 0, i32 1
  store %struct._GList* %call39, %struct._GList** %containers41, align 8
  %33 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %34 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %35 = bitcast %struct._GimpTagCache* %34 to i8*
  call void @gimp_container_foreach(%struct._GimpContainer* %33, void (i8*, i8*)* bitcast (void (%struct._GimpTagged*, %struct._GimpTagCache*)* @gimp_tag_cache_object_initialize to void (i8*, i8*)*), i8* %35)
  %36 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %37 = bitcast %struct._GimpContainer* %36 to i8*
  %38 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %39 = bitcast %struct._GimpTagCache* %38 to i8*
  %call42 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTagCache*, %struct._GimpTagged*, %struct._GimpContainer*)* @gimp_tag_cache_container_add_callback to void ()*), i8* %39, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare void @gimp_container_foreach(%struct._GimpContainer*, void (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_cache_object_initialize(%struct._GimpTagged* %tagged, %struct._GimpTagCache* %cache) #3 {
entry:
  %tagged.addr = alloca %struct._GimpTagged*, align 8
  %cache.addr = alloca %struct._GimpTagCache*, align 8
  store %struct._GimpTagged* %tagged, %struct._GimpTagged** %tagged.addr, align 8
  store %struct._GimpTagCache* %cache, %struct._GimpTagCache** %cache.addr, align 8
  %0 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %1 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  call void @gimp_tag_cache_add_object(%struct._GimpTagCache* %0, %struct._GimpTagged* %1)
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_cache_container_add_callback(%struct._GimpTagCache* %cache, %struct._GimpTagged* %tagged, %struct._GimpContainer* %not_used) #3 {
entry:
  %cache.addr = alloca %struct._GimpTagCache*, align 8
  %tagged.addr = alloca %struct._GimpTagged*, align 8
  %not_used.addr = alloca %struct._GimpContainer*, align 8
  store %struct._GimpTagCache* %cache, %struct._GimpTagCache** %cache.addr, align 8
  store %struct._GimpTagged* %tagged, %struct._GimpTagged** %tagged.addr, align 8
  store %struct._GimpContainer* %not_used, %struct._GimpContainer** %not_used.addr, align 8
  %0 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %1 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  call void @gimp_tag_cache_add_object(%struct._GimpTagCache* %0, %struct._GimpTagged* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_tag_cache_save(%struct._GimpTagCache* %cache) #3 {
entry:
  %cache.addr = alloca %struct._GimpTagCache*, align 8
  %buf = alloca %struct._GString*, align 8
  %saved_records = alloca %struct._GList*, align 8
  %iterator = alloca %struct._GList*, align 8
  %filename = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %current_record = alloca %struct.GimpTagCacheRecord*, align 8
  %record_copy = alloca %struct.GimpTagCacheRecord*, align 8
  %cache_rec = alloca %struct.GimpTagCacheRecord*, align 8
  %tag_iterator = alloca %struct._GList*, align 8
  %identifier_string = alloca i8*, align 8
  %tag_string = alloca i8*, align 8
  %tag = alloca %struct._GimpTag*, align 8
  %cache_rec99 = alloca %struct.GimpTagCacheRecord*, align 8
  store %struct._GimpTagCache* %cache, %struct._GimpTagCache** %cache.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %1 = bitcast %struct._GimpTagCache* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tag_cache_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_tag_cache_save, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store %struct._GList* null, %struct._GList** %saved_records, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %13 = load i32, i32* %i, align 4
  %14 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %priv = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %14, i32 0, i32 1
  %15 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv, align 8
  %records = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %15, i32 0, i32 0
  %16 = load %struct._GArray*, %struct._GArray** %records, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %16, i32 0, i32 1
  %17 = load i32, i32* %len, align 4
  %cmp11 = icmp ult i32 %13, %17
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %priv13 = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %19, i32 0, i32 1
  %20 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv13, align 8
  %records14 = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %20, i32 0, i32 0
  %21 = load %struct._GArray*, %struct._GArray** %records14, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %21, i32 0, i32 0
  %22 = load i8*, i8** %data, align 8
  %23 = bitcast i8* %22 to %struct.GimpTagCacheRecord*
  %arrayidx = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %23, i64 %idxprom
  store %struct.GimpTagCacheRecord* %arrayidx, %struct.GimpTagCacheRecord** %current_record, align 8
  %24 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %current_record, align 8
  %referenced = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %24, i32 0, i32 3
  %bf.load = load i8, i8* %referenced, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool15 = icmp ne i32 %bf.cast, 0
  br i1 %tobool15, label %if.end.27, label %land.lhs.true.16

land.lhs.true.16:                                 ; preds = %for.body
  %25 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %current_record, align 8
  %tags = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %25, i32 0, i32 2
  %26 = load %struct._GList*, %struct._GList** %tags, align 8
  %tobool17 = icmp ne %struct._GList* %26, null
  br i1 %tobool17, label %if.then.18, label %if.end.27

if.then.18:                                       ; preds = %land.lhs.true.16
  %call20 = call noalias i8* @g_malloc_n(i64 1, i64 24)
  %27 = bitcast i8* %call20 to %struct.GimpTagCacheRecord*
  store %struct.GimpTagCacheRecord* %27, %struct.GimpTagCacheRecord** %record_copy, align 8
  %28 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %current_record, align 8
  %identifier = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %28, i32 0, i32 0
  %29 = load i32, i32* %identifier, align 4
  %30 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %record_copy, align 8
  %identifier21 = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %30, i32 0, i32 0
  store i32 %29, i32* %identifier21, align 4
  %31 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %current_record, align 8
  %checksum = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %31, i32 0, i32 1
  %32 = load i32, i32* %checksum, align 4
  %33 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %record_copy, align 8
  %checksum22 = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %33, i32 0, i32 1
  store i32 %32, i32* %checksum22, align 4
  %34 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %current_record, align 8
  %tags23 = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %34, i32 0, i32 2
  %35 = load %struct._GList*, %struct._GList** %tags23, align 8
  %call24 = call %struct._GList* @g_list_copy(%struct._GList* %35)
  %36 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %record_copy, align 8
  %tags25 = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %36, i32 0, i32 2
  store %struct._GList* %call24, %struct._GList** %tags25, align 8
  %37 = load %struct._GList*, %struct._GList** %saved_records, align 8
  %38 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %record_copy, align 8
  %39 = bitcast %struct.GimpTagCacheRecord* %38 to i8*
  %call26 = call %struct._GList* @g_list_prepend(%struct._GList* %37, i8* %39)
  store %struct._GList* %call26, %struct._GList** %saved_records, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.18, %land.lhs.true.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %priv28 = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %41, i32 0, i32 1
  %42 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv28, align 8
  %containers = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %42, i32 0, i32 1
  %43 = load %struct._GList*, %struct._GList** %containers, align 8
  store %struct._GList* %43, %struct._GList** %iterator, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %cond.end, %for.end
  %44 = load %struct._GList*, %struct._GList** %iterator, align 8
  %tobool30 = icmp ne %struct._GList* %44, null
  br i1 %tobool30, label %for.body.31, label %for.end.37

for.body.31:                                      ; preds = %for.cond.29
  %45 = load %struct._GList*, %struct._GList** %iterator, align 8
  %data32 = getelementptr inbounds %struct._GList, %struct._GList* %45, i32 0, i32 0
  %46 = load i8*, i8** %data32, align 8
  %47 = bitcast i8* %46 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_container_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call33)
  %48 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpContainer*
  %49 = bitcast %struct._GList** %saved_records to i8*
  call void @gimp_container_foreach(%struct._GimpContainer* %48, void (i8*, i8*)* bitcast (void (%struct._GimpTagged*, %struct._GList**)* @gimp_tag_cache_tagged_to_cache_record_foreach to void (i8*, i8*)*), i8* %49)
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.31
  %50 = load %struct._GList*, %struct._GList** %iterator, align 8
  %tobool36 = icmp ne %struct._GList* %50, null
  br i1 %tobool36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.35
  %51 = load %struct._GList*, %struct._GList** %iterator, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %51, i32 0, i32 1
  %52 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.35
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %52, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iterator, align 8
  br label %for.cond.29

for.end.37:                                       ; preds = %for.cond.29
  %53 = load %struct._GList*, %struct._GList** %saved_records, align 8
  %call38 = call %struct._GList* @g_list_reverse(%struct._GList* %53)
  store %struct._GList* %call38, %struct._GList** %saved_records, align 8
  %call39 = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GString* %call39, %struct._GString** %buf, align 8
  %54 = load %struct._GString*, %struct._GString** %buf, align 8
  %call40 = call %struct._GString* @g_string_append(%struct._GString* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0))
  %55 = load %struct._GString*, %struct._GString** %buf, align 8
  %call41 = call %struct._GString* @g_string_append(%struct._GString* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0))
  %56 = load %struct._GList*, %struct._GList** %saved_records, align 8
  store %struct._GList* %56, %struct._GList** %iterator, align 8
  br label %for.cond.42

for.cond.42:                                      ; preds = %cond.end.83, %for.end.37
  %57 = load %struct._GList*, %struct._GList** %iterator, align 8
  %tobool43 = icmp ne %struct._GList* %57, null
  br i1 %tobool43, label %for.body.44, label %for.end.85

for.body.44:                                      ; preds = %for.cond.42
  %58 = load %struct._GList*, %struct._GList** %iterator, align 8
  %data46 = getelementptr inbounds %struct._GList, %struct._GList* %58, i32 0, i32 0
  %59 = load i8*, i8** %data46, align 8
  %60 = bitcast i8* %59 to %struct.GimpTagCacheRecord*
  store %struct.GimpTagCacheRecord* %60, %struct.GimpTagCacheRecord** %cache_rec, align 8
  %61 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %cache_rec, align 8
  %identifier50 = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %61, i32 0, i32 0
  %62 = load i32, i32* %identifier50, align 4
  %call51 = call i8* @g_quark_to_string(i32 %62) #6
  %call52 = call i8* @g_markup_escape_text(i8* %call51, i64 -1)
  store i8* %call52, i8** %identifier_string, align 8
  %63 = load %struct._GString*, %struct._GString** %buf, align 8
  %64 = load i8*, i8** %identifier_string, align 8
  %65 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %cache_rec, align 8
  %checksum53 = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %65, i32 0, i32 1
  %66 = load i32, i32* %checksum53, align 4
  %call54 = call i8* @g_quark_to_string(i32 %66) #6
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %63, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i32 0, i32 0), i8* %64, i8* %call54)
  %67 = load i8*, i8** %identifier_string, align 8
  call void @g_free(i8* %67)
  %68 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %cache_rec, align 8
  %tags55 = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %68, i32 0, i32 2
  %69 = load %struct._GList*, %struct._GList** %tags55, align 8
  store %struct._GList* %69, %struct._GList** %tag_iterator, align 8
  br label %for.cond.56

for.cond.56:                                      ; preds = %cond.end.74, %for.body.44
  %70 = load %struct._GList*, %struct._GList** %tag_iterator, align 8
  %tobool57 = icmp ne %struct._GList* %70, null
  br i1 %tobool57, label %for.body.58, label %for.end.76

for.body.58:                                      ; preds = %for.cond.56
  %71 = load %struct._GList*, %struct._GList** %tag_iterator, align 8
  %data60 = getelementptr inbounds %struct._GList, %struct._GList* %71, i32 0, i32 0
  %72 = load i8*, i8** %data60, align 8
  %73 = bitcast i8* %72 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_tag_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call61)
  %74 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpTag*
  store %struct._GimpTag* %74, %struct._GimpTag** %tag, align 8
  %75 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %call63 = call i32 @gimp_tag_get_internal(%struct._GimpTag* %75)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.end.68, label %if.then.65

if.then.65:                                       ; preds = %for.body.58
  %76 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %call66 = call i8* @gimp_tag_get_name(%struct._GimpTag* %76)
  %call67 = call i8* @g_markup_escape_text(i8* %call66, i64 -1)
  store i8* %call67, i8** %tag_string, align 8
  %77 = load %struct._GString*, %struct._GString** %buf, align 8
  %78 = load i8*, i8** %tag_string, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8* %78)
  %79 = load i8*, i8** %tag_string, align 8
  call void @g_free(i8* %79)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %for.body.58
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %80 = load %struct._GList*, %struct._GList** %tag_iterator, align 8
  %tobool70 = icmp ne %struct._GList* %80, null
  br i1 %tobool70, label %cond.true.71, label %cond.false.73

cond.true.71:                                     ; preds = %for.inc.69
  %81 = load %struct._GList*, %struct._GList** %tag_iterator, align 8
  %next72 = getelementptr inbounds %struct._GList, %struct._GList* %81, i32 0, i32 1
  %82 = load %struct._GList*, %struct._GList** %next72, align 8
  br label %cond.end.74

cond.false.73:                                    ; preds = %for.inc.69
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.73, %cond.true.71
  %cond75 = phi %struct._GList* [ %82, %cond.true.71 ], [ null, %cond.false.73 ]
  store %struct._GList* %cond75, %struct._GList** %tag_iterator, align 8
  br label %for.cond.56

for.end.76:                                       ; preds = %for.cond.56
  %83 = load %struct._GString*, %struct._GString** %buf, align 8
  %call77 = call %struct._GString* @g_string_append(%struct._GString* %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0))
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.end.76
  %84 = load %struct._GList*, %struct._GList** %iterator, align 8
  %tobool79 = icmp ne %struct._GList* %84, null
  br i1 %tobool79, label %cond.true.80, label %cond.false.82

cond.true.80:                                     ; preds = %for.inc.78
  %85 = load %struct._GList*, %struct._GList** %iterator, align 8
  %next81 = getelementptr inbounds %struct._GList, %struct._GList* %85, i32 0, i32 1
  %86 = load %struct._GList*, %struct._GList** %next81, align 8
  br label %cond.end.83

cond.false.82:                                    ; preds = %for.inc.78
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.82, %cond.true.80
  %cond84 = phi %struct._GList* [ %86, %cond.true.80 ], [ null, %cond.false.82 ]
  store %struct._GList* %cond84, %struct._GList** %iterator, align 8
  br label %for.cond.42

for.end.85:                                       ; preds = %for.cond.42
  %87 = load %struct._GString*, %struct._GString** %buf, align 8
  %call86 = call %struct._GString* @g_string_append(%struct._GString* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0))
  %call87 = call i8* @gimp_directory() #6
  %call88 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* null)
  store i8* %call88, i8** %filename, align 8
  %88 = load i8*, i8** %filename, align 8
  %89 = load %struct._GString*, %struct._GString** %buf, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %89, i32 0, i32 0
  %90 = load i8*, i8** %str, align 8
  %91 = load %struct._GString*, %struct._GString** %buf, align 8
  %len89 = getelementptr inbounds %struct._GString, %struct._GString* %91, i32 0, i32 1
  %92 = load i64, i64* %len89, align 8
  %call90 = call i32 @g_file_set_contents(i8* %88, i8* %90, i64 %92, %struct._GError** %error)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.end.93, label %if.then.92

if.then.92:                                       ; preds = %for.end.85
  %93 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %93, i32 0, i32 2
  %94 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i8* %94)
  %95 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %95)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %for.end.85
  %96 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %96)
  %97 = load %struct._GString*, %struct._GString** %buf, align 8
  %call94 = call i8* @g_string_free(%struct._GString* %97, i32 1)
  %98 = load %struct._GList*, %struct._GList** %saved_records, align 8
  store %struct._GList* %98, %struct._GList** %iterator, align 8
  br label %for.cond.95

for.cond.95:                                      ; preds = %cond.end.107, %if.end.93
  %99 = load %struct._GList*, %struct._GList** %iterator, align 8
  %tobool96 = icmp ne %struct._GList* %99, null
  br i1 %tobool96, label %for.body.97, label %for.end.109

for.body.97:                                      ; preds = %for.cond.95
  %100 = load %struct._GList*, %struct._GList** %iterator, align 8
  %data100 = getelementptr inbounds %struct._GList, %struct._GList* %100, i32 0, i32 0
  %101 = load i8*, i8** %data100, align 8
  %102 = bitcast i8* %101 to %struct.GimpTagCacheRecord*
  store %struct.GimpTagCacheRecord* %102, %struct.GimpTagCacheRecord** %cache_rec99, align 8
  %103 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %cache_rec99, align 8
  %tags101 = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %103, i32 0, i32 2
  %104 = load %struct._GList*, %struct._GList** %tags101, align 8
  call void @g_list_free(%struct._GList* %104)
  %105 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %cache_rec99, align 8
  %106 = bitcast %struct.GimpTagCacheRecord* %105 to i8*
  call void @g_free(i8* %106)
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.97
  %107 = load %struct._GList*, %struct._GList** %iterator, align 8
  %tobool103 = icmp ne %struct._GList* %107, null
  br i1 %tobool103, label %cond.true.104, label %cond.false.106

cond.true.104:                                    ; preds = %for.inc.102
  %108 = load %struct._GList*, %struct._GList** %iterator, align 8
  %next105 = getelementptr inbounds %struct._GList, %struct._GList* %108, i32 0, i32 1
  %109 = load %struct._GList*, %struct._GList** %next105, align 8
  br label %cond.end.107

cond.false.106:                                   ; preds = %for.inc.102
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.106, %cond.true.104
  %cond108 = phi %struct._GList* [ %109, %cond.true.104 ], [ null, %cond.false.106 ]
  store %struct._GList* %cond108, %struct._GList** %iterator, align 8
  br label %for.cond.95

for.end.109:                                      ; preds = %for.cond.95
  %110 = load %struct._GList*, %struct._GList** %saved_records, align 8
  call void @g_list_free(%struct._GList* %110)
  br label %return

return:                                           ; preds = %for.end.109, %if.else.9
  ret void
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct._GList* @g_list_copy(%struct._GList*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_cache_tagged_to_cache_record_foreach(%struct._GimpTagged* %tagged, %struct._GList** %cache_records) #3 {
entry:
  %tagged.addr = alloca %struct._GimpTagged*, align 8
  %cache_records.addr = alloca %struct._GList**, align 8
  %identifier = alloca i8*, align 8
  %cache_rec = alloca %struct.GimpTagCacheRecord*, align 8
  %checksum = alloca i8*, align 8
  store %struct._GimpTagged* %tagged, %struct._GimpTagged** %tagged.addr, align 8
  store %struct._GList** %cache_records, %struct._GList*** %cache_records.addr, align 8
  %0 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %call = call i8* @gimp_tagged_get_identifier(%struct._GimpTagged* %0)
  store i8* %call, i8** %identifier, align 8
  %1 = load i8*, i8** %identifier, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call noalias i8* @g_malloc_n(i64 1, i64 24)
  %2 = bitcast i8* %call1 to %struct.GimpTagCacheRecord*
  store %struct.GimpTagCacheRecord* %2, %struct.GimpTagCacheRecord** %cache_rec, align 8
  %3 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %call2 = call i8* @gimp_tagged_get_checksum(%struct._GimpTagged* %3)
  store i8* %call2, i8** %checksum, align 8
  %4 = load i8*, i8** %identifier, align 8
  %call3 = call i32 @g_quark_from_string(i8* %4)
  %5 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %cache_rec, align 8
  %identifier4 = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %5, i32 0, i32 0
  store i32 %call3, i32* %identifier4, align 4
  %6 = load i8*, i8** %checksum, align 8
  %call5 = call i32 @g_quark_from_string(i8* %6)
  %7 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %cache_rec, align 8
  %checksum6 = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %7, i32 0, i32 1
  store i32 %call5, i32* %checksum6, align 4
  %8 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %call7 = call %struct._GList* @gimp_tagged_get_tags(%struct._GimpTagged* %8)
  %call8 = call %struct._GList* @g_list_copy(%struct._GList* %call7)
  %9 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %cache_rec, align 8
  %tags = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %9, i32 0, i32 2
  store %struct._GList* %call8, %struct._GList** %tags, align 8
  %10 = load i8*, i8** %checksum, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GList**, %struct._GList*** %cache_records.addr, align 8
  %12 = load %struct._GList*, %struct._GList** %11, align 8
  %13 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %cache_rec, align 8
  %14 = bitcast %struct.GimpTagCacheRecord* %13 to i8*
  %call9 = call %struct._GList* @g_list_prepend(%struct._GList* %12, i8* %14)
  %15 = load %struct._GList**, %struct._GList*** %cache_records.addr, align 8
  store %struct._GList* %call9, %struct._GList** %15, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i8*, i8** %identifier, align 8
  call void @g_free(i8* %16)
  ret void
}

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

declare %struct._GString* @g_string_new(i8*) #1

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare i8* @g_markup_escape_text(i8*, i64) #1

; Function Attrs: nounwind readnone
declare i8* @g_quark_to_string(i32) #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tag_get_type() #2

declare i32 @gimp_tag_get_internal(%struct._GimpTag*) #1

declare i8* @gimp_tag_get_name(%struct._GimpTag*) #1

declare noalias i8* @g_build_filename(i8*, ...) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_directory() #2

declare i32 @g_file_set_contents(i8*, i8*, i64, %struct._GError**) #1

declare void @g_printerr(i8*, ...) #1

declare void @g_error_free(%struct._GError*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare void @g_list_free(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define void @gimp_tag_cache_load(%struct._GimpTagCache* %cache) #3 {
entry:
  %cache.addr = alloca %struct._GimpTagCache*, align 8
  %filename = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %markup_parser = alloca %struct._GMarkupParser, align 8
  %xml_parser = alloca %struct._GimpXmlParser*, align 8
  %parse_data = alloca %struct.GimpTagCacheParseData, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTagCache* %cache, %struct._GimpTagCache** %cache.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %1 = bitcast %struct._GimpTagCache* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tag_cache_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_tag_cache_load, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %priv = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %13, i32 0, i32 1
  %14 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv, align 8
  %records = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %14, i32 0, i32 0
  %15 = load %struct._GArray*, %struct._GArray** %records, align 8
  %call11 = call %struct._GArray* @g_array_set_size(%struct._GArray* %15, i32 0)
  %16 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %priv12 = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %16, i32 0, i32 1
  %17 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv12, align 8
  %records13 = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %17, i32 0, i32 0
  store %struct._GArray* %call11, %struct._GArray** %records13, align 8
  %call14 = call i8* @gimp_directory() #6
  %call15 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* null)
  store i8* %call15, i8** %filename, align 8
  %call16 = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 24)
  %records17 = getelementptr inbounds %struct.GimpTagCacheParseData, %struct.GimpTagCacheParseData* %parse_data, i32 0, i32 0
  store %struct._GArray* %call16, %struct._GArray** %records17, align 8
  %current_record = getelementptr inbounds %struct.GimpTagCacheParseData, %struct.GimpTagCacheParseData* %parse_data, i32 0, i32 1
  %18 = bitcast %struct.GimpTagCacheRecord* %current_record to i8*
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 24, i32 8, i1 false)
  %start_element = getelementptr inbounds %struct._GMarkupParser, %struct._GMarkupParser* %markup_parser, i32 0, i32 0
  store void (%struct._GMarkupParseContext*, i8*, i8**, i8**, i8*, %struct._GError**)* @gimp_tag_cache_load_start_element, void (%struct._GMarkupParseContext*, i8*, i8**, i8**, i8*, %struct._GError**)** %start_element, align 8
  %end_element = getelementptr inbounds %struct._GMarkupParser, %struct._GMarkupParser* %markup_parser, i32 0, i32 1
  store void (%struct._GMarkupParseContext*, i8*, i8*, %struct._GError**)* @gimp_tag_cache_load_end_element, void (%struct._GMarkupParseContext*, i8*, i8*, %struct._GError**)** %end_element, align 8
  %text = getelementptr inbounds %struct._GMarkupParser, %struct._GMarkupParser* %markup_parser, i32 0, i32 2
  store void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)* @gimp_tag_cache_load_text, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)** %text, align 8
  %passthrough = getelementptr inbounds %struct._GMarkupParser, %struct._GMarkupParser* %markup_parser, i32 0, i32 3
  store void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)* null, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)** %passthrough, align 8
  %error18 = getelementptr inbounds %struct._GMarkupParser, %struct._GMarkupParser* %markup_parser, i32 0, i32 4
  store void (%struct._GMarkupParseContext*, %struct._GError*, i8*)* @gimp_tag_cache_load_error, void (%struct._GMarkupParseContext*, %struct._GError*, i8*)** %error18, align 8
  %19 = bitcast %struct.GimpTagCacheParseData* %parse_data to i8*
  %call19 = call %struct._GimpXmlParser* @gimp_xml_parser_new(%struct._GMarkupParser* %markup_parser, i8* %19)
  store %struct._GimpXmlParser* %call19, %struct._GimpXmlParser** %xml_parser, align 8
  %20 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %xml_parser, align 8
  %21 = load i8*, i8** %filename, align 8
  %call20 = call i32 @gimp_xml_parser_parse_file(%struct._GimpXmlParser* %20, i8* %21, %struct._GError** %error)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.30

if.then.22:                                       ; preds = %do.end
  %22 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %priv23 = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %22, i32 0, i32 1
  %23 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv23, align 8
  %records24 = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %23, i32 0, i32 0
  %24 = load %struct._GArray*, %struct._GArray** %records24, align 8
  %records25 = getelementptr inbounds %struct.GimpTagCacheParseData, %struct.GimpTagCacheParseData* %parse_data, i32 0, i32 0
  %25 = load %struct._GArray*, %struct._GArray** %records25, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %25, i32 0, i32 0
  %26 = load i8*, i8** %data, align 8
  %records26 = getelementptr inbounds %struct.GimpTagCacheParseData, %struct.GimpTagCacheParseData* %parse_data, i32 0, i32 0
  %27 = load %struct._GArray*, %struct._GArray** %records26, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %27, i32 0, i32 1
  %28 = load i32, i32* %len, align 4
  %call27 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %24, i8* %26, i32 %28)
  %29 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %priv28 = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %29, i32 0, i32 1
  %30 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv28, align 8
  %records29 = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %30, i32 0, i32 0
  store %struct._GArray* %call27, %struct._GArray** %records29, align 8
  br label %if.end.32

if.else.30:                                       ; preds = %do.end
  %31 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool31 = icmp ne %struct._GError* %31, null
  br i1 %tobool31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.30
  %32 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %32, i32 0, i32 2
  %33 = load i8*, i8** %message, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else.30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %33, %cond.true ], [ null, %cond.false ]
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0), i8* %cond)
  br label %if.end.32

if.end.32:                                        ; preds = %cond.end, %if.then.22
  %34 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %34)
  %35 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %xml_parser, align 8
  call void @gimp_xml_parser_free(%struct._GimpXmlParser* %35)
  %records33 = getelementptr inbounds %struct.GimpTagCacheParseData, %struct.GimpTagCacheParseData* %parse_data, i32 0, i32 0
  %36 = load %struct._GArray*, %struct._GArray** %records33, align 8
  %call34 = call i8* @g_array_free(%struct._GArray* %36, i32 1)
  br label %return

return:                                           ; preds = %if.end.32, %if.else.9
  ret void
}

declare %struct._GArray* @g_array_set_size(%struct._GArray*, i32) #1

declare %struct._GArray* @g_array_new(i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_cache_load_start_element(%struct._GMarkupParseContext* %context, i8* %element_name, i8** %attribute_names, i8** %attribute_values, i8* %user_data, %struct._GError** %error) #3 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %element_name.addr = alloca i8*, align 8
  %attribute_names.addr = alloca i8**, align 8
  %attribute_values.addr = alloca i8**, align 8
  %user_data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %parse_data = alloca %struct.GimpTagCacheParseData*, align 8
  %identifier = alloca i8*, align 8
  %checksum = alloca i8*, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i8* %element_name, i8** %element_name.addr, align 8
  store i8** %attribute_names, i8*** %attribute_names.addr, align 8
  store i8** %attribute_values, i8*** %attribute_values.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GimpTagCacheParseData*
  store %struct.GimpTagCacheParseData* %1, %struct.GimpTagCacheParseData** %parse_data, align 8
  %2 = load i8*, i8** %element_name.addr, align 8
  %call = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.12, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %attribute_names.addr, align 8
  %4 = load i8**, i8*** %attribute_values.addr, align 8
  %call1 = call i8* @gimp_tag_cache_attribute_name_to_value(i8** %3, i8** %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0))
  store i8* %call1, i8** %identifier, align 8
  %5 = load i8**, i8*** %attribute_names.addr, align 8
  %6 = load i8**, i8*** %attribute_values.addr, align 8
  %call2 = call i8* @gimp_tag_cache_attribute_name_to_value(i8** %5, i8** %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0))
  store i8* %call2, i8** %checksum, align 8
  %7 = load i8*, i8** %identifier, align 8
  %tobool3 = icmp ne i8* %7, null
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call5 = call i32 @gimp_tag_cache_get_error_domain()
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %8, i32 %call5, i32 1001, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.12

if.end:                                           ; preds = %if.then
  %9 = load %struct.GimpTagCacheParseData*, %struct.GimpTagCacheParseData** %parse_data, align 8
  %current_record = getelementptr inbounds %struct.GimpTagCacheParseData, %struct.GimpTagCacheParseData* %9, i32 0, i32 1
  %10 = bitcast %struct.GimpTagCacheRecord* %current_record to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 24, i32 8, i1 false)
  %11 = load i8*, i8** %identifier, align 8
  %call6 = call i32 @g_quark_from_string(i8* %11)
  %12 = load %struct.GimpTagCacheParseData*, %struct.GimpTagCacheParseData** %parse_data, align 8
  %current_record7 = getelementptr inbounds %struct.GimpTagCacheParseData, %struct.GimpTagCacheParseData* %12, i32 0, i32 1
  %identifier8 = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %current_record7, i32 0, i32 0
  store i32 %call6, i32* %identifier8, align 4
  %13 = load i8*, i8** %checksum, align 8
  %call9 = call i32 @g_quark_from_string(i8* %13)
  %14 = load %struct.GimpTagCacheParseData*, %struct.GimpTagCacheParseData** %parse_data, align 8
  %current_record10 = getelementptr inbounds %struct.GimpTagCacheParseData, %struct.GimpTagCacheParseData* %14, i32 0, i32 1
  %checksum11 = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %current_record10, i32 0, i32 1
  store i32 %call9, i32* %checksum11, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.4, %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_cache_load_end_element(%struct._GMarkupParseContext* %context, i8* %element_name, i8* %user_data, %struct._GError** %error) #3 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %element_name.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %parse_data = alloca %struct.GimpTagCacheParseData*, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i8* %element_name, i8** %element_name.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GimpTagCacheParseData*
  store %struct.GimpTagCacheParseData* %1, %struct.GimpTagCacheParseData** %parse_data, align 8
  %2 = load i8*, i8** %element_name.addr, align 8
  %call = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.GimpTagCacheParseData*, %struct.GimpTagCacheParseData** %parse_data, align 8
  %records = getelementptr inbounds %struct.GimpTagCacheParseData, %struct.GimpTagCacheParseData* %3, i32 0, i32 0
  %4 = load %struct._GArray*, %struct._GArray** %records, align 8
  %5 = load %struct.GimpTagCacheParseData*, %struct.GimpTagCacheParseData** %parse_data, align 8
  %current_record = getelementptr inbounds %struct.GimpTagCacheParseData, %struct.GimpTagCacheParseData* %5, i32 0, i32 1
  %6 = bitcast %struct.GimpTagCacheRecord* %current_record to i8*
  %call1 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %4, i8* %6, i32 1)
  %7 = load %struct.GimpTagCacheParseData*, %struct.GimpTagCacheParseData** %parse_data, align 8
  %records2 = getelementptr inbounds %struct.GimpTagCacheParseData, %struct.GimpTagCacheParseData* %7, i32 0, i32 0
  store %struct._GArray* %call1, %struct._GArray** %records2, align 8
  %8 = load %struct.GimpTagCacheParseData*, %struct.GimpTagCacheParseData** %parse_data, align 8
  %current_record3 = getelementptr inbounds %struct.GimpTagCacheParseData, %struct.GimpTagCacheParseData* %8, i32 0, i32 1
  %9 = bitcast %struct.GimpTagCacheRecord* %current_record3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 24, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_cache_load_text(%struct._GMarkupParseContext* %context, i8* %text, i64 %text_len, i8* %user_data, %struct._GError** %error) #3 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %text.addr = alloca i8*, align 8
  %text_len.addr = alloca i64, align 8
  %user_data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %parse_data = alloca %struct.GimpTagCacheParseData*, align 8
  %current_element = alloca i8*, align 8
  %buffer = alloca [2048 x i8], align 16
  %tag = alloca %struct._GimpTag*, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store i64 %text_len, i64* %text_len.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GimpTagCacheParseData*
  store %struct.GimpTagCacheParseData* %1, %struct.GimpTagCacheParseData** %parse_data, align 8
  %2 = load %struct._GMarkupParseContext*, %struct._GMarkupParseContext** %context.addr, align 8
  %call = call i8* @g_markup_parse_context_get_element(%struct._GMarkupParseContext* %2)
  store i8* %call, i8** %current_element, align 8
  %3 = load i8*, i8** %current_element, align 8
  %call1 = call i32 @g_strcmp0(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0))
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %text_len.addr, align 8
  %cmp2 = icmp uge i64 %4, 2048
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_tag_cache_get_error_domain()
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %5, i32 %call4, i32 1002, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.14

if.end:                                           ; preds = %if.then
  %6 = bitcast [2048 x i8]* %buffer to i8*
  %7 = load i8*, i8** %text.addr, align 8
  %8 = load i64, i64* %text_len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 %8, i32 1, i1 false)
  %9 = load i64, i64* %text_len.addr, align 8
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %buffer, i32 0, i64 %9
  store i8 0, i8* %arrayidx, align 1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %buffer, i32 0, i32 0
  %call5 = call %struct._GimpTag* @gimp_tag_new(i8* %arraydecay)
  store %struct._GimpTag* %call5, %struct._GimpTag** %tag, align 8
  %10 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %tobool = icmp ne %struct._GimpTag* %10, null
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %11 = load %struct.GimpTagCacheParseData*, %struct.GimpTagCacheParseData** %parse_data, align 8
  %current_record = getelementptr inbounds %struct.GimpTagCacheParseData, %struct.GimpTagCacheParseData* %11, i32 0, i32 1
  %tags = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %current_record, i32 0, i32 2
  %12 = load %struct._GList*, %struct._GList** %tags, align 8
  %13 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %14 = bitcast %struct._GimpTag* %13 to i8*
  %call7 = call %struct._GList* @g_list_append(%struct._GList* %12, i8* %14)
  %15 = load %struct.GimpTagCacheParseData*, %struct.GimpTagCacheParseData** %parse_data, align 8
  %current_record8 = getelementptr inbounds %struct.GimpTagCacheParseData, %struct.GimpTagCacheParseData* %15, i32 0, i32 1
  %tags9 = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %current_record8, i32 0, i32 2
  store %struct._GList* %call7, %struct._GList** %tags9, align 8
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %arraydecay10 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buffer, i32 0, i32 0
  %16 = load %struct.GimpTagCacheParseData*, %struct.GimpTagCacheParseData** %parse_data, align 8
  %current_record11 = getelementptr inbounds %struct.GimpTagCacheParseData, %struct.GimpTagCacheParseData* %16, i32 0, i32 1
  %identifier = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %current_record11, i32 0, i32 0
  %17 = load i32, i32* %identifier, align 4
  %call12 = call i8* @g_quark_to_string(i32 %17) #6
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i32 0, i32 0), i8* %arraydecay10, i8* %call12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.6
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.3, %if.end.13, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_cache_load_error(%struct._GMarkupParseContext* %context, %struct._GError* %error, i8* %user_data) #3 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %error.addr = alloca %struct._GError*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store %struct._GError* %error, %struct._GError** %error.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GError*, %struct._GError** %error.addr, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %0, i32 0, i32 2
  %1 = load i8*, i8** %message, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0), i8* %1)
  ret void
}

declare %struct._GimpXmlParser* @gimp_xml_parser_new(%struct._GMarkupParser*, i8*) #1

declare i32 @gimp_xml_parser_parse_file(%struct._GimpXmlParser*, i8*, %struct._GError**) #1

declare %struct._GArray* @g_array_append_vals(%struct._GArray*, i8*, i32) #1

declare void @gimp_xml_parser_free(%struct._GimpXmlParser*) #1

declare i8* @g_array_free(%struct._GArray*, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_cache_class_init(%struct._GimpTagCacheClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpTagCacheClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %gimp_tag_cache_class = alloca %struct._GimpTagCacheClass*, align 8
  store %struct._GimpTagCacheClass* %klass, %struct._GimpTagCacheClass** %klass.addr, align 8
  %0 = load %struct._GimpTagCacheClass*, %struct._GimpTagCacheClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTagCacheClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpTagCacheClass*, %struct._GimpTagCacheClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpTagCacheClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpTagCacheClass*, %struct._GimpTagCacheClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpTagCacheClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_tag_cache_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpTagCacheClass*
  store %struct._GimpTagCacheClass* %8, %struct._GimpTagCacheClass** %gimp_tag_cache_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_tag_cache_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %10, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_tag_cache_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %11 = load %struct._GimpTagCacheClass*, %struct._GimpTagCacheClass** %gimp_tag_cache_class, align 8
  %12 = bitcast %struct._GimpTagCacheClass* %11 to i8*
  call void @g_type_class_add_private(i8* %12, i64 16)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_cache_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %cache = alloca %struct._GimpTagCache*, align 8
  %i = alloca i32, align 4
  %rec = alloca %struct.GimpTagCacheRecord*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_cache_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTagCache*
  store %struct._GimpTagCache* %2, %struct._GimpTagCache** %cache, align 8
  %3 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache, align 8
  %priv = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %3, i32 0, i32 1
  %4 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv, align 8
  %records = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %4, i32 0, i32 0
  %5 = load %struct._GArray*, %struct._GArray** %records, align 8
  %tobool = icmp ne %struct._GArray* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache, align 8
  %priv2 = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %7, i32 0, i32 1
  %8 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv2, align 8
  %records3 = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %8, i32 0, i32 0
  %9 = load %struct._GArray*, %struct._GArray** %records3, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %9, i32 0, i32 1
  %10 = load i32, i32* %len, align 4
  %cmp = icmp ult i32 %6, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache, align 8
  %priv4 = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %12, i32 0, i32 1
  %13 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv4, align 8
  %records5 = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %13, i32 0, i32 0
  %14 = load %struct._GArray*, %struct._GArray** %records5, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = bitcast i8* %15 to %struct.GimpTagCacheRecord*
  %arrayidx = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %16, i64 %idxprom
  store %struct.GimpTagCacheRecord* %arrayidx, %struct.GimpTagCacheRecord** %rec, align 8
  %17 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %rec, align 8
  %tags = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %17, i32 0, i32 2
  %18 = load %struct._GList*, %struct._GList** %tags, align 8
  call void @g_list_free_full(%struct._GList* %18, void (i8*)* @g_object_unref)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache, align 8
  %priv6 = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %20, i32 0, i32 1
  %21 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv6, align 8
  %records7 = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %21, i32 0, i32 0
  %22 = load %struct._GArray*, %struct._GArray** %records7, align 8
  %call8 = call i8* @g_array_free(%struct._GArray* %22, i32 1)
  %23 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache, align 8
  %priv9 = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %23, i32 0, i32 1
  %24 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv9, align 8
  %records10 = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %24, i32 0, i32 0
  store %struct._GArray* null, %struct._GArray** %records10, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %25 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache, align 8
  %priv11 = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %25, i32 0, i32 1
  %26 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv11, align 8
  %containers = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %26, i32 0, i32 1
  %27 = load %struct._GList*, %struct._GList** %containers, align 8
  %tobool12 = icmp ne %struct._GList* %27, null
  br i1 %tobool12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end
  %28 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache, align 8
  %priv14 = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %28, i32 0, i32 1
  %29 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv14, align 8
  %containers15 = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %29, i32 0, i32 1
  %30 = load %struct._GList*, %struct._GList** %containers15, align 8
  call void @g_list_free(%struct._GList* %30)
  %31 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache, align 8
  %priv16 = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %31, i32 0, i32 1
  %32 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv16, align 8
  %containers17 = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %32, i32 0, i32 1
  store %struct._GList* null, %struct._GList** %containers17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %if.end
  %33 = load i8*, i8** @gimp_tag_cache_parent_class, align 8
  %34 = bitcast i8* %33 to %struct._GTypeClass*
  %call19 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %34, i64 80)
  %35 = bitcast %struct._GTypeClass* %call19 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %35, i32 0, i32 6
  %36 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %37 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %36(%struct._GObject* %37)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_tag_cache_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %cache = alloca %struct._GimpTagCache*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_cache_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTagCache*
  store %struct._GimpTagCache* %2, %struct._GimpTagCache** %cache, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache, align 8
  %priv = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %3, i32 0, i32 1
  %4 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv, align 8
  %containers = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %4, i32 0, i32 1
  %5 = load %struct._GList*, %struct._GList** %containers, align 8
  %call2 = call i64 @gimp_g_list_get_memsize(%struct._GList* %5, i64 0)
  %6 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %6, %call2
  store i64 %add, i64* %memsize, align 8
  %7 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache, align 8
  %priv3 = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %7, i32 0, i32 1
  %8 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv3, align 8
  %records = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %8, i32 0, i32 0
  %9 = load %struct._GArray*, %struct._GArray** %records, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %9, i32 0, i32 1
  %10 = load i32, i32* %len, align 4
  %conv = zext i32 %10 to i64
  %mul = mul i64 %conv, 24
  %11 = load i64, i64* %memsize, align 8
  %add4 = add i64 %11, %mul
  store i64 %add4, i64* %memsize, align 8
  %12 = load i64, i64* %memsize, align 8
  %13 = load i8*, i8** @gimp_tag_cache_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 %call5)
  %15 = bitcast %struct._GTypeClass* %call6 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %15, i32 0, i32 3
  %16 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %17 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %18 = load i64*, i64** %gui_size.addr, align 8
  %call7 = call i64 %16(%struct._GimpObject* %17, i64* %18)
  %add8 = add nsw i64 %12, %call7
  ret i64 %add8
}

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @g_object_unref(i8*) #1

declare i64 @gimp_g_list_get_memsize(%struct._GList*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_cache_add_object(%struct._GimpTagCache* %cache, %struct._GimpTagged* %tagged) #3 {
entry:
  %cache.addr = alloca %struct._GimpTagCache*, align 8
  %tagged.addr = alloca %struct._GimpTagged*, align 8
  %identifier = alloca i8*, align 8
  %identifier_quark = alloca i32, align 4
  %checksum = alloca i8*, align 8
  %checksum_quark = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  %rec = alloca %struct.GimpTagCacheRecord*, align 8
  %rec33 = alloca %struct.GimpTagCacheRecord*, align 8
  store %struct._GimpTagCache* %cache, %struct._GimpTagCache** %cache.addr, align 8
  store %struct._GimpTagged* %tagged, %struct._GimpTagged** %tagged.addr, align 8
  store i32 0, i32* %identifier_quark, align 4
  store i32 0, i32* %checksum_quark, align 4
  %0 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %call = call i8* @gimp_tagged_get_identifier(%struct._GimpTagged* %0)
  store i8* %call, i8** %identifier, align 8
  %1 = load i8*, i8** %identifier, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %identifier, align 8
  %call1 = call i32 @g_quark_try_string(i8* %2)
  store i32 %call1, i32* %identifier_quark, align 4
  %3 = load i8*, i8** %identifier, align 8
  call void @g_free(i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %identifier_quark, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then.3, label %if.end.19

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %if.then.3
  %5 = load i32, i32* %i, align 4
  %6 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %priv = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %6, i32 0, i32 1
  %7 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv, align 8
  %records = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %7, i32 0, i32 0
  %8 = load %struct._GArray*, %struct._GArray** %records, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %8, i32 0, i32 1
  %9 = load i32, i32* %len, align 4
  %cmp = icmp ult i32 %5, %9
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %priv4 = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %11, i32 0, i32 1
  %12 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv4, align 8
  %records5 = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %12, i32 0, i32 0
  %13 = load %struct._GArray*, %struct._GArray** %records5, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  %15 = bitcast i8* %14 to %struct.GimpTagCacheRecord*
  %arrayidx = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %15, i64 %idxprom
  store %struct.GimpTagCacheRecord* %arrayidx, %struct.GimpTagCacheRecord** %rec, align 8
  %16 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %rec, align 8
  %identifier6 = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %16, i32 0, i32 0
  %17 = load i32, i32* %identifier6, align 4
  %18 = load i32, i32* %identifier_quark, align 4
  %cmp7 = icmp eq i32 %17, %18
  br i1 %cmp7, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %for.body
  %19 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %rec, align 8
  %tags = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %19, i32 0, i32 2
  %20 = load %struct._GList*, %struct._GList** %tags, align 8
  store %struct._GList* %20, %struct._GList** %list, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %cond.end, %if.then.8
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool10 = icmp ne %struct._GList* %21, null
  br i1 %tobool10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %22 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %data12 = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 0
  %24 = load i8*, i8** %data12, align 8
  %25 = bitcast i8* %24 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_tag_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call13)
  %26 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpTag*
  call void @gimp_tagged_add_tag(%struct._GimpTagged* %22, %struct._GimpTag* %26)
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool15 = icmp ne %struct._GList* %27, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 1
  %29 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %29, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %30 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %rec, align 8
  %referenced = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %30, i32 0, i32 3
  %bf.load = load i8, i8* %referenced, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %referenced, align 8
  br label %if.end.66

if.end.16:                                        ; preds = %for.body
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.end.16
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  br label %if.end.19

if.end.19:                                        ; preds = %for.end.18, %if.end
  %32 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %call20 = call i8* @gimp_tagged_get_checksum(%struct._GimpTagged* %32)
  store i8* %call20, i8** %checksum, align 8
  %33 = load i8*, i8** %checksum, align 8
  %tobool21 = icmp ne i8* %33, null
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.19
  %34 = load i8*, i8** %checksum, align 8
  %call23 = call i32 @g_quark_try_string(i8* %34)
  store i32 %call23, i32* %checksum_quark, align 4
  %35 = load i8*, i8** %checksum, align 8
  call void @g_free(i8* %35)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.19
  %36 = load i32, i32* %checksum_quark, align 4
  %tobool25 = icmp ne i32 %36, 0
  br i1 %tobool25, label %if.then.26, label %if.end.66

if.then.26:                                       ; preds = %if.end.24
  store i32 0, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.63, %if.then.26
  %37 = load i32, i32* %i, align 4
  %38 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %priv28 = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %38, i32 0, i32 1
  %39 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv28, align 8
  %records29 = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %39, i32 0, i32 0
  %40 = load %struct._GArray*, %struct._GArray** %records29, align 8
  %len30 = getelementptr inbounds %struct._GArray, %struct._GArray* %40, i32 0, i32 1
  %41 = load i32, i32* %len30, align 4
  %cmp31 = icmp ult i32 %37, %41
  br i1 %cmp31, label %for.body.32, label %for.end.65

for.body.32:                                      ; preds = %for.cond.27
  %42 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %42 to i64
  %43 = load %struct._GimpTagCache*, %struct._GimpTagCache** %cache.addr, align 8
  %priv35 = getelementptr inbounds %struct._GimpTagCache, %struct._GimpTagCache* %43, i32 0, i32 1
  %44 = load %struct._GimpTagCachePriv*, %struct._GimpTagCachePriv** %priv35, align 8
  %records36 = getelementptr inbounds %struct._GimpTagCachePriv, %struct._GimpTagCachePriv* %44, i32 0, i32 0
  %45 = load %struct._GArray*, %struct._GArray** %records36, align 8
  %data37 = getelementptr inbounds %struct._GArray, %struct._GArray* %45, i32 0, i32 0
  %46 = load i8*, i8** %data37, align 8
  %47 = bitcast i8* %46 to %struct.GimpTagCacheRecord*
  %arrayidx38 = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %47, i64 %idxprom34
  store %struct.GimpTagCacheRecord* %arrayidx38, %struct.GimpTagCacheRecord** %rec33, align 8
  %48 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %rec33, align 8
  %checksum39 = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %48, i32 0, i32 1
  %49 = load i32, i32* %checksum39, align 4
  %50 = load i32, i32* %checksum_quark, align 4
  %cmp40 = icmp eq i32 %49, %50
  br i1 %cmp40, label %if.then.41, label %if.end.62

if.then.41:                                       ; preds = %for.body.32
  %51 = load i32, i32* %identifier_quark, align 4
  %52 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %rec33, align 8
  %identifier42 = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %52, i32 0, i32 0
  store i32 %51, i32* %identifier42, align 4
  %53 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %rec33, align 8
  %tags43 = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %53, i32 0, i32 2
  %54 = load %struct._GList*, %struct._GList** %tags43, align 8
  store %struct._GList* %54, %struct._GList** %list, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %cond.end.55, %if.then.41
  %55 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool45 = icmp ne %struct._GList* %55, null
  br i1 %tobool45, label %for.body.46, label %for.end.57

for.body.46:                                      ; preds = %for.cond.44
  %56 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %57 = load %struct._GList*, %struct._GList** %list, align 8
  %data47 = getelementptr inbounds %struct._GList, %struct._GList* %57, i32 0, i32 0
  %58 = load i8*, i8** %data47, align 8
  %59 = bitcast i8* %58 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_tag_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call48)
  %60 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpTag*
  call void @gimp_tagged_add_tag(%struct._GimpTagged* %56, %struct._GimpTag* %60)
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.46
  %61 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool51 = icmp ne %struct._GList* %61, null
  br i1 %tobool51, label %cond.true.52, label %cond.false.54

cond.true.52:                                     ; preds = %for.inc.50
  %62 = load %struct._GList*, %struct._GList** %list, align 8
  %next53 = getelementptr inbounds %struct._GList, %struct._GList* %62, i32 0, i32 1
  %63 = load %struct._GList*, %struct._GList** %next53, align 8
  br label %cond.end.55

cond.false.54:                                    ; preds = %for.inc.50
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.54, %cond.true.52
  %cond56 = phi %struct._GList* [ %63, %cond.true.52 ], [ null, %cond.false.54 ]
  store %struct._GList* %cond56, %struct._GList** %list, align 8
  br label %for.cond.44

for.end.57:                                       ; preds = %for.cond.44
  %64 = load %struct.GimpTagCacheRecord*, %struct.GimpTagCacheRecord** %rec33, align 8
  %referenced58 = getelementptr inbounds %struct.GimpTagCacheRecord, %struct.GimpTagCacheRecord* %64, i32 0, i32 3
  %bf.load59 = load i8, i8* %referenced58, align 8
  %bf.clear60 = and i8 %bf.load59, -2
  %bf.set61 = or i8 %bf.clear60, 1
  store i8 %bf.set61, i8* %referenced58, align 8
  br label %if.end.66

if.end.62:                                        ; preds = %for.body.32
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %65 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %65, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.27

for.end.65:                                       ; preds = %for.cond.27
  br label %if.end.66

if.end.66:                                        ; preds = %for.end, %for.end.57, %for.end.65, %if.end.24
  ret void
}

declare i8* @gimp_tagged_get_identifier(%struct._GimpTagged*) #1

declare i32 @g_quark_try_string(i8*) #1

declare void @gimp_tagged_add_tag(%struct._GimpTagged*, %struct._GimpTag*) #1

declare i8* @gimp_tagged_get_checksum(%struct._GimpTagged*) #1

declare i32 @g_quark_from_string(i8*) #1

declare %struct._GList* @gimp_tagged_get_tags(%struct._GimpTagged*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i8* @gimp_tag_cache_attribute_name_to_value(i8** %attribute_names, i8** %attribute_values, i8* %name) #3 {
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

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tag_cache_get_error_domain() #3 {
entry:
  %call = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0))
  ret i32 %call
}

declare i32 @g_quark_from_static_string(i8*) #1

declare i8* @g_markup_parse_context_get_element(%struct._GMarkupParseContext*) #1

declare i32 @g_strcmp0(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare %struct._GimpTag* @gimp_tag_new(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
