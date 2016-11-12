; ModuleID = './libgimpthumb/gimpthumbnail.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpThumbnailClass = type { %struct._GObjectClass, void ()*, void ()*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpThumbnail = type { %struct._GObject, i32, i8*, i8*, i64, i64, i32, i32, i32, i8*, i32, i32, i32, i8*, i64, i64, i8*, i8* }
%struct._GError = type { i32, i32, i8* }
%struct._GdkPixbuf = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_thumbnail_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpThumbnail\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"LibGimpThumb\00", align 1
@__func__.gimp_thumbnail_set_uri = private unnamed_addr constant [23 x i8] c"gimp_thumbnail_set_uri\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_THUMBNAIL (thumbnail)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"image-state\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"image-filesize\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"image-mtime\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"image-mimetype\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"image-width\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"image-height\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"image-type\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"image-num-layers\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"thumb-state\00", align 1
@__func__.gimp_thumbnail_set_filename = private unnamed_addr constant [28 x i8] c"gimp_thumbnail_set_filename\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@__func__.gimp_thumbnail_set_from_thumb = private unnamed_addr constant [30 x i8] c"gimp_thumbnail_set_from_thumb\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"tEXt::Thumb::URI\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"Thumbnail contains no Thumb::URI tag\00", align 1
@__func__.gimp_thumbnail_peek_image = private unnamed_addr constant [26 x i8] c"gimp_thumbnail_peek_image\00", align 1
@__func__.gimp_thumbnail_peek_thumb = private unnamed_addr constant [26 x i8] c"gimp_thumbnail_peek_thumb\00", align 1
@__func__.gimp_thumbnail_check_thumb = private unnamed_addr constant [27 x i8] c"gimp_thumbnail_check_thumb\00", align 1
@__func__.gimp_thumbnail_load_thumb = private unnamed_addr constant [26 x i8] c"gimp_thumbnail_load_thumb\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"tEXt::Thumb::MTime\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%li\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"tEXt::Thumb::Size\00", align 1
@__func__.gimp_thumbnail_save_thumb = private unnamed_addr constant [26 x i8] c"gimp_thumbnail_save_thumb\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"thumbnail->image_uri != NULL\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"GDK_IS_PIXBUF (pixbuf)\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"software != NULL\00", align 1
@__func__.gimp_thumbnail_save_thumb_local = private unnamed_addr constant [32 x i8] c"gimp_thumbnail_save_thumb_local\00", align 1
@__func__.gimp_thumbnail_save_failure = private unnamed_addr constant [28 x i8] c"gimp_thumbnail_save_failure\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"Thumbnail failure for %s\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"png\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"tEXt::Description\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"tEXt::Software\00", align 1
@.str.27 = private unnamed_addr constant [48 x i8] c"Could not set permissions of thumbnail '%s': %s\00", align 1
@__func__.gimp_thumbnail_delete_failure = private unnamed_addr constant [30 x i8] c"gimp_thumbnail_delete_failure\00", align 1
@__func__.gimp_thumbnail_delete_others = private unnamed_addr constant [29 x i8] c"gimp_thumbnail_delete_others\00", align 1
@__func__.gimp_thumbnail_has_failed = private unnamed_addr constant [26 x i8] c"gimp_thumbnail_has_failed\00", align 1
@gimp_thumbnail_parent_class = internal global i8* null, align 8
@GimpThumbnail_private_offset = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [54 x i8] c"State of the image associated to the thumbnail object\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"image-uri\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"URI of the image file\00", align 1
@.str.31 = private unnamed_addr constant [63 x i8] c"Modification time of the image file in seconds since the Epoch\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"Size of the image file in bytes\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"Image mimetype\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"Width of the image in pixels\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"Height of the image in pixels\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c"String describing the type of the image format\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"The number of layers in the image\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"State of the thumbnail file\00", align 1
@.str.39 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"gimpthumbnail.c\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@__func__.gimp_thumbnail_update_image = private unnamed_addr constant [28 x i8] c"gimp_thumbnail_update_image\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"thumbnail->image_filename == NULL\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"thumbnail->image_filename != NULL\00", align 1
@__func__.gimp_thumbnail_update_thumb = private unnamed_addr constant [28 x i8] c"gimp_thumbnail_update_thumb\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"thumbnail->thumb_filename != NULL\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"tEXt::Thumb::Mimetype\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"tEXt::Thumb::Image::Width\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"tEXt::Thumb::Image::Height\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"tEXt::Thumb::X-GIMP::Type\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"tEXt::Thumb::X-GIMP::Layers\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"Thumbnail of %s\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"%s%cgimp-thumb-%d-%.8s\00", align 1
@.str.53 = private unnamed_addr constant [38 x i8] c"Could not create thumbnail for %s: %s\00", align 1
@.str.54 = private unnamed_addr constant [50 x i8] c"Could not set permissions of thumbnail for %s: %s\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_thumbnail_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_thumbnail_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_thumbnail_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call6 = call i64 @g_type_register_static_simple(i64 80, i8* %call5, i32 168, void (i8*, i8*)* bitcast (void (i8*)* @gimp_thumbnail_class_intern_init to void (i8*, i8*)*), i32 144, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpThumbnail*)* @gimp_thumbnail_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call6, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_thumbnail_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_thumbnail_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_thumbnail_class_intern_init(i8* %klass) #2 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_thumbnail_parent_class, align 8
  %1 = load i32, i32* @GimpThumbnail_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpThumbnail_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpThumbnailClass*
  call void @gimp_thumbnail_class_init(%struct._GimpThumbnailClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_thumbnail_init(%struct._GimpThumbnail* %thumbnail) #2 {
entry:
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %0, i32 0, i32 1
  store i32 0, i32* %image_state, align 4
  %1 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %1, i32 0, i32 2
  store i8* null, i8** %image_uri, align 8
  %2 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_filename = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %2, i32 0, i32 3
  store i8* null, i8** %image_filename, align 8
  %3 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_mtime = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %3, i32 0, i32 5
  store i64 0, i64* %image_mtime, align 8
  %4 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_filesize = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %4, i32 0, i32 4
  store i64 0, i64* %image_filesize, align 8
  %5 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_mimetype = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %5, i32 0, i32 16
  store i8* null, i8** %image_mimetype, align 8
  %6 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_width = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %6, i32 0, i32 7
  store i32 0, i32* %image_width, align 4
  %7 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_height = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %7, i32 0, i32 8
  store i32 0, i32* %image_height, align 4
  %8 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_type = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %8, i32 0, i32 9
  store i8* null, i8** %image_type, align 8
  %9 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_num_layers = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %9, i32 0, i32 10
  store i32 0, i32* %image_num_layers, align 4
  %10 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %10, i32 0, i32 11
  store i32 0, i32* %thumb_state, align 4
  %11 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_size = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %11, i32 0, i32 12
  store i32 -1, i32* %thumb_size, align 4
  %12 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_filename = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %12, i32 0, i32 13
  store i8* null, i8** %thumb_filename, align 8
  %13 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_mtime = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %13, i32 0, i32 15
  store i64 0, i64* %thumb_mtime, align 8
  %14 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_filesize = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %14, i32 0, i32 14
  store i64 0, i64* %thumb_filesize, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpThumbnail* @gimp_thumbnail_new() #2 {
entry:
  %call = call i64 @gimp_thumbnail_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpThumbnail*
  ret %struct._GimpThumbnail* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_thumbnail_set_uri(%struct._GimpThumbnail* %thumbnail, i8* %uri) #2 {
entry:
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  %uri.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %1 = bitcast %struct._GimpThumbnail* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_thumbnail_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_thumbnail_set_uri, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %13, i32 0, i32 2
  %14 = load i8*, i8** %image_uri, align 8
  %tobool11 = icmp ne i8* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri13 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %15, i32 0, i32 2
  %16 = load i8*, i8** %image_uri13, align 8
  call void @g_free(i8* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %17 = load i8*, i8** %uri.addr, align 8
  %call15 = call noalias i8* @g_strdup(i8* %17)
  %18 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri16 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %18, i32 0, i32 2
  store i8* %call15, i8** %image_uri16, align 8
  %19 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_filename = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %19, i32 0, i32 3
  %20 = load i8*, i8** %image_filename, align 8
  %tobool17 = icmp ne i8* %20, null
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.14
  %21 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_filename19 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %21, i32 0, i32 3
  %22 = load i8*, i8** %image_filename19, align 8
  call void @g_free(i8* %22)
  %23 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_filename20 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %23, i32 0, i32 3
  store i8* null, i8** %image_filename20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end.14
  %24 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_filename = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %24, i32 0, i32 13
  %25 = load i8*, i8** %thumb_filename, align 8
  %tobool22 = icmp ne i8* %25, null
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.21
  %26 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_filename24 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %26, i32 0, i32 13
  %27 = load i8*, i8** %thumb_filename24, align 8
  call void @g_free(i8* %27)
  %28 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_filename25 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %28, i32 0, i32 13
  store i8* null, i8** %thumb_filename25, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.21
  %29 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_size = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %29, i32 0, i32 12
  store i32 -1, i32* %thumb_size, align 4
  %30 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_filesize = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %30, i32 0, i32 14
  store i64 0, i64* %thumb_filesize, align 8
  %31 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_mtime = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %31, i32 0, i32 15
  store i64 0, i64* %thumb_mtime, align 8
  %32 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %33 = bitcast %struct._GimpThumbnail* %32 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 0, i8* null)
  br label %return

return:                                           ; preds = %if.end.26, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_free(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_thumbnail_set_filename(%struct._GimpThumbnail* %thumbnail, i8* %filename, %struct._GError** %error) #2 {
entry:
  %retval = alloca i32, align 4
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %uri = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %uri, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %1 = bitcast %struct._GimpThumbnail* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_thumbnail_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_thumbnail_set_filename, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_thumbnail_set_filename, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load i8*, i8** %filename.addr, align 8
  %tobool18 = icmp ne i8* %16, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %do.end.17
  %17 = load i8*, i8** %filename.addr, align 8
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call20 = call noalias i8* @g_filename_to_uri(i8* %17, i8* null, %struct._GError** %18)
  store i8* %call20, i8** %uri, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %do.end.17
  %19 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %20 = load i8*, i8** %uri, align 8
  call void @gimp_thumbnail_set_uri(%struct._GimpThumbnail* %19, i8* %20)
  %21 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %21)
  %22 = load i8*, i8** %filename.addr, align 8
  %tobool22 = icmp ne i8* %22, null
  br i1 %tobool22, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end.21
  %23 = load i8*, i8** %uri, align 8
  %tobool23 = icmp ne i8* %23, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.21
  %24 = phi i1 [ true, %if.end.21 ], [ %tobool23, %lor.rhs ]
  %lor.ext = zext i1 %24 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.else.15, %if.else.9
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare noalias i8* @g_filename_to_uri(i8*, i8*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_thumbnail_set_from_thumb(%struct._GimpThumbnail* %thumbnail, i8* %filename, %struct._GError** %error) #2 {
entry:
  %retval = alloca i32, align 4
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %uri = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %1 = bitcast %struct._GimpThumbnail* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_thumbnail_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_thumbnail_set_from_thumb, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_thumbnail_set_from_thumb, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_thumbnail_set_from_thumb, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %17 = load i8*, i8** %filename.addr, align 8
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call24 = call %struct._GdkPixbuf* @gdk_pixbuf_new_from_file(i8* %17, %struct._GError** %18)
  store %struct._GdkPixbuf* %call24, %struct._GdkPixbuf** %pixbuf, align 8
  %19 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool25 = icmp ne %struct._GdkPixbuf* %19, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %do.end.23
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %do.end.23
  %20 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call28 = call i8* @gdk_pixbuf_get_option(%struct._GdkPixbuf* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0))
  store i8* %call28, i8** %uri, align 8
  %21 = load i8*, i8** %uri, align 8
  %tobool29 = icmp ne i8* %21, null
  br i1 %tobool29, label %if.end.33, label %if.then.30

if.then.30:                                       ; preds = %if.end.27
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call31 = call i32 @gimp_thumb_error_quark() #7
  %call32 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %22, i32 %call31, i32 0, i8* %call32)
  %23 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %24 = bitcast %struct._GdkPixbuf* %23 to i8*
  call void @g_object_unref(i8* %24)
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.end.27
  %25 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %26 = load i8*, i8** %uri, align 8
  call void @gimp_thumbnail_set_uri(%struct._GimpThumbnail* %25, i8* %26)
  %27 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %28 = bitcast %struct._GdkPixbuf* %27 to i8*
  call void @g_object_unref(i8* %28)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then.30, %if.then.26, %if.else.21, %if.else.14, %if.else.9
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare %struct._GdkPixbuf* @gdk_pixbuf_new_from_file(i8*, %struct._GError**) #1

