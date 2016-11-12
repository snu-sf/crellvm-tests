; ModuleID = './app/text/gimptext-vectors.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, %struct.cairo_path*, i32, i32, double, double, double, double }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.0 }
%struct.anon.0 = type { double, double }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
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
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GimpText = type { %struct._GimpObject, i8*, i8*, i8*, i32, double, i32, i32, i32, i8*, i32, %struct._GimpRGB, i32, i32, double, double, double, i32, double, double, i32, %struct._GimpMatrix2, double, double, double }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }
%struct.RenderContext = type { %struct._GimpVectors*, %struct._GimpStroke*, %struct._GimpAnchor* }
%struct._GimpStroke = type { %struct._GimpObject, i32, %struct._GList*, i32 }
%struct._GimpAnchor = type { %struct._GimpCoords, i32, i32 }
%struct._GimpTextLayout = type opaque
%struct._cairo_surface = type opaque
%struct._cairo = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._cairo_rectangle = type { double, double, double, double }
%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Text\00", align 1
@__func__.gimp_text_vectors_new = private unnamed_addr constant [22 x i8] c"gimp_text_vectors_new\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_TEXT (text)\00", align 1
@gimp_text_vector_coords.default_values = internal constant %struct._GimpCoords { double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00 }, align 8

; Function Attrs: nounwind uwtable
define %struct._GimpVectors* @gimp_text_vectors_new(%struct._GimpImage* %image, %struct._GimpText* %text) #0 {
entry:
  %retval = alloca %struct._GimpVectors*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %text.addr = alloca %struct._GimpText*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %context = alloca %struct.RenderContext, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %layout = alloca %struct._GimpTextLayout*, align 8
  %surface = alloca %struct._cairo_surface*, align 8
  %cr = alloca %struct._cairo*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  %0 = bitcast %struct.RenderContext* %context to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %2 = bitcast %struct._GimpImage* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_text_vectors_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpVectors* null, %struct._GimpVectors** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %14 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %15 = bitcast %struct._GimpText* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_text_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type26, align 8
  %22 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %21, %22
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %24 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %25 = load i32, i32* %__r18, align 4
  store i32 %25, i32* %tmp33
  %26 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %26, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_text_vectors_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpVectors* null, %struct._GimpVectors** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call39 = call %struct._GimpVectors* @gimp_vectors_new(%struct._GimpImage* %27, i8* null)
  store %struct._GimpVectors* %call39, %struct._GimpVectors** %vectors, align 8
  %28 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %text40 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %28, i32 0, i32 1
  %29 = load i8*, i8** %text40, align 8
  %tobool41 = icmp ne i8* %29, null
  br i1 %tobool41, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.38
  %30 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %markup = getelementptr inbounds %struct._GimpText, %struct._GimpText* %30, i32 0, i32 2
  %31 = load i8*, i8** %markup, align 8
  %tobool42 = icmp ne i8* %31, null
  br i1 %tobool42, label %if.then.43, label %if.end.68

if.then.43:                                       ; preds = %lor.lhs.false, %do.end.38
  store %struct._GError* null, %struct._GError** %error, align 8
  %32 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %text50 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %32, i32 0, i32 1
  %33 = load i8*, i8** %text50, align 8
  %tobool51 = icmp ne i8* %33, null
  br i1 %tobool51, label %if.then.52, label %if.end.56

