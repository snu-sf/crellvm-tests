; ModuleID = './app/core/gimpbrushpipe-load.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpBrushPipe = type { %struct._GimpBrush, i32, i32*, i32*, i32*, i32*, i32, %struct._GimpBrush**, %struct._GimpBrush* }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
%struct._GimpPixPipeParams = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, [4 x i32], [4 x i8*], i32 }
%struct._GString = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_brush_pipe_load = private unnamed_addr constant [21 x i8] c"gimp_brush_pipe_load\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"g_path_is_absolute (filename)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Invalid UTF-8 string in brush file '%s'.\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"mime-type\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"image/x-gimp-gih\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"Fatal parse error in brush file '%s': File is corrupt.\00", align 1
@g_ascii_table = external constant i16*, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"incremental\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"angular\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"velocity\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"pressure\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"xtilt\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"ytilt\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"gimpbrushpipe-load.c\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"pipe->stride[pipe->dimension-1] == 1\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_brush_pipe_load(%struct._GimpContext* %context, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %pipe = alloca %struct._GimpBrushPipe*, align 8
  %params = alloca %struct._GimpPixPipeParams, align 8
  %i = alloca i32, align 4
  %num_of_brushes = alloca i32, align 4
  %totalcells = alloca i32, align 4
  %paramstring = alloca i8*, align 8
  %buffer = alloca %struct._GString*, align 8
  %c = alloca i8, align 1
  %fd = alloca i32, align 4
  %utf8 = alloca i8*, align 8
  %my_error = alloca %struct._GError*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GimpBrushPipe* null, %struct._GimpBrushPipe** %pipe, align 8
  store i32 0, i32* %num_of_brushes, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_brush_pipe_load, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @g_path_is_absolute(i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_brush_pipe_load, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp7 = icmp eq %struct._GError** %2, null
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.6
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %4 = load %struct._GError*, %struct._GError** %3, align 8
  %cmp8 = icmp eq %struct._GError* %4, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %lor.lhs.false, %do.body.6
  br label %if.end.11

if.else.10:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_brush_pipe_load, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %5 = load i8*, i8** %filename.addr, align 8
  %call13 = call i32 (i8*, i32, ...) @open(i8* %5, i32 0, i32 0)
  store i32 %call13, i32* %fd, align 4
  %6 = load i32, i32* %fd, align 4
  %cmp14 = icmp eq i32 %6, -1
  br i1 %cmp14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %do.end.12
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @gimp_data_error_quark() #8
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0)) #7
  %8 = load i8*, i8** %filename.addr, align 8
  %call18 = call i8* @gimp_filename_to_utf8(i8* %8)
  %call19 = call i32* @__errno_location() #8
  %9 = load i32, i32* %call19, align 4
  %call20 = call i8* @g_strerror(i32 %9) #8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 %call16, i32 0, i8* %call17, i8* %call18, i8* %call20)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.21:                                        ; preds = %do.end.12
  %call22 = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call22, %struct._GString** %buffer, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.21
  %10 = load i32, i32* %fd, align 4
  %call23 = call i64 @read(i32 %10, i8* %c, i64 1)
  %cmp24 = icmp eq i64 %call23, 1
  br i1 %cmp24, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %11 = load i8, i8* %c, align 1
  %conv = sext i8 %11 to i32
  %cmp25 = icmp ne i32 %conv, 10
  br i1 %cmp25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %12 = load %struct._GString*, %struct._GString** %buffer, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %12, i32 0, i32 1
  %13 = load i64, i64* %len, align 8
  %cmp27 = icmp ult i64 %13, 1024
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp27, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load %struct._GString*, %struct._GString** %buffer, align 8
  %16 = load i8, i8* %c, align 1
  %call29 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %15, i8 signext %16)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load %struct._GString*, %struct._GString** %buffer, align 8
  %len30 = getelementptr inbounds %struct._GString, %struct._GString* %17, i32 0, i32 1
  %18 = load i64, i64* %len30, align 8
  %cmp31 = icmp ugt i64 %18, 0
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.44

land.lhs.true.33:                                 ; preds = %while.end
  %19 = load %struct._GString*, %struct._GString** %buffer, align 8
  %len34 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 1
  %20 = load i64, i64* %len34, align 8
  %cmp35 = icmp ult i64 %20, 1024
  br i1 %cmp35, label %if.then.37, label %if.end.44

