; ModuleID = './app/xcf/xcf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { {}*, {}*, {}*, {}*, {}*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, {}* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._GimpPlugIn = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._XcfInfo = type { %struct._Gimp*, %struct._GimpProgress*, %struct._IO_FILE*, i32, i8*, i32, %struct._GimpLayer*, %struct._GimpChannel*, %struct._GimpDrawable*, %struct._GimpLayer*, i32, i32, i32*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GimpChannel = type opaque
%struct._GimpDrawable = type opaque
%struct._GimpLayer = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"Gimp-XCF\00", align 1
@__func__.xcf_init = private unnamed_addr constant [9 x i8] c"xcf_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"gimp-xcf-save\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"GIMP XCF image\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"gimp-wilber\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"RGB*, GRAY*, INDEXED*\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"xcf\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"image/xcf\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Saves file in the .xcf file format\00", align 1
@.str.10 = private unnamed_addr constant [177 x i8] c"The XCF file format has been designed specifically for loading and saving tiled and layered images in GIMP. This procedure will save the specified image in the xcf file format.\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"1995-1996\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"dummy-param\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Dummy Param\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Dummy parameter\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"Drawable\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"Active drawable of input image\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"Filename\00", align 1
@.str.24 = private unnamed_addr constant [85 x i8] c"The name of the file to save the image in, in the on-disk character set and encoding\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"Raw filename\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"The basename of the file, in UTF-8\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"gimp-xcf-load\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"0,string,gimp\5C040xcf\5C040\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"Loads file saved in the .xcf file format\00", align 1
@.str.31 = private unnamed_addr constant [153 x i8] c"The XCF file format has been designed specifically for loading and saving tiled and layered images in GIMP. This procedure will load the specified file.\00", align 1
@.str.32 = private unnamed_addr constant [72 x i8] c"The name of the file to load, in the on-disk character set and encoding\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"Output image\00", align 1
@__func__.xcf_exit = private unnamed_addr constant [9 x i8] c"xcf_exit\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"gimp xcf \00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@xcf_loaders = internal constant [4 x %struct._GimpImage* (%struct._Gimp*, %struct._XcfInfo*, %struct._GError**)*] [%struct._GimpImage* (%struct._Gimp*, %struct._XcfInfo*, %struct._GError**)* @xcf_load_image, %struct._GimpImage* (%struct._Gimp*, %struct._XcfInfo*, %struct._GError**)* @xcf_load_image, %struct._GimpImage* (%struct._Gimp*, %struct._XcfInfo*, %struct._GError**)* @xcf_load_image, %struct._GimpImage* (%struct._Gimp*, %struct._XcfInfo*, %struct._GError**)* @xcf_load_image], align 16
@.str.38 = private unnamed_addr constant [55 x i8] c"XCF error: unsupported XCF file version %d encountered\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"Error saving XCF file: %s\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1