declare i8* @gdk_pixbuf_get_option(%struct._GdkPixbuf*, i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_thumb_error_quark() #4

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_thumbnail_peek_image(%struct._GimpThumbnail* %thumbnail) #2 {
entry:
  %retval = alloca i32, align 4
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %1 = bitcast %struct._GimpThumbnail* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_thumbnail_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_thumbnail_peek_image, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %14 = bitcast %struct._GimpThumbnail* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %15)
  %16 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  call void @gimp_thumbnail_update_image(%struct._GimpThumbnail* %16)
  %17 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %18 = bitcast %struct._GimpThumbnail* %17 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 80)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %19)
  %20 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %20, i32 0, i32 1
  %21 = load i32, i32* %image_state, align 4
  store i32 %21, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare void @g_object_freeze_notify(%struct._GObject*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_thumbnail_update_image(%struct._GimpThumbnail* %thumbnail) #2 {
entry:
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  %state = alloca i32, align 4
  %mtime = alloca i64, align 8
  %filesize = alloca i64, align 8
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  store i64 0, i64* %mtime, align 8
  store i64 0, i64* %filesize, align 8
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %0, i32 0, i32 2
  %1 = load i8*, i8** %image_uri, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.37

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %2, i32 0, i32 1
  %3 = load i32, i32* %image_state, align 4
  store i32 %3, i32* %state, align 4
  %4 = load i32, i32* %state, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %5 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_filename = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %5, i32 0, i32 3
  %6 = load i8*, i8** %image_filename, align 8
  %cmp = icmp eq i8* %6, null
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %do.body
  br label %if.end.2

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_thumbnail_update_image, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.37

if.end.2:                                         ; preds = %if.then.1
  br label %do.end

do.end:                                           ; preds = %if.end.2
  %7 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri3 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %7, i32 0, i32 2
  %8 = load i8*, i8** %image_uri3, align 8
  %call = call i8* @_gimp_thumb_filename_from_uri(i8* %8)
  %9 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_filename4 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %9, i32 0, i32 3
  store i8* %call, i8** %image_filename4, align 8
  %10 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_filename5 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %10, i32 0, i32 3
  %11 = load i8*, i8** %image_filename5, align 8
  %tobool6 = icmp ne i8* %11, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %do.end
  store i32 1, i32* %state, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %do.end
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %do.body.10

do.body.10:                                       ; preds = %sw.default
  %12 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_filename11 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %12, i32 0, i32 3
  %13 = load i8*, i8** %image_filename11, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.10
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.10
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_thumbnail_update_image, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.37

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.16, %sw.bb.9, %if.end.8
  %14 = load i32, i32* %state, align 4
  switch i32 %14, label %sw.default.18 [
    i32 1, label %sw.bb.17
  ]

sw.bb.17:                                         ; preds = %sw.epilog
  br label %sw.epilog.26

sw.default.18:                                    ; preds = %sw.epilog
  %15 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_filename19 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %15, i32 0, i32 3
  %16 = load i8*, i8** %image_filename19, align 8
  %17 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_not_found_errno = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %17, i32 0, i32 6
  %call20 = call i32 @gimp_thumb_file_test(i8* %16, i64* %mtime, i64* %filesize, i32* %image_not_found_errno)
  switch i32 %call20, label %sw.default.24 [
    i32 1, label %sw.bb.21
    i32 2, label %sw.bb.22
    i32 3, label %sw.bb.23
  ]

sw.bb.21:                                         ; preds = %sw.default.18
  store i32 5, i32* %state, align 4
  br label %sw.epilog.25

sw.bb.22:                                         ; preds = %sw.default.18
  store i32 2, i32* %state, align 4
  br label %sw.epilog.25

sw.bb.23:                                         ; preds = %sw.default.18
  store i32 3, i32* %state, align 4
  br label %sw.epilog.25

sw.default.24:                                    ; preds = %sw.default.18
  store i32 4, i32* %state, align 4
  br label %sw.epilog.25

sw.epilog.25:                                     ; preds = %sw.default.24, %sw.bb.23, %sw.bb.22, %sw.bb.21
  br label %sw.epilog.26

sw.epilog.26:                                     ; preds = %sw.epilog.25, %sw.bb.17
  %18 = load i32, i32* %state, align 4
  %19 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_state27 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %19, i32 0, i32 1
  %20 = load i32, i32* %image_state27, align 4
  %cmp28 = icmp ne i32 %18, %20
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %sw.epilog.26
  %21 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %22 = bitcast %struct._GimpThumbnail* %21 to i8*
  %23 = load i32, i32* %state, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 %23, i8* null)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %sw.epilog.26
  %24 = load i64, i64* %mtime, align 8
  %25 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_mtime = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %25, i32 0, i32 5
  %26 = load i64, i64* %image_mtime, align 8
  %cmp31 = icmp ne i64 %24, %26
  br i1 %cmp31, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.30
  %27 = load i64, i64* %filesize, align 8
  %28 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_filesize = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %28, i32 0, i32 4
  %29 = load i64, i64* %image_filesize, align 8
  %cmp32 = icmp ne i64 %27, %29
  br i1 %cmp32, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %lor.lhs.false, %if.end.30
  %30 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %31 = bitcast %struct._GimpThumbnail* %30 to i8*
  %32 = load i64, i64* %mtime, align 8
  %33 = load i64, i64* %filesize, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i64 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i64 %33, i8* null)
  %34 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %34, i32 0, i32 11
  %35 = load i32, i32* %thumb_state, align 4
  %cmp34 = icmp eq i32 %35, 8
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.33
  %36 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %37 = bitcast %struct._GimpThumbnail* %36 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 6, i8* null)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.then.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.then, %if.else, %if.else.14, %if.end.36, %lor.lhs.false
  ret void
}

declare void @g_object_thaw_notify(%struct._GObject*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_thumbnail_peek_thumb(%struct._GimpThumbnail* %thumbnail, i32 %size) #2 {
entry:
  %retval = alloca i32, align 4
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  %size.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %1 = bitcast %struct._GimpThumbnail* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_thumbnail_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_thumbnail_peek_thumb, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %14 = bitcast %struct._GimpThumbnail* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %15)
  %16 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  call void @gimp_thumbnail_update_image(%struct._GimpThumbnail* %16)
  %17 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %18 = load i32, i32* %size.addr, align 4
  call void @gimp_thumbnail_update_thumb(%struct._GimpThumbnail* %17, i32 %18)
  %19 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %20 = bitcast %struct._GimpThumbnail* %19 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %21)
  %22 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %22, i32 0, i32 11
  %23 = load i32, i32* %thumb_state, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal void @gimp_thumbnail_update_thumb(%struct._GimpThumbnail* %thumbnail, i32 %size) #2 {
entry:
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  %size.addr = alloca i32, align 4
  %filename = alloca i8*, align 8
  %state = alloca i32, align 4
  %filesize = alloca i64, align 8
  %mtime = alloca i64, align 8
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i64 0, i64* %filesize, align 8
  store i64 0, i64* %mtime, align 8
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %0, i32 0, i32 2
  %1 = load i8*, i8** %image_uri, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.33

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %2, i32 0, i32 11
  %3 = load i32, i32* %thumb_state, align 4
  store i32 %3, i32* %state, align 4
  %4 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri1 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %4, i32 0, i32 2
  %5 = load i8*, i8** %image_uri1, align 8
  %call = call noalias i8* @gimp_thumb_find_thumb(i8* %5, i32* %size.addr)
  store i8* %call, i8** %filename, align 8
  %6 = load i32, i32* %state, align 4
  %cmp = icmp ne i32 %6, 7
  br i1 %cmp, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %7 = load i8*, i8** %filename, align 8
  %tobool2 = icmp ne i8* %7, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  store i32 4, i32* %state, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  %8 = load i32, i32* %state, align 4
  switch i32 %8, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 8, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.4, %if.end.4, %if.end.4
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %9 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_filename = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %9, i32 0, i32 13
  %10 = load i8*, i8** %thumb_filename, align 8
  %cmp5 = icmp ne i8* %10, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_thumbnail_update_thumb, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.33

if.end.7:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %11 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_size = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %11, i32 0, i32 12
  %12 = load i32, i32* %thumb_size, align 4
  %13 = load i32, i32* %size.addr, align 4
  %cmp8 = icmp eq i32 %12, %13
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.14

land.lhs.true.9:                                  ; preds = %do.end
  %14 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_filesize = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %14, i32 0, i32 14
  %15 = load i64, i64* %thumb_filesize, align 8
  %16 = load i64, i64* %filesize, align 8
  %cmp10 = icmp eq i64 %15, %16
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.14

