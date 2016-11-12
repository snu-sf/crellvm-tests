; ModuleID = './app/core/gimpbrushcache.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpBrushCacheClass = type { %struct._GimpObjectClass }
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
%struct._GimpBrushCache = type { %struct._GimpObject, void (i8*)*, i8*, i32, i32, double, double, double, double, i8, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_brush_cache_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpBrushCache\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_brush_cache_new = private unnamed_addr constant [21 x i8] c"gimp_brush_cache_new\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"data_destroy != NULL\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"data-destroy\00", align 1
@__func__.gimp_brush_cache_clear = private unnamed_addr constant [23 x i8] c"gimp_brush_cache_clear\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"GIMP_IS_BRUSH_CACHE (cache)\00", align 1
@__func__.gimp_brush_cache_get = private unnamed_addr constant [21 x i8] c"gimp_brush_cache_get\00", align 1
@gimp_log_flags = external global i32, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@__func__.gimp_brush_cache_add = private unnamed_addr constant [21 x i8] c"gimp_brush_cache_add\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@gimp_brush_cache_parent_class = internal global i8* null, align 8
@GimpBrushCache_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"gimpbrushcache.c\00", align 1
@__func__.gimp_brush_cache_constructed = private unnamed_addr constant [29 x i8] c"gimp_brush_cache_constructed\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"cache->data_destroy != NULL\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_brush_cache_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_brush_cache_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_brush_cache_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 160, void (i8*, i8*)* bitcast (void (i8*)* @gimp_brush_cache_class_intern_init to void (i8*, i8*)*), i32 96, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBrushCache*)* @gimp_brush_cache_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_brush_cache_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_brush_cache_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_cache_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_brush_cache_parent_class, align 8
  %1 = load i32, i32* @GimpBrushCache_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpBrushCache_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpBrushCacheClass*
  call void @gimp_brush_cache_class_init(%struct._GimpBrushCacheClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_cache_init(%struct._GimpBrushCache* %brush) #3 {
entry:
  %brush.addr = alloca %struct._GimpBrushCache*, align 8
  store %struct._GimpBrushCache* %brush, %struct._GimpBrushCache** %brush.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpBrushCache* @gimp_brush_cache_new(void (i8*)* %data_destroy, i8 signext %debug_hit, i8 signext %debug_miss) #3 {
entry:
  %retval = alloca %struct._GimpBrushCache*, align 8
  %data_destroy.addr = alloca void (i8*)*, align 8
  %debug_hit.addr = alloca i8, align 1
  %debug_miss.addr = alloca i8, align 1
  %cache = alloca %struct._GimpBrushCache*, align 8
  store void (i8*)* %data_destroy, void (i8*)** %data_destroy.addr, align 8
  store i8 %debug_hit, i8* %debug_hit.addr, align 1
  store i8 %debug_miss, i8* %debug_miss.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load void (i8*)*, void (i8*)** %data_destroy.addr, align 8
  %cmp = icmp ne void (i8*)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_brush_cache_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpBrushCache* null, %struct._GimpBrushCache** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i64 @gimp_brush_cache_get_type() #7
  %1 = load void (i8*)*, void (i8*)** %data_destroy.addr, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), void (i8*)* %1, i8* null)
  %2 = bitcast i8* %call1 to %struct._GimpBrushCache*
  store %struct._GimpBrushCache* %2, %struct._GimpBrushCache** %cache, align 8
  %3 = load i8, i8* %debug_hit.addr, align 1
  %4 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache, align 8
  %debug_hit2 = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %4, i32 0, i32 9
  store i8 %3, i8* %debug_hit2, align 1
  %5 = load i8, i8* %debug_miss.addr, align 1
  %6 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache, align 8
  %debug_miss3 = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %6, i32 0, i32 10
  store i8 %5, i8* %debug_miss3, align 1
  %7 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache, align 8
  store %struct._GimpBrushCache* %7, %struct._GimpBrushCache** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %8 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %retval
  ret %struct._GimpBrushCache* %8
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_brush_cache_clear(%struct._GimpBrushCache* %cache) #3 {
entry:
  %cache.addr = alloca %struct._GimpBrushCache*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrushCache* %cache, %struct._GimpBrushCache** %cache.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %1 = bitcast %struct._GimpBrushCache* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_cache_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_brush_cache_clear, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_data = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %13, i32 0, i32 2
  %14 = load i8*, i8** %last_data, align 8
  %tobool11 = icmp ne i8* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %data_destroy = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %15, i32 0, i32 1
  %16 = load void (i8*)*, void (i8*)** %data_destroy, align 8
  %17 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_data13 = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %17, i32 0, i32 2
  %18 = load i8*, i8** %last_data13, align 8
  call void %16(i8* %18)
  %19 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_data14 = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %19, i32 0, i32 2
  store i8* null, i8** %last_data14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind uwtable