; Function Attrs: nounwind uwtable
define void @xcf_init(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.xcf_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._GimpProcedure* @gimp_plug_in_procedure_new(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpProcedure* %call11, %struct._GimpProcedure** %procedure, align 8
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %proc_type = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %13, i32 0, i32 1
  store i32 0, i32* %proc_type, align 4
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %marshal_func = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %14, i32 0, i32 14
  store %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @xcf_save_invoker, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)** %marshal_func, align 8
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %16 = bitcast %struct._GimpProcedure* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_plug_in_procedure_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %17, %struct._GimpPlugInProcedure** %proc, align 8
  %call14 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  %18 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %18, i32 0, i32 4
  store i8* %call14, i8** %menu_label, align 8
  %19 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  call void @gimp_plug_in_procedure_set_icon(%struct._GimpPlugInProcedure* %19, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 12)
  %20 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  call void @gimp_plug_in_procedure_set_image_types(%struct._GimpPlugInProcedure* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  %21 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  call void @gimp_plug_in_procedure_set_file_proc(%struct._GimpPlugInProcedure* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), i8* null)
  %22 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  call void @gimp_plug_in_procedure_set_mime_type(%struct._GimpPlugInProcedure* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %24 = bitcast %struct._GimpProcedure* %23 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_object_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call15)
  %25 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* null)
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call17 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %27, %struct._GParamSpec* %call17)
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call18 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), %struct._Gimp* %29, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %28, %struct._GParamSpec* %call18)
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call19 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %31, i32 1, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %30, %struct._GParamSpec* %call19)
  %32 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call20 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.24, i32 0, i32 0), i32 1, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %32, %struct._GParamSpec* %call20)
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call21 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %33, %struct._GParamSpec* %call21)
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %34, i32 0, i32 25
  %35 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %36 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  call void @gimp_plug_in_manager_add_procedure(%struct._GimpPlugInManager* %35, %struct._GimpPlugInProcedure* %36)
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %38 = bitcast %struct._GimpProcedure* %37 to i8*
  call void @g_object_unref(i8* %38)
  %call22 = call %struct._GimpProcedure* @gimp_plug_in_procedure_new(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0))
  store %struct._GimpProcedure* %call22, %struct._GimpProcedure** %procedure, align 8
  %39 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %proc_type23 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %39, i32 0, i32 1
  store i32 0, i32* %proc_type23, align 4
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %marshal_func24 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %40, i32 0, i32 14
  store %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @xcf_load_invoker, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)** %marshal_func24, align 8
  %41 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %42 = bitcast %struct._GimpProcedure* %41 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_plug_in_procedure_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call25)
  %43 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %43, %struct._GimpPlugInProcedure** %proc, align 8
  %call27 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  %44 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_label28 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %44, i32 0, i32 4
  store i8* %call27, i8** %menu_label28, align 8
  %45 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  call void @gimp_plug_in_procedure_set_icon(%struct._GimpPlugInProcedure* %45, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 12)
  %46 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  call void @gimp_plug_in_procedure_set_image_types(%struct._GimpPlugInProcedure* %46, i8* null)
  %47 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  call void @gimp_plug_in_procedure_set_file_proc(%struct._GimpPlugInProcedure* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0))
  %48 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  call void @gimp_plug_in_procedure_set_mime_type(%struct._GimpPlugInProcedure* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  %49 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %50 = bitcast %struct._GimpProcedure* %49 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_object_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call29)
  %51 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0))
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* null)
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call31 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %53, %struct._GParamSpec* %call31)
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call32 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.32, i32 0, i32 0), i32 1, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %54, %struct._GParamSpec* %call32)
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call33 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %55, %struct._GParamSpec* %call33)
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %57 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call34 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), %struct._Gimp* %57, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %56, %struct._GParamSpec* %call34)
  %58 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager35 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %58, i32 0, i32 25
  %59 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager35, align 8
  %60 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  call void @gimp_plug_in_manager_add_procedure(%struct._GimpPlugInManager* %59, %struct._GimpPlugInProcedure* %60)
  %61 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %62 = bitcast %struct._GimpProcedure* %61 to i8*
  call void @g_object_unref(i8* %62)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GimpProcedure* @gimp_plug_in_procedure_new(i32, i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @xcf_save_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %info = alloca %struct._XcfInfo, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %filename = alloca i8*, align 8
  %success = alloca i32, align 4
  %name = alloca i8*, align 8
  %msg = alloca i8*, align 8
  %save_errno = alloca i32, align 4
  %save_errno34 = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %success, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_set_busy(%struct._Gimp* %0)
  %1 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %1, i32 0, i32 1
  %2 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i64 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %3)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 3
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %filename, align 8
  %6 = load i8*, i8** %filename, align 8
  %call4 = call %struct._IO_FILE* @fopen(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0))
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 2
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %fp, align 8
  %fp5 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp5, align 8
  %tobool = icmp ne %struct._IO_FILE* %7, null
  br i1 %tobool, label %if.then, label %if.else.33