if.then.37:                                       ; preds = %land.lhs.true.33
  %21 = load %struct._GString*, %struct._GString** %buffer, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %21, i32 0, i32 0
  %22 = load i8*, i8** %str, align 8
  %23 = load %struct._GString*, %struct._GString** %buffer, align 8
  %len38 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1
  %24 = load i64, i64* %len38, align 8
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0)) #7
  %25 = load i8*, i8** %filename.addr, align 8
  %call40 = call i8* @gimp_filename_to_utf8(i8* %25)
  %call41 = call noalias i8* (i8*, i64, i8*, ...) @gimp_any_to_utf8(i8* %22, i64 %24, i8* %call39, i8* %call40)
  store i8* %call41, i8** %utf8, align 8
  %call42 = call i64 @gimp_brush_pipe_get_type() #8
  %26 = load i8*, i8** %utf8, align 8
  %call43 = call i8* (i64, i8*, ...) @g_object_new(i64 %call42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* null)
  %27 = bitcast i8* %call43 to %struct._GimpBrushPipe*
  store %struct._GimpBrushPipe* %27, %struct._GimpBrushPipe** %pipe, align 8
  %28 = load i8*, i8** %utf8, align 8
  call void @g_free(i8* %28)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.37, %land.lhs.true.33, %while.end
  %29 = load %struct._GString*, %struct._GString** %buffer, align 8
  %call45 = call i8* @g_string_free(%struct._GString* %29, i32 1)
  %30 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %tobool46 = icmp ne %struct._GimpBrushPipe* %30, null
  br i1 %tobool46, label %if.end.52, label %if.then.47

if.then.47:                                       ; preds = %if.end.44
  %31 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call48 = call i32 @gimp_data_error_quark() #8
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i32 0, i32 0)) #7
  %32 = load i8*, i8** %filename.addr, align 8
  %call50 = call i8* @gimp_filename_to_utf8(i8* %32)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %31, i32 %call48, i32 1, i8* %call49, i8* %call50)
  %33 = load i32, i32* %fd, align 4
  %call51 = call i32 @close(i32 %33)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.52:                                        ; preds = %if.end.44
  %call53 = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call53, %struct._GString** %buffer, align 8
  br label %while.cond.54

while.cond.54:                                    ; preds = %while.body.67, %if.end.52
  %34 = load i32, i32* %fd, align 4
  %call55 = call i64 @read(i32 %34, i8* %c, i64 1)
  %cmp56 = icmp eq i64 %call55, 1
  br i1 %cmp56, label %land.lhs.true.58, label %land.end.66

land.lhs.true.58:                                 ; preds = %while.cond.54
  %35 = load i8, i8* %c, align 1
  %conv59 = sext i8 %35 to i32
  %cmp60 = icmp ne i32 %conv59, 10
  br i1 %cmp60, label %land.rhs.62, label %land.end.66

land.rhs.62:                                      ; preds = %land.lhs.true.58
  %36 = load %struct._GString*, %struct._GString** %buffer, align 8
  %len63 = getelementptr inbounds %struct._GString, %struct._GString* %36, i32 0, i32 1
  %37 = load i64, i64* %len63, align 8
  %cmp64 = icmp ult i64 %37, 1024
  br label %land.end.66

land.end.66:                                      ; preds = %land.rhs.62, %land.lhs.true.58, %while.cond.54
  %38 = phi i1 [ false, %land.lhs.true.58 ], [ false, %while.cond.54 ], [ %cmp64, %land.rhs.62 ]
  br i1 %38, label %while.body.67, label %while.end.69

while.body.67:                                    ; preds = %land.end.66
  %39 = load %struct._GString*, %struct._GString** %buffer, align 8
  %40 = load i8, i8* %c, align 1
  %call68 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %39, i8 signext %40)
  br label %while.cond.54

while.end.69:                                     ; preds = %land.end.66
  %41 = load %struct._GString*, %struct._GString** %buffer, align 8
  %len70 = getelementptr inbounds %struct._GString, %struct._GString* %41, i32 0, i32 1
  %42 = load i64, i64* %len70, align 8
  %cmp71 = icmp ugt i64 %42, 0
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.81

land.lhs.true.73:                                 ; preds = %while.end.69
  %43 = load %struct._GString*, %struct._GString** %buffer, align 8
  %len74 = getelementptr inbounds %struct._GString, %struct._GString* %43, i32 0, i32 1
  %44 = load i64, i64* %len74, align 8
  %cmp75 = icmp ult i64 %44, 1024
  br i1 %cmp75, label %if.then.77, label %if.end.81

if.then.77:                                       ; preds = %land.lhs.true.73
  %45 = load %struct._GString*, %struct._GString** %buffer, align 8
  %str78 = getelementptr inbounds %struct._GString, %struct._GString* %45, i32 0, i32 0
  %46 = load i8*, i8** %str78, align 8
  %call79 = call i64 @strtol(i8* %46, i8** %paramstring, i32 10) #7
  %conv80 = trunc i64 %call79 to i32
  store i32 %conv80, i32* %num_of_brushes, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.77, %land.lhs.true.73, %while.end.69
  %47 = load i32, i32* %num_of_brushes, align 4
  %cmp82 = icmp slt i32 %47, 1
  br i1 %cmp82, label %if.then.84, label %if.end.90