land.lhs.true.11:                                 ; preds = %land.lhs.true.9
  %17 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_mtime = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %17, i32 0, i32 15
  %18 = load i64, i64* %thumb_mtime, align 8
  %19 = load i64, i64* %mtime, align 8
  %cmp12 = icmp eq i64 %18, %19
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.11
  %20 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %20)
  br label %if.end.33

if.end.14:                                        ; preds = %land.lhs.true.11, %land.lhs.true.9, %do.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.14
  %21 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_filename15 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %21, i32 0, i32 13
  %22 = load i8*, i8** %thumb_filename15, align 8
  %tobool16 = icmp ne i8* %22, null
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %sw.epilog
  %23 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_filename18 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %23, i32 0, i32 13
  %24 = load i8*, i8** %thumb_filename18, align 8
  call void @g_free(i8* %24)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %sw.epilog
  %25 = load i8*, i8** %filename, align 8
  %26 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_filename20 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %26, i32 0, i32 13
  store i8* %25, i8** %thumb_filename20, align 8
  %27 = load i8*, i8** %filename, align 8
  %tobool21 = icmp ne i8* %27, null
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.19
  %28 = load i32, i32* %size.addr, align 4
  %cmp23 = icmp ugt i32 %28, 0
  %cond = select i1 %cmp23, i32 5, i32 7
  store i32 %cond, i32* %state, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.19
  %29 = load i32, i32* %size.addr, align 4
  %30 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_size25 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %30, i32 0, i32 12
  store i32 %29, i32* %thumb_size25, align 4
  %31 = load i64, i64* %filesize, align 8
  %32 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_filesize26 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %32, i32 0, i32 14
  store i64 %31, i64* %thumb_filesize26, align 8
  %33 = load i64, i64* %mtime, align 8
  %34 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_mtime27 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %34, i32 0, i32 15
  store i64 %33, i64* %thumb_mtime27, align 8
  %35 = load i32, i32* %state, align 4
  %36 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_state28 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %36, i32 0, i32 11
  %37 = load i32, i32* %thumb_state28, align 4
  %cmp29 = icmp ne i32 %35, %37
  br i1 %cmp29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.end.24
  %38 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %39 = bitcast %struct._GimpThumbnail* %38 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %40)
  %41 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %42 = bitcast %struct._GimpThumbnail* %41 to i8*
  %43 = load i32, i32* %state, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 %43, i8* null)
  %44 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  call void @gimp_thumbnail_reset_info(%struct._GimpThumbnail* %44)
  %45 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %46 = bitcast %struct._GimpThumbnail* %45 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 80)
  %47 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %47)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then, %if.else, %if.then.13, %if.then.30, %if.end.24
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_thumbnail_check_thumb(%struct._GimpThumbnail* %thumbnail, i32 %size) #2 {
entry:
  %retval = alloca i32, align 4
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  %size.addr = alloca i32, align 4
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %1 = bitcast %struct._GimpThumbnail* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_thumbnail_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_thumbnail_check_thumb, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %14 = load i32, i32* %size.addr, align 4
  %call11 = call i32 @gimp_thumbnail_peek_thumb(%struct._GimpThumbnail* %13, i32 %14)
  %cmp12 = icmp eq i32 %call11, 8
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  store i32 8, i32* %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  %15 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %16 = load i32, i32* %size.addr, align 4
  %call15 = call %struct._GdkPixbuf* @gimp_thumbnail_load_thumb(%struct._GimpThumbnail* %15, i32 %16, %struct._GError** null)
  store %struct._GdkPixbuf* %call15, %struct._GdkPixbuf** %pixbuf, align 8
  %17 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool16 = icmp ne %struct._GdkPixbuf* %17, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  %18 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %19 = bitcast %struct._GdkPixbuf* %18 to i8*
  call void @g_object_unref(i8* %19)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.14
  %20 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %20, i32 0, i32 11
  %21 = load i32, i32* %thumb_state, align 4
  store i32 %21, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.13, %if.else.9
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define %struct._GdkPixbuf* @gimp_thumbnail_load_thumb(%struct._GimpThumbnail* %thumbnail, i32 %size, %struct._GError** %error) #2 {
entry:
  %retval = alloca %struct._GdkPixbuf*, align 8
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  %size.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %state = alloca i32, align 4
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %option = alloca i8*, align 8
  %image_mtime = alloca i64, align 8
  %image_size = alloca i64, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %baseuri = alloca i8*, align 8
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %1 = bitcast %struct._GimpThumbnail* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_thumbnail_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_thumbnail_load_thumb, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %13, i32 0, i32 2
  %14 = load i8*, i8** %image_uri, align 8
  %tobool11 = icmp ne i8* %14, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.13:                                        ; preds = %do.end
  %15 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %16 = load i32, i32* %size.addr, align 4
  %call14 = call i32 @gimp_thumbnail_peek_thumb(%struct._GimpThumbnail* %15, i32 %16)
  store i32 %call14, i32* %state, align 4
  %17 = load i32, i32* %state, align 4
  %cmp15 = icmp ult i32 %17, 5
  br i1 %cmp15, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %18 = load i32, i32* %state, align 4
  %cmp16 = icmp eq i32 %18, 7
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.13
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false
  %19 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_filename = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %19, i32 0, i32 13
  %20 = load i8*, i8** %thumb_filename, align 8
  %call19 = call %struct._GdkPixbuf* @gdk_pixbuf_new_from_file(i8* %20, %struct._GError** null)
  store %struct._GdkPixbuf* %call19, %struct._GdkPixbuf** %pixbuf, align 8
  %21 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool20 = icmp ne %struct._GdkPixbuf* %21, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.18
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.18
  %22 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %23 = bitcast %struct._GimpThumbnail* %22 to %struct._GTypeInstance*
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call23 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %24)
  %25 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call24 = call i8* @gdk_pixbuf_get_option(%struct._GdkPixbuf* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0))
  store i8* %call24, i8** %option, align 8
  %26 = load i8*, i8** %option, align 8
  %tobool25 = icmp ne i8* %26, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.end.22
  br label %finish

if.end.27:                                        ; preds = %if.end.22
  %27 = load i8*, i8** %option, align 8
  %28 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri28 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %28, i32 0, i32 2
  %29 = load i8*, i8** %image_uri28, align 8
  %call29 = call i32 @strcmp(i8* %27, i8* %29) #8
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.41

if.then.31:                                       ; preds = %if.end.27
  %30 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri33 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %30, i32 0, i32 2
  %31 = load i8*, i8** %image_uri33, align 8
  %call34 = call i8* @strrchr(i8* %31, i32 47) #8
  store i8* %call34, i8** %baseuri, align 8
  %32 = load i8*, i8** %baseuri, align 8
  %tobool35 = icmp ne i8* %32, null
  br i1 %tobool35, label %lor.lhs.false.36, label %if.then.39

lor.lhs.false.36:                                 ; preds = %if.then.31
  %33 = load i8*, i8** %option, align 8
  %34 = load i8*, i8** %baseuri, align 8
  %call37 = call i32 @strcmp(i8* %33, i8* %34) #8
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %lor.lhs.false.36, %if.then.31
  br label %finish

if.end.40:                                        ; preds = %lor.lhs.false.36
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.27
  store i32 6, i32* %state, align 4
  %35 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call42 = call i8* @gdk_pixbuf_get_option(%struct._GdkPixbuf* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0))
  store i8* %call42, i8** %option, align 8
  %36 = load i8*, i8** %option, align 8
  %tobool43 = icmp ne i8* %36, null
  br i1 %tobool43, label %lor.lhs.false.44, label %if.then.47

lor.lhs.false.44:                                 ; preds = %if.end.41
  %37 = load i8*, i8** %option, align 8
  %call45 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i64* %image_mtime) #6
  %cmp46 = icmp ne i32 %call45, 1
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %lor.lhs.false.44, %if.end.41
  br label %finish

if.end.48:                                        ; preds = %lor.lhs.false.44
  %38 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call49 = call i8* @gdk_pixbuf_get_option(%struct._GdkPixbuf* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0))
  store i8* %call49, i8** %option, align 8
  %39 = load i8*, i8** %option, align 8
  %tobool50 = icmp ne i8* %39, null
  br i1 %tobool50, label %land.lhs.true.51, label %if.end.55

land.lhs.true.51:                                 ; preds = %if.end.48
  %40 = load i8*, i8** %option, align 8
  %call52 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i64* %image_size) #6
  %cmp53 = icmp ne i32 %call52, 1
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %land.lhs.true.51
  br label %finish

if.end.55:                                        ; preds = %land.lhs.true.51, %if.end.48
  %41 = load i64, i64* %image_mtime, align 8
  %42 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_mtime56 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %42, i32 0, i32 5
  %43 = load i64, i64* %image_mtime56, align 8
  %cmp57 = icmp eq i64 %41, %43
  br i1 %cmp57, label %land.lhs.true.58, label %if.end.67

land.lhs.true.58:                                 ; preds = %if.end.55
  %44 = load i8*, i8** %option, align 8
  %cmp59 = icmp eq i8* %44, null
  br i1 %cmp59, label %if.then.62, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %land.lhs.true.58
  %45 = load i64, i64* %image_size, align 8
  %46 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_filesize = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %46, i32 0, i32 4
  %47 = load i64, i64* %image_filesize, align 8
  %cmp61 = icmp eq i64 %45, %47
  br i1 %cmp61, label %if.then.62, label %if.end.67

if.then.62:                                       ; preds = %lor.lhs.false.60, %land.lhs.true.58
  %48 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_size = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %48, i32 0, i32 12
  %49 = load i32, i32* %thumb_size, align 4
  %cmp63 = icmp eq i32 %49, 0
  br i1 %cmp63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.then.62
  store i32 7, i32* %state, align 4
  br label %if.end.66

if.else.65:                                       ; preds = %if.then.62
  store i32 8, i32* %state, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.65, %if.then.64
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %lor.lhs.false.60, %if.end.55
  %50 = load i32, i32* %state, align 4
  %cmp68 = icmp eq i32 %50, 7
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %if.end.67
  %51 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  call void @gimp_thumbnail_reset_info(%struct._GimpThumbnail* %51)
  br label %if.end.71

if.else.70:                                       ; preds = %if.end.67
  %52 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %53 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  call void @gimp_thumbnail_set_info_from_pixbuf(%struct._GimpThumbnail* %52, %struct._GdkPixbuf* %53)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.70, %if.then.69
  br label %finish

finish:                                           ; preds = %if.end.71, %if.then.54, %if.then.47, %if.then.39, %if.then.26
  %54 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_size72 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %54, i32 0, i32 12
  %55 = load i32, i32* %thumb_size72, align 4
  %cmp73 = icmp eq i32 %55, 0
  br i1 %cmp73, label %if.then.78, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %finish
  %56 = load i32, i32* %state, align 4
  %cmp75 = icmp ne i32 %56, 6
  br i1 %cmp75, label %land.lhs.true.76, label %if.end.79