if.then:                                          ; preds = %entry
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gimp6 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 0
  store %struct._Gimp* %8, %struct._Gimp** %gimp6, align 8
  %9 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %progress7 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 1
  store %struct._GimpProgress* %9, %struct._GimpProgress** %progress7, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 3
  store i32 0, i32* %cp, align 4
  %10 = load i8*, i8** %filename, align 8
  %filename8 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 4
  store i8* %10, i8** %filename8, align 8
  %active_layer = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 6
  store %struct._GimpLayer* null, %struct._GimpLayer** %active_layer, align 8
  %active_channel = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 7
  store %struct._GimpChannel* null, %struct._GimpChannel** %active_channel, align 8
  %floating_sel_drawable = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 8
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %floating_sel_drawable, align 8
  %floating_sel = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 9
  store %struct._GimpLayer* null, %struct._GimpLayer** %floating_sel, align 8
  %floating_sel_offset = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 10
  store i32 0, i32* %floating_sel_offset, align 4
  %swap_num = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 11
  store i32 0, i32* %swap_num, align 4
  %ref_count = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 12
  store i32* null, i32** %ref_count, align 8
  %compression = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 13
  store i32 1, i32* %compression, align 4
  %11 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool9 = icmp ne %struct._GimpProgress* %11, null
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %12 = load i8*, i8** %filename, align 8
  %call11 = call noalias i8* @g_filename_display_name(i8* %12)
  store i8* %call11, i8** %name, align 8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0)) #7
  %13 = load i8*, i8** %name, align 8
  %call13 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call12, i8* %13)
  store i8* %call13, i8** %msg, align 8
  %14 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %15 = load i8*, i8** %msg, align 8
  %call14 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %14, i8* %15, i32 0)
  %16 = load i8*, i8** %msg, align 8
  call void @g_free(i8* %16)
  %17 = load i8*, i8** %name, align 8
  call void @g_free(i8* %17)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @xcf_save_choose_format(%struct._XcfInfo* %info, %struct._GimpImage* %18)
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call15 = call i32 @xcf_save_image(%struct._XcfInfo* %info, %struct._GimpImage* %19, %struct._GError** %20)
  store i32 %call15, i32* %success, align 4
  %21 = load i32, i32* %success, align 4
  %tobool16 = icmp ne i32 %21, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end
  %fp18 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 2
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp18, align 8
  %call19 = call i32 @fclose(%struct._IO_FILE* %22)
  %cmp = icmp eq i32 %call19, -1
  br i1 %cmp, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.then.17
  %call21 = call i32* @__errno_location() #5
  %23 = load i32, i32* %call21, align 4
  store i32 %23, i32* %save_errno, align 4
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call22 = call i32 @g_file_error_quark()
  %25 = load i32, i32* %save_errno, align 4
  %call23 = call i32 @g_file_error_from_errno(i32 %25)
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0)) #7
  %26 = load i32, i32* %save_errno, align 4
  %call25 = call i8* @g_strerror(i32 %26) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %24, i32 %call22, i32 %call23, i8* %call24, i8* %call25)
  store i32 0, i32* %success, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.20, %if.then.17
  br label %if.end.29

if.else:                                          ; preds = %if.end
  %fp27 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 2
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp27, align 8
  %call28 = call i32 @fclose(%struct._IO_FILE* %27)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.end.26
  %28 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool30 = icmp ne %struct._GimpProgress* %28, null
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  %29 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %29)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.29
  br label %if.end.41