if.then.84:                                       ; preds = %if.end.81
  %48 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call85 = call i32 @gimp_data_error_quark() #8
  %call86 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i32 0, i32 0)) #7
  %49 = load i8*, i8** %filename.addr, align 8
  %call87 = call i8* @gimp_filename_to_utf8(i8* %49)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %48, i32 %call85, i32 1, i8* %call86, i8* %call87)
  %50 = load i32, i32* %fd, align 4
  %call88 = call i32 @close(i32 %50)
  %51 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %52 = bitcast %struct._GimpBrushPipe* %51 to i8*
  call void @g_object_unref(i8* %52)
  %53 = load %struct._GString*, %struct._GString** %buffer, align 8
  %call89 = call i8* @g_string_free(%struct._GString* %53, i32 1)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.90:                                        ; preds = %if.end.81
  br label %while.cond.91

while.cond.91:                                    ; preds = %while.body.99, %if.end.90
  %54 = load i8*, i8** %paramstring, align 8
  %55 = load i8, i8* %54, align 1
  %conv92 = sext i8 %55 to i32
  %tobool93 = icmp ne i32 %conv92, 0
  br i1 %tobool93, label %land.rhs.94, label %land.end.98

land.rhs.94:                                      ; preds = %while.cond.91
  %56 = load i8*, i8** %paramstring, align 8
  %57 = load i8, i8* %56, align 1
  %idxprom = zext i8 %57 to i64
  %58 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %58, i64 %idxprom
  %59 = load i16, i16* %arrayidx, align 2
  %conv95 = zext i16 %59 to i32
  %and = and i32 %conv95, 256
  %cmp96 = icmp ne i32 %and, 0
  br label %land.end.98

land.end.98:                                      ; preds = %land.rhs.94, %while.cond.91
  %60 = phi i1 [ false, %while.cond.91 ], [ %cmp96, %land.rhs.94 ]
  br i1 %60, label %while.body.99, label %while.end.100

while.body.99:                                    ; preds = %land.end.98
  %61 = load i8*, i8** %paramstring, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr, i8** %paramstring, align 8
  br label %while.cond.91

while.end.100:                                    ; preds = %land.end.98
  %62 = load i8*, i8** %paramstring, align 8
  %63 = load i8, i8* %62, align 1
  %tobool101 = icmp ne i8 %63, 0
  br i1 %tobool101, label %if.then.102, label %if.else.224

if.then.102:                                      ; preds = %while.end.100
  call void @gimp_pixpipe_params_init(%struct._GimpPixPipeParams* %params)
  %64 = load i8*, i8** %paramstring, align 8
  call void @gimp_pixpipe_params_parse(i8* %64, %struct._GimpPixPipeParams* %params)
  %dim = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 2
  %65 = load i32, i32* %dim, align 4
  %66 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %dimension = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %66, i32 0, i32 1
  store i32 %65, i32* %dimension, align 4
  %67 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %dimension103 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %67, i32 0, i32 1
  %68 = load i32, i32* %dimension103, align 4
  %conv104 = sext i32 %68 to i64
  %call105 = call noalias i8* @g_malloc0_n(i64 %conv104, i64 4)
  %69 = bitcast i8* %call105 to i32*
  %70 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %70, i32 0, i32 2
  store i32* %69, i32** %rank, align 8
  %71 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %dimension106 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %71, i32 0, i32 1
  %72 = load i32, i32* %dimension106, align 4
  %conv107 = sext i32 %72 to i64
  %call108 = call noalias i8* @g_malloc0_n(i64 %conv107, i64 4)
  %73 = bitcast i8* %call108 to i32*
  %74 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %select = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %74, i32 0, i32 4
  store i32* %73, i32** %select, align 8
  %75 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %dimension109 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %75, i32 0, i32 1
  %76 = load i32, i32* %dimension109, align 4
  %conv110 = sext i32 %76 to i64
  %call111 = call noalias i8* @g_malloc0_n(i64 %conv110, i64 4)
  %77 = bitcast i8* %call111 to i32*
  %78 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %index = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %78, i32 0, i32 5
  store i32* %77, i32** %index, align 8
  %free_placement_string = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 8
  %79 = load i32, i32* %free_placement_string, align 4
  %tobool112 = icmp ne i32 %79, 0
  br i1 %tobool112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.then.102
  %placement = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 7
  %80 = load i8*, i8** %placement, align 8
  call void @g_free(i8* %80)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %if.then.102
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.114
  %81 = load i32, i32* %i, align 4
  %82 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %dimension115 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %82, i32 0, i32 1
  %83 = load i32, i32* %dimension115, align 4
  %cmp116 = icmp slt i32 %81, %83
  br i1 %cmp116, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %84 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %84 to i64
  %rank119 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 9
  %arrayidx120 = getelementptr inbounds [4 x i32], [4 x i32]* %rank119, i32 0, i64 %idxprom118
  %85 = load i32, i32* %arrayidx120, align 4
  %cmp121 = icmp sgt i32 1, %85
  br i1 %cmp121, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %86 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %86 to i64
  %rank124 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 9
  %arrayidx125 = getelementptr inbounds [4 x i32], [4 x i32]* %rank124, i32 0, i64 %idxprom123
  %87 = load i32, i32* %arrayidx125, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %87, %cond.false ]
  %88 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %88 to i64
  %89 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank127 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %89, i32 0, i32 2
  %90 = load i32*, i32** %rank127, align 8
  %arrayidx128 = getelementptr inbounds i32, i32* %90, i64 %idxprom126
  store i32 %cond, i32* %arrayidx128, align 4
  %91 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %91 to i64
  %selection = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 10
  %arrayidx130 = getelementptr inbounds [4 x i8*], [4 x i8*]* %selection, i32 0, i64 %idxprom129
  %92 = load i8*, i8** %arrayidx130, align 8
  %call131 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)) #9
  %cmp132 = icmp eq i32 %call131, 0
  br i1 %cmp132, label %if.then.134, label %if.else.138