if.then.52:                                       ; preds = %if.then.43
  %34 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %35 = bitcast %struct._GimpVectors* %34 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_object_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call53)
  %36 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpObject*
  %37 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %text55 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %37, i32 0, i32 1
  %38 = load i8*, i8** %text55, align 8
  call void @gimp_object_set_name_safe(%struct._GimpObject* %36, i8* %38)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.52, %if.then.43
  %39 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %vectors57 = getelementptr inbounds %struct.RenderContext, %struct.RenderContext* %context, i32 0, i32 0
  store %struct._GimpVectors* %39, %struct._GimpVectors** %vectors57, align 8
  %call58 = call %struct._cairo_surface* @cairo_recording_surface_create(i32 8192, %struct._cairo_rectangle* null)
  store %struct._cairo_surface* %call58, %struct._cairo_surface** %surface, align 8
  %40 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call59 = call %struct._cairo* @cairo_create(%struct._cairo_surface* %40)
  store %struct._cairo* %call59, %struct._cairo** %cr, align 8
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %41, double* %xres, double* %yres)
  %42 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %43 = load double, double* %xres, align 8
  %44 = load double, double* %yres, align 8
  %call60 = call %struct._GimpTextLayout* @gimp_text_layout_new(%struct._GimpText* %42, double %43, double %44, %struct._GError** %error)
  store %struct._GimpTextLayout* %call60, %struct._GimpTextLayout** %layout, align 8
  %45 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool61 = icmp ne %struct._GError* %45, null
  br i1 %tobool61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.56
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %46, i32 0, i32 1
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %48 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %48, i32 0, i32 2
  %49 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %47, %struct._GObject* null, i32 2, i8* %49)
  %50 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %50)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.end.56
  %51 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %52 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %53 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %base_dir = getelementptr inbounds %struct._GimpText, %struct._GimpText* %53, i32 0, i32 10
  %54 = load i32, i32* %base_dir, align 4
  call void @gimp_text_layout_render(%struct._GimpTextLayout* %51, %struct._cairo* %52, i32 %54, i32 1)
  %55 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %56 = bitcast %struct._GimpTextLayout* %55 to i8*
  call void @g_object_unref(i8* %56)
  %57 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @gimp_text_render_vectors(%struct._cairo* %57, %struct.RenderContext* %context)
  %58 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %58)
  %59 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %59)
  %stroke = getelementptr inbounds %struct.RenderContext, %struct.RenderContext* %context, i32 0, i32 1
  %60 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool64 = icmp ne %struct._GimpStroke* %60, null
  br i1 %tobool64, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.end.63
  %stroke66 = getelementptr inbounds %struct.RenderContext, %struct.RenderContext* %context, i32 0, i32 1
  %61 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke66, align 8
  call void @gimp_stroke_close(%struct._GimpStroke* %61)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.end.63
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %lor.lhs.false
  %62 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  store %struct._GimpVectors* %62, %struct._GimpVectors** %retval
  br label %return

return:                                           ; preds = %if.end.68, %if.else.36, %if.else.9
  %63 = load %struct._GimpVectors*, %struct._GimpVectors** %retval
  ret %struct._GimpVectors* %63
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_text_get_type() #2

declare %struct._GimpVectors* @gimp_vectors_new(%struct._GimpImage*, i8*) #4

declare void @gimp_object_set_name_safe(%struct._GimpObject*, i8*) #4

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare %struct._cairo_surface* @cairo_recording_surface_create(i32, %struct._cairo_rectangle*) #4

declare %struct._cairo* @cairo_create(%struct._cairo_surface*) #4

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #4

declare %struct._GimpTextLayout* @gimp_text_layout_new(%struct._GimpText*, double, double, %struct._GError**) #4

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #4

declare void @g_error_free(%struct._GError*) #4

declare void @gimp_text_layout_render(%struct._GimpTextLayout*, %struct._cairo*, i32, i32) #4

declare void @g_object_unref(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_text_render_vectors(%struct._cairo* %cr, %struct.RenderContext* %context) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %context.addr = alloca %struct.RenderContext*, align 8
  %path = alloca %struct.cairo_path*, align 8
  %i = alloca i32, align 4
  %data = alloca %union._cairo_path_data_t*, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct.RenderContext* %context, %struct.RenderContext** %context.addr, align 8
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %call = call %struct.cairo_path* @cairo_copy_path(%struct._cairo* %0)
  store %struct.cairo_path* %call, %struct.cairo_path** %path, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.cairo_path*, %struct.cairo_path** %path, align 8
  %num_data = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %2, i32 0, i32 2
  %3 = load i32, i32* %num_data, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.cairo_path*, %struct.cairo_path** %path, align 8
  %data1 = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %5, i32 0, i32 1
  %6 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data1, align 8
  %arrayidx = getelementptr inbounds %union._cairo_path_data_t, %union._cairo_path_data_t* %6, i64 %idxprom
  store %union._cairo_path_data_t* %arrayidx, %union._cairo_path_data_t** %data, align 8
  %7 = load i32, i32* %i, align 4
  %8 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data, align 8
  %header = bitcast %union._cairo_path_data_t* %8 to %struct.anon*
  %length = getelementptr inbounds %struct.anon, %struct.anon* %header, i32 0, i32 1
  %9 = load i32, i32* %length, align 4
  %add = add nsw i32 %7, %9
  %10 = load %struct.cairo_path*, %struct.cairo_path** %path, align 8
  %num_data2 = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %10, i32 0, i32 2
  %11 = load i32, i32* %num_data2, align 4
  %cmp3 = icmp sge i32 %add, %11
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %12 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data, align 8
  %header4 = bitcast %union._cairo_path_data_t* %12 to %struct.anon*
  %type = getelementptr inbounds %struct.anon, %struct.anon* %header4, i32 0, i32 0
  %13 = load i32, i32* %type, align 4
  switch i32 %13, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.17
    i32 3, label %sw.bb.37
  ]