if.else.33:                                       ; preds = %entry
  %call35 = call i32* @__errno_location() #5
  %30 = load i32, i32* %call35, align 4
  store i32 %30, i32* %save_errno34, align 4
  %31 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call36 = call i32 @g_file_error_quark()
  %32 = load i32, i32* %save_errno34, align 4
  %call37 = call i32 @g_file_error_from_errno(i32 %32)
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43, i32 0, i32 0)) #7
  %33 = load i8*, i8** %filename, align 8
  %call39 = call i8* @gimp_filename_to_utf8(i8* %33)
  %34 = load i32, i32* %save_errno34, align 4
  %call40 = call i8* @g_strerror(i32 %34) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %31, i32 %call36, i32 %call37, i8* %call38, i8* %call39, i8* %call40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.33, %if.end.32
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %36 = load i32, i32* %success, align 4
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool42 = icmp ne %struct._GError** %37, null
  br i1 %tobool42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.41
  %38 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %39 = load %struct._GError*, %struct._GError** %38, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.41
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %39, %cond.true ], [ null, %cond.false ]
  %call43 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %35, i32 %36, %struct._GError* %cond)
  store %struct._GValueArray* %call43, %struct._GValueArray** %return_vals, align 8
  %40 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_unset_busy(%struct._Gimp* %40)
  %41 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %41
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_procedure_get_type() #1

declare noalias i8* @g_strdup(i8*) #3

declare void @gimp_plug_in_procedure_set_icon(%struct._GimpPlugInProcedure*, i32, i8*, i32) #3

declare void @gimp_plug_in_procedure_set_image_types(%struct._GimpPlugInProcedure*, i8*) #3

declare void @gimp_plug_in_procedure_set_file_proc(%struct._GimpPlugInProcedure*, i8*, i8*, i8*) #3

declare void @gimp_plug_in_procedure_set_mime_type(%struct._GimpPlugInProcedure*, i8*) #3

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #3

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #3

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_image_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_drawable_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #3

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #3

declare void @gimp_plug_in_manager_add_procedure(%struct._GimpPlugInManager*, %struct._GimpPlugInProcedure*) #3

declare void @g_object_unref(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @xcf_load_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %info = alloca %struct._XcfInfo, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %filename = alloca i8*, align 8
  %success = alloca i32, align 4
  %id = alloca [14 x i8], align 1
  %name = alloca i8*, align 8
  %msg = alloca i8*, align 8
  %save_errno = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  store i32 0, i32* %success, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_set_busy(%struct._Gimp* %0)
  %1 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %1, i32 0, i32 1
  %2 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i64 1
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %filename, align 8
  %3 = load i8*, i8** %filename, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0))
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 2
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %fp2 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 2
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.then, label %if.else.62

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gimp3 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 0
  store %struct._Gimp* %5, %struct._Gimp** %gimp3, align 8
  %6 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %progress4 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 1
  store %struct._GimpProgress* %6, %struct._GimpProgress** %progress4, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 3
  store i32 0, i32* %cp, align 4
  %7 = load i8*, i8** %filename, align 8
  %filename5 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 4
  store i8* %7, i8** %filename5, align 8
  %tattoo_state = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 5
  store i32 0, i32* %tattoo_state, align 4
  %active_layer = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 6
  store %struct._GimpLayer* null, %struct._GimpLayer** %active_layer, align 8
  %active_channel = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 7
  store %struct._GimpChannel* null, %struct._GimpChannel** %active_channel, align 8
  %floating_sel_drawable = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 8
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %floating_sel_drawable, align 8
  %floating_sel = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 9
  store %struct._GimpLayer* null, %struct._GimpLayer** %floating_sel, align 8
  %floating_sel_offset = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 10
  store i32 0, i32* %floating_sel_offset, align 4
  %swap_num = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 11
  store i32 0, i32* %swap_num, align 4
  %ref_count = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 12
  store i32* null, i32** %ref_count, align 8
  %compression = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 13
  store i32 0, i32* %compression, align 4
  %8 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool6 = icmp ne %struct._GimpProgress* %8, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %9 = load i8*, i8** %filename, align 8
  %call8 = call noalias i8* @g_filename_display_name(i8* %9)
  store i8* %call8, i8** %name, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0)) #7
  %10 = load i8*, i8** %name, align 8
  %call10 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call9, i8* %10)
  store i8* %call10, i8** %msg, align 8
  %11 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %12 = load i8*, i8** %msg, align 8
  %call11 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %11, i8* %12, i32 0)
  %13 = load i8*, i8** %msg, align 8
  call void @g_free(i8* %13)
  %14 = load i8*, i8** %name, align 8
  call void @g_free(i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  store i32 1, i32* %success, align 4
  %fp12 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp12, align 8
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %id, i32 0, i32 0
  %call13 = call i32 @xcf_read_int8(%struct._IO_FILE* %15, i8* %arraydecay, i32 14)
  %cp14 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 3
  %16 = load i32, i32* %cp14, align 4
  %add = add i32 %16, %call13
  store i32 %add, i32* %cp14, align 4
  %arraydecay15 = getelementptr inbounds [14 x i8], [14 x i8]* %id, i32 0, i32 0
  %call16 = call i32 @g_str_has_prefix(i8* %arraydecay15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0))
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else, label %if.then.18