if.then.134:                                      ; preds = %cond.end
  %93 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %93 to i64
  %94 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %select136 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %94, i32 0, i32 4
  %95 = load i32*, i32** %select136, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %95, i64 %idxprom135
  store i32 1, i32* %arrayidx137, align 4
  br label %if.end.214

if.else.138:                                      ; preds = %cond.end
  %96 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %96 to i64
  %selection140 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 10
  %arrayidx141 = getelementptr inbounds [4 x i8*], [4 x i8*]* %selection140, i32 0, i64 %idxprom139
  %97 = load i8*, i8** %arrayidx141, align 8
  %call142 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #9
  %cmp143 = icmp eq i32 %call142, 0
  br i1 %cmp143, label %if.then.145, label %if.else.149

if.then.145:                                      ; preds = %if.else.138
  %98 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %98 to i64
  %99 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %select147 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %99, i32 0, i32 4
  %100 = load i32*, i32** %select147, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %100, i64 %idxprom146
  store i32 2, i32* %arrayidx148, align 4
  br label %if.end.213

if.else.149:                                      ; preds = %if.else.138
  %101 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %101 to i64
  %selection151 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 10
  %arrayidx152 = getelementptr inbounds [4 x i8*], [4 x i8*]* %selection151, i32 0, i64 %idxprom150
  %102 = load i8*, i8** %arrayidx152, align 8
  %call153 = call i32 @strcmp(i8* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0)) #9
  %cmp154 = icmp eq i32 %call153, 0
  br i1 %cmp154, label %if.then.156, label %if.else.160

if.then.156:                                      ; preds = %if.else.149
  %103 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %103 to i64
  %104 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %select158 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %104, i32 0, i32 4
  %105 = load i32*, i32** %select158, align 8
  %arrayidx159 = getelementptr inbounds i32, i32* %105, i64 %idxprom157
  store i32 3, i32* %arrayidx159, align 4
  br label %if.end.212

if.else.160:                                      ; preds = %if.else.149
  %106 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %106 to i64
  %selection162 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 10
  %arrayidx163 = getelementptr inbounds [4 x i8*], [4 x i8*]* %selection162, i32 0, i64 %idxprom161
  %107 = load i8*, i8** %arrayidx163, align 8
  %call164 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #9
  %cmp165 = icmp eq i32 %call164, 0
  br i1 %cmp165, label %if.then.167, label %if.else.171

if.then.167:                                      ; preds = %if.else.160
  %108 = load i32, i32* %i, align 4
  %idxprom168 = sext i32 %108 to i64
  %109 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %select169 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %109, i32 0, i32 4
  %110 = load i32*, i32** %select169, align 8
  %arrayidx170 = getelementptr inbounds i32, i32* %110, i64 %idxprom168
  store i32 4, i32* %arrayidx170, align 4
  br label %if.end.211

if.else.171:                                      ; preds = %if.else.160
  %111 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %111 to i64
  %selection173 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 10
  %arrayidx174 = getelementptr inbounds [4 x i8*], [4 x i8*]* %selection173, i32 0, i64 %idxprom172
  %112 = load i8*, i8** %arrayidx174, align 8
  %call175 = call i32 @strcmp(i8* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0)) #9
  %cmp176 = icmp eq i32 %call175, 0
  br i1 %cmp176, label %if.then.178, label %if.else.182

if.then.178:                                      ; preds = %if.else.171
  %113 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %113 to i64
  %114 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %select180 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %114, i32 0, i32 4
  %115 = load i32*, i32** %select180, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %115, i64 %idxprom179
  store i32 5, i32* %arrayidx181, align 4
  br label %if.end.210

if.else.182:                                      ; preds = %if.else.171
  %116 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %116 to i64
  %selection184 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 10
  %arrayidx185 = getelementptr inbounds [4 x i8*], [4 x i8*]* %selection184, i32 0, i64 %idxprom183
  %117 = load i8*, i8** %arrayidx185, align 8
  %call186 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #9
  %cmp187 = icmp eq i32 %call186, 0
  br i1 %cmp187, label %if.then.189, label %if.else.193

if.then.189:                                      ; preds = %if.else.182
  %118 = load i32, i32* %i, align 4
  %idxprom190 = sext i32 %118 to i64
  %119 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %select191 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %119, i32 0, i32 4
  %120 = load i32*, i32** %select191, align 8
  %arrayidx192 = getelementptr inbounds i32, i32* %120, i64 %idxprom190
  store i32 6, i32* %arrayidx192, align 4
  br label %if.end.209