sw.bb:                                            ; preds = %if.end
  %14 = load %struct.RenderContext*, %struct.RenderContext** %context.addr, align 8
  %15 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data, align 8
  %arrayidx5 = getelementptr inbounds %union._cairo_path_data_t, %union._cairo_path_data_t* %15, i64 1
  %point = bitcast %union._cairo_path_data_t* %arrayidx5 to %struct.anon.0*
  %x = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point, i32 0, i32 0
  %16 = load double, double* %x, align 8
  %17 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data, align 8
  %arrayidx6 = getelementptr inbounds %union._cairo_path_data_t, %union._cairo_path_data_t* %17, i64 1
  %point7 = bitcast %union._cairo_path_data_t* %arrayidx6 to %struct.anon.0*
  %y = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point7, i32 0, i32 1
  %18 = load double, double* %y, align 8
  %call8 = call i32 @moveto(%struct.RenderContext* %14, double %16, double %18)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end
  %19 = load %struct.RenderContext*, %struct.RenderContext** %context.addr, align 8
  %20 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data, align 8
  %arrayidx10 = getelementptr inbounds %union._cairo_path_data_t, %union._cairo_path_data_t* %20, i64 1
  %point11 = bitcast %union._cairo_path_data_t* %arrayidx10 to %struct.anon.0*
  %x12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point11, i32 0, i32 0
  %21 = load double, double* %x12, align 8
  %22 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data, align 8
  %arrayidx13 = getelementptr inbounds %union._cairo_path_data_t, %union._cairo_path_data_t* %22, i64 1
  %point14 = bitcast %union._cairo_path_data_t* %arrayidx13 to %struct.anon.0*
  %y15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point14, i32 0, i32 1
  %23 = load double, double* %y15, align 8
  %call16 = call i32 @lineto(%struct.RenderContext* %19, double %21, double %23)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end
  %24 = load %struct.RenderContext*, %struct.RenderContext** %context.addr, align 8
  %25 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data, align 8
  %arrayidx18 = getelementptr inbounds %union._cairo_path_data_t, %union._cairo_path_data_t* %25, i64 1
  %point19 = bitcast %union._cairo_path_data_t* %arrayidx18 to %struct.anon.0*
  %x20 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point19, i32 0, i32 0
  %26 = load double, double* %x20, align 8
  %27 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data, align 8
  %arrayidx21 = getelementptr inbounds %union._cairo_path_data_t, %union._cairo_path_data_t* %27, i64 1
  %point22 = bitcast %union._cairo_path_data_t* %arrayidx21 to %struct.anon.0*
  %y23 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point22, i32 0, i32 1
  %28 = load double, double* %y23, align 8
  %29 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data, align 8
  %arrayidx24 = getelementptr inbounds %union._cairo_path_data_t, %union._cairo_path_data_t* %29, i64 2
  %point25 = bitcast %union._cairo_path_data_t* %arrayidx24 to %struct.anon.0*
  %x26 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point25, i32 0, i32 0
  %30 = load double, double* %x26, align 8
  %31 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data, align 8
  %arrayidx27 = getelementptr inbounds %union._cairo_path_data_t, %union._cairo_path_data_t* %31, i64 2
  %point28 = bitcast %union._cairo_path_data_t* %arrayidx27 to %struct.anon.0*
  %y29 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point28, i32 0, i32 1
  %32 = load double, double* %y29, align 8
  %33 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data, align 8
  %arrayidx30 = getelementptr inbounds %union._cairo_path_data_t, %union._cairo_path_data_t* %33, i64 3
  %point31 = bitcast %union._cairo_path_data_t* %arrayidx30 to %struct.anon.0*
  %x32 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point31, i32 0, i32 0
  %34 = load double, double* %x32, align 8
  %35 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data, align 8
  %arrayidx33 = getelementptr inbounds %union._cairo_path_data_t, %union._cairo_path_data_t* %35, i64 3
  %point34 = bitcast %union._cairo_path_data_t* %arrayidx33 to %struct.anon.0*
  %y35 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point34, i32 0, i32 1
  %36 = load double, double* %y35, align 8
  %call36 = call i32 @cubicto(%struct.RenderContext* %24, double %26, double %28, double %30, double %32, double %34, double %36)
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.end
  %37 = load %struct.RenderContext*, %struct.RenderContext** %context.addr, align 8
  %call38 = call i32 @closepath(%struct.RenderContext* %37)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.37, %sw.bb.17, %sw.bb.9, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %38 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %38 to i64
  %39 = load %struct.cairo_path*, %struct.cairo_path** %path, align 8
  %data40 = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %39, i32 0, i32 1
  %40 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data40, align 8
  %arrayidx41 = getelementptr inbounds %union._cairo_path_data_t, %union._cairo_path_data_t* %40, i64 %idxprom39
  %header42 = bitcast %union._cairo_path_data_t* %arrayidx41 to %struct.anon*
  %length43 = getelementptr inbounds %struct.anon, %struct.anon* %header42, i32 0, i32 1
  %41 = load i32, i32* %length43, align 4
  %42 = load i32, i32* %i, align 4
  %add44 = add nsw i32 %42, %41
  store i32 %add44, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %43 = load %struct.cairo_path*, %struct.cairo_path** %path, align 8
  call void @cairo_path_destroy(%struct.cairo_path* %43)
  ret void
}