land.lhs.true.76:                                 ; preds = %lor.lhs.false.74
  %57 = load i32, i32* %state, align 4
  %cmp77 = icmp ne i32 %57, 8
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %land.lhs.true.76, %finish
  %58 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %59 = bitcast %struct._GdkPixbuf* %58 to i8*
  call void @g_object_unref(i8* %59)
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %pixbuf, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %land.lhs.true.76, %lor.lhs.false.74
  %60 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %61 = bitcast %struct._GimpThumbnail* %60 to i8*
  %62 = load i32, i32* %state, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 %62, i8* null)
  %63 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %64 = bitcast %struct._GimpThumbnail* %63 to %struct._GTypeInstance*
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 80)
  %65 = bitcast %struct._GTypeInstance* %call80 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %65)
  %66 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  store %struct._GdkPixbuf* %66, %struct._GdkPixbuf** %retval
  br label %return

return:                                           ; preds = %if.end.79, %if.then.21, %if.then.17, %if.then.12, %if.else.9
  %67 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %retval
  ret %struct._GdkPixbuf* %67
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_thumbnail_reset_info(%struct._GimpThumbnail* %thumbnail) #2 {
entry:
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %1 = bitcast %struct._GimpThumbnail* %0 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_thumbnail_set_info_from_pixbuf(%struct._GimpThumbnail* %thumbnail, %struct._GdkPixbuf* %pixbuf) #2 {
entry:
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  %pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  %option = alloca i8*, align 8
  %num = alloca i32, align 4
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  store %struct._GdkPixbuf* %pixbuf, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %1 = bitcast %struct._GimpThumbnail* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %2)
  %3 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  call void @gimp_thumbnail_reset_info(%struct._GimpThumbnail* %3)
  %4 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_mimetype = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %4, i32 0, i32 16
  %5 = load i8*, i8** %image_mimetype, align 8
  call void @g_free(i8* %5)
  %6 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call1 = call i8* @gdk_pixbuf_get_option(%struct._GdkPixbuf* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0))
  %call2 = call noalias i8* @g_strdup(i8* %call1)
  %7 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_mimetype3 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %7, i32 0, i32 16
  store i8* %call2, i8** %image_mimetype3, align 8
  %8 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call4 = call i8* @gdk_pixbuf_get_option(%struct._GdkPixbuf* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i32 0, i32 0))
  store i8* %call4, i8** %option, align 8
  %9 = load i8*, i8** %option, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load i8*, i8** %option, align 8
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i32* %num) #6
  %cmp = icmp eq i32 %call5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load i32, i32* %num, align 4
  %12 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_width = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %12, i32 0, i32 7
  store i32 %11, i32* %image_width, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %13 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call6 = call i8* @gdk_pixbuf_get_option(%struct._GdkPixbuf* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i32 0, i32 0))
  store i8* %call6, i8** %option, align 8
  %14 = load i8*, i8** %option, align 8
  %tobool7 = icmp ne i8* %14, null
  br i1 %tobool7, label %land.lhs.true.8, label %if.end.12

land.lhs.true.8:                                  ; preds = %if.end
  %15 = load i8*, i8** %option, align 8
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i32* %num) #6
  %cmp10 = icmp eq i32 %call9, 1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true.8
  %16 = load i32, i32* %num, align 4
  %17 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_height = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %17, i32 0, i32 8
  store i32 %16, i32* %image_height, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %land.lhs.true.8, %if.end
  %18 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call13 = call i8* @gdk_pixbuf_get_option(%struct._GdkPixbuf* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0))
  %call14 = call noalias i8* @g_strdup(i8* %call13)
  %19 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_type = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %19, i32 0, i32 9
  store i8* %call14, i8** %image_type, align 8
  %20 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call15 = call i8* @gdk_pixbuf_get_option(%struct._GdkPixbuf* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i32 0, i32 0))
  store i8* %call15, i8** %option, align 8
  %21 = load i8*, i8** %option, align 8
  %tobool16 = icmp ne i8* %21, null
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.21

land.lhs.true.17:                                 ; preds = %if.end.12
  %22 = load i8*, i8** %option, align 8
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i32* %num) #6
  %cmp19 = icmp eq i32 %call18, 1
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.17
  %23 = load i32, i32* %num, align 4
  %24 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_num_layers = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %24, i32 0, i32 10
  store i32 %23, i32* %image_num_layers, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %land.lhs.true.17, %if.end.12
  %25 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %26 = bitcast %struct._GimpThumbnail* %25 to %struct._GTypeInstance*
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 80)
  %27 = bitcast %struct._GTypeInstance* %call22 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_thumbnail_save_thumb(%struct._GimpThumbnail* %thumbnail, %struct._GdkPixbuf* %pixbuf, i8* %software, %struct._GError** %error) #2 {
entry:
  %retval = alloca i32, align 4
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  %pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  %software.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %size = alloca i32, align 4
  %name = alloca i8*, align 8
  %success = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  store %struct._GdkPixbuf* %pixbuf, %struct._GdkPixbuf** %pixbuf.addr, align 8
  store i8* %software, i8** %software.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %1 = bitcast %struct._GimpThumbnail* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_thumbnail_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_thumbnail_save_thumb, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %13, i32 0, i32 2
  %14 = load i8*, i8** %image_uri, align 8
  %cmp12 = icmp ne i8* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_thumbnail_save_thumb, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %15 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %16 = bitcast %struct._GdkPixbuf* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gdk_pixbuf_get_type() #7
  store i64 %call22, i64* %__t21, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool25 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %do.body.17
  store i32 0, i32* %__r24, align 4
  br label %if.end.38

if.else.27:                                       ; preds = %do.body.17
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %tobool29 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.35

land.lhs.true.30:                                 ; preds = %if.else.27
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %g_type32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type32, align 8
  %23 = load i64, i64* %__t21, align 8
  %cmp33 = icmp eq i64 %22, %23
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %__r24, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %land.lhs.true.30, %if.else.27
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %25 = load i64, i64* %__t21, align 8
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #8
  store i32 %call36, i32* %__r24, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.26
  %26 = load i32, i32* %__r24, align 4
  store i32 %26, i32* %tmp39
  %27 = load i32, i32* %tmp39
  %tobool40 = icmp ne i32 %27, 0
  br i1 %tobool40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.end.38
  br label %if.end.43

if.else.42:                                       ; preds = %if.end.38
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_thumbnail_save_thumb, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %28 = load i8*, i8** %software.addr, align 8
  %cmp46 = icmp ne i8* %28, null
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.45
  br label %if.end.49

if.else.48:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_thumbnail_save_thumb, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.then.47
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %do.body.51

do.body.51:                                       ; preds = %do.end.50
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp52 = icmp eq %struct._GError** %29, null
  br i1 %cmp52, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.51
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load %struct._GError*, %struct._GError** %30, align 8
  %cmp53 = icmp eq %struct._GError* %31, null
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %lor.lhs.false, %do.body.51
  br label %if.end.56

if.else.55:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_thumbnail_save_thumb, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.then.54
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %32 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call58 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %32)
  %33 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call59 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %33)
  %cmp60 = icmp sgt i32 %call58, %call59
  br i1 %cmp60, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.57
  %34 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call61 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %34)
  br label %cond.end

cond.false:                                       ; preds = %do.end.57
  %35 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call62 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %35)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call61, %cond.true ], [ %call62, %cond.false ]
  store i32 %cond, i32* %size, align 4
  %36 = load i32, i32* %size, align 4
  %cmp63 = icmp ult i32 %36, 1
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

if.end.65:                                        ; preds = %cond.end
  %37 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri66 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %37, i32 0, i32 2
  %38 = load i8*, i8** %image_uri66, align 8
  %39 = load i32, i32* %size, align 4
  %call67 = call noalias i8* @gimp_thumb_name_from_uri(i8* %38, i32 %39)
  store i8* %call67, i8** %name, align 8
  %40 = load i8*, i8** %name, align 8
  %tobool68 = icmp ne i8* %40, null
  br i1 %tobool68, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %if.end.65
  store i32 1, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.end.65
  %41 = load i32, i32* %size, align 4
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call71 = call i32 @gimp_thumb_ensure_thumb_dir(i32 %41, %struct._GError** %42)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.end.74, label %if.then.73

if.then.73:                                       ; preds = %if.end.70
  %43 = load i8*, i8** %name, align 8
  call void @g_free(i8* %43)
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.end.70
  %44 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %45 = load i32, i32* %size, align 4
  %46 = load i8*, i8** %name, align 8
  %47 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %48 = load i8*, i8** %software.addr, align 8
  %49 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call75 = call i32 @gimp_thumbnail_save(%struct._GimpThumbnail* %44, i32 %45, i8* %46, %struct._GdkPixbuf* %47, i8* %48, %struct._GError** %49)
  store i32 %call75, i32* %success, align 4
  %50 = load i8*, i8** %name, align 8
  call void @g_free(i8* %50)
  %51 = load i32, i32* %success, align 4
  store i32 %51, i32* %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.then.73, %if.then.69, %if.then.64, %if.else.55, %if.else.48, %if.else.42, %if.else.14, %if.else.9
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind readnone
declare i64 @gdk_pixbuf_get_type() #4

declare i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf*) #1

declare noalias i8* @gimp_thumb_name_from_uri(i8*, i32) #1