if.else.193:                                      ; preds = %if.else.182
  %121 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %121 to i64
  %selection195 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 10
  %arrayidx196 = getelementptr inbounds [4 x i8*], [4 x i8*]* %selection195, i32 0, i64 %idxprom194
  %122 = load i8*, i8** %arrayidx196, align 8
  %call197 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #9
  %cmp198 = icmp eq i32 %call197, 0
  br i1 %cmp198, label %if.then.200, label %if.else.204

if.then.200:                                      ; preds = %if.else.193
  %123 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %123 to i64
  %124 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %select202 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %124, i32 0, i32 4
  %125 = load i32*, i32** %select202, align 8
  %arrayidx203 = getelementptr inbounds i32, i32* %125, i64 %idxprom201
  store i32 7, i32* %arrayidx203, align 4
  br label %if.end.208

if.else.204:                                      ; preds = %if.else.193
  %126 = load i32, i32* %i, align 4
  %idxprom205 = sext i32 %126 to i64
  %127 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %select206 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %127, i32 0, i32 4
  %128 = load i32*, i32** %select206, align 8
  %arrayidx207 = getelementptr inbounds i32, i32* %128, i64 %idxprom205
  store i32 0, i32* %arrayidx207, align 4
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.204, %if.then.200
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.189
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.then.178
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.then.167
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.then.156
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.then.145
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.then.134
  %free_selection_string = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 11
  %129 = load i32, i32* %free_selection_string, align 4
  %tobool215 = icmp ne i32 %129, 0
  br i1 %tobool215, label %if.then.216, label %if.end.220

if.then.216:                                      ; preds = %if.end.214
  %130 = load i32, i32* %i, align 4
  %idxprom217 = sext i32 %130 to i64
  %selection218 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %params, i32 0, i32 10
  %arrayidx219 = getelementptr inbounds [4 x i8*], [4 x i8*]* %selection218, i32 0, i64 %idxprom217
  %131 = load i8*, i8** %arrayidx219, align 8
  call void @g_free(i8* %131)
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.216, %if.end.214
  %132 = load i32, i32* %i, align 4
  %idxprom221 = sext i32 %132 to i64
  %133 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %index222 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %133, i32 0, i32 5
  %134 = load i32*, i32** %index222, align 8
  %arrayidx223 = getelementptr inbounds i32, i32* %134, i64 %idxprom221
  store i32 0, i32* %arrayidx223, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.220
  %135 = load i32, i32* %i, align 4
  %inc = add nsw i32 %135, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.238

if.else.224:                                      ; preds = %while.end.100
  %136 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %dimension225 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %136, i32 0, i32 1
  store i32 1, i32* %dimension225, align 4
  %call226 = call noalias i8* @g_malloc_n(i64 1, i64 4)
  %137 = bitcast i8* %call226 to i32*
  %138 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank227 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %138, i32 0, i32 2
  store i32* %137, i32** %rank227, align 8
  %139 = load i32, i32* %num_of_brushes, align 4
  %140 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank228 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %140, i32 0, i32 2
  %141 = load i32*, i32** %rank228, align 8
  %arrayidx229 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 %139, i32* %arrayidx229, align 4
  %call230 = call noalias i8* @g_malloc_n(i64 1, i64 4)
  %142 = bitcast i8* %call230 to i32*
  %143 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %select231 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %143, i32 0, i32 4
  store i32* %142, i32** %select231, align 8
  %144 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %select232 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %144, i32 0, i32 4
  %145 = load i32*, i32** %select232, align 8
  %arrayidx233 = getelementptr inbounds i32, i32* %145, i64 0
  store i32 1, i32* %arrayidx233, align 4
  %call234 = call noalias i8* @g_malloc_n(i64 1, i64 4)
  %146 = bitcast i8* %call234 to i32*
  %147 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %index235 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %147, i32 0, i32 5
  store i32* %146, i32** %index235, align 8
  %148 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %index236 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %148, i32 0, i32 5
  %149 = load i32*, i32** %index236, align 8
  %arrayidx237 = getelementptr inbounds i32, i32* %149, i64 0
  store i32 0, i32* %arrayidx237, align 4
  br label %if.end.238

if.end.238:                                       ; preds = %if.else.224, %for.end
  %150 = load %struct._GString*, %struct._GString** %buffer, align 8
  %call239 = call i8* @g_string_free(%struct._GString* %150, i32 1)
  store i32 1, i32* %totalcells, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.240

for.cond.240:                                     ; preds = %for.inc.248, %if.end.238
  %151 = load i32, i32* %i, align 4
  %152 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %dimension241 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %152, i32 0, i32 1
  %153 = load i32, i32* %dimension241, align 4
  %cmp242 = icmp slt i32 %151, %153
  br i1 %cmp242, label %for.body.244, label %for.end.250