if.then.18:                                       ; preds = %if.end
  store i32 0, i32* %success, align 4
  br label %if.end.34

if.else:                                          ; preds = %if.end
  %arraydecay19 = getelementptr inbounds [14 x i8], [14 x i8]* %id, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay19, i64 9
  %call20 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0)) #6
  %cmp = icmp eq i32 %call20, 0
  br i1 %cmp, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.else
  %file_version = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 14
  store i32 0, i32* %file_version, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %if.else
  %arrayidx23 = getelementptr inbounds [14 x i8], [14 x i8]* %id, i32 0, i64 9
  %17 = load i8, i8* %arrayidx23, align 1
  %conv = sext i8 %17 to i32
  %cmp24 = icmp eq i32 %conv, 118
  br i1 %cmp24, label %if.then.26, label %if.else.31

if.then.26:                                       ; preds = %if.else.22
  %arraydecay27 = getelementptr inbounds [14 x i8], [14 x i8]* %id, i32 0, i32 0
  %add.ptr28 = getelementptr inbounds i8, i8* %arraydecay27, i64 10
  %call29 = call i32 @atoi(i8* %add.ptr28) #6
  %file_version30 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 14
  store i32 %call29, i32* %file_version30, align 4
  br label %if.end.32

if.else.31:                                       ; preds = %if.else.22
  store i32 0, i32* %success, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.then.26
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.18
  %18 = load i32, i32* %success, align 4
  %tobool35 = icmp ne i32 %18, 0
  br i1 %tobool35, label %if.then.36, label %if.end.56

if.then.36:                                       ; preds = %if.end.34
  %file_version37 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 14
  %19 = load i32, i32* %file_version37, align 4
  %cmp38 = icmp sge i32 %19, 0
  br i1 %cmp38, label %land.lhs.true, label %if.else.51

land.lhs.true:                                    ; preds = %if.then.36
  %file_version40 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 14
  %20 = load i32, i32* %file_version40, align 4
  %conv41 = sext i32 %20 to i64
  %cmp42 = icmp ult i64 %conv41, 4
  br i1 %cmp42, label %if.then.44, label %if.else.51

if.then.44:                                       ; preds = %land.lhs.true
  %file_version45 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 14
  %21 = load i32, i32* %file_version45, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx46 = getelementptr inbounds [4 x %struct._GimpImage* (%struct._Gimp*, %struct._XcfInfo*, %struct._GError**)*], [4 x %struct._GimpImage* (%struct._Gimp*, %struct._XcfInfo*, %struct._GError**)*]* @xcf_loaders, i32 0, i64 %idxprom
  %22 = load %struct._GimpImage* (%struct._Gimp*, %struct._XcfInfo*, %struct._GError**)*, %struct._GimpImage* (%struct._Gimp*, %struct._XcfInfo*, %struct._GError**)** %arrayidx46, align 8
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call47 = call %struct._GimpImage* %22(%struct._Gimp* %23, %struct._XcfInfo* %info, %struct._GError** %24)
  store %struct._GimpImage* %call47, %struct._GimpImage** %image, align 8
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool48 = icmp ne %struct._GimpImage* %25, null
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.then.44
  store i32 0, i32* %success, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.then.44
  br label %if.end.55