declare i32 @gimp_thumb_ensure_thumb_dir(i32, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_thumbnail_save(%struct._GimpThumbnail* %thumbnail, i32 %size, i8* %filename, %struct._GdkPixbuf* %pixbuf, i8* %software, %struct._GError** %error) #2 {
entry:
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  %size.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  %software.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %keys = alloca [12 x i8*], align 16
  %values = alloca [12 x i8*], align 16
  %basename = alloca i8*, align 8
  %dirname = alloca i8*, align 8
  %tmpname = alloca i8*, align 8
  %success = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GdkPixbuf* %pixbuf, %struct._GdkPixbuf** %pixbuf.addr, align 8
  store i8* %software, i8** %software.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [12 x i8*], [12 x i8*]* %keys, i32 0, i64 %idxprom
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i8** %arrayidx, align 8
  %1 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %1, i32 0, i32 2
  %2 = load i8*, i8** %image_uri, align 8
  %call = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i8* %2)
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [12 x i8*], [12 x i8*]* %values, i32 0, i64 %idxprom1
  store i8* %call, i8** %arrayidx2, align 8
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [12 x i8*], [12 x i8*]* %keys, i32 0, i64 %idxprom3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i8** %arrayidx4, align 8
  %6 = load i8*, i8** %software.addr, align 8
  %call5 = call noalias i8* @g_strdup(i8* %6)
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [12 x i8*], [12 x i8*]* %values, i32 0, i64 %idxprom6
  store i8* %call5, i8** %arrayidx7, align 8
  %8 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %8, 1
  store i32 %inc8, i32* %i, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [12 x i8*], [12 x i8*]* %keys, i32 0, i64 %idxprom9
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8** %arrayidx10, align 8
  %10 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri11 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %10, i32 0, i32 2
  %11 = load i8*, i8** %image_uri11, align 8
  %call12 = call noalias i8* @g_strdup(i8* %11)
  %12 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [12 x i8*], [12 x i8*]* %values, i32 0, i64 %idxprom13
  store i8* %call12, i8** %arrayidx14, align 8
  %13 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %13, 1
  store i32 %inc15, i32* %i, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [12 x i8*], [12 x i8*]* %keys, i32 0, i64 %idxprom16
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i8** %arrayidx17, align 8
  %15 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_mtime = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %15, i32 0, i32 5
  %16 = load i64, i64* %image_mtime, align 8
  %call18 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i64 %16)
  %17 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [12 x i8*], [12 x i8*]* %values, i32 0, i64 %idxprom19
  store i8* %call18, i8** %arrayidx20, align 8
  %18 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, i32* %i, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [12 x i8*], [12 x i8*]* %keys, i32 0, i64 %idxprom22
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i8** %arrayidx23, align 8
  %20 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_filesize = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %20, i32 0, i32 4
  %21 = load i64, i64* %image_filesize, align 8
  %call24 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i64 %21)
  %22 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds [12 x i8*], [12 x i8*]* %values, i32 0, i64 %idxprom25
  store i8* %call24, i8** %arrayidx26, align 8
  %23 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %23, 1
  store i32 %inc27, i32* %i, align 4
  %24 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_mimetype = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %24, i32 0, i32 16
  %25 = load i8*, i8** %image_mimetype, align 8
  %tobool = icmp ne i8* %25, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %26 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %26 to i64
  %arrayidx29 = getelementptr inbounds [12 x i8*], [12 x i8*]* %keys, i32 0, i64 %idxprom28
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0), i8** %arrayidx29, align 8
  %27 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_mimetype30 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %27, i32 0, i32 16
  %28 = load i8*, i8** %image_mimetype30, align 8
  %call31 = call noalias i8* @g_strdup(i8* %28)
  %29 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds [12 x i8*], [12 x i8*]* %values, i32 0, i64 %idxprom32
  store i8* %call31, i8** %arrayidx33, align 8
  %30 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %30, 1
  store i32 %inc34, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %31 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_width = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %31, i32 0, i32 7
  %32 = load i32, i32* %image_width, align 4
  %cmp = icmp sgt i32 %32, 0
  br i1 %cmp, label %if.then.35, label %if.end.43

if.then.35:                                       ; preds = %if.end
  %33 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %33 to i64
  %arrayidx37 = getelementptr inbounds [12 x i8*], [12 x i8*]* %keys, i32 0, i64 %idxprom36
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i32 0, i32 0), i8** %arrayidx37, align 8
  %34 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_width38 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %34, i32 0, i32 7
  %35 = load i32, i32* %image_width38, align 4
  %call39 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i32 %35)
  %36 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %36 to i64
  %arrayidx41 = getelementptr inbounds [12 x i8*], [12 x i8*]* %values, i32 0, i64 %idxprom40
  store i8* %call39, i8** %arrayidx41, align 8
  %37 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %37, 1
  store i32 %inc42, i32* %i, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.35, %if.end
  %38 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_height = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %38, i32 0, i32 8
  %39 = load i32, i32* %image_height, align 4
  %cmp44 = icmp sgt i32 %39, 0
  br i1 %cmp44, label %if.then.45, label %if.end.53

if.then.45:                                       ; preds = %if.end.43
  %40 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %40 to i64
  %arrayidx47 = getelementptr inbounds [12 x i8*], [12 x i8*]* %keys, i32 0, i64 %idxprom46
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i32 0, i32 0), i8** %arrayidx47, align 8
  %41 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_height48 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %41, i32 0, i32 8
  %42 = load i32, i32* %image_height48, align 4
  %call49 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i32 %42)
  %43 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %43 to i64
  %arrayidx51 = getelementptr inbounds [12 x i8*], [12 x i8*]* %values, i32 0, i64 %idxprom50
  store i8* %call49, i8** %arrayidx51, align 8
  %44 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %44, 1
  store i32 %inc52, i32* %i, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.45, %if.end.43
  %45 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_type = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %45, i32 0, i32 9
  %46 = load i8*, i8** %image_type, align 8
  %tobool54 = icmp ne i8* %46, null
  br i1 %tobool54, label %if.then.55, label %if.end.63

if.then.55:                                       ; preds = %if.end.53
  %47 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %47 to i64
  %arrayidx57 = getelementptr inbounds [12 x i8*], [12 x i8*]* %keys, i32 0, i64 %idxprom56
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0), i8** %arrayidx57, align 8
  %48 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_type58 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %48, i32 0, i32 9
  %49 = load i8*, i8** %image_type58, align 8
  %call59 = call noalias i8* @g_strdup(i8* %49)
  %50 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %50 to i64
  %arrayidx61 = getelementptr inbounds [12 x i8*], [12 x i8*]* %values, i32 0, i64 %idxprom60
  store i8* %call59, i8** %arrayidx61, align 8
  %51 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %51, 1
  store i32 %inc62, i32* %i, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.55, %if.end.53
  %52 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_num_layers = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %52, i32 0, i32 10
  %53 = load i32, i32* %image_num_layers, align 4
  %cmp64 = icmp sgt i32 %53, 0
  br i1 %cmp64, label %if.then.65, label %if.end.73

if.then.65:                                       ; preds = %if.end.63
  %54 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %54 to i64
  %arrayidx67 = getelementptr inbounds [12 x i8*], [12 x i8*]* %keys, i32 0, i64 %idxprom66
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i32 0, i32 0), i8** %arrayidx67, align 8
  %55 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_num_layers68 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %55, i32 0, i32 10
  %56 = load i32, i32* %image_num_layers68, align 4
  %call69 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i32 %56)
  %57 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %57 to i64
  %arrayidx71 = getelementptr inbounds [12 x i8*], [12 x i8*]* %values, i32 0, i64 %idxprom70
  store i8* %call69, i8** %arrayidx71, align 8
  %58 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %58, 1
  store i32 %inc72, i32* %i, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.65, %if.end.63
  %59 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %59 to i64
  %arrayidx75 = getelementptr inbounds [12 x i8*], [12 x i8*]* %keys, i32 0, i64 %idxprom74
  store i8* null, i8** %arrayidx75, align 8
  %60 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %60 to i64
  %arrayidx77 = getelementptr inbounds [12 x i8*], [12 x i8*]* %values, i32 0, i64 %idxprom76
  store i8* null, i8** %arrayidx77, align 8
  %61 = load i8*, i8** %filename.addr, align 8
  %call78 = call noalias i8* @g_path_get_basename(i8* %61)
  store i8* %call78, i8** %basename, align 8
  %62 = load i8*, i8** %filename.addr, align 8
  %call79 = call noalias i8* @g_path_get_dirname(i8* %62)
  store i8* %call79, i8** %dirname, align 8
  %63 = load i8*, i8** %dirname, align 8
  %call80 = call i32 @getpid() #6
  %64 = load i8*, i8** %basename, align 8
  %call81 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0), i8* %63, i32 47, i32 %call80, i8* %64)
  store i8* %call81, i8** %tmpname, align 8
  %65 = load i8*, i8** %dirname, align 8
  call void @g_free(i8* %65)
  %66 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %66)
  %67 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %68 = load i8*, i8** %tmpname, align 8
  %arraydecay = getelementptr inbounds [12 x i8*], [12 x i8*]* %keys, i32 0, i32 0
  %arraydecay82 = getelementptr inbounds [12 x i8*], [12 x i8*]* %values, i32 0, i32 0
  %69 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call83 = call i32 @gdk_pixbuf_savev(%struct._GdkPixbuf* %67, i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8** %arraydecay, i8** %arraydecay82, %struct._GError** %69)
  store i32 %call83, i32* %success, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.73
  %70 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %70 to i64
  %arrayidx85 = getelementptr inbounds [12 x i8*], [12 x i8*]* %keys, i32 0, i64 %idxprom84
  %71 = load i8*, i8** %arrayidx85, align 8
  %tobool86 = icmp ne i8* %71, null
  br i1 %tobool86, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %72 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %72 to i64
  %arrayidx88 = getelementptr inbounds [12 x i8*], [12 x i8*]* %values, i32 0, i64 %idxprom87
  %73 = load i8*, i8** %arrayidx88, align 8
  call void @g_free(i8* %73)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %74 = load i32, i32* %i, align 4
  %inc89 = add nsw i32 %74, 1
  store i32 %inc89, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %75 = load i32, i32* %success, align 4
  %tobool90 = icmp ne i32 %75, 0
  br i1 %tobool90, label %if.then.91, label %if.end.104

if.then.91:                                       ; preds = %for.end
  %76 = load i8*, i8** %tmpname, align 8
  %77 = load i8*, i8** %filename.addr, align 8
  %call92 = call i32 @rename(i8* %76, i8* %77) #6
  %cmp93 = icmp eq i32 %call92, 0
  %conv = zext i1 %cmp93 to i32
  store i32 %conv, i32* %success, align 4
  %78 = load i32, i32* %success, align 4
  %tobool94 = icmp ne i32 %78, 0
  br i1 %tobool94, label %if.end.103, label %if.then.95

if.then.95:                                       ; preds = %if.then.91
  %79 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call96 = call i32 @g_file_error_quark()
  %call97 = call i32* @__errno_location() #7
  %80 = load i32, i32* %call97, align 4
  %call98 = call i32 @g_file_error_from_errno(i32 %80)
  %call99 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.53, i32 0, i32 0)) #6
  %81 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri100 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %81, i32 0, i32 2
  %82 = load i8*, i8** %image_uri100, align 8
  %call101 = call i32* @__errno_location() #7
  %83 = load i32, i32* %call101, align 4
  %call102 = call i8* @g_strerror(i32 %83) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %79, i32 %call96, i32 %call98, i8* %call99, i8* %82, i8* %call102)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.95, %if.then.91
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %for.end
  %84 = load i32, i32* %success, align 4
  %tobool105 = icmp ne i32 %84, 0
  br i1 %tobool105, label %if.then.106, label %if.end.131

if.then.106:                                      ; preds = %if.end.104
  %85 = load i8*, i8** %filename.addr, align 8
  %call107 = call i32 @chmod(i8* %85, i32 384) #6
  %cmp108 = icmp eq i32 %call107, 0
  %conv109 = zext i1 %cmp108 to i32
  store i32 %conv109, i32* %success, align 4
  %86 = load i32, i32* %success, align 4
  %tobool110 = icmp ne i32 %86, 0
  br i1 %tobool110, label %if.end.118, label %if.then.111