for.body.244:                                     ; preds = %for.cond.240
  %154 = load i32, i32* %i, align 4
  %idxprom245 = sext i32 %154 to i64
  %155 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank246 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %155, i32 0, i32 2
  %156 = load i32*, i32** %rank246, align 8
  %arrayidx247 = getelementptr inbounds i32, i32* %156, i64 %idxprom245
  %157 = load i32, i32* %arrayidx247, align 4
  %158 = load i32, i32* %totalcells, align 4
  %mul = mul nsw i32 %158, %157
  store i32 %mul, i32* %totalcells, align 4
  br label %for.inc.248

for.inc.248:                                      ; preds = %for.body.244
  %159 = load i32, i32* %i, align 4
  %inc249 = add nsw i32 %159, 1
  store i32 %inc249, i32* %i, align 4
  br label %for.cond.240

for.end.250:                                      ; preds = %for.cond.240
  %160 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %dimension251 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %160, i32 0, i32 1
  %161 = load i32, i32* %dimension251, align 4
  %conv252 = sext i32 %161 to i64
  %call253 = call noalias i8* @g_malloc0_n(i64 %conv252, i64 4)
  %162 = bitcast i8* %call253 to i32*
  %163 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %stride = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %163, i32 0, i32 3
  store i32* %162, i32** %stride, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.254

for.cond.254:                                     ; preds = %for.inc.280, %for.end.250
  %164 = load i32, i32* %i, align 4
  %165 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %dimension255 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %165, i32 0, i32 1
  %166 = load i32, i32* %dimension255, align 4
  %cmp256 = icmp slt i32 %164, %166
  br i1 %cmp256, label %for.body.258, label %for.end.282

for.body.258:                                     ; preds = %for.cond.254
  %167 = load i32, i32* %i, align 4
  %cmp259 = icmp eq i32 %167, 0
  br i1 %cmp259, label %if.then.261, label %if.else.268

if.then.261:                                      ; preds = %for.body.258
  %168 = load i32, i32* %totalcells, align 4
  %169 = load i32, i32* %i, align 4
  %idxprom262 = sext i32 %169 to i64
  %170 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank263 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %170, i32 0, i32 2
  %171 = load i32*, i32** %rank263, align 8
  %arrayidx264 = getelementptr inbounds i32, i32* %171, i64 %idxprom262
  %172 = load i32, i32* %arrayidx264, align 4
  %div = sdiv i32 %168, %172
  %173 = load i32, i32* %i, align 4
  %idxprom265 = sext i32 %173 to i64
  %174 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %stride266 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %174, i32 0, i32 3
  %175 = load i32*, i32** %stride266, align 8
  %arrayidx267 = getelementptr inbounds i32, i32* %175, i64 %idxprom265
  store i32 %div, i32* %arrayidx267, align 4
  br label %if.end.279

if.else.268:                                      ; preds = %for.body.258
  %176 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %176, 1
  %idxprom269 = sext i32 %sub to i64
  %177 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %stride270 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %177, i32 0, i32 3
  %178 = load i32*, i32** %stride270, align 8
  %arrayidx271 = getelementptr inbounds i32, i32* %178, i64 %idxprom269
  %179 = load i32, i32* %arrayidx271, align 4
  %180 = load i32, i32* %i, align 4
  %idxprom272 = sext i32 %180 to i64
  %181 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank273 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %181, i32 0, i32 2
  %182 = load i32*, i32** %rank273, align 8
  %arrayidx274 = getelementptr inbounds i32, i32* %182, i64 %idxprom272
  %183 = load i32, i32* %arrayidx274, align 4
  %div275 = sdiv i32 %179, %183
  %184 = load i32, i32* %i, align 4
  %idxprom276 = sext i32 %184 to i64
  %185 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %stride277 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %185, i32 0, i32 3
  %186 = load i32*, i32** %stride277, align 8
  %arrayidx278 = getelementptr inbounds i32, i32* %186, i64 %idxprom276
  store i32 %div275, i32* %arrayidx278, align 4
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.268, %if.then.261
  br label %for.inc.280

for.inc.280:                                      ; preds = %if.end.279
  %187 = load i32, i32* %i, align 4
  %inc281 = add nsw i32 %187, 1
  store i32 %inc281, i32* %i, align 4
  br label %for.cond.254

for.end.282:                                      ; preds = %for.cond.254
  br label %do.body.283

do.body.283:                                      ; preds = %for.end.282
  %188 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %dimension284 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %188, i32 0, i32 1
  %189 = load i32, i32* %dimension284, align 4
  %sub285 = sub nsw i32 %189, 1
  %idxprom286 = sext i32 %sub285 to i64
  %190 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %stride287 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %190, i32 0, i32 3
  %191 = load i32*, i32** %stride287, align 8
  %arrayidx288 = getelementptr inbounds i32, i32* %191, i64 %idxprom286
  %192 = load i32, i32* %arrayidx288, align 4
  %cmp289 = icmp eq i32 %192, 1
  br i1 %cmp289, label %if.then.291, label %if.else.292

if.then.291:                                      ; preds = %do.body.283
  br label %if.end.293

if.else.292:                                      ; preds = %do.body.283
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), i32 207, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_brush_pipe_load, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0)) #10
  unreachable