if.else.51:                                       ; preds = %land.lhs.true, %if.then.36
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call52 = call i32 @g_file_error_quark()
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.38, i32 0, i32 0)) #7
  %file_version54 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 14
  %27 = load i32, i32* %file_version54, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %26, i32 %call52, i32 24, i8* %call53, i32 %27)
  store i32 0, i32* %success, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.51, %if.end.50
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.34
  %fp57 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %info, i32 0, i32 2
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp57, align 8
  %call58 = call i32 @fclose(%struct._IO_FILE* %28)
  %29 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool59 = icmp ne %struct._GimpProgress* %29, null
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.56
  %30 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %30)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.56
  br label %if.end.69

if.else.62:                                       ; preds = %entry
  %call63 = call i32* @__errno_location() #5
  %31 = load i32, i32* %call63, align 4
  store i32 %31, i32* %save_errno, align 4
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call64 = call i32 @g_file_error_quark()
  %33 = load i32, i32* %save_errno, align 4
  %call65 = call i32 @g_file_error_from_errno(i32 %33)
  %call66 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0)) #7
  %34 = load i8*, i8** %filename, align 8
  %call67 = call i8* @gimp_filename_to_utf8(i8* %34)
  %35 = load i32, i32* %save_errno, align 4
  %call68 = call i8* @g_strerror(i32 %35) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %32, i32 %call64, i32 %call65, i8* %call66, i8* %call67, i8* %call68)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.62, %if.end.61
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %37 = load i32, i32* %success, align 4
  %38 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool70 = icmp ne %struct._GError** %38, null
  br i1 %tobool70, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.69
  %39 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %40 = load %struct._GError*, %struct._GError** %39, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.69
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %40, %cond.true ], [ null, %cond.false ]
  %call71 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %36, i32 %37, %struct._GError* %cond)
  store %struct._GValueArray* %call71, %struct._GValueArray** %return_vals, align 8
  %41 = load i32, i32* %success, align 4
  %tobool72 = icmp ne i32 %41, 0
  br i1 %tobool72, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %cond.end
  %42 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values74 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %42, i32 0, i32 1
  %43 = load %struct._GValue*, %struct._GValue** %values74, align 8
  %arrayidx75 = getelementptr inbounds %struct._GValue, %struct._GValue* %43, i64 1
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_value_set_image(%struct._GValue* %arrayidx75, %struct._GimpImage* %44)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %cond.end
  %45 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_unset_busy(%struct._Gimp* %45)
  %46 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %46
}

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #3

; Function Attrs: nounwind uwtable
define void @xcf_exit(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.xcf_exit, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %do.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.else.9, %if.end.10
  ret void
}

declare void @gimp_set_busy(%struct._Gimp*) #3

declare i8* @g_value_get_string(%struct._GValue*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare noalias i8* @g_filename_display_name(i8*) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #3

declare void @g_free(i8*) #3

declare i32 @xcf_read_int8(%struct._IO_FILE*, i8*, i32) #3

declare i32 @g_str_has_prefix(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #3

declare i32 @g_file_error_quark() #3

declare i32 @fclose(%struct._IO_FILE*) #3

declare void @gimp_progress_end(%struct._GimpProgress*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #1

declare i32 @g_file_error_from_errno(i32) #3

declare i8* @gimp_filename_to_utf8(i8*) #3

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #3

declare void @gimp_value_set_image(%struct._GValue*, %struct._GimpImage*) #3

declare void @gimp_unset_busy(%struct._Gimp*) #3

declare %struct._GimpImage* @xcf_load_image(%struct._Gimp*, %struct._XcfInfo*, %struct._GError**) #3

declare %struct._GimpImage* @gimp_value_get_image(%struct._GValue*, %struct._Gimp*) #3

declare void @xcf_save_choose_format(%struct._XcfInfo*, %struct._GimpImage*) #3

declare i32 @xcf_save_image(%struct._XcfInfo*, %struct._GimpImage*, %struct._GError**) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