if.then.111:                                      ; preds = %if.then.106
  %87 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call112 = call i32 @g_file_error_quark()
  %call113 = call i32* @__errno_location() #7
  %88 = load i32, i32* %call113, align 4
  %call114 = call i32 @g_file_error_from_errno(i32 %88)
  %89 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri115 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %89, i32 0, i32 2
  %90 = load i8*, i8** %image_uri115, align 8
  %call116 = call i32* @__errno_location() #7
  %91 = load i32, i32* %call116, align 4
  %call117 = call i8* @g_strerror(i32 %91) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %87, i32 %call112, i32 %call114, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.54, i32 0, i32 0), i8* %90, i8* %call117)
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.111, %if.then.106
  %92 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %93 = bitcast %struct._GimpThumbnail* %92 to %struct._GTypeInstance*
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 80)
  %94 = bitcast %struct._GTypeInstance* %call119 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %94)
  %95 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %96 = load i32, i32* %size.addr, align 4
  call void @gimp_thumbnail_update_thumb(%struct._GimpThumbnail* %95, i32 %96)
  %97 = load i32, i32* %success, align 4
  %tobool120 = icmp ne i32 %97, 0
  br i1 %tobool120, label %land.lhs.true, label %if.end.129

land.lhs.true:                                    ; preds = %if.end.118
  %98 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %98, i32 0, i32 11
  %99 = load i32, i32* %thumb_state, align 4
  %cmp121 = icmp eq i32 %99, 5
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.129

land.lhs.true.123:                                ; preds = %land.lhs.true
  %100 = load i8*, i8** %filename.addr, align 8
  %101 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_filename = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %101, i32 0, i32 13
  %102 = load i8*, i8** %thumb_filename, align 8
  %call124 = call i32 @strcmp(i8* %100, i8* %102) #8
  %cmp125 = icmp eq i32 %call124, 0
  br i1 %cmp125, label %if.then.127, label %if.end.129

if.then.127:                                      ; preds = %land.lhs.true.123
  %103 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %thumb_state128 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %103, i32 0, i32 11
  store i32 8, i32* %thumb_state128, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.127, %land.lhs.true.123, %land.lhs.true, %if.end.118
  %104 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %105 = bitcast %struct._GimpThumbnail* %104 to %struct._GTypeInstance*
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 80)
  %106 = bitcast %struct._GTypeInstance* %call130 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %106)
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.129, %if.end.104
  %107 = load i8*, i8** %tmpname, align 8
  %call132 = call i32 @g_unlink(i8* %107)
  %108 = load i8*, i8** %tmpname, align 8
  call void @g_free(i8* %108)
  %109 = load i32, i32* %success, align 4
  ret i32 %109
}

; Function Attrs: nounwind uwtable
define i32 @gimp_thumbnail_save_thumb_local(%struct._GimpThumbnail* %thumbnail, %struct._GdkPixbuf* %pixbuf, i8* %software, %struct._GError** %error) #2 {
entry:
  %retval = alloca i32, align 4
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  %pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  %software.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %size = alloca i32, align 4
  %name = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %dirname = alloca i8*, align 8
  %success = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  store %struct._GdkPixbuf* %pixbuf, %struct._GdkPixbuf** %pixbuf.addr, align 8
  store i8* %software, i8** %software.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %1 = bitcast %struct._GimpThumbnail* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_thumbnail_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_thumbnail_save_thumb_local, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %13, i32 0, i32 2
  %14 = load i8*, i8** %image_uri, align 8
  %cmp12 = icmp ne i8* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_thumbnail_save_thumb_local, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %15 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %16 = bitcast %struct._GdkPixbuf* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gdk_pixbuf_get_type() #7
  store i64 %call22, i64* %__t21, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool25 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %do.body.17
  store i32 0, i32* %__r24, align 4
  br label %if.end.38

if.else.27:                                       ; preds = %do.body.17
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %tobool29 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.35

land.lhs.true.30:                                 ; preds = %if.else.27
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %g_type32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type32, align 8
  %23 = load i64, i64* %__t21, align 8
  %cmp33 = icmp eq i64 %22, %23
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %__r24, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %land.lhs.true.30, %if.else.27
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %25 = load i64, i64* %__t21, align 8
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #8
  store i32 %call36, i32* %__r24, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.26
  %26 = load i32, i32* %__r24, align 4
  store i32 %26, i32* %tmp39
  %27 = load i32, i32* %tmp39
  %tobool40 = icmp ne i32 %27, 0
  br i1 %tobool40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.end.38
  br label %if.end.43

if.else.42:                                       ; preds = %if.end.38
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_thumbnail_save_thumb_local, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %28 = load i8*, i8** %software.addr, align 8
  %cmp46 = icmp ne i8* %28, null
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.45
  br label %if.end.49

if.else.48:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_thumbnail_save_thumb_local, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.then.47
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %do.body.51

do.body.51:                                       ; preds = %do.end.50
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp52 = icmp eq %struct._GError** %29, null
  br i1 %cmp52, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.51
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load %struct._GError*, %struct._GError** %30, align 8
  %cmp53 = icmp eq %struct._GError* %31, null
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %lor.lhs.false, %do.body.51
  br label %if.end.56

if.else.55:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_thumbnail_save_thumb_local, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.then.54
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %32 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call58 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %32)
  %33 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call59 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %33)
  %cmp60 = icmp sgt i32 %call58, %call59
  br i1 %cmp60, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.57
  %34 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call61 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %34)
  br label %cond.end

cond.false:                                       ; preds = %do.end.57
  %35 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call62 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %35)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call61, %cond.true ], [ %call62, %cond.false ]
  store i32 %cond, i32* %size, align 4
  %36 = load i32, i32* %size, align 4
  %cmp63 = icmp ult i32 %36, 1
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

if.end.65:                                        ; preds = %cond.end
  %37 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri66 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %37, i32 0, i32 2
  %38 = load i8*, i8** %image_uri66, align 8
  %call67 = call i8* @_gimp_thumb_filename_from_uri(i8* %38)
  store i8* %call67, i8** %filename, align 8
  %39 = load i8*, i8** %filename, align 8
  %tobool68 = icmp ne i8* %39, null
  br i1 %tobool68, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %if.end.65
  store i32 1, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.end.65
  %40 = load i8*, i8** %filename, align 8
  %call71 = call noalias i8* @g_path_get_dirname(i8* %40)
  store i8* %call71, i8** %dirname, align 8
  %41 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %41)
  %42 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri72 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %42, i32 0, i32 2
  %43 = load i8*, i8** %image_uri72, align 8
  %44 = load i32, i32* %size, align 4
  %call73 = call noalias i8* @gimp_thumb_name_from_uri_local(i8* %43, i32 %44)
  store i8* %call73, i8** %name, align 8
  %45 = load i8*, i8** %name, align 8
  %tobool74 = icmp ne i8* %45, null
  br i1 %tobool74, label %if.end.76, label %if.then.75

if.then.75:                                       ; preds = %if.end.70
  %46 = load i8*, i8** %dirname, align 8
  call void @g_free(i8* %46)
  store i32 1, i32* %retval
  br label %return

if.end.76:                                        ; preds = %if.end.70
  %47 = load i8*, i8** %dirname, align 8
  %48 = load i32, i32* %size, align 4
  %49 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call77 = call i32 @gimp_thumb_ensure_thumb_dir_local(i8* %47, i32 %48, %struct._GError** %49)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.end.80, label %if.then.79

if.then.79:                                       ; preds = %if.end.76
  %50 = load i8*, i8** %name, align 8
  call void @g_free(i8* %50)
  %51 = load i8*, i8** %dirname, align 8
  call void @g_free(i8* %51)
  store i32 0, i32* %retval
  br label %return

if.end.80:                                        ; preds = %if.end.76
  %52 = load i8*, i8** %dirname, align 8
  call void @g_free(i8* %52)
  %53 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %54 = load i32, i32* %size, align 4
  %55 = load i8*, i8** %name, align 8
  %56 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %57 = load i8*, i8** %software.addr, align 8
  %58 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call81 = call i32 @gimp_thumbnail_save(%struct._GimpThumbnail* %53, i32 %54, i8* %55, %struct._GdkPixbuf* %56, i8* %57, %struct._GError** %58)
  store i32 %call81, i32* %success, align 4
  %59 = load i8*, i8** %name, align 8
  call void @g_free(i8* %59)
  %60 = load i32, i32* %success, align 4
  store i32 %60, i32* %retval
  br label %return

return:                                           ; preds = %if.end.80, %if.then.79, %if.then.75, %if.then.69, %if.then.64, %if.else.55, %if.else.48, %if.else.42, %if.else.14, %if.else.9
  %61 = load i32, i32* %retval
  ret i32 %61
}

declare hidden i8* @_gimp_thumb_filename_from_uri(i8*) #1

declare noalias i8* @g_path_get_dirname(i8*) #1

declare noalias i8* @gimp_thumb_name_from_uri_local(i8*, i32) #1

declare i32 @gimp_thumb_ensure_thumb_dir_local(i8*, i32, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_thumbnail_save_failure(%struct._GimpThumbnail* %thumbnail, i8* %software, %struct._GError** %error) #2 {
entry:
  %retval = alloca i32, align 4
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  %software.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %name = alloca i8*, align 8
  %desc = alloca i8*, align 8
  %time_str = alloca i8*, align 8
  %size_str = alloca i8*, align 8
  %success = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  store i8* %software, i8** %software.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %1 = bitcast %struct._GimpThumbnail* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_thumbnail_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_thumbnail_save_failure, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %13, i32 0, i32 2
  %14 = load i8*, i8** %image_uri, align 8
  %cmp12 = icmp ne i8* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_thumbnail_save_failure, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %15 = load i8*, i8** %software.addr, align 8
  %cmp18 = icmp ne i8* %15, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_thumbnail_save_failure, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %16 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri23 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %16, i32 0, i32 2
  %17 = load i8*, i8** %image_uri23, align 8
  %call24 = call noalias i8* @gimp_thumb_name_from_uri(i8* %17, i32 0)
  store i8* %call24, i8** %name, align 8
  %18 = load i8*, i8** %name, align 8
  %tobool25 = icmp ne i8* %18, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %do.end.22
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %do.end.22
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call28 = call i32 @gimp_thumb_ensure_thumb_dir(i32 0, %struct._GError** %19)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.end.27
  %20 = load i8*, i8** %name, align 8
  call void @g_free(i8* %20)
  store i32 0, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.27
  %call32 = call %struct._GdkPixbuf* @gdk_pixbuf_new(i32 0, i32 0, i32 8, i32 1, i32 1)
  store %struct._GdkPixbuf* %call32, %struct._GdkPixbuf** %pixbuf, align 8
  %21 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri33 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %21, i32 0, i32 2
  %22 = load i8*, i8** %image_uri33, align 8
  %call34 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0), i8* %22)
  store i8* %call34, i8** %desc, align 8
  %23 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_mtime = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %23, i32 0, i32 5
  %24 = load i64, i64* %image_mtime, align 8
  %call35 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i64 %24)
  store i8* %call35, i8** %time_str, align 8
  %25 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_filesize = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %25, i32 0, i32 4
  %26 = load i64, i64* %image_filesize, align 8
  %call36 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i64 %26)
  store i8* %call36, i8** %size_str, align 8
  %27 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %28 = load i8*, i8** %name, align 8
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %30 = load i8*, i8** %desc, align 8
  %31 = load i8*, i8** %software.addr, align 8
  %32 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri37 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %32, i32 0, i32 2
  %33 = load i8*, i8** %image_uri37, align 8
  %34 = load i8*, i8** %time_str, align 8
  %35 = load i8*, i8** %size_str, align 8
  %call38 = call i32 (%struct._GdkPixbuf*, i8*, i8*, %struct._GError**, ...) @gdk_pixbuf_save(%struct._GdkPixbuf* %27, i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), %struct._GError** %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i8* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i8* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i8* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i8* %35, i8* null)
  store i32 %call38, i32* %success, align 4
  %36 = load i32, i32* %success, align 4
  %tobool39 = icmp ne i32 %36, 0
  br i1 %tobool39, label %if.then.40, label %if.end.52

