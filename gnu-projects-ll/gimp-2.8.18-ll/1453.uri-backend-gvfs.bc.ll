; ModuleID = './plug-ins/file-uri/uri-backend-gvfs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GError = type { i32, i32, i8* }
%struct._GString = type { i8*, i64, i64 }
%struct._GVfs = type { %struct._GObject }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GFile = type opaque
%struct.UriProgress = type { i32, %struct._GTimeVal }
%struct._GTimeVal = type { i64, i64 }
%struct._GCancellable = type { %struct._GObject, %struct._GCancellablePrivate* }
%struct._GCancellablePrivate = type opaque
%struct._GMountOperation = type { %struct._GObject, %struct._GMountOperationPrivate* }
%struct._GMountOperationPrivate = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GdkDrawable = type { %struct._GObject }
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GAsyncResult = type opaque

@.str = private unnamed_addr constant [47 x i8] c"Loads a file using the GIO Virtual File System\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Saves a file using the GIO Virtual File System\00", align 1
@supported_protocols = internal global i8* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Connecting to server\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Downloading image (%s of %s)\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Uploading image (%s of %s)\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"uri-backend-gvfs.c\00", align 1
@__func__.uri_progress_callback = private unnamed_addr constant [22 x i8] c"uri_progress_callback\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Downloaded %s of image data\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Uploaded %s of image data\00", align 1

; Function Attrs: nounwind uwtable
define i32 @uri_backend_init(i8* %plugin_name, i32 %run, i32 %run_mode, %struct._GError** %error) #0 {
entry:
  %plugin_name.addr = alloca i8*, align 8
  %run.addr = alloca i32, align 4
  %run_mode.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  store i8* %plugin_name, i8** %plugin_name.addr, align 8
  store i32 %run, i32* %run.addr, align 4
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i32, i32* %run_mode.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %plugin_name.addr, align 8
  call void @gimp_ui_init(i8* %1, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare void @gimp_ui_init(i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @uri_backend_shutdown() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @uri_backend_get_load_help() #0 {
entry:
  ret i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i8* @uri_backend_get_save_help() #0 {
entry:
  ret i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i8* @uri_backend_get_load_protocols() #0 {
entry:
  %0 = load i8*, i8** @supported_protocols, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @get_protocols()
  store i8* %call, i8** @supported_protocols, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** @supported_protocols, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define internal i8* @get_protocols() #0 {
entry:
  %schemes = alloca i8**, align 8
  %string = alloca %struct._GString*, align 8
  %i = alloca i32, align 4
  %call = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call, %struct._GString** %string, align 8
  %call1 = call %struct._GVfs* @g_vfs_get_default()
  %call2 = call i8** @g_vfs_get_supported_uri_schemes(%struct._GVfs* %call1)
  store i8** %call2, i8*** %schemes, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8**, i8*** %schemes, align 8
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8**, i8*** %schemes, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %tobool3 = icmp ne i8* %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %tobool3, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load %struct._GString*, %struct._GString** %string, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1
  %6 = load i64, i64* %len, align 8
  %cmp = icmp ugt i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct._GString*, %struct._GString** %string, align 8
  %call4 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %7, i8 signext 44)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load %struct._GString*, %struct._GString** %string, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load i8**, i8*** %schemes, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %10, i64 %idxprom5
  %11 = load i8*, i8** %arrayidx6, align 8
  %call7 = call %struct._GString* @g_string_append(%struct._GString* %8, i8* %11)
  %12 = load %struct._GString*, %struct._GString** %string, align 8
  %call8 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %12, i8 signext 58)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %14 = load %struct._GString*, %struct._GString** %string, align 8
  %call9 = call i8* @g_string_free(%struct._GString* %14, i32 0)
  ret i8* %call9
}