if.end.293:                                       ; preds = %if.then.291
  br label %do.end.294

do.end.294:                                       ; preds = %if.end.293
  %193 = load i32, i32* %num_of_brushes, align 4
  %conv295 = sext i32 %193 to i64
  %call296 = call noalias i8* @g_malloc0_n(i64 %conv295, i64 8)
  %194 = bitcast i8* %call296 to %struct._GimpBrush**
  %195 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %brushes = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %195, i32 0, i32 7
  store %struct._GimpBrush** %194, %struct._GimpBrush*** %brushes, align 8
  br label %while.cond.297

while.cond.297:                                   ; preds = %if.end.320, %do.end.294
  %196 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %n_brushes = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %196, i32 0, i32 6
  %197 = load i32, i32* %n_brushes, align 4
  %198 = load i32, i32* %num_of_brushes, align 4
  %cmp298 = icmp slt i32 %197, %198
  br i1 %cmp298, label %while.body.300, label %while.end.323

while.body.300:                                   ; preds = %while.cond.297
  store %struct._GError* null, %struct._GError** %my_error, align 8
  %199 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %200 = load i32, i32* %fd, align 4
  %201 = load i8*, i8** %filename.addr, align 8
  %call301 = call %struct._GimpBrush* @gimp_brush_load_brush(%struct._GimpContext* %199, i32 %200, i8* %201, %struct._GError** %my_error)
  %202 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %n_brushes302 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %202, i32 0, i32 6
  %203 = load i32, i32* %n_brushes302, align 4
  %idxprom303 = sext i32 %203 to i64
  %204 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %brushes304 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %204, i32 0, i32 7
  %205 = load %struct._GimpBrush**, %struct._GimpBrush*** %brushes304, align 8
  %arrayidx305 = getelementptr inbounds %struct._GimpBrush*, %struct._GimpBrush** %205, i64 %idxprom303
  store %struct._GimpBrush* %call301, %struct._GimpBrush** %arrayidx305, align 8
  %206 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %n_brushes306 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %206, i32 0, i32 6
  %207 = load i32, i32* %n_brushes306, align 4
  %idxprom307 = sext i32 %207 to i64
  %208 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %brushes308 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %208, i32 0, i32 7
  %209 = load %struct._GimpBrush**, %struct._GimpBrush*** %brushes308, align 8
  %arrayidx309 = getelementptr inbounds %struct._GimpBrush*, %struct._GimpBrush** %209, i64 %idxprom307
  %210 = load %struct._GimpBrush*, %struct._GimpBrush** %arrayidx309, align 8
  %tobool310 = icmp ne %struct._GimpBrush* %210, null
  br i1 %tobool310, label %if.then.311, label %if.else.318

if.then.311:                                      ; preds = %while.body.300
  %211 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %n_brushes312 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %211, i32 0, i32 6
  %212 = load i32, i32* %n_brushes312, align 4
  %idxprom313 = sext i32 %212 to i64
  %213 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %brushes314 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %213, i32 0, i32 7
  %214 = load %struct._GimpBrush**, %struct._GimpBrush*** %brushes314, align 8
  %arrayidx315 = getelementptr inbounds %struct._GimpBrush*, %struct._GimpBrush** %214, i64 %idxprom313
  %215 = load %struct._GimpBrush*, %struct._GimpBrush** %arrayidx315, align 8
  %216 = bitcast %struct._GimpBrush* %215 to %struct._GTypeInstance*
  %call316 = call i64 @gimp_object_get_type() #8
  %call317 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %216, i64 %call316)
  %217 = bitcast %struct._GTypeInstance* %call317 to %struct._GimpObject*
  call void @gimp_object_set_name(%struct._GimpObject* %217, i8* null)
  br label %if.end.320

if.else.318:                                      ; preds = %while.body.300
  %218 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %219 = load %struct._GError*, %struct._GError** %my_error, align 8
  call void @g_propagate_error(%struct._GError** %218, %struct._GError* %219)
  %220 = load i32, i32* %fd, align 4
  %call319 = call i32 @close(i32 %220)
  %221 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %222 = bitcast %struct._GimpBrushPipe* %221 to i8*
  call void @g_object_unref(i8* %222)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.320:                                       ; preds = %if.then.311
  %223 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %n_brushes321 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %223, i32 0, i32 6
  %224 = load i32, i32* %n_brushes321, align 4
  %inc322 = add nsw i32 %224, 1
  store i32 %inc322, i32* %n_brushes321, align 4
  br label %while.cond.297