if.then.40:                                       ; preds = %if.end.31
  %37 = load i8*, i8** %name, align 8
  %call41 = call i32 @chmod(i8* %37, i32 384) #6
  %cmp42 = icmp eq i32 %call41, 0
  %conv = zext i1 %cmp42 to i32
  store i32 %conv, i32* %success, align 4
  %38 = load i32, i32* %success, align 4
  %tobool43 = icmp ne i32 %38, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.then.40
  %39 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  call void @gimp_thumbnail_update_thumb(%struct._GimpThumbnail* %39, i32 128)
  br label %if.end.51

if.else.45:                                       ; preds = %if.then.40
  %40 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call46 = call i32 @g_file_error_quark()
  %call47 = call i32* @__errno_location() #7
  %41 = load i32, i32* %call47, align 4
  %call48 = call i32 @g_file_error_from_errno(i32 %41)
  %42 = load i8*, i8** %name, align 8
  %call49 = call i32* @__errno_location() #7
  %43 = load i32, i32* %call49, align 4
  %call50 = call i8* @g_strerror(i32 %43) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %40, i32 %call46, i32 %call48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.27, i32 0, i32 0), i8* %42, i8* %call50)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.45, %if.then.44
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.31
  %44 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %45 = bitcast %struct._GdkPixbuf* %44 to i8*
  call void @g_object_unref(i8* %45)
  %46 = load i8*, i8** %size_str, align 8
  call void @g_free(i8* %46)
  %47 = load i8*, i8** %time_str, align 8
  call void @g_free(i8* %47)
  %48 = load i8*, i8** %desc, align 8
  call void @g_free(i8* %48)
  %49 = load i8*, i8** %name, align 8
  call void @g_free(i8* %49)
  %50 = load i32, i32* %success, align 4
  store i32 %50, i32* %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.then.30, %if.then.26, %if.else.20, %if.else.14, %if.else.9
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare %struct._GdkPixbuf* @gdk_pixbuf_new(i32, i32, i32, i32, i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @gdk_pixbuf_save(%struct._GdkPixbuf*, i8*, i8*, %struct._GError**, ...) #1

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #5

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #4

; Function Attrs: nounwind uwtable
define void @gimp_thumbnail_delete_failure(%struct._GimpThumbnail* %thumbnail) #2 {
entry:
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  %filename = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %1 = bitcast %struct._GimpThumbnail* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_thumbnail_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_thumbnail_delete_failure, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.22

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %13, i32 0, i32 2
  %14 = load i8*, i8** %image_uri, align 8
  %cmp12 = icmp ne i8* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_thumbnail_delete_failure, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.22

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri17 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %15, i32 0, i32 2
  %16 = load i8*, i8** %image_uri17, align 8
  %call18 = call noalias i8* @gimp_thumb_name_from_uri(i8* %16, i32 0)
  store i8* %call18, i8** %filename, align 8
  %17 = load i8*, i8** %filename, align 8
  %tobool19 = icmp ne i8* %17, null
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %do.end.16
  %18 = load i8*, i8** %filename, align 8
  %call21 = call i32 @g_unlink(i8* %18)
  %19 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %19)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.9, %if.else.14, %if.then.20, %do.end.16
  ret void
}

declare i32 @g_unlink(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_thumbnail_delete_others(%struct._GimpThumbnail* %thumbnail, i32 %size) #2 {
entry:
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  %size.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %1 = bitcast %struct._GimpThumbnail* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_thumbnail_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_thumbnail_delete_others, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %13, i32 0, i32 2
  %14 = load i8*, i8** %image_uri, align 8
  %cmp12 = icmp ne i8* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_thumbnail_delete_others, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri17 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %15, i32 0, i32 2
  %16 = load i8*, i8** %image_uri17, align 8
  %17 = load i32, i32* %size.addr, align 4
  call void @_gimp_thumbs_delete_others(i8* %16, i32 %17)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

declare hidden void @_gimp_thumbs_delete_others(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_thumbnail_has_failed(%struct._GimpThumbnail* %thumbnail) #2 {
entry:
  %retval = alloca i32, align 4
  %thumbnail.addr = alloca %struct._GimpThumbnail*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %option = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %image_mtime = alloca i64, align 8
  %image_size = alloca i64, align 8
  %failed = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpThumbnail* %thumbnail, %struct._GimpThumbnail** %thumbnail.addr, align 8
  store i32 0, i32* %failed, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %1 = bitcast %struct._GimpThumbnail* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_thumbnail_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_thumbnail_has_failed, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %13, i32 0, i32 2
  %14 = load i8*, i8** %image_uri, align 8
  %cmp12 = icmp ne i8* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_thumbnail_has_failed, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri17 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %15, i32 0, i32 2
  %16 = load i8*, i8** %image_uri17, align 8
  %call18 = call noalias i8* @gimp_thumb_name_from_uri(i8* %16, i32 0)
  store i8* %call18, i8** %filename, align 8
  %17 = load i8*, i8** %filename, align 8
  %tobool19 = icmp ne i8* %17, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %do.end.16
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %do.end.16
  %18 = load i8*, i8** %filename, align 8
  %call22 = call %struct._GdkPixbuf* @gdk_pixbuf_new_from_file(i8* %18, %struct._GError** null)
  store %struct._GdkPixbuf* %call22, %struct._GdkPixbuf** %pixbuf, align 8
  %19 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %19)
  %20 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool23 = icmp ne %struct._GdkPixbuf* %20, null
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.21
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.21
  %21 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %call26 = call i32 @gimp_thumbnail_peek_image(%struct._GimpThumbnail* %21)
  %cmp27 = icmp ult i32 %call26, 5
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.25
  br label %finish

if.end.29:                                        ; preds = %if.end.25
  %22 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call30 = call i8* @gdk_pixbuf_get_option(%struct._GdkPixbuf* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0))
  store i8* %call30, i8** %option, align 8
  %23 = load i8*, i8** %option, align 8
  %tobool31 = icmp ne i8* %23, null
  br i1 %tobool31, label %lor.lhs.false, label %if.then.35

lor.lhs.false:                                    ; preds = %if.end.29
  %24 = load i8*, i8** %option, align 8
  %25 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_uri32 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %25, i32 0, i32 2
  %26 = load i8*, i8** %image_uri32, align 8
  %call33 = call i32 @strcmp(i8* %24, i8* %26) #8
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %lor.lhs.false, %if.end.29
  br label %finish

if.end.36:                                        ; preds = %lor.lhs.false
  %27 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call37 = call i8* @gdk_pixbuf_get_option(%struct._GdkPixbuf* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0))
  store i8* %call37, i8** %option, align 8
  %28 = load i8*, i8** %option, align 8
  %tobool38 = icmp ne i8* %28, null
  br i1 %tobool38, label %lor.lhs.false.39, label %if.then.42

lor.lhs.false.39:                                 ; preds = %if.end.36
  %29 = load i8*, i8** %option, align 8
  %call40 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i64* %image_mtime) #6
  %cmp41 = icmp ne i32 %call40, 1
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %lor.lhs.false.39, %if.end.36
  br label %finish

if.end.43:                                        ; preds = %lor.lhs.false.39
  %30 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call44 = call i8* @gdk_pixbuf_get_option(%struct._GdkPixbuf* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0))
  store i8* %call44, i8** %option, align 8
  %31 = load i8*, i8** %option, align 8
  %tobool45 = icmp ne i8* %31, null
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.50

land.lhs.true.46:                                 ; preds = %if.end.43
  %32 = load i8*, i8** %option, align 8
  %call47 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i64* %image_size) #6
  %cmp48 = icmp ne i32 %call47, 1
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %land.lhs.true.46
  br label %finish

if.end.50:                                        ; preds = %land.lhs.true.46, %if.end.43
  %33 = load i64, i64* %image_mtime, align 8
  %34 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_mtime51 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %34, i32 0, i32 5
  %35 = load i64, i64* %image_mtime51, align 8
  %cmp52 = icmp eq i64 %33, %35
  br i1 %cmp52, label %land.lhs.true.53, label %if.end.58

land.lhs.true.53:                                 ; preds = %if.end.50
  %36 = load i8*, i8** %option, align 8
  %cmp54 = icmp eq i8* %36, null
  br i1 %cmp54, label %if.then.57, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %land.lhs.true.53
  %37 = load i64, i64* %image_size, align 8
  %38 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail.addr, align 8
  %image_filesize = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %38, i32 0, i32 4
  %39 = load i64, i64* %image_filesize, align 8
  %cmp56 = icmp eq i64 %37, %39
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %lor.lhs.false.55, %land.lhs.true.53
  store i32 1, i32* %failed, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %lor.lhs.false.55, %if.end.50
  br label %finish

finish:                                           ; preds = %if.end.58, %if.then.49, %if.then.42, %if.then.35, %if.then.28
  %40 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %41 = bitcast %struct._GdkPixbuf* %40 to i8*
  call void @g_object_unref(i8* %41)
  %42 = load i32, i32* %failed, align 4
  store i32 %42, i32* %retval
  br label %return