declare void @cairo_destroy(%struct._cairo*) #4

declare void @cairo_surface_destroy(%struct._cairo_surface*) #4

declare void @gimp_stroke_close(%struct._GimpStroke*) #4

declare %struct.cairo_path* @cairo_copy_path(%struct._cairo*) #4

; Function Attrs: nounwind uwtable
define internal i32 @moveto(%struct.RenderContext* %context, double %x, double %y) #0 {
entry:
  %context.addr = alloca %struct.RenderContext*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %start = alloca %struct._GimpCoords, align 8
  store %struct.RenderContext* %context, %struct.RenderContext** %context.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load double, double* %y.addr, align 8
  call void @gimp_text_vector_coords(double %0, double %1, %struct._GimpCoords* %start)
  %2 = load %struct.RenderContext*, %struct.RenderContext** %context.addr, align 8
  %stroke = getelementptr inbounds %struct.RenderContext, %struct.RenderContext* %2, i32 0, i32 1
  %3 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool = icmp ne %struct._GimpStroke* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.RenderContext*, %struct.RenderContext** %context.addr, align 8
  %stroke1 = getelementptr inbounds %struct.RenderContext, %struct.RenderContext* %4, i32 0, i32 1
  %5 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke1, align 8
  call void @gimp_stroke_close(%struct._GimpStroke* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call %struct._GimpStroke* @gimp_bezier_stroke_new_moveto(%struct._GimpCoords* %start)
  %6 = load %struct.RenderContext*, %struct.RenderContext** %context.addr, align 8
  %stroke2 = getelementptr inbounds %struct.RenderContext, %struct.RenderContext* %6, i32 0, i32 1
  store %struct._GimpStroke* %call, %struct._GimpStroke** %stroke2, align 8
  %7 = load %struct.RenderContext*, %struct.RenderContext** %context.addr, align 8
  %vectors = getelementptr inbounds %struct.RenderContext, %struct.RenderContext* %7, i32 0, i32 0
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %9 = load %struct.RenderContext*, %struct.RenderContext** %context.addr, align 8
  %stroke3 = getelementptr inbounds %struct.RenderContext, %struct.RenderContext* %9, i32 0, i32 1
  %10 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke3, align 8
  call void @gimp_vectors_stroke_add(%struct._GimpVectors* %8, %struct._GimpStroke* %10)
  %11 = load %struct.RenderContext*, %struct.RenderContext** %context.addr, align 8
  %stroke4 = getelementptr inbounds %struct.RenderContext, %struct.RenderContext* %11, i32 0, i32 1
  %12 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke4, align 8
  %13 = bitcast %struct._GimpStroke* %12 to i8*
  call void @g_object_unref(i8* %13)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lineto(%struct.RenderContext* %context, double %x, double %y) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct.RenderContext*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %end = alloca %struct._GimpCoords, align 8
  store %struct.RenderContext* %context, %struct.RenderContext** %context.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct.RenderContext*, %struct.RenderContext** %context.addr, align 8
  %stroke = getelementptr inbounds %struct.RenderContext, %struct.RenderContext* %0, i32 0, i32 1
  %1 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool = icmp ne %struct._GimpStroke* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %x.addr, align 8
  %3 = load double, double* %y.addr, align 8
  call void @gimp_text_vector_coords(double %2, double %3, %struct._GimpCoords* %end)
  %4 = load %struct.RenderContext*, %struct.RenderContext** %context.addr, align 8
  %stroke1 = getelementptr inbounds %struct.RenderContext, %struct.RenderContext* %4, i32 0, i32 1
  %5 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke1, align 8
  call void @gimp_bezier_stroke_lineto(%struct._GimpStroke* %5, %struct._GimpCoords* %end)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @cubicto(%struct.RenderContext* %context, double %x1, double %y1, double %x2, double %y2, double %x3, double %y3) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct.RenderContext*, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %x3.addr = alloca double, align 8
  %y3.addr = alloca double, align 8
  %control1 = alloca %struct._GimpCoords, align 8
  %control2 = alloca %struct._GimpCoords, align 8
  %end = alloca %struct._GimpCoords, align 8
  store %struct.RenderContext* %context, %struct.RenderContext** %context.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  store double %x3, double* %x3.addr, align 8
  store double %y3, double* %y3.addr, align 8
  %0 = load %struct.RenderContext*, %struct.RenderContext** %context.addr, align 8
  %stroke = getelementptr inbounds %struct.RenderContext, %struct.RenderContext* %0, i32 0, i32 1
  %1 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool = icmp ne %struct._GimpStroke* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %x1.addr, align 8
  %3 = load double, double* %y1.addr, align 8
  call void @gimp_text_vector_coords(double %2, double %3, %struct._GimpCoords* %control1)
  %4 = load double, double* %x2.addr, align 8
  %5 = load double, double* %y2.addr, align 8
  call void @gimp_text_vector_coords(double %4, double %5, %struct._GimpCoords* %control2)
  %6 = load double, double* %x3.addr, align 8
  %7 = load double, double* %y3.addr, align 8
  call void @gimp_text_vector_coords(double %6, double %7, %struct._GimpCoords* %end)
  %8 = load %struct.RenderContext*, %struct.RenderContext** %context.addr, align 8
  %stroke1 = getelementptr inbounds %struct.RenderContext, %struct.RenderContext* %8, i32 0, i32 1
  %9 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke1, align 8
  call void @gimp_bezier_stroke_cubicto(%struct._GimpStroke* %9, %struct._GimpCoords* %control1, %struct._GimpCoords* %control2, %struct._GimpCoords* %end)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @closepath(%struct.RenderContext* %context) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct.RenderContext*, align 8
  store %struct.RenderContext* %context, %struct.RenderContext** %context.addr, align 8
  %0 = load %struct.RenderContext*, %struct.RenderContext** %context.addr, align 8
  %stroke = getelementptr inbounds %struct.RenderContext, %struct.RenderContext* %0, i32 0, i32 1
  %1 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool = icmp ne %struct._GimpStroke* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.RenderContext*, %struct.RenderContext** %context.addr, align 8
  %stroke1 = getelementptr inbounds %struct.RenderContext, %struct.RenderContext* %2, i32 0, i32 1
  %3 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke1, align 8
  call void @gimp_stroke_close(%struct._GimpStroke* %3)
  %4 = load %struct.RenderContext*, %struct.RenderContext** %context.addr, align 8
  %stroke2 = getelementptr inbounds %struct.RenderContext, %struct.RenderContext* %4, i32 0, i32 1
  store %struct._GimpStroke* null, %struct._GimpStroke** %stroke2, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare void @cairo_path_destroy(%struct.cairo_path*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @gimp_text_vector_coords(double %x, double %y, %struct._GimpCoords* %coords) #5 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %1 = bitcast %struct._GimpCoords* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct._GimpCoords* @gimp_text_vector_coords.default_values to i8*), i64 64, i32 8, i1 false)
  %2 = load double, double* %x.addr, align 8
  %3 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %3, i32 0, i32 0
  store double %2, double* %x1, align 8
  %4 = load double, double* %y.addr, align 8
  %5 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %5, i32 0, i32 1
  store double %4, double* %y2, align 8
  ret void
}

declare %struct._GimpStroke* @gimp_bezier_stroke_new_moveto(%struct._GimpCoords*) #4

declare void @gimp_vectors_stroke_add(%struct._GimpVectors*, %struct._GimpStroke*) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @gimp_bezier_stroke_lineto(%struct._GimpStroke*, %struct._GimpCoords*) #4

declare void @gimp_bezier_stroke_cubicto(%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, %struct._GimpCoords*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