; Function Attrs: nounwind uwtable
define i8* @uri_backend_get_save_protocols() #0 {
entry:
  %0 = load i8*, i8** @supported_protocols, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @get_protocols()
  store i8* %call, i8** @supported_protocols, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** @supported_protocols, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define i32 @uri_backend_load_image(i8* %uri, i8* %tmpname, i32 %run_mode, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %uri.addr = alloca i8*, align 8
  %tmpname.addr = alloca i8*, align 8
  %run_mode.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %dest_uri = alloca i8*, align 8
  %success = alloca i32, align 4
  store i8* %uri, i8** %uri.addr, align 8
  store i8* %tmpname, i8** %tmpname.addr, align 8
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %tmpname.addr, align 8
  %1 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call noalias i8* @g_filename_to_uri(i8* %0, i8* null, %struct._GError** %1)
  store i8* %call, i8** %dest_uri, align 8
  %2 = load i8*, i8** %dest_uri, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %uri.addr, align 8
  %4 = load i8*, i8** %dest_uri, align 8
  %5 = load i32, i32* %run_mode.addr, align 4
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @copy_uri(i8* %3, i8* %4, i32 0, i32 %5, %struct._GError** %6)
  store i32 %call1, i32* %success, align 4
  %7 = load i8*, i8** %dest_uri, align 8
  call void @g_free(i8* %7)
  %8 = load i32, i32* %success, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare noalias i8* @g_filename_to_uri(i8*, i8*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal i32 @copy_uri(i8* %src_uri, i8* %dest_uri, i32 %mode, i32 %run_mode, %struct._GError** %error) #0 {
entry:
  %src_uri.addr = alloca i8*, align 8
  %dest_uri.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %run_mode.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %src_file = alloca %struct._GFile*, align 8
  %dest_file = alloca %struct._GFile*, align 8
  %progress = alloca %struct.UriProgress, align 8
  %success = alloca i32, align 4
  store i8* %src_uri, i8** %src_uri.addr, align 8
  store i8* %dest_uri, i8** %dest_uri.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = bitcast %struct.UriProgress* %progress to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  %call = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #3
  %call1 = call i32 @gimp_progress_init(i8* %call)
  %1 = load i32, i32* %mode.addr, align 4
  %mode2 = getelementptr inbounds %struct.UriProgress, %struct.UriProgress* %progress, i32 0, i32 0
  store i32 %1, i32* %mode2, align 4
  %2 = load i8*, i8** %src_uri.addr, align 8
  %call3 = call %struct._GFile* @g_file_new_for_uri(i8* %2)
  store %struct._GFile* %call3, %struct._GFile** %src_file, align 8
  %3 = load i8*, i8** %dest_uri.addr, align 8
  %call4 = call %struct._GFile* @g_file_new_for_uri(i8* %3)
  store %struct._GFile* %call4, %struct._GFile** %dest_file, align 8
  %4 = load %struct._GFile*, %struct._GFile** %src_file, align 8
  %5 = load %struct._GFile*, %struct._GFile** %dest_file, align 8
  %6 = bitcast %struct.UriProgress* %progress to i8*
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call5 = call i32 @g_file_copy(%struct._GFile* %4, %struct._GFile* %5, i32 1, %struct._GCancellable* null, void (i64, i64, i8*)* @uri_progress_callback, i8* %6, %struct._GError** %7)
  store i32 %call5, i32* %success, align 4
  %call6 = call i32 @gimp_progress_update(double 1.000000e+00)
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end.17, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %9 = load i32, i32* %run_mode.addr, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %land.lhs.true.7, label %if.end.17

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %11 = load %struct._GError*, %struct._GError** %10, align 8
  %domain = getelementptr inbounds %struct._GError, %struct._GError* %11, i32 0, i32 0
  %12 = load i32, i32* %domain, align 4
  %call8 = call i32 @g_io_error_quark()
  %cmp9 = icmp eq i32 %12, %call8
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.17

land.lhs.true.10:                                 ; preds = %land.lhs.true.7
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %14 = load %struct._GError*, %struct._GError** %13, align 8
  %code = getelementptr inbounds %struct._GError, %struct._GError* %14, i32 0, i32 1
  %15 = load i32, i32* %code, align 4
  %cmp11 = icmp eq i32 %15, 16
  br i1 %cmp11, label %if.then, label %if.end.17

if.then:                                          ; preds = %land.lhs.true.10
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  call void @g_clear_error(%struct._GError** %16)
  %17 = load i32, i32* %mode.addr, align 4
  %cmp12 = icmp eq i32 %17, 0
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %18 = load %struct._GFile*, %struct._GFile** %src_file, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %19 = load %struct._GFile*, %struct._GFile** %dest_file, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GFile* [ %18, %cond.true ], [ %19, %cond.false ]
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @mount_enclosing_volume(%struct._GFile* %cond, %struct._GError** %20)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %cond.end
  %21 = load %struct._GFile*, %struct._GFile** %src_file, align 8
  %22 = load %struct._GFile*, %struct._GFile** %dest_file, align 8
  %23 = bitcast %struct.UriProgress* %progress to i8*
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @g_file_copy(%struct._GFile* %21, %struct._GFile* %22, i32 0, %struct._GCancellable* null, void (i64, i64, i8*)* @uri_progress_callback, i8* %23, %struct._GError** %24)
  store i32 %call16, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %cond.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %land.lhs.true.10, %land.lhs.true.7, %land.lhs.true, %entry
  %25 = load %struct._GFile*, %struct._GFile** %src_file, align 8
  %26 = bitcast %struct._GFile* %25 to i8*
  call void @g_object_unref(i8* %26)
  %27 = load %struct._GFile*, %struct._GFile** %dest_file, align 8
  %28 = bitcast %struct._GFile* %27 to i8*
  call void @g_object_unref(i8* %28)
  %29 = load i32, i32* %success, align 4
  ret i32 %29
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @uri_backend_save_image(i8* %uri, i8* %tmpname, i32 %run_mode, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %uri.addr = alloca i8*, align 8
  %tmpname.addr = alloca i8*, align 8
  %run_mode.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %src_uri = alloca i8*, align 8
  %success = alloca i32, align 4
  store i8* %uri, i8** %uri.addr, align 8
  store i8* %tmpname, i8** %tmpname.addr, align 8
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %tmpname.addr, align 8
  %1 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call noalias i8* @g_filename_to_uri(i8* %0, i8* null, %struct._GError** %1)
  store i8* %call, i8** %src_uri, align 8
  %2 = load i8*, i8** %src_uri, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %src_uri, align 8
  %4 = load i8*, i8** %uri.addr, align 8
  %5 = load i32, i32* %run_mode.addr, align 4
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @copy_uri(i8* %3, i8* %4, i32 1, i32 %5, %struct._GError** %6)
  store i32 %call1, i32* %success, align 4
  %7 = load i8*, i8** %src_uri, align 8
  call void @g_free(i8* %7)
  %8 = load i32, i32* %success, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i8* @uri_backend_map_image(i8* %uri, i32 %run_mode) #0 {
entry:
  %retval = alloca i8*, align 8
  %uri.addr = alloca i8*, align 8
  %run_mode.addr = alloca i32, align 4
  %file = alloca %struct._GFile*, align 8
  %path = alloca i8*, align 8
  %success = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i32 %run_mode, i32* %run_mode.addr, align 4
  %0 = load i8*, i8** %uri.addr, align 8
  %call = call %struct._GFile* @g_file_new_for_uri(i8* %0)
  store %struct._GFile* %call, %struct._GFile** %file, align 8
  store i8* null, i8** %path, align 8
  store i32 1, i32* %success, align 4
  %1 = load %struct._GFile*, %struct._GFile** %file, align 8
  %tobool = icmp ne %struct._GFile* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %run_mode.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then.1, label %if.end.11

if.then.1:                                        ; preds = %if.end
  store %struct._GError* null, %struct._GError** %error, align 8
  %3 = load %struct._GFile*, %struct._GFile** %file, align 8
  %call2 = call i32 @mount_enclosing_volume(%struct._GFile* %3, %struct._GError** %error)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.10, label %if.then.4

if.then.4:                                        ; preds = %if.then.1
  %4 = load %struct._GError*, %struct._GError** %error, align 8
  %domain = getelementptr inbounds %struct._GError, %struct._GError* %4, i32 0, i32 0
  %5 = load i32, i32* %domain, align 4
  %call5 = call i32 @g_io_error_quark()
  %cmp6 = icmp ne i32 %5, %call5
  br i1 %cmp6, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.4
  %6 = load %struct._GError*, %struct._GError** %error, align 8
  %code = getelementptr inbounds %struct._GError, %struct._GError* %6, i32 0, i32 1
  %7 = load i32, i32* %code, align 4
  %cmp7 = icmp ne i32 %7, 17
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.then.4
  store i32 0, i32* %success, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %lor.lhs.false
  %8 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %8)
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.1
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %9 = load i32, i32* %success, align 4
  %tobool12 = icmp ne i32 %9, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.11
  %10 = load %struct._GFile*, %struct._GFile** %file, align 8
  %call14 = call i8* @g_file_get_path(%struct._GFile* %10)
  store i8* %call14, i8** %path, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.11
  %11 = load %struct._GFile*, %struct._GFile** %file, align 8
  %12 = bitcast %struct._GFile* %11 to i8*
  call void @g_object_unref(i8* %12)
  %13 = load i8*, i8** %path, align 8
  store i8* %13, i8** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  %14 = load i8*, i8** %retval
  ret i8* %14
}

declare %struct._GFile* @g_file_new_for_uri(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @mount_enclosing_volume(%struct._GFile* %file, %struct._GError** %error) #0 {
entry:
  %file.addr = alloca %struct._GFile*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %operation = alloca %struct._GMountOperation*, align 8
  store %struct._GFile* %file, %struct._GFile** %file.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %call = call %struct._GMountOperation* @gtk_mount_operation_new(%struct._GtkWindow* null)
  store %struct._GMountOperation* %call, %struct._GMountOperation** %operation, align 8
  %0 = load %struct._GFile*, %struct._GFile** %file.addr, align 8
  %1 = load %struct._GMountOperation*, %struct._GMountOperation** %operation, align 8
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %3 = bitcast %struct._GError** %2 to i8*
  call void @g_file_mount_enclosing_volume(%struct._GFile* %0, i32 0, %struct._GMountOperation* %1, %struct._GCancellable* null, void (%struct._GObject*, %struct._GAsyncResult*, i8*)* bitcast (void (%struct._GFile*, %struct._GAsyncResult*, %struct._GError**)* @mount_volume_ready to void (%struct._GObject*, %struct._GAsyncResult*, i8*)*), i8* %3)
  call void @gtk_main()
  %4 = load %struct._GMountOperation*, %struct._GMountOperation** %operation, align 8
  %5 = bitcast %struct._GMountOperation* %4 to i8*
  call void @g_object_unref(i8* %5)
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %7 = load %struct._GError*, %struct._GError** %6, align 8
  %cmp = icmp eq %struct._GError* %7, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @g_io_error_quark() #1

declare void @g_error_free(%struct._GError*) #1

declare i8* @g_file_get_path(%struct._GFile*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GString* @g_string_new(i8*) #1

declare i8** @g_vfs_get_supported_uri_schemes(%struct._GVfs*) #1

declare %struct._GVfs* @g_vfs_get_default() #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #2 {
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

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

declare %struct._GMountOperation* @gtk_mount_operation_new(%struct._GtkWindow*) #1

declare void @g_file_mount_enclosing_volume(%struct._GFile*, i32, %struct._GMountOperation*, %struct._GCancellable*, void (%struct._GObject*, %struct._GAsyncResult*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @mount_volume_ready(%struct._GFile* %file, %struct._GAsyncResult* %res, %struct._GError** %error) #0 {
entry:
  %file.addr = alloca %struct._GFile*, align 8
  %res.addr = alloca %struct._GAsyncResult*, align 8
  %error.addr = alloca %struct._GError**, align 8
  store %struct._GFile* %file, %struct._GFile** %file.addr, align 8
  store %struct._GAsyncResult* %res, %struct._GAsyncResult** %res.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GFile*, %struct._GFile** %file.addr, align 8
  %1 = load %struct._GAsyncResult*, %struct._GAsyncResult** %res.addr, align 8
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call i32 @g_file_mount_enclosing_volume_finish(%struct._GFile* %0, %struct._GAsyncResult* %1, %struct._GError** %2)
  call void @gtk_main_quit()
  ret void
}

declare void @gtk_main() #1

declare i32 @g_file_mount_enclosing_volume_finish(%struct._GFile*, %struct._GAsyncResult*, %struct._GError**) #1

declare void @gtk_main_quit() #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i32 @g_file_copy(%struct._GFile*, %struct._GFile*, i32, %struct._GCancellable*, void (i64, i64, i8*)*, i8*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal void @uri_progress_callback(i64 %current_num_bytes, i64 %total_num_bytes, i8* %user_data) #0 {
entry:
  %current_num_bytes.addr = alloca i64, align 8
  %total_num_bytes.addr = alloca i64, align 8
  %user_data.addr = alloca i8*, align 8
  %progress = alloca %struct.UriProgress*, align 8
  %now = alloca %struct._GTimeVal, align 8
  %format = alloca i8*, align 8
  %done = alloca i8*, align 8
  %total = alloca i8*, align 8
  %format18 = alloca i8*, align 8
  %done19 = alloca i8*, align 8
  store i64 %current_num_bytes, i64* %current_num_bytes.addr, align 8
  store i64 %total_num_bytes, i64* %total_num_bytes.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.UriProgress*
  store %struct.UriProgress* %1, %struct.UriProgress** %progress, align 8
  call void @g_get_current_time(%struct._GTimeVal* %now)
  %2 = load %struct.UriProgress*, %struct.UriProgress** %progress, align 8
  %last_time = getelementptr inbounds %struct.UriProgress, %struct.UriProgress* %2, i32 0, i32 1
  %tv_sec = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %last_time, i32 0, i32 0
  %3 = load i64, i64* %tv_sec, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %tv_sec1 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %now, i32 0, i32 0
  %4 = load i64, i64* %tv_sec1, align 8
  %5 = load %struct.UriProgress*, %struct.UriProgress** %progress, align 8
  %last_time2 = getelementptr inbounds %struct.UriProgress, %struct.UriProgress* %5, i32 0, i32 1
  %tv_sec3 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %last_time2, i32 0, i32 0
  %6 = load i64, i64* %tv_sec3, align 8
  %sub = sub nsw i64 %4, %6
  %mul = mul nsw i64 %sub, 1000
  %tv_usec = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %now, i32 0, i32 1
  %7 = load i64, i64* %tv_usec, align 8
  %8 = load %struct.UriProgress*, %struct.UriProgress** %progress, align 8
  %last_time4 = getelementptr inbounds %struct.UriProgress, %struct.UriProgress* %8, i32 0, i32 1
  %tv_usec5 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %last_time4, i32 0, i32 1
  %9 = load i64, i64* %tv_usec5, align 8
  %sub6 = sub nsw i64 %7, %9
  %div = sdiv i64 %sub6, 1000
  %add = add nsw i64 %mul, %div
  %cmp = icmp slt i64 %add, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %if.end.32

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load %struct.UriProgress*, %struct.UriProgress** %progress, align 8
  %last_time7 = getelementptr inbounds %struct.UriProgress, %struct.UriProgress* %10, i32 0, i32 1
  %11 = bitcast %struct._GTimeVal* %last_time7 to i8*
  %12 = bitcast %struct._GTimeVal* %now to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  %13 = load i64, i64* %total_num_bytes.addr, align 8
  %cmp8 = icmp sgt i64 %13, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %14 = load i64, i64* %current_num_bytes.addr, align 8
  %call = call i8* @g_format_size(i64 %14)
  store i8* %call, i8** %done, align 8
  %15 = load i64, i64* %total_num_bytes.addr, align 8
  %call10 = call i8* @g_format_size(i64 %15)
  store i8* %call10, i8** %total, align 8
  %16 = load %struct.UriProgress*, %struct.UriProgress** %progress, align 8
  %mode = getelementptr inbounds %struct.UriProgress, %struct.UriProgress* %16, i32 0, i32 0
  %17 = load i32, i32* %mode, align 4
  switch i32 %17, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %if.then.9
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0)) #3
  store i8* %call11, i8** %format, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then.9
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0)) #3
  store i8* %call13, i8** %format, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.9
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i32 241, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.uri_progress_callback, i32 0, i32 0), i8* null) #6
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.12, %sw.bb
  %18 = load i8*, i8** %format, align 8
  %19 = load i8*, i8** %done, align 8
  %20 = load i8*, i8** %total, align 8
  %call14 = call i32 (i8*, ...) @gimp_progress_set_text_printf(i8* %18, i8* %19, i8* %20)
  %21 = load i64, i64* %current_num_bytes.addr, align 8
  %conv = sitofp i64 %21 to double
  %22 = load i64, i64* %total_num_bytes.addr, align 8
  %conv15 = sitofp i64 %22 to double
  %div16 = fdiv double %conv, %conv15
  %call17 = call i32 @gimp_progress_update(double %div16)
  %23 = load i8*, i8** %total, align 8
  call void @g_free(i8* %23)
  %24 = load i8*, i8** %done, align 8
  call void @g_free(i8* %24)
  br label %if.end.32