while.end.323:                                    ; preds = %while.cond.297
  %225 = load i32, i32* %fd, align 4
  %call324 = call i32 @close(i32 %225)
  %226 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %brushes325 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %226, i32 0, i32 7
  %227 = load %struct._GimpBrush**, %struct._GimpBrush*** %brushes325, align 8
  %arrayidx326 = getelementptr inbounds %struct._GimpBrush*, %struct._GimpBrush** %227, i64 0
  %228 = load %struct._GimpBrush*, %struct._GimpBrush** %arrayidx326, align 8
  %229 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %current = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %229, i32 0, i32 8
  store %struct._GimpBrush* %228, %struct._GimpBrush** %current, align 8
  %230 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %current327 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %230, i32 0, i32 8
  %231 = load %struct._GimpBrush*, %struct._GimpBrush** %current327, align 8
  %spacing = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %231, i32 0, i32 3
  %232 = load i32, i32* %spacing, align 4
  %233 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %234 = bitcast %struct._GimpBrushPipe* %233 to %struct._GTypeInstance*
  %call328 = call i64 @gimp_brush_get_type() #8
  %call329 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %234, i64 %call328)
  %235 = bitcast %struct._GTypeInstance* %call329 to %struct._GimpBrush*
  %spacing330 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %235, i32 0, i32 3
  store i32 %232, i32* %spacing330, align 4
  %236 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %237 = bitcast %struct._GimpBrushPipe* %236 to %struct._GTypeInstance*
  %call331 = call i64 @gimp_brush_get_type() #8
  %call332 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %237, i64 %call331)
  %238 = bitcast %struct._GTypeInstance* %call332 to %struct._GimpBrush*
  %x_axis = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %238, i32 0, i32 4
  %239 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %current333 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %239, i32 0, i32 8
  %240 = load %struct._GimpBrush*, %struct._GimpBrush** %current333, align 8
  %x_axis334 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %240, i32 0, i32 4
  %241 = bitcast %struct._GimpVector2* %x_axis to i8*
  %242 = bitcast %struct._GimpVector2* %x_axis334 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %241, i8* %242, i64 16, i32 8, i1 false)
  %243 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %244 = bitcast %struct._GimpBrushPipe* %243 to %struct._GTypeInstance*
  %call335 = call i64 @gimp_brush_get_type() #8
  %call336 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %244, i64 %call335)
  %245 = bitcast %struct._GTypeInstance* %call336 to %struct._GimpBrush*
  %y_axis = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %245, i32 0, i32 5
  %246 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %current337 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %246, i32 0, i32 8
  %247 = load %struct._GimpBrush*, %struct._GimpBrush** %current337, align 8
  %y_axis338 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %247, i32 0, i32 5
  %248 = bitcast %struct._GimpVector2* %y_axis to i8*
  %249 = bitcast %struct._GimpVector2* %y_axis338 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %248, i8* %249, i64 16, i32 8, i1 false)
  %250 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %current339 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %250, i32 0, i32 8
  %251 = load %struct._GimpBrush*, %struct._GimpBrush** %current339, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %251, i32 0, i32 1
  %252 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %253 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %254 = bitcast %struct._GimpBrushPipe* %253 to %struct._GTypeInstance*
  %call340 = call i64 @gimp_brush_get_type() #8
  %call341 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %254, i64 %call340)
  %255 = bitcast %struct._GTypeInstance* %call341 to %struct._GimpBrush*
  %mask342 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %255, i32 0, i32 1
  store %struct._TempBuf* %252, %struct._TempBuf** %mask342, align 8
  %256 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %current343 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %256, i32 0, i32 8
  %257 = load %struct._GimpBrush*, %struct._GimpBrush** %current343, align 8
  %pixmap = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %257, i32 0, i32 2
  %258 = load %struct._TempBuf*, %struct._TempBuf** %pixmap, align 8
  %259 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %260 = bitcast %struct._GimpBrushPipe* %259 to %struct._GTypeInstance*
  %call344 = call i64 @gimp_brush_get_type() #8
  %call345 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %260, i64 %call344)
  %261 = bitcast %struct._GTypeInstance* %call345 to %struct._GimpBrush*
  %pixmap346 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %261, i32 0, i32 2
  store %struct._TempBuf* %258, %struct._TempBuf** %pixmap346, align 8
  %262 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %263 = bitcast %struct._GimpBrushPipe* %262 to i8*
  %call347 = call %struct._GList* @g_list_prepend(%struct._GList* null, i8* %263)
  store %struct._GList* %call347, %struct._GList** %retval
  br label %return

return:                                           ; preds = %while.end.323, %if.else.318, %if.then.84, %if.then.47, %if.then.15, %if.else.10, %if.else.3, %if.else
  %264 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %264
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @g_path_is_absolute(i8*) #1

declare i32 @open(i8*, i32, ...) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_data_error_quark() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare %struct._GString* @g_string_new(i8*) #1

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #4 {
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

declare noalias i8* @gimp_any_to_utf8(i8*, i64, i8*, ...) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_pipe_get_type() #2

declare void @g_free(i8*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare i32 @close(i32) #1

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #3

declare void @g_object_unref(i8*) #1

declare void @gimp_pixpipe_params_init(%struct._GimpPixPipeParams*) #1

declare void @gimp_pixpipe_params_parse(i8*, %struct._GimpPixPipeParams*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

declare %struct._GimpBrush* @gimp_brush_load_brush(%struct._GimpContext*, i32, i8*, %struct._GError**) #1

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @g_propagate_error(%struct._GError**, %struct._GError*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_get_type() #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