return:                                           ; preds = %finish, %if.then.24, %if.then.20, %if.else.14, %if.else.9
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_thumbnail_class_init(%struct._GimpThumbnailClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GimpThumbnailClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpThumbnailClass* %klass, %struct._GimpThumbnailClass** %klass.addr, align 8
  %0 = load %struct._GimpThumbnailClass*, %struct._GimpThumbnailClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpThumbnailClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_thumbnail_finalize, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_thumbnail_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_thumbnail_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_thumb_state_get_type() #7
  %call2 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.28, i32 0, i32 0), i64 %call1, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %6, i32 1, %struct._GParamSpec* %call2)
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0), i8* null, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 2, %struct._GParamSpec* %call3)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_int64(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.31, i32 0, i32 0), i64 -9223372036854775808, i64 9223372036854775807, i64 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 3, %struct._GParamSpec* %call4)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_int64(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0), i64 0, i64 9223372036854775807, i64 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 4, %struct._GParamSpec* %call5)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i8* null, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 5, %struct._GParamSpec* %call6)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 6, %struct._GParamSpec* %call7)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 7, %struct._GParamSpec* %call8)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.36, i32 0, i32 0), i8* null, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 8, %struct._GParamSpec* %call9)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 9, %struct._GParamSpec* %call10)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call i64 @gimp_thumb_state_get_type() #7
  %call12 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i32 0, i32 0), i64 %call11, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 10, %struct._GParamSpec* %call12)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_thumbnail_finalize(%struct._GObject* %object) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %thumbnail = alloca %struct._GimpThumbnail*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_thumbnail_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpThumbnail*
  store %struct._GimpThumbnail* %2, %struct._GimpThumbnail** %thumbnail, align 8
  %3 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_uri = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %3, i32 0, i32 2
  %4 = load i8*, i8** %image_uri, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_uri2 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %5, i32 0, i32 2
  %6 = load i8*, i8** %image_uri2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_uri3 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %7, i32 0, i32 2
  store i8* null, i8** %image_uri3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_filename = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %8, i32 0, i32 3
  %9 = load i8*, i8** %image_filename, align 8
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_filename6 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %10, i32 0, i32 3
  %11 = load i8*, i8** %image_filename6, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_filename7 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %12, i32 0, i32 3
  store i8* null, i8** %image_filename7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_mimetype = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %13, i32 0, i32 16
  %14 = load i8*, i8** %image_mimetype, align 8
  %tobool9 = icmp ne i8* %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %15 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_mimetype11 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %15, i32 0, i32 16
  %16 = load i8*, i8** %image_mimetype11, align 8
  call void @g_free(i8* %16)
  %17 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_mimetype12 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %17, i32 0, i32 16
  store i8* null, i8** %image_mimetype12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %18 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_type = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %18, i32 0, i32 9
  %19 = load i8*, i8** %image_type, align 8
  %tobool14 = icmp ne i8* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %20 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_type16 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %20, i32 0, i32 9
  %21 = load i8*, i8** %image_type16, align 8
  call void @g_free(i8* %21)
  %22 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_type17 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %22, i32 0, i32 9
  store i8* null, i8** %image_type17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %23 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %thumb_filename = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %23, i32 0, i32 13
  %24 = load i8*, i8** %thumb_filename, align 8
  %tobool19 = icmp ne i8* %24, null
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.18
  %25 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %thumb_filename21 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %25, i32 0, i32 13
  %26 = load i8*, i8** %thumb_filename21, align 8
  call void @g_free(i8* %26)
  %27 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %thumb_filename22 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %27, i32 0, i32 13
  store i8* null, i8** %thumb_filename22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.18
  %28 = load i8*, i8** @gimp_thumbnail_parent_class, align 8
  %29 = bitcast i8* %28 to %struct._GTypeClass*
  %call24 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %29, i64 80)
  %30 = bitcast %struct._GTypeClass* %call24 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %30, i32 0, i32 6
  %31 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %32 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %31(%struct._GObject* %32)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_thumbnail_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %thumbnail = alloca %struct._GimpThumbnail*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_thumbnail_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpThumbnail*
  store %struct._GimpThumbnail* %2, %struct._GimpThumbnail** %thumbnail, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.9
    i32 5, label %sw.bb.11
    i32 6, label %sw.bb.14
    i32 7, label %sw.bb.16
    i32 8, label %sw.bb.18
    i32 9, label %sw.bb.21
    i32 10, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %5, i32 0, i32 1
  store i32 %call2, i32* %image_state, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %7 = bitcast %struct._GObject* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_thumbnail_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpThumbnail*
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i8* @g_value_get_string(%struct._GValue* %9)
  call void @gimp_thumbnail_set_uri(%struct._GimpThumbnail* %8, i8* %call6)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i64 @g_value_get_int64(%struct._GValue* %10)
  %11 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_mtime = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %11, i32 0, i32 5
  store i64 %call8, i64* %image_mtime, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i64 @g_value_get_int64(%struct._GValue* %12)
  %13 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_filesize = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %13, i32 0, i32 4
  store i64 %call10, i64* %image_filesize, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %14 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_mimetype = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %14, i32 0, i32 16
  %15 = load i8*, i8** %image_mimetype, align 8
  call void @g_free(i8* %15)
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i8* @g_value_dup_string(%struct._GValue* %16)
  %17 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_mimetype13 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %17, i32 0, i32 16
  store i8* %call12, i8** %image_mimetype13, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call15 = call i32 @g_value_get_int(%struct._GValue* %18)
  %19 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_width = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %19, i32 0, i32 7
  store i32 %call15, i32* %image_width, align 4
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call17 = call i32 @g_value_get_int(%struct._GValue* %20)
  %21 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_height = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %21, i32 0, i32 8
  store i32 %call17, i32* %image_height, align 4
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %22 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_type = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %22, i32 0, i32 9
  %23 = load i8*, i8** %image_type, align 8
  call void @g_free(i8* %23)
  %24 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call19 = call i8* @g_value_dup_string(%struct._GValue* %24)
  %25 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_type20 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %25, i32 0, i32 9
  store i8* %call19, i8** %image_type20, align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %26 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call22 = call i32 @g_value_get_int(%struct._GValue* %26)
  %27 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_num_layers = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %27, i32 0, i32 10
  store i32 %call22, i32* %image_num_layers, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call24 = call i32 @g_value_get_enum(%struct._GValue* %28)
  %29 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %thumb_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %29, i32 0, i32 11
  store i32 %call24, i32* %thumb_state, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %30 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %30, %struct._GObject** %_glib__object, align 8
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %31, %struct._GParamSpec** %_glib__pspec, align 8
  %32 = load i32, i32* %property_id.addr, align 4
  store i32 %32, i32* %_glib__property_id, align 4
  %33 = load i32, i32* %_glib__property_id, align 4
  %34 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %34, i32 0, i32 1
  %35 = load i8*, i8** %name, align 8
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %37 = bitcast %struct._GParamSpec* %36 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %38, i32 0, i32 0
  %39 = load i64, i64* %g_type, align 8
  %call25 = call i8* @g_type_name(i64 %39)
  %40 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %41 = bitcast %struct._GObject* %40 to %struct._GTypeInstance*
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %42, i32 0, i32 0
  %43 = load i64, i64* %g_type27, align 8
  %call28 = call i8* @g_type_name(i64 %43)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0), i32 321, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 %33, i8* %35, i8* %call25, i8* %call28)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.23, %sw.bb.21, %sw.bb.18, %sw.bb.16, %sw.bb.14, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_thumbnail_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %thumbnail = alloca %struct._GimpThumbnail*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_thumbnail_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpThumbnail*
  store %struct._GimpThumbnail* %2, %struct._GimpThumbnail** %thumbnail, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.9
    i32 10, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %5, i32 0, i32 1
  %6 = load i32, i32* %image_state, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_uri = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %8, i32 0, i32 2
  %9 = load i8*, i8** %image_uri, align 8
  call void @g_value_set_string(%struct._GValue* %7, i8* %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_mtime = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %11, i32 0, i32 5
  %12 = load i64, i64* %image_mtime, align 8
  call void @g_value_set_int64(%struct._GValue* %10, i64 %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_filesize = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %14, i32 0, i32 4
  %15 = load i64, i64* %image_filesize, align 8
  call void @g_value_set_int64(%struct._GValue* %13, i64 %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_mimetype = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %17, i32 0, i32 16
  %18 = load i8*, i8** %image_mimetype, align 8
  call void @g_value_set_string(%struct._GValue* %16, i8* %18)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_width = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %20, i32 0, i32 7
  %21 = load i32, i32* %image_width, align 4
  call void @g_value_set_int(%struct._GValue* %19, i32 %21)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_height = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %23, i32 0, i32 8
  %24 = load i32, i32* %image_height, align 4
  call void @g_value_set_int(%struct._GValue* %22, i32 %24)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_type = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %26, i32 0, i32 9
  %27 = load i8*, i8** %image_type, align 8
  call void @g_value_set_string(%struct._GValue* %25, i8* %27)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %29 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_num_layers = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %29, i32 0, i32 10
  %30 = load i32, i32* %image_num_layers, align 4
  call void @g_value_set_int(%struct._GValue* %28, i32 %30)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %31 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %32 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %thumb_state = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %32, i32 0, i32 11
  %33 = load i32, i32* %thumb_state, align 4
  call void @g_value_set_enum(%struct._GValue* %31, i32 %33)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %34 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %34, %struct._GObject** %_glib__object, align 8
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %35, %struct._GParamSpec** %_glib__pspec, align 8
  %36 = load i32, i32* %property_id.addr, align 4
  store i32 %36, i32* %_glib__property_id, align 4
  %37 = load i32, i32* %_glib__property_id, align 4
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %38, i32 0, i32 1
  %39 = load i8*, i8** %name, align 8
  %40 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %41 = bitcast %struct._GParamSpec* %40 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %42, i32 0, i32 0
  %43 = load i64, i64* %g_type, align 8
  %call11 = call i8* @g_type_name(i64 %43)
  %44 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %45 = bitcast %struct._GObject* %44 to %struct._GTypeInstance*
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %g_type13 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type13, align 8
  %call14 = call i8* @g_type_name(i64 %47)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0), i32 368, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 %37, i8* %39, i8* %call11, i8* %call14)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_thumb_state_get_type() #4

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_int64(i8*, i8*, i8*, i64, i64, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare i64 @g_value_get_int64(%struct._GValue*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #2 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare void @g_value_set_int64(%struct._GValue*, i64) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare i32 @gimp_thumb_file_test(i8*, i64*, i64*, i32*) #1

declare noalias i8* @gimp_thumb_find_thumb(i8*, i32*) #1

declare noalias i8* @g_path_get_basename(i8*) #1

; Function Attrs: nounwind
declare i32 @getpid() #5

declare i32 @gdk_pixbuf_savev(%struct._GdkPixbuf*, i8*, i8*, i8**, i8**, %struct._GError**) #1

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #5

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