define i8* @gimp_brush_cache_get(%struct._GimpBrushCache* %cache, i32 %width, i32 %height, double %scale, double %aspect_ratio, double %angle, double %hardness) #3 {
entry:
  %retval = alloca i8*, align 8
  %cache.addr = alloca %struct._GimpBrushCache*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %scale.addr = alloca double, align 8
  %aspect_ratio.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %hardness.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrushCache* %cache, %struct._GimpBrushCache** %cache.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store double %scale, double* %scale.addr, align 8
  store double %aspect_ratio, double* %aspect_ratio.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store double %hardness, double* %hardness.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %1 = bitcast %struct._GimpBrushCache* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_cache_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_brush_cache_get, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_data = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %13, i32 0, i32 2
  %14 = load i8*, i8** %last_data, align 8
  %tobool11 = icmp ne i8* %14, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.29

land.lhs.true.12:                                 ; preds = %do.end
  %15 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_width = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %15, i32 0, i32 3
  %16 = load i32, i32* %last_width, align 4
  %17 = load i32, i32* %width.addr, align 4
  %cmp13 = icmp eq i32 %16, %17
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.29

land.lhs.true.14:                                 ; preds = %land.lhs.true.12
  %18 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_height = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %18, i32 0, i32 4
  %19 = load i32, i32* %last_height, align 4
  %20 = load i32, i32* %height.addr, align 4
  %cmp15 = icmp eq i32 %19, %20
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.29

land.lhs.true.16:                                 ; preds = %land.lhs.true.14
  %21 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_scale = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %21, i32 0, i32 5
  %22 = load double, double* %last_scale, align 8
  %23 = load double, double* %scale.addr, align 8
  %cmp17 = fcmp oeq double %22, %23
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.29

land.lhs.true.18:                                 ; preds = %land.lhs.true.16
  %24 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_aspect_ratio = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %24, i32 0, i32 6
  %25 = load double, double* %last_aspect_ratio, align 8
  %26 = load double, double* %aspect_ratio.addr, align 8
  %cmp19 = fcmp oeq double %25, %26
  br i1 %cmp19, label %land.lhs.true.20, label %if.end.29

land.lhs.true.20:                                 ; preds = %land.lhs.true.18
  %27 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_angle = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %27, i32 0, i32 7
  %28 = load double, double* %last_angle, align 8
  %29 = load double, double* %angle.addr, align 8
  %cmp21 = fcmp oeq double %28, %29
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.29

land.lhs.true.22:                                 ; preds = %land.lhs.true.20
  %30 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_hardness = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %30, i32 0, i32 8
  %31 = load double, double* %last_hardness, align 8
  %32 = load double, double* %hardness.addr, align 8
  %cmp23 = fcmp oeq double %31, %32
  br i1 %cmp23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %land.lhs.true.22
  %33 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %33, 262144
  %tobool25 = icmp ne i32 %and, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.24
  %34 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %debug_hit = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %34, i32 0, i32 9
  %35 = load i8, i8* %debug_hit, align 1
  %conv = sext i8 %35 to i32
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 %conv)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.then.24
  %36 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_data28 = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %36, i32 0, i32 2
  %37 = load i8*, i8** %last_data28, align 8
  store i8* %37, i8** %retval
  br label %return

if.end.29:                                        ; preds = %land.lhs.true.22, %land.lhs.true.20, %land.lhs.true.18, %land.lhs.true.16, %land.lhs.true.14, %land.lhs.true.12, %do.end
  %38 = load i32, i32* @gimp_log_flags, align 4
  %and30 = and i32 %38, 262144
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.29
  %39 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %debug_miss = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %39, i32 0, i32 10
  %40 = load i8, i8* %debug_miss, align 1
  %conv33 = sext i8 %40 to i32
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 %conv33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.29
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.end.27, %if.else.9
  %41 = load i8*, i8** %retval
  ret i8* %41
}