if.else:                                          ; preds = %if.end
  %25 = load i64, i64* %current_num_bytes.addr, align 8
  %call20 = call i8* @g_format_size(i64 %25)
  store i8* %call20, i8** %done19, align 8
  %26 = load %struct.UriProgress*, %struct.UriProgress** %progress, align 8
  %mode21 = getelementptr inbounds %struct.UriProgress, %struct.UriProgress* %26, i32 0, i32 0
  %27 = load i32, i32* %mode21, align 4
  switch i32 %27, label %sw.default.26 [
    i32 0, label %sw.bb.22
    i32 1, label %sw.bb.24
  ]

sw.bb.22:                                         ; preds = %if.else
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0)) #3
  store i8* %call23, i8** %format18, align 8
  br label %sw.epilog.29

sw.bb.24:                                         ; preds = %if.else
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0)) #3
  store i8* %call25, i8** %format18, align 8
  br label %sw.epilog.29

sw.default.26:                                    ; preds = %if.else
  br label %do.body.27

do.body.27:                                       ; preds = %sw.default.26
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i32 267, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.uri_progress_callback, i32 0, i32 0), i8* null) #6
  unreachable

do.end.28:                                        ; No predecessors!
  br label %sw.epilog.29

sw.epilog.29:                                     ; preds = %do.end.28, %sw.bb.24, %sw.bb.22
  %28 = load i8*, i8** %format18, align 8
  %29 = load i8*, i8** %done19, align 8
  %call30 = call i32 (i8*, ...) @gimp_progress_set_text_printf(i8* %28, i8* %29)
  %call31 = call i32 @gimp_progress_pulse()
  %30 = load i8*, i8** %done19, align 8
  call void @g_free(i8* %30)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then, %sw.epilog.29, %sw.epilog
  ret void
}

declare i32 @gimp_progress_update(double) #1

declare void @g_clear_error(%struct._GError**) #1

declare void @g_get_current_time(%struct._GTimeVal*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i8* @g_format_size(i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare i32 @gimp_progress_set_text_printf(i8*, ...) #1

declare i32 @gimp_progress_pulse() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