declare void @g_printerr(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_brush_cache_add(%struct._GimpBrushCache* %cache, i8* %data, i32 %width, i32 %height, double %scale, double %aspect_ratio, double %angle, double %hardness) #3 {
entry:
  %cache.addr = alloca %struct._GimpBrushCache*, align 8
  %data.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %scale.addr = alloca double, align 8
  %aspect_ratio.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %hardness.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrushCache* %cache, %struct._GimpBrushCache** %cache.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store double %scale, double* %scale.addr, align 8
  store double %aspect_ratio, double* %aspect_ratio.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store double %hardness, double* %hardness.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %1 = bitcast %struct._GimpBrushCache* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_cache_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_brush_cache_add, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %data.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_brush_cache_add, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load i8*, i8** %data.addr, align 8
  %15 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_data = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %15, i32 0, i32 2
  %16 = load i8*, i8** %last_data, align 8
  %cmp17 = icmp eq i8* %14, %16
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end.16
  br label %return

if.end.19:                                        ; preds = %do.end.16
  %17 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_data20 = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %17, i32 0, i32 2
  %18 = load i8*, i8** %last_data20, align 8
  %tobool21 = icmp ne i8* %18, null
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.19
  %19 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %data_destroy = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %19, i32 0, i32 1
  %20 = load void (i8*)*, void (i8*)** %data_destroy, align 8
  %21 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_data23 = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %21, i32 0, i32 2
  %22 = load i8*, i8** %last_data23, align 8
  call void %20(i8* %22)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.19
  %23 = load i8*, i8** %data.addr, align 8
  %24 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_data25 = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %24, i32 0, i32 2
  store i8* %23, i8** %last_data25, align 8
  %25 = load i32, i32* %width.addr, align 4
  %26 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_width = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %26, i32 0, i32 3
  store i32 %25, i32* %last_width, align 4
  %27 = load i32, i32* %height.addr, align 4
  %28 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_height = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %28, i32 0, i32 4
  store i32 %27, i32* %last_height, align 4
  %29 = load double, double* %scale.addr, align 8
  %30 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_scale = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %30, i32 0, i32 5
  store double %29, double* %last_scale, align 8
  %31 = load double, double* %aspect_ratio.addr, align 8
  %32 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_aspect_ratio = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %32, i32 0, i32 6
  store double %31, double* %last_aspect_ratio, align 8
  %33 = load double, double* %angle.addr, align 8
  %34 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_angle = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %34, i32 0, i32 7
  store double %33, double* %last_angle, align 8
  %35 = load double, double* %hardness.addr, align 8
  %36 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache.addr, align 8
  %last_hardness = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %36, i32 0, i32 8
  store double %35, double* %last_hardness, align 8
  br label %return

return:                                           ; preds = %if.end.24, %if.then.18, %if.else.14, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_cache_class_init(%struct._GimpBrushCacheClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpBrushCacheClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpBrushCacheClass* %klass, %struct._GimpBrushCacheClass** %klass.addr, align 8
  %0 = load %struct._GimpBrushCacheClass*, %struct._GimpBrushCacheClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpBrushCacheClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_brush_cache_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_brush_cache_finalize, void (%struct._GObject*)** %finalize, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_brush_cache_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_brush_cache_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call %struct._GParamSpec* @g_param_spec_pointer(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 1, %struct._GParamSpec* %call1)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_cache_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %cache = alloca %struct._GimpBrushCache*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_cache_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushCache*
  store %struct._GimpBrushCache* %2, %struct._GimpBrushCache** %cache, align 8
  %3 = load i8*, i8** @gimp_brush_cache_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_brush_cache_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache, align 8
  %data_destroy = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %12, i32 0, i32 1
  %13 = load void (i8*)*, void (i8*)** %data_destroy, align 8
  %cmp = icmp ne void (i8*)* %13, null
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_brush_cache_constructed, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0)) #9
  unreachable

if.end.6:                                         ; preds = %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_cache_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %cache = alloca %struct._GimpBrushCache*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_cache_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushCache*
  store %struct._GimpBrushCache* %2, %struct._GimpBrushCache** %cache, align 8
  %3 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache, align 8
  %last_data = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %3, i32 0, i32 2
  %4 = load i8*, i8** %last_data, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache, align 8
  %data_destroy = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %5, i32 0, i32 1
  %6 = load void (i8*)*, void (i8*)** %data_destroy, align 8
  %7 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache, align 8
  %last_data2 = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %7, i32 0, i32 2
  %8 = load i8*, i8** %last_data2, align 8
  call void %6(i8* %8)
  %9 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache, align 8
  %last_data3 = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %9, i32 0, i32 2
  store i8* null, i8** %last_data3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8*, i8** @gimp_brush_cache_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_cache_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %cache = alloca %struct._GimpBrushCache*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_cache_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushCache*
  store %struct._GimpBrushCache* %2, %struct._GimpBrushCache** %cache, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_pointer(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to void (i8*)*
  %6 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache, align 8
  %data_destroy = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %6, i32 0, i32 1
  store void (i8*)* %5, void (i8*)** %data_destroy, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %7, %struct._GObject** %_glib__object, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %_glib__pspec, align 8
  %9 = load i32, i32* %property_id.addr, align 4
  store i32 %9, i32* %_glib__property_id, align 4
  %10 = load i32, i32* %_glib__property_id, align 4
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_cache_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %cache = alloca %struct._GimpBrushCache*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_cache_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushCache*
  store %struct._GimpBrushCache* %2, %struct._GimpBrushCache** %cache, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %cache, align 8
  %data_destroy = getelementptr inbounds %struct._GimpBrushCache, %struct._GimpBrushCache* %5, i32 0, i32 1
  %6 = load void (i8*)*, void (i8*)** %data_destroy, align 8
  %7 = bitcast void (i8*)* %6 to i8*
  call void @g_value_set_pointer(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %8, %struct._GObject** %_glib__object, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %9, %struct._GParamSpec** %_glib__pspec, align 8
  %10 = load i32, i32* %property_id.addr, align 4
  store i32 %10, i32* %_glib__property_id, align 4
  %11 = load i32, i32* %_glib__property_id, align 4
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = bitcast %struct._GParamSpec* %14 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %11, i8* %13, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_pointer(i8*, i8*, i8*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare i8* @g_value_get_pointer(%struct._GValue*) #1

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

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_value_set_pointer(%struct._GValue*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
