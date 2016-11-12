; ModuleID = './app/pdb/fileops-cmds.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GHashTable = type opaque
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpParamSpecEnum = type { %struct._GParamSpecEnum, %struct._GSList* }
%struct._GParamSpecEnum = type { %struct._GParamSpec, %struct._GEnumClass*, i32 }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpPlugInProcedure = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GdkPixbuf = type opaque

@.str = private unnamed_addr constant [15 x i8] c"gimp-file-load\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Loads an image file by invoking the right load handler.\00", align 1
@.str.2 = private unnamed_addr constant [431 x i8] c"This procedure invokes the correct file load handler using magic if possible, and falling back on the file's extension and/or prefix if not. The name of the file to load is typically a full pathname, and the name entered is what the user actually typed before prepending a directory path. The reason for this is that if the user types http://www.xcf/~gimp/ he wants to fetch a URL, and the full pathname will not look like a URL.\22\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Josh MacDonald\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"run mode\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"The run mode\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"The name of the file to load\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"raw filename\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"The name as entered by the user\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"The output image\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"gimp-file-load-layer\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"Loads an image file as a layer for an existing image.\00", align 1
@.str.17 = private unnamed_addr constant [207 x i8] c"This procedure behaves like the file-load procedure but opens the specified image as a layer for an existing image. The returned layer needs to be added to the existing image with 'gimp-image-insert-layer'.\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Sven Neumann <sven@gimp.org>\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Sven Neumann\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"2005\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"Destination image\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"The layer created when loading the image file\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"gimp-file-load-layers\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"Loads an image file as layers for an existing image.\00", align 1
@.str.26 = private unnamed_addr constant [207 x i8] c"This procedure behaves like the file-load procedure but opens the specified image as layers for an existing image. The returned layers needs to be added to the existing image with 'gimp-image-insert-layer'.\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"Michael Natterer <mitch@gimp.org>\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Michael Natterer\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"2006\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"num-layers\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"num layers\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"The number of loaded layers\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"layer-ids\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"layer ids\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"The list of loaded layers\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"gimp-file-save\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"Saves a file by extension.\00", align 1
@.str.38 = private unnamed_addr constant [392 x i8] c"This procedure invokes the correct file save handler according to the file's extension and/or prefix. The name of the file to save is typically a full pathname, and the name entered is what the user actually typed before prepending a directory path. The reason for this is that if the user types http://www.xcf/~gimp/ she wants to fetch a URL, and the full pathname will not look like a URL.\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"gimp-file-load-thumbnail\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"Loads the thumbnail for a file.\00", align 1
@.str.45 = private unnamed_addr constant [369 x i8] c"This procedure tries to load a thumbnail that belongs to the file with the given filename. This name is a full pathname. The returned data is an array of colordepth 3 (RGB), regardless of the image type. Width and height of the thumbnail are also returned. Don't use this function if you need a thumbnail of an already opened image, use 'gimp-image-thumbnail' instead.\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"Adam D. Moss, Sven Neumann\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"1999-2003\00", align 1
@.str.48 = private unnamed_addr constant [53 x i8] c"The name of the file that owns the thumbnail to load\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"The width of the thumbnail\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"The height of the thumbnail\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"thumb-data-count\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"thumb data count\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"The number of bytes in thumbnail data\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"thumb-data\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"thumb data\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"The thumbnail data\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"gimp-file-save-thumbnail\00", align 1
@.str.60 = private unnamed_addr constant [38 x i8] c"Saves a thumbnail for the given image\00", align 1
@.str.61 = private unnamed_addr constant [378 x i8] c"This procedure saves a thumbnail for the given image according to the Free Desktop Thumbnail Managing Standard. The thumbnail is saved so that it belongs to the file with the given filename. This means you have to save the image under this name first, otherwise this procedure will fail. This procedure may become useful if you want to explicitely save a thumbnail with a file.\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"The image\00", align 1
@.str.63 = private unnamed_addr constant [46 x i8] c"The name of the file the thumbnail belongs to\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"gimp-temp-name\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"Generates a unique filename.\00", align 1
@.str.66 = private unnamed_addr constant [79 x i8] c"Generates a unique filename using the temp path supplied in the user's gimprc.\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"extension\00", align 1
@.str.68 = private unnamed_addr constant [33 x i8] c"The extension the file will have\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"The new temp filename\00", align 1
@.str.71 = private unnamed_addr constant [33 x i8] c"gimp-register-magic-load-handler\00", align 1
@.str.72 = private unnamed_addr constant [41 x i8] c"Registers a file load handler procedure.\00", align 1
@.str.73 = private unnamed_addr constant [127 x i8] c"Registers a procedural database procedure to be called to load files of a particular file format using magic file information.\00", align 1
@.str.74 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"1995-1996\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"procedure-name\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"procedure name\00", align 1
@.str.78 = private unnamed_addr constant [49 x i8] c"The name of the procedure to be used for loading\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"extensions\00", align 1
@.str.80 = private unnamed_addr constant [75 x i8] c"comma separated list of extensions this handler can load (i.e. \22jpg,jpeg\22)\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"prefixes\00", align 1
@.str.82 = private unnamed_addr constant [75 x i8] c"comma separated list of prefixes this handler can load (i.e. \22http:,ftp:\22)\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"magics\00", align 1
@.str.84 = private unnamed_addr constant [91 x i8] c"comma separated list of magic file information this handler can load (i.e. \220,string,GIF\22)\00", align 1
@.str.85 = private unnamed_addr constant [27 x i8] c"gimp-register-load-handler\00", align 1
@.str.86 = private unnamed_addr constant [98 x i8] c"Registers a procedural database procedure to be called to load files of a particular file format.\00", align 1
@.str.87 = private unnamed_addr constant [27 x i8] c"gimp-register-save-handler\00", align 1
@.str.88 = private unnamed_addr constant [41 x i8] c"Registers a file save handler procedure.\00", align 1
@.str.89 = private unnamed_addr constant [98 x i8] c"Registers a procedural database procedure to be called to save files in a particular file format.\00", align 1
@.str.90 = private unnamed_addr constant [48 x i8] c"The name of the procedure to be used for saving\00", align 1
@.str.91 = private unnamed_addr constant [75 x i8] c"comma separated list of extensions this handler can save (i.e. \22jpg,jpeg\22)\00", align 1
@.str.92 = private unnamed_addr constant [75 x i8] c"comma separated list of prefixes this handler can save (i.e. \22http:,ftp:\22)\00", align 1
@.str.93 = private unnamed_addr constant [32 x i8] c"gimp-register-file-handler-mime\00", align 1
@.str.94 = private unnamed_addr constant [54 x i8] c"Associates a MIME type with a file handler procedure.\00", align 1
@.str.95 = private unnamed_addr constant [146 x i8] c"Registers a MIME type for a file handler procedure. This allows GIMP to determine the MIME type of the file opened or saved using this procedure.\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"2004\00", align 1
@.str.97 = private unnamed_addr constant [57 x i8] c"The name of the procedure to associate a MIME type with.\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"mime-type\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"mime type\00", align 1
@.str.100 = private unnamed_addr constant [51 x i8] c"A single MIME type, like for example \22image/jpeg\22.\00", align 1
@.str.101 = private unnamed_addr constant [31 x i8] c"gimp-register-thumbnail-loader\00", align 1
@.str.102 = private unnamed_addr constant [58 x i8] c"Associates a thumbnail loader with a file load procedure.\00", align 1
@.str.103 = private unnamed_addr constant [358 x i8] c"Some file formats allow for embedded thumbnails, other file formats contain a scalable image or provide the image data in different resolutions. A file plug-in for such a format may register a special procedure that allows GIMP to load a thumbnail preview of the image. This procedure is then associated with the standard load procedure using this function.\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"load-proc\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"load proc\00", align 1
@.str.106 = private unnamed_addr constant [53 x i8] c"The name of the procedure the thumbnail loader with.\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"thumb-proc\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"thumb proc\00", align 1
@.str.109 = private unnamed_addr constant [42 x i8] c"The name of the thumbnail load procedure.\00", align 1
@g_param_spec_types = external global i64*, align 8
@.str.110 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define void @register_fileops_procs(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @file_load_invoker)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([431 x i8], [431 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call3 = call i64 @gimp_run_mode_get_type() #4
  %call4 = call %struct._GParamSpec* @gimp_param_spec_enum(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i64 %call3, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %4, %struct._GParamSpec* %call4)
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %5, i32 0, i32 11
  %6 = load %struct._GParamSpec**, %struct._GParamSpec*** %args, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %6, i64 0
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %8 = bitcast %struct._GParamSpec* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_param_enum_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpParamSpecEnum*
  call void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum* %9, i32 2)
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call7 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %10, %struct._GParamSpec* %call7)
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call8 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %11, %struct._GParamSpec* %call8)
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %13 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %13, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call9 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), %struct._Gimp* %14, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %12, %struct._GParamSpec* %call9)
  %15 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %15, %struct._GimpProcedure* %16)
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %18 = bitcast %struct._GimpProcedure* %17 to i8*
  call void @g_object_unref(i8* %18)
  %call10 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @file_load_layer_invoker)
  store %struct._GimpProcedure* %call10, %struct._GimpProcedure** %procedure, align 8
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %20 = bitcast %struct._GimpProcedure* %19 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_object_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call11)
  %21 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0))
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* null)
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call13 = call i64 @gimp_run_mode_get_type() #4
  %call14 = call %struct._GParamSpec* @gimp_param_spec_enum(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i64 %call13, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %23, %struct._GParamSpec* %call14)
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args15 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %24, i32 0, i32 11
  %25 = load %struct._GParamSpec**, %struct._GParamSpec*** %args15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %25, i64 0
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx16, align 8
  %27 = bitcast %struct._GParamSpec* %26 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_param_enum_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call17)
  %28 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpParamSpecEnum*
  call void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum* %28, i32 2)
  %29 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %30 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp19 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %30, i32 0, i32 1
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp19, align 8
  %call20 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %31, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %29, %struct._GParamSpec* %call20)
  %32 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call21 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %32, %struct._GParamSpec* %call21)
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %34 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp22 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %34, i32 0, i32 1
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp22, align 8
  %call23 = call %struct._GParamSpec* @gimp_param_spec_layer_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i32 0, i32 0), %struct._Gimp* %35, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %33, %struct._GParamSpec* %call23)
  %36 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %36, %struct._GimpProcedure* %37)
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %39 = bitcast %struct._GimpProcedure* %38 to i8*
  call void @g_object_unref(i8* %39)
  %call24 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @file_load_layers_invoker)
  store %struct._GimpProcedure* %call24, %struct._GimpProcedure** %procedure, align 8
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %41 = bitcast %struct._GimpProcedure* %40 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_object_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call25)
  %42 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0))
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* null)
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call27 = call i64 @gimp_run_mode_get_type() #4
  %call28 = call %struct._GParamSpec* @gimp_param_spec_enum(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i64 %call27, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %44, %struct._GParamSpec* %call28)
  %45 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args29 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %45, i32 0, i32 11
  %46 = load %struct._GParamSpec**, %struct._GParamSpec*** %args29, align 8
  %arrayidx30 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %46, i64 0
  %47 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx30, align 8
  %48 = bitcast %struct._GParamSpec* %47 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_param_enum_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call31)
  %49 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpParamSpecEnum*
  call void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum* %49, i32 2)
  %50 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %51 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp33 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %51, i32 0, i32 1
  %52 = load %struct._Gimp*, %struct._Gimp** %gimp33, align 8
  %call34 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), %struct._Gimp* %52, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %50, %struct._GParamSpec* %call34)
  %53 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call35 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %53, %struct._GParamSpec* %call35)
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call36 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %54, %struct._GParamSpec* %call36)
  %55 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call37 = call %struct._GParamSpec* @gimp_param_spec_int32_array(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %55, %struct._GParamSpec* %call37)
  %56 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %57 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %56, %struct._GimpProcedure* %57)
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %59 = bitcast %struct._GimpProcedure* %58 to i8*
  call void @g_object_unref(i8* %59)
  %call38 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @file_save_invoker)
  store %struct._GimpProcedure* %call38, %struct._GimpProcedure** %procedure, align 8
  %60 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %61 = bitcast %struct._GimpProcedure* %60 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_object_get_type() #4
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call39)
  %62 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0))
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([392 x i8], [392 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %64 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call41 = call i64 @gimp_run_mode_get_type() #4
  %call42 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i64 %call41, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %64, %struct._GParamSpec* %call42)
  %65 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %66 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp43 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %66, i32 0, i32 1
  %67 = load %struct._Gimp*, %struct._Gimp** %gimp43, align 8
  %call44 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), %struct._Gimp* %67, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %65, %struct._GParamSpec* %call44)
  %68 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %69 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp45 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %69, i32 0, i32 1
  %70 = load %struct._Gimp*, %struct._Gimp** %gimp45, align 8
  %call46 = call %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), %struct._Gimp* %70, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %68, %struct._GParamSpec* %call46)
  %71 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call47 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.42, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %71, %struct._GParamSpec* %call47)
  %72 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call48 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %72, %struct._GParamSpec* %call48)
  %73 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %74 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %73, %struct._GimpProcedure* %74)
  %75 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %76 = bitcast %struct._GimpProcedure* %75 to i8*
  call void @g_object_unref(i8* %76)
  %call49 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @file_load_thumbnail_invoker)
  store %struct._GimpProcedure* %call49, %struct._GimpProcedure** %procedure, align 8
  %77 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %78 = bitcast %struct._GimpProcedure* %77 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_object_get_type() #4
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call50)
  %79 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i32 0, i32 0))
  %80 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([369 x i8], [369 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* null)
  %81 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call52 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.48, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %81, %struct._GParamSpec* %call52)
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call53 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %82, %struct._GParamSpec* %call53)
  %83 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call54 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.52, i32 0, i32 0), i32 -2147483648, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %83, %struct._GParamSpec* %call54)
  %84 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call55 = call %struct._GParamSpec* @gimp_param_spec_int32(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.55, i32 0, i32 0), i32 0, i32 2147483647, i32 0, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %84, %struct._GParamSpec* %call55)
  %85 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call56 = call %struct._GParamSpec* @gimp_param_spec_int8_array(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %85, %struct._GParamSpec* %call56)
  %86 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %87 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %86, %struct._GimpProcedure* %87)
  %88 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %89 = bitcast %struct._GimpProcedure* %88 to i8*
  call void @g_object_unref(i8* %89)
  %call57 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @file_save_thumbnail_invoker)
  store %struct._GimpProcedure* %call57, %struct._GimpProcedure** %procedure, align 8
  %90 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %91 = bitcast %struct._GimpProcedure* %90 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_object_get_type() #4
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call58)
  %92 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.59, i32 0, i32 0))
  %93 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([378 x i8], [378 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %94 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %95 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %gimp60 = getelementptr inbounds %struct._GimpPDB, %struct._GimpPDB* %95, i32 0, i32 1
  %96 = load %struct._Gimp*, %struct._Gimp** %gimp60, align 8
  %call61 = call %struct._GParamSpec* @gimp_param_spec_image_id(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), %struct._Gimp* %96, i32 0, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %94, %struct._GParamSpec* %call61)
  %97 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call62 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.63, i32 0, i32 0), i32 1, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %97, %struct._GParamSpec* %call62)
  %98 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %99 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %98, %struct._GimpProcedure* %99)
  %100 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %101 = bitcast %struct._GimpProcedure* %100 to i8*
  call void @g_object_unref(i8* %101)
  %call63 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @temp_name_invoker)
  store %struct._GimpProcedure* %call63, %struct._GimpProcedure** %procedure, align 8
  %102 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %103 = bitcast %struct._GimpProcedure* %102 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_object_get_type() #4
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call64)
  %104 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0))
  %105 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %105, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %106 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call66 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.68, i32 0, i32 0), i32 1, i32 1, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %106, %struct._GParamSpec* %call66)
  %107 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call67 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %107, %struct._GParamSpec* %call67)
  %108 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %109 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %108, %struct._GimpProcedure* %109)
  %110 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %111 = bitcast %struct._GimpProcedure* %110 to i8*
  call void @g_object_unref(i8* %111)
  %call68 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @register_magic_load_handler_invoker)
  store %struct._GimpProcedure* %call68, %struct._GimpProcedure** %procedure, align 8
  %112 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %113 = bitcast %struct._GimpProcedure* %112 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_object_get_type() #4
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call69)
  %114 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.71, i32 0, i32 0))
  %115 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i8* null)
  %116 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call71 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.78, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %116, %struct._GParamSpec* %call71)
  %117 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call72 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.80, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 16611)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %117, %struct._GParamSpec* %call72)
  %118 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call73 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.82, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 16611)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %118, %struct._GParamSpec* %call73)
  %119 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call74 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.84, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 16611)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %119, %struct._GParamSpec* %call74)
  %120 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %121 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %120, %struct._GimpProcedure* %121)
  %122 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %123 = bitcast %struct._GimpProcedure* %122 to i8*
  call void @g_object_unref(i8* %123)
  %call75 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @register_load_handler_invoker)
  store %struct._GimpProcedure* %call75, %struct._GimpProcedure** %procedure, align 8
  %124 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %125 = bitcast %struct._GimpProcedure* %124 to %struct._GTypeInstance*
  %call76 = call i64 @gimp_object_get_type() #4
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call76)
  %126 = bitcast %struct._GTypeInstance* %call77 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.85, i32 0, i32 0))
  %127 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i8* null)
  %128 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call78 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.78, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %128, %struct._GParamSpec* %call78)
  %129 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call79 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.80, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 16611)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %129, %struct._GParamSpec* %call79)
  %130 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call80 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.82, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 16611)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %130, %struct._GParamSpec* %call80)
  %131 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %132 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %131, %struct._GimpProcedure* %132)
  %133 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %134 = bitcast %struct._GimpProcedure* %133 to i8*
  call void @g_object_unref(i8* %134)
  %call81 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @register_save_handler_invoker)
  store %struct._GimpProcedure* %call81, %struct._GimpProcedure** %procedure, align 8
  %135 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %136 = bitcast %struct._GimpProcedure* %135 to %struct._GTypeInstance*
  %call82 = call i64 @gimp_object_get_type() #4
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call82)
  %137 = bitcast %struct._GTypeInstance* %call83 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %137, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.87, i32 0, i32 0))
  %138 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %138, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i8* null)
  %139 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call84 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.90, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %139, %struct._GParamSpec* %call84)
  %140 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call85 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.91, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 16611)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %140, %struct._GParamSpec* %call85)
  %141 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call86 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.92, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 16611)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %141, %struct._GParamSpec* %call86)
  %142 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %143 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %142, %struct._GimpProcedure* %143)
  %144 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %145 = bitcast %struct._GimpProcedure* %144 to i8*
  call void @g_object_unref(i8* %145)
  %call87 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @register_file_handler_mime_invoker)
  store %struct._GimpProcedure* %call87, %struct._GimpProcedure** %procedure, align 8
  %146 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %147 = bitcast %struct._GimpProcedure* %146 to %struct._GTypeInstance*
  %call88 = call i64 @gimp_object_get_type() #4
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call88)
  %148 = bitcast %struct._GTypeInstance* %call89 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %148, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.93, i32 0, i32 0))
  %149 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %149, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i32 0, i32 0), i8* null)
  %150 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call90 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.97, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %150, %struct._GParamSpec* %call90)
  %151 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call91 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.100, i32 0, i32 0), i32 0, i32 0, i32 0, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %151, %struct._GParamSpec* %call91)
  %152 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %153 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %152, %struct._GimpProcedure* %153)
  %154 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %155 = bitcast %struct._GimpProcedure* %154 to i8*
  call void @g_object_unref(i8* %155)
  %call92 = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @register_thumbnail_loader_invoker)
  store %struct._GimpProcedure* %call92, %struct._GimpProcedure** %procedure, align 8
  %156 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %157 = bitcast %struct._GimpProcedure* %156 to %struct._GTypeInstance*
  %call93 = call i64 @gimp_object_get_type() #4
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %157, i64 %call93)
  %158 = bitcast %struct._GTypeInstance* %call94 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %158, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.101, i32 0, i32 0))
  %159 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %159, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([358 x i8], [358 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i32 0, i32 0), i8* null)
  %160 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call95 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.106, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %160, %struct._GParamSpec* %call95)
  %161 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call96 = call %struct._GParamSpec* @gimp_param_spec_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.109, i32 0, i32 0), i32 0, i32 0, i32 1, i8* null, i32 227)
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %161, %struct._GParamSpec* %call96)
  %162 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %163 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_pdb_register_procedure(%struct._GimpPDB* %162, %struct._GimpProcedure* %163)
  %164 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %165 = bitcast %struct._GimpProcedure* %164 to i8*
  call void @g_object_unref(i8* %165)
  ret void
}

declare %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @file_load_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GValueArray*, align 8
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %new_args = alloca %struct._GValueArray*, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %file_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %proc = alloca %struct._GimpProcedure*, align 8
  %uri = alloca i8*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__val = alloca %struct._GValue*, align 8
  %__t60 = alloca i64, align 8
  %__r63 = alloca i32, align 4
  %tmp74 = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %1, i32 0, i32 1
  %2 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i64 1
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i8* @file_utils_filename_to_uri(%struct._Gimp* %0, i8* %call, %struct._GError** %3)
  store i8* %call1, i8** %uri, align 8
  %4 = load i8*, i8** %uri, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool2 = icmp ne %struct._GError** %6, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %8 = load %struct._GError*, %struct._GError** %7, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %8, %cond.true ], [ null, %cond.false ]
  %call3 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %5, i32 0, %struct._GError* %cond)
  store %struct._GValueArray* %call3, %struct._GValueArray** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %9, i32 0, i32 25
  %10 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %load_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %10, i32 0, i32 5
  %11 = load %struct._GSList*, %struct._GSList** %load_procs, align 8
  %12 = load i8*, i8** %uri, align 8
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList* %11, i8* %12, %struct._GError** %13)
  store %struct._GimpPlugInProcedure* %call4, %struct._GimpPlugInProcedure** %file_proc, align 8
  %14 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %14)
  %15 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %tobool5 = icmp ne %struct._GimpPlugInProcedure* %15, null
  br i1 %tobool5, label %if.end.13, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool7 = icmp ne %struct._GError** %17, null
  br i1 %tobool7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %if.then.6
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %19 = load %struct._GError*, %struct._GError** %18, align 8
  br label %cond.end.10

cond.false.9:                                     ; preds = %if.then.6
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.8
  %cond11 = phi %struct._GError* [ %19, %cond.true.8 ], [ null, %cond.false.9 ]
  %call12 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %16, i32 0, %struct._GError* %cond11)
  store %struct._GValueArray* %call12, %struct._GValueArray** %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  %20 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %21 = bitcast %struct._GimpPlugInProcedure* %20 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_procedure_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call14)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpProcedure*
  store %struct._GimpProcedure* %22, %struct._GimpProcedure** %proc, align 8
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %proc, align 8
  %call16 = call %struct._GValueArray* @gimp_procedure_get_arguments(%struct._GimpProcedure* %23)
  store %struct._GValueArray* %call16, %struct._GValueArray** %new_args, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %24 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %24, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values17 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %26, i32 0, i32 1
  %27 = load %struct._GValue*, %struct._GValue** %values17, align 8
  %arrayidx18 = getelementptr inbounds %struct._GValue, %struct._GValue* %27, i64 %idxprom
  %28 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %28 to i64
  %29 = load %struct._GValueArray*, %struct._GValueArray** %new_args, align 8
  %values20 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %29, i32 0, i32 1
  %30 = load %struct._GValue*, %struct._GValue** %values20, align 8
  %arrayidx21 = getelementptr inbounds %struct._GValue, %struct._GValue* %30, i64 %idxprom19
  %call22 = call i32 @g_value_transform(%struct._GValue* %arrayidx18, %struct._GValue* %arrayidx21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 3, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.46, %for.end
  %32 = load i32, i32* %i, align 4
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %proc, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %33, i32 0, i32 10
  %34 = load i32, i32* %num_args, align 4
  %cmp24 = icmp slt i32 %32, %34
  br i1 %cmp24, label %for.body.25, label %for.end.48

for.body.25:                                      ; preds = %for.cond.23
  %35 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %35 to i64
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %proc, align 8
  %args27 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %36, i32 0, i32 11
  %37 = load %struct._GParamSpec**, %struct._GParamSpec*** %args27, align 8
  %arrayidx28 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %37, i64 %idxprom26
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx28, align 8
  %39 = bitcast %struct._GParamSpec* %38 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %39, %struct._GTypeInstance** %__inst, align 8
  %40 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx29 = getelementptr inbounds i64, i64* %40, i64 14
  %41 = load i64, i64* %arrayidx29, align 8
  store i64 %41, i64* %__t, align 8
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool30 = icmp ne %struct._GTypeInstance* %42, null
  br i1 %tobool30, label %if.else, label %if.then.31

if.then.31:                                       ; preds = %for.body.25
  store i32 0, i32* %__r, align 4
  br label %if.end.39

if.else:                                          ; preds = %for.body.25
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %44, null
  br i1 %tobool32, label %land.lhs.true, label %if.else.36

land.lhs.true:                                    ; preds = %if.else
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class33 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class33, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type, align 8
  %48 = load i64, i64* %__t, align 8
  %cmp34 = icmp eq i64 %47, %48
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true, %if.else
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %50 = load i64, i64* %__t, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %49, i64 %50) #5
  store i32 %call37, i32* %__r, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.31
  %51 = load i32, i32* %__r, align 4
  store i32 %51, i32* %tmp
  %52 = load i32, i32* %tmp
  %tobool40 = icmp ne i32 %52, 0
  br i1 %tobool40, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %if.end.39
  %53 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %53 to i64
  %54 = load %struct._GValueArray*, %struct._GValueArray** %new_args, align 8
  %values43 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %54, i32 0, i32 1
  %55 = load %struct._GValue*, %struct._GValue** %values43, align 8
  %arrayidx44 = getelementptr inbounds %struct._GValue, %struct._GValue* %55, i64 %idxprom42
  call void @g_value_set_static_string(%struct._GValue* %arrayidx44, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i32 0, i32 0))
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %if.end.39
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %56 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %56, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond.23

for.end.48:                                       ; preds = %for.cond.23
  %57 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %57, i32 0, i32 44
  %58 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %59 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %60 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %61 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %62 = load %struct._GimpProcedure*, %struct._GimpProcedure** %proc, align 8
  %63 = bitcast %struct._GimpProcedure* %62 to i8*
  %call49 = call i8* @gimp_object_get_name(i8* %63)
  %64 = load %struct._GValueArray*, %struct._GValueArray** %new_args, align 8
  %call50 = call %struct._GValueArray* @gimp_pdb_execute_procedure_by_name_args(%struct._GimpPDB* %58, %struct._GimpContext* %59, %struct._GimpProgress* %60, %struct._GError** %61, i8* %call49, %struct._GValueArray* %64)
  store %struct._GValueArray* %call50, %struct._GValueArray** %return_vals, align 8
  %65 = load %struct._GValueArray*, %struct._GValueArray** %new_args, align 8
  call void @g_value_array_free(%struct._GValueArray* %65)
  %66 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values51 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %66, i32 0, i32 1
  %67 = load %struct._GValue*, %struct._GValue** %values51, align 8
  %call52 = call i32 @g_value_get_enum(%struct._GValue* %67)
  %cmp53 = icmp eq i32 %call52, 3
  br i1 %cmp53, label %if.then.54, label %if.end.82

if.then.54:                                       ; preds = %for.end.48
  %68 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %68, i32 0, i32 0
  %69 = load i32, i32* %n_values, align 4
  %cmp55 = icmp ugt i32 %69, 1
  br i1 %cmp55, label %land.lhs.true.56, label %if.end.81

land.lhs.true.56:                                 ; preds = %if.then.54
  %70 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values58 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %70, i32 0, i32 1
  %71 = load %struct._GValue*, %struct._GValue** %values58, align 8
  %add.ptr = getelementptr inbounds %struct._GValue, %struct._GValue* %71, i64 1
  store %struct._GValue* %add.ptr, %struct._GValue** %__val, align 8
  %call61 = call i64 @gimp_image_id_get_type() #4
  store i64 %call61, i64* %__t60, align 8
  %72 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool64 = icmp ne %struct._GValue* %72, null
  br i1 %tobool64, label %if.else.66, label %if.then.65

if.then.65:                                       ; preds = %land.lhs.true.56
  store i32 0, i32* %__r63, align 4
  br label %if.end.73

if.else.66:                                       ; preds = %land.lhs.true.56
  %73 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type67 = getelementptr inbounds %struct._GValue, %struct._GValue* %73, i32 0, i32 0
  %74 = load i64, i64* %g_type67, align 8
  %75 = load i64, i64* %__t60, align 8
  %cmp68 = icmp eq i64 %74, %75
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %if.else.66
  store i32 1, i32* %__r63, align 4
  br label %if.end.72

if.else.70:                                       ; preds = %if.else.66
  %76 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %77 = load i64, i64* %__t60, align 8
  %call71 = call i32 @g_type_check_value_holds(%struct._GValue* %76, i64 %77) #5
  store i32 %call71, i32* %__r63, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.70, %if.then.69
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.65
  %78 = load i32, i32* %__r63, align 4
  store i32 %78, i32* %tmp74
  %79 = load i32, i32* %tmp74
  %tobool75 = icmp ne i32 %79, 0
  br i1 %tobool75, label %if.then.76, label %if.end.81

if.then.76:                                       ; preds = %if.end.73
  %80 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values78 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %80, i32 0, i32 1
  %81 = load %struct._GValue*, %struct._GValue** %values78, align 8
  %add.ptr79 = getelementptr inbounds %struct._GValue, %struct._GValue* %81, i64 1
  %82 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call80 = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %add.ptr79, %struct._Gimp* %82)
  store %struct._GimpImage* %call80, %struct._GimpImage** %image, align 8
  %83 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %84 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  call void @gimp_image_set_load_proc(%struct._GimpImage* %83, %struct._GimpPlugInProcedure* %84)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.76, %if.end.73, %if.then.54
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %for.end.48
  %85 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  store %struct._GValueArray* %85, %struct._GValueArray** %retval
  br label %return

return:                                           ; preds = %if.end.82, %cond.end.10, %cond.end
  %86 = load %struct._GValueArray*, %struct._GValueArray** %retval
  ret %struct._GValueArray* %86
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_procedure_set_static_strings(%struct._GimpProcedure*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_run_mode_get_type() #2

declare void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_enum_get_type() #2

declare %struct._GParamSpec* @gimp_param_spec_string(i8*, i8*, i8*, i32, i32, i32, i8*, i32) #1

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_image_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

declare void @gimp_pdb_register_procedure(%struct._GimpPDB*, %struct._GimpProcedure*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @file_load_layer_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %run_mode = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %filename = alloca i8*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %uri = alloca i8*, align 8
  %layers = alloca %struct._GList*, align 8
  %status = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store %struct._GimpLayer* null, %struct._GimpLayer** %layer, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i32 @g_value_get_enum(%struct._GValue* %arrayidx)
  store i32 %call, i32* %run_mode, align 4
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx2, %struct._Gimp* %4)
  store %struct._GimpImage* %call3, %struct._GimpImage** %image, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i8* @g_value_get_string(%struct._GValue* %arrayidx5)
  store i8* %call6, i8** %filename, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %9 = load i8*, i8** %filename, align 8
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i8* @file_utils_filename_to_uri(%struct._Gimp* %8, i8* %9, %struct._GError** %10)
  store i8* %call7, i8** %uri, align 8
  %11 = load i8*, i8** %uri, align 8
  %tobool8 = icmp ne i8* %11, null
  br i1 %tobool8, label %if.then.9, label %if.else.13

if.then.9:                                        ; preds = %if.then
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %16 = load i8*, i8** %uri, align 8
  %17 = load i32, i32* %run_mode, align 4
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call %struct._GList* @file_open_layers(%struct._Gimp* %12, %struct._GimpContext* %13, %struct._GimpProgress* %14, %struct._GimpImage* %15, i32 0, i8* %16, i32 %17, %struct._GimpPlugInProcedure* null, i32* %status, %struct._GError** %18)
  store %struct._GList* %call10, %struct._GList** %layers, align 8
  %19 = load %struct._GList*, %struct._GList** %layers, align 8
  %tobool11 = icmp ne %struct._GList* %19, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.9
  %20 = load %struct._GList*, %struct._GList** %layers, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %22 = bitcast i8* %21 to %struct._GimpLayer*
  store %struct._GimpLayer* %22, %struct._GimpLayer** %layer, align 8
  %23 = load %struct._GList*, %struct._GList** %layers, align 8
  call void @g_list_free(%struct._GList* %23)
  br label %if.end

if.else:                                          ; preds = %if.then.9
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %if.end.14

if.else.13:                                       ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %25 = load i32, i32* %success, align 4
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool16 = icmp ne %struct._GError** %26, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %28 = load %struct._GError*, %struct._GError** %27, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %28, %cond.true ], [ null, %cond.false ]
  %call17 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %24, i32 %25, %struct._GError* %cond)
  store %struct._GValueArray* %call17, %struct._GValueArray** %return_vals, align 8
  %29 = load i32, i32* %success, align 4
  %tobool18 = icmp ne i32 %29, 0
  br i1 %tobool18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %cond.end
  %30 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values20 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %30, i32 0, i32 1
  %31 = load %struct._GValue*, %struct._GValue** %values20, align 8
  %arrayidx21 = getelementptr inbounds %struct._GValue, %struct._GValue* %31, i64 1
  %32 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_value_set_layer(%struct._GValue* %arrayidx21, %struct._GimpLayer* %32)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %cond.end
  %33 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %33
}

declare %struct._GParamSpec* @gimp_param_spec_layer_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @file_load_layers_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %run_mode = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %filename = alloca i8*, align 8
  %num_layers = alloca i32, align 4
  %layer_ids = alloca i32*, align 8
  %uri = alloca i8*, align 8
  %layers = alloca %struct._GList*, align 8
  %status = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %num_layers, align 4
  store i32* null, i32** %layer_ids, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i32 @g_value_get_enum(%struct._GValue* %arrayidx)
  store i32 %call, i32* %run_mode, align 4
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx2, %struct._Gimp* %4)
  store %struct._GimpImage* %call3, %struct._GimpImage** %image, align 8
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 1
  %6 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %6, i64 2
  %call6 = call i8* @g_value_get_string(%struct._GValue* %arrayidx5)
  store i8* %call6, i8** %filename, align 8
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %9 = load i8*, i8** %filename, align 8
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i8* @file_utils_filename_to_uri(%struct._Gimp* %8, i8* %9, %struct._GError** %10)
  store i8* %call7, i8** %uri, align 8
  %11 = load i8*, i8** %uri, align 8
  %tobool8 = icmp ne i8* %11, null
  br i1 %tobool8, label %if.then.9, label %if.else.21

if.then.9:                                        ; preds = %if.then
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %16 = load i8*, i8** %uri, align 8
  %17 = load i32, i32* %run_mode, align 4
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call %struct._GList* @file_open_layers(%struct._Gimp* %12, %struct._GimpContext* %13, %struct._GimpProgress* %14, %struct._GimpImage* %15, i32 0, i8* %16, i32 %17, %struct._GimpPlugInProcedure* null, i32* %status, %struct._GError** %18)
  store %struct._GList* %call10, %struct._GList** %layers, align 8
  %19 = load %struct._GList*, %struct._GList** %layers, align 8
  %tobool11 = icmp ne %struct._GList* %19, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.9
  %20 = load %struct._GList*, %struct._GList** %layers, align 8
  %call13 = call i32 @g_list_length(%struct._GList* %20)
  store i32 %call13, i32* %num_layers, align 4
  %21 = load i32, i32* %num_layers, align 4
  %conv = sext i32 %21 to i64
  %call14 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %22 = bitcast i8* %call14 to i32*
  store i32* %22, i32** %layer_ids, align 8
  store i32 0, i32* %i, align 4
  %23 = load %struct._GList*, %struct._GList** %layers, align 8
  store %struct._GList* %23, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.12
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %num_layers, align 4
  %cmp = icmp slt i32 %24, %25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8
  %28 = bitcast i8* %27 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call16)
  %29 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %call18 = call i32 @gimp_item_get_ID(%struct._GimpItem* %29)
  %30 = load i32, i32* %i, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load i32*, i32** %layer_ids, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %31, i64 %idxprom
  store i32 %call18, i32* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool20 = icmp ne %struct._GList* %33, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %34 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 1
  %35 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %35, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct._GList*, %struct._GList** %layers, align 8
  call void @g_list_free(%struct._GList* %36)
  br label %if.end

if.else:                                          ; preds = %if.then.9
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end.22

if.else.21:                                       ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %entry
  %37 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %38 = load i32, i32* %success, align 4
  %39 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool24 = icmp ne %struct._GError** %39, null
  br i1 %tobool24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %if.end.23
  %40 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %41 = load %struct._GError*, %struct._GError** %40, align 8
  br label %cond.end.27

cond.false.26:                                    ; preds = %if.end.23
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.25
  %cond28 = phi %struct._GError* [ %41, %cond.true.25 ], [ null, %cond.false.26 ]
  %call29 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %37, i32 %38, %struct._GError* %cond28)
  store %struct._GValueArray* %call29, %struct._GValueArray** %return_vals, align 8
  %42 = load i32, i32* %success, align 4
  %tobool30 = icmp ne i32 %42, 0
  br i1 %tobool30, label %if.then.31, label %if.end.37

if.then.31:                                       ; preds = %cond.end.27
  %43 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values32 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %43, i32 0, i32 1
  %44 = load %struct._GValue*, %struct._GValue** %values32, align 8
  %arrayidx33 = getelementptr inbounds %struct._GValue, %struct._GValue* %44, i64 1
  %45 = load i32, i32* %num_layers, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx33, i32 %45)
  %46 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values34 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %46, i32 0, i32 1
  %47 = load %struct._GValue*, %struct._GValue** %values34, align 8
  %arrayidx35 = getelementptr inbounds %struct._GValue, %struct._GValue* %47, i64 2
  %48 = load i32*, i32** %layer_ids, align 8
  %49 = load i32, i32* %num_layers, align 4
  %conv36 = sext i32 %49 to i64
  call void @gimp_value_take_int32array(%struct._GValue* %arrayidx35, i32* %48, i64 %conv36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.31, %cond.end.27
  %50 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %50
}

declare %struct._GParamSpec* @gimp_param_spec_int32(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_int32_array(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @file_save_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GValueArray*, align 8
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %new_args = alloca %struct._GValueArray*, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %file_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %proc = alloca %struct._GimpProcedure*, align 8
  %uri = alloca i8*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %1, i32 0, i32 1
  %2 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i64 3
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i8* @file_utils_filename_to_uri(%struct._Gimp* %0, i8* %call, %struct._GError** %3)
  store i8* %call1, i8** %uri, align 8
  %4 = load i8*, i8** %uri, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool2 = icmp ne %struct._GError** %6, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %8 = load %struct._GError*, %struct._GError** %7, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %8, %cond.true ], [ null, %cond.false ]
  %call3 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %5, i32 0, %struct._GError* %cond)
  store %struct._GValueArray* %call3, %struct._GValueArray** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %9, i32 0, i32 25
  %10 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %save_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %10, i32 0, i32 6
  %11 = load %struct._GSList*, %struct._GSList** %save_procs, align 8
  %12 = load i8*, i8** %uri, align 8
  %call4 = call %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList* %11, i8* %12, %struct._GError** null)
  store %struct._GimpPlugInProcedure* %call4, %struct._GimpPlugInProcedure** %file_proc, align 8
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %tobool5 = icmp ne %struct._GimpPlugInProcedure* %13, null
  br i1 %tobool5, label %if.end.9, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager7 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 25
  %15 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager7, align 8
  %export_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %15, i32 0, i32 7
  %16 = load %struct._GSList*, %struct._GSList** %export_procs, align 8
  %17 = load i8*, i8** %uri, align 8
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call8 = call %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList* %16, i8* %17, %struct._GError** %18)
  store %struct._GimpPlugInProcedure* %call8, %struct._GimpPlugInProcedure** %file_proc, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %19 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %19)
  %20 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %tobool10 = icmp ne %struct._GimpPlugInProcedure* %20, null
  br i1 %tobool10, label %if.end.18, label %if.then.11

if.then.11:                                       ; preds = %if.end.9
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool12 = icmp ne %struct._GError** %22, null
  br i1 %tobool12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %if.then.11
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %24 = load %struct._GError*, %struct._GError** %23, align 8
  br label %cond.end.15

cond.false.14:                                    ; preds = %if.then.11
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi %struct._GError* [ %24, %cond.true.13 ], [ null, %cond.false.14 ]
  %call17 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %21, i32 0, %struct._GError* %cond16)
  store %struct._GValueArray* %call17, %struct._GValueArray** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.9
  %25 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %26 = bitcast %struct._GimpPlugInProcedure* %25 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_procedure_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call19)
  %27 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpProcedure*
  store %struct._GimpProcedure* %27, %struct._GimpProcedure** %proc, align 8
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %proc, align 8
  %call21 = call %struct._GValueArray* @gimp_procedure_get_arguments(%struct._GimpProcedure* %28)
  store %struct._GValueArray* %call21, %struct._GValueArray** %new_args, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %29 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %29, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %i, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values22 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %31, i32 0, i32 1
  %32 = load %struct._GValue*, %struct._GValue** %values22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GValue, %struct._GValue* %32, i64 %idxprom
  %33 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %33 to i64
  %34 = load %struct._GValueArray*, %struct._GValueArray** %new_args, align 8
  %values25 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %34, i32 0, i32 1
  %35 = load %struct._GValue*, %struct._GValue** %values25, align 8
  %arrayidx26 = getelementptr inbounds %struct._GValue, %struct._GValue* %35, i64 %idxprom24
  %call27 = call i32 @g_value_transform(%struct._GValue* %arrayidx23, %struct._GValue* %arrayidx26)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 5, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.51, %for.end
  %37 = load i32, i32* %i, align 4
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %proc, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %38, i32 0, i32 10
  %39 = load i32, i32* %num_args, align 4
  %cmp29 = icmp slt i32 %37, %39
  br i1 %cmp29, label %for.body.30, label %for.end.53

for.body.30:                                      ; preds = %for.cond.28
  %40 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %40 to i64
  %41 = load %struct._GimpProcedure*, %struct._GimpProcedure** %proc, align 8
  %args32 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %41, i32 0, i32 11
  %42 = load %struct._GParamSpec**, %struct._GParamSpec*** %args32, align 8
  %arrayidx33 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %42, i64 %idxprom31
  %43 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx33, align 8
  %44 = bitcast %struct._GParamSpec* %43 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %44, %struct._GTypeInstance** %__inst, align 8
  %45 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx34 = getelementptr inbounds i64, i64* %45, i64 14
  %46 = load i64, i64* %arrayidx34, align 8
  store i64 %46, i64* %__t, align 8
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool35 = icmp ne %struct._GTypeInstance* %47, null
  br i1 %tobool35, label %if.else, label %if.then.36

if.then.36:                                       ; preds = %for.body.30
  store i32 0, i32* %__r, align 4
  br label %if.end.44

if.else:                                          ; preds = %for.body.30
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %48, i32 0, i32 0
  %49 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool37 = icmp ne %struct._GTypeClass* %49, null
  br i1 %tobool37, label %land.lhs.true, label %if.else.41

land.lhs.true:                                    ; preds = %if.else
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class38 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %50, i32 0, i32 0
  %51 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class38, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %51, i32 0, i32 0
  %52 = load i64, i64* %g_type, align 8
  %53 = load i64, i64* %__t, align 8
  %cmp39 = icmp eq i64 %52, %53
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.43

if.else.41:                                       ; preds = %land.lhs.true, %if.else
  %54 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %55 = load i64, i64* %__t, align 8
  %call42 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %54, i64 %55) #5
  store i32 %call42, i32* %__r, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %if.then.40
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.36
  %56 = load i32, i32* %__r, align 4
  store i32 %56, i32* %tmp
  %57 = load i32, i32* %tmp
  %tobool45 = icmp ne i32 %57, 0
  br i1 %tobool45, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %if.end.44
  %58 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %58 to i64
  %59 = load %struct._GValueArray*, %struct._GValueArray** %new_args, align 8
  %values48 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %59, i32 0, i32 1
  %60 = load %struct._GValue*, %struct._GValue** %values48, align 8
  %arrayidx49 = getelementptr inbounds %struct._GValue, %struct._GValue* %60, i64 %idxprom47
  call void @g_value_set_static_string(%struct._GValue* %arrayidx49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i32 0, i32 0))
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.46, %if.end.44
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %61 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %61, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond.28

for.end.53:                                       ; preds = %for.cond.28
  %62 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %62, i32 0, i32 44
  %63 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %64 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %65 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %66 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %67 = load %struct._GimpProcedure*, %struct._GimpProcedure** %proc, align 8
  %68 = bitcast %struct._GimpProcedure* %67 to i8*
  %call54 = call i8* @gimp_object_get_name(i8* %68)
  %69 = load %struct._GValueArray*, %struct._GValueArray** %new_args, align 8
  %call55 = call %struct._GValueArray* @gimp_pdb_execute_procedure_by_name_args(%struct._GimpPDB* %63, %struct._GimpContext* %64, %struct._GimpProgress* %65, %struct._GError** %66, i8* %call54, %struct._GValueArray* %69)
  store %struct._GValueArray* %call55, %struct._GValueArray** %return_vals, align 8
  %70 = load %struct._GValueArray*, %struct._GValueArray** %new_args, align 8
  call void @g_value_array_free(%struct._GValueArray* %70)
  %71 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  store %struct._GValueArray* %71, %struct._GValueArray** %retval
  br label %return

return:                                           ; preds = %for.end.53, %cond.end.15, %cond.end
  %72 = load %struct._GValueArray*, %struct._GValueArray** %retval
  ret %struct._GValueArray* %72
}

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_drawable_id(i8*, i8*, i8*, %struct._Gimp*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @file_load_thumbnail_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %filename = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %thumb_data_count = alloca i32, align 4
  %thumb_data = alloca i8*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %width, align 4
  store i32 0, i32* %height, align 4
  store i32 0, i32* %thumb_data_count, align 4
  store i8* null, i8** %thumb_data, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %filename, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %filename, align 8
  %call1 = call %struct._GdkPixbuf* @file_utils_load_thumbnail(i8* %3)
  store %struct._GdkPixbuf* %call1, %struct._GdkPixbuf** %pixbuf, align 8
  %4 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool2 = icmp ne %struct._GdkPixbuf* %4, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %5 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call4 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %5)
  store i32 %call4, i32* %width, align 4
  %6 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call5 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %6)
  store i32 %call5, i32* %height, align 4
  %7 = load i32, i32* %width, align 4
  %mul = mul nsw i32 3, %7
  %8 = load i32, i32* %height, align 4
  %mul6 = mul nsw i32 %mul, %8
  store i32 %mul6, i32* %thumb_data_count, align 4
  %9 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call7 = call i8* @gdk_pixbuf_get_pixels(%struct._GdkPixbuf* %9)
  %10 = load i32, i32* %thumb_data_count, align 4
  %call8 = call noalias i8* @g_memdup(i8* %call7, i32 %10)
  store i8* %call8, i8** %thumb_data, align 8
  %11 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %12 = bitcast %struct._GdkPixbuf* %11 to i8*
  call void @g_object_unref(i8* %12)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %14 = load i32, i32* %success, align 4
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool10 = icmp ne %struct._GError** %15, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %17 = load %struct._GError*, %struct._GError** %16, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %17, %cond.true ], [ null, %cond.false ]
  %call11 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %13, i32 %14, %struct._GError* %cond)
  store %struct._GValueArray* %call11, %struct._GValueArray** %return_vals, align 8
  %18 = load i32, i32* %success, align 4
  %tobool12 = icmp ne i32 %18, 0
  br i1 %tobool12, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %cond.end
  %19 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values14 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %19, i32 0, i32 1
  %20 = load %struct._GValue*, %struct._GValue** %values14, align 8
  %arrayidx15 = getelementptr inbounds %struct._GValue, %struct._GValue* %20, i64 1
  %21 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx15, i32 %21)
  %22 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %22, i32 0, i32 1
  %23 = load %struct._GValue*, %struct._GValue** %values16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i64 2
  %24 = load i32, i32* %height, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx17, i32 %24)
  %25 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values18 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %25, i32 0, i32 1
  %26 = load %struct._GValue*, %struct._GValue** %values18, align 8
  %arrayidx19 = getelementptr inbounds %struct._GValue, %struct._GValue* %26, i64 3
  %27 = load i32, i32* %thumb_data_count, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx19, i32 %27)
  %28 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values20 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %28, i32 0, i32 1
  %29 = load %struct._GValue*, %struct._GValue** %values20, align 8
  %arrayidx21 = getelementptr inbounds %struct._GValue, %struct._GValue* %29, i64 4
  %30 = load i8*, i8** %thumb_data, align 8
  %31 = load i32, i32* %thumb_data_count, align 4
  %conv = sext i32 %31 to i64
  call void @gimp_value_take_int8array(%struct._GValue* %arrayidx21, i8* %30, i64 %conv)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.13, %cond.end
  %32 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %32
}

declare %struct._GParamSpec* @gimp_param_spec_int8_array(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @file_save_thumbnail_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %filename = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %arrayidx, %struct._Gimp* %2)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 1
  %4 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %4, i64 1
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %filename, align 8
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i8*, i8** %filename, align 8
  %call4 = call i32 @file_utils_save_thumbnail(%struct._GimpImage* %6, i8* %7)
  store i32 %call4, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %9 = load i32, i32* %success, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool5 = icmp ne %struct._GError** %10, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %12 = load %struct._GError*, %struct._GError** %11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %12, %cond.true ], [ null, %cond.false ]
  %call6 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %8, i32 %9, %struct._GError* %cond)
  ret %struct._GValueArray* %call6
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @temp_name_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %return_vals = alloca %struct._GValueArray*, align 8
  %extension = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  store i8* null, i8** %name, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %extension, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = load i8*, i8** %extension, align 8
  %call1 = call i8* @gimp_get_temp_filename(%struct._Gimp* %3, i8* %4)
  store i8* %call1, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %6 = load i32, i32* %success, align 4
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool2 = icmp ne %struct._GError** %7, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %9 = load %struct._GError*, %struct._GError** %8, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %9, %cond.true ], [ null, %cond.false ]
  %call3 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %5, i32 %6, %struct._GError* %cond)
  store %struct._GValueArray* %call3, %struct._GValueArray** %return_vals, align 8
  %10 = load i32, i32* %success, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %cond.end
  %11 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values6 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %11, i32 0, i32 1
  %12 = load %struct._GValue*, %struct._GValue** %values6, align 8
  %arrayidx7 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i64 1
  %13 = load i8*, i8** %name, align 8
  call void @g_value_take_string(%struct._GValue* %arrayidx7, i8* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %cond.end
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  ret %struct._GValueArray* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @register_magic_load_handler_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %procedure_name = alloca i8*, align 8
  %extensions = alloca i8*, align 8
  %prefixes = alloca i8*, align 8
  %magics = alloca i8*, align 8
  %canonical = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %procedure_name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %extensions, align 8
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i8* @g_value_get_string(%struct._GValue* %arrayidx5)
  store i8* %call6, i8** %prefixes, align 8
  %6 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values7 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 1
  %7 = load %struct._GValue*, %struct._GValue** %values7, align 8
  %arrayidx8 = getelementptr inbounds %struct._GValue, %struct._GValue* %7, i64 3
  %call9 = call i8* @g_value_get_string(%struct._GValue* %arrayidx8)
  store i8* %call9, i8** %magics, align 8
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i8*, i8** %procedure_name, align 8
  %call10 = call noalias i8* @gimp_canonicalize_identifier(i8* %9)
  store i8* %call10, i8** %canonical, align 8
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %10, i32 0, i32 25
  %11 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %12 = load i8*, i8** %canonical, align 8
  %13 = load i8*, i8** %extensions, align 8
  %14 = load i8*, i8** %prefixes, align 8
  %15 = load i8*, i8** %magics, align 8
  %call11 = call i32 @gimp_plug_in_manager_register_load_handler(%struct._GimpPlugInManager* %11, i8* %12, i8* %13, i8* %14, i8* %15)
  store i32 %call11, i32* %success, align 4
  %16 = load i8*, i8** %canonical, align 8
  call void @g_free(i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %18 = load i32, i32* %success, align 4
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool12 = icmp ne %struct._GError** %19, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %20, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %21, %cond.true ], [ null, %cond.false ]
  %call13 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %17, i32 %18, %struct._GError* %cond)
  ret %struct._GValueArray* %call13
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @register_load_handler_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %procedure_name = alloca i8*, align 8
  %extensions = alloca i8*, align 8
  %prefixes = alloca i8*, align 8
  %canonical = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %procedure_name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %extensions, align 8
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i8* @g_value_get_string(%struct._GValue* %arrayidx5)
  store i8* %call6, i8** %prefixes, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** %procedure_name, align 8
  %call7 = call noalias i8* @gimp_canonicalize_identifier(i8* %7)
  store i8* %call7, i8** %canonical, align 8
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 25
  %9 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %10 = load i8*, i8** %canonical, align 8
  %11 = load i8*, i8** %extensions, align 8
  %12 = load i8*, i8** %prefixes, align 8
  %call8 = call i32 @gimp_plug_in_manager_register_load_handler(%struct._GimpPlugInManager* %9, i8* %10, i8* %11, i8* %12, i8* null)
  store i32 %call8, i32* %success, align 4
  %13 = load i8*, i8** %canonical, align 8
  call void @g_free(i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %15 = load i32, i32* %success, align 4
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool9 = icmp ne %struct._GError** %16, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %18, %cond.true ], [ null, %cond.false ]
  %call10 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %14, i32 %15, %struct._GError* %cond)
  ret %struct._GValueArray* %call10
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @register_save_handler_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %procedure_name = alloca i8*, align 8
  %extensions = alloca i8*, align 8
  %prefixes = alloca i8*, align 8
  %canonical = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %procedure_name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %extensions, align 8
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values4 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 1
  %5 = load %struct._GValue*, %struct._GValue** %values4, align 8
  %arrayidx5 = getelementptr inbounds %struct._GValue, %struct._GValue* %5, i64 2
  %call6 = call i8* @g_value_get_string(%struct._GValue* %arrayidx5)
  store i8* %call6, i8** %prefixes, align 8
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** %procedure_name, align 8
  %call7 = call noalias i8* @gimp_canonicalize_identifier(i8* %7)
  store i8* %call7, i8** %canonical, align 8
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 25
  %9 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %10 = load i8*, i8** %canonical, align 8
  %11 = load i8*, i8** %extensions, align 8
  %12 = load i8*, i8** %prefixes, align 8
  %call8 = call i32 @gimp_plug_in_manager_register_save_handler(%struct._GimpPlugInManager* %9, i8* %10, i8* %11, i8* %12)
  store i32 %call8, i32* %success, align 4
  %13 = load i8*, i8** %canonical, align 8
  call void @g_free(i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %15 = load i32, i32* %success, align 4
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool9 = icmp ne %struct._GError** %16, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %18, %cond.true ], [ null, %cond.false ]
  %call10 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %14, i32 %15, %struct._GError* %cond)
  ret %struct._GValueArray* %call10
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @register_file_handler_mime_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %procedure_name = alloca i8*, align 8
  %mime_type = alloca i8*, align 8
  %canonical = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %procedure_name, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %mime_type, align 8
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %procedure_name, align 8
  %call4 = call noalias i8* @gimp_canonicalize_identifier(i8* %5)
  store i8* %call4, i8** %canonical, align 8
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 25
  %7 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %8 = load i8*, i8** %canonical, align 8
  %9 = load i8*, i8** %mime_type, align 8
  %call5 = call i32 @gimp_plug_in_manager_register_mime_type(%struct._GimpPlugInManager* %7, i8* %8, i8* %9)
  store i32 %call5, i32* %success, align 4
  %10 = load i8*, i8** %canonical, align 8
  call void @g_free(i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %12 = load i32, i32* %success, align 4
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool6 = icmp ne %struct._GError** %13, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %15, %cond.true ], [ null, %cond.false ]
  %call7 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %11, i32 %12, %struct._GError* %cond)
  ret %struct._GValueArray* %call7
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @register_thumbnail_loader_invoker(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #0 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  %load_proc = alloca i8*, align 8
  %thumb_proc = alloca i8*, align 8
  %canonical = alloca i8*, align 8
  %canon_thumb = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 1
  %1 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %1, i64 0
  %call = call i8* @g_value_get_string(%struct._GValue* %arrayidx)
  store i8* %call, i8** %load_proc, align 8
  %2 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %2, i32 0, i32 1
  %3 = load %struct._GValue*, %struct._GValue** %values1, align 8
  %arrayidx2 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i64 1
  %call3 = call i8* @g_value_get_string(%struct._GValue* %arrayidx2)
  store i8* %call3, i8** %thumb_proc, align 8
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %load_proc, align 8
  %call4 = call noalias i8* @gimp_canonicalize_identifier(i8* %5)
  store i8* %call4, i8** %canonical, align 8
  %6 = load i8*, i8** %thumb_proc, align 8
  %call5 = call noalias i8* @gimp_canonicalize_identifier(i8* %6)
  store i8* %call5, i8** %canon_thumb, align 8
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 25
  %8 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %9 = load i8*, i8** %canonical, align 8
  %10 = load i8*, i8** %canon_thumb, align 8
  %call6 = call i32 @gimp_plug_in_manager_register_thumb_loader(%struct._GimpPlugInManager* %8, i8* %9, i8* %10)
  store i32 %call6, i32* %success, align 4
  %11 = load i8*, i8** %canonical, align 8
  call void @g_free(i8* %11)
  %12 = load i8*, i8** %canon_thumb, align 8
  call void @g_free(i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %14 = load i32, i32* %success, align 4
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool7 = icmp ne %struct._GError** %15, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %17 = load %struct._GError*, %struct._GError** %16, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GError* [ %17, %cond.true ], [ null, %cond.false ]
  %call8 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %13, i32 %14, %struct._GError* %cond)
  ret %struct._GValueArray* %call8
}

declare i8* @file_utils_filename_to_uri(%struct._Gimp*, i8*, %struct._GError**) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #1

declare %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList*, i8*, %struct._GError**) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_procedure_get_type() #2

declare %struct._GValueArray* @gimp_procedure_get_arguments(%struct._GimpProcedure*) #1

declare i32 @g_value_transform(%struct._GValue*, %struct._GValue*) #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_value_set_static_string(%struct._GValue*, i8*) #1

declare %struct._GValueArray* @gimp_pdb_execute_procedure_by_name_args(%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, %struct._GValueArray*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare void @g_value_array_free(%struct._GValueArray*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_id_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_value_holds(%struct._GValue*, i64) #3

declare %struct._GimpImage* @gimp_value_get_image(%struct._GValue*, %struct._Gimp*) #1

declare void @gimp_image_set_load_proc(%struct._GimpImage*, %struct._GimpPlugInProcedure*) #1

declare %struct._GList* @file_open_layers(%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpImage*, i32, i8*, i32, %struct._GimpPlugInProcedure*, i32*, %struct._GError**) #1

declare void @g_list_free(%struct._GList*) #1

declare void @gimp_value_set_layer(%struct._GValue*, %struct._GimpLayer*) #1

declare i32 @g_list_length(%struct._GList*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_item_get_ID(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @gimp_value_take_int32array(%struct._GValue*, i32*, i64) #1

declare %struct._GdkPixbuf* @file_utils_load_thumbnail(i8*) #1

declare i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf*) #1

declare noalias i8* @g_memdup(i8*, i32) #1

declare i8* @gdk_pixbuf_get_pixels(%struct._GdkPixbuf*) #1

declare void @gimp_value_take_int8array(%struct._GValue*, i8*, i64) #1

declare i32 @file_utils_save_thumbnail(%struct._GimpImage*, i8*) #1

declare i8* @gimp_get_temp_filename(%struct._Gimp*, i8*) #1

declare void @g_value_take_string(%struct._GValue*, i8*) #1

declare noalias i8* @gimp_canonicalize_identifier(i8*) #1

declare i32 @gimp_plug_in_manager_register_load_handler(%struct._GimpPlugInManager*, i8*, i8*, i8*, i8*) #1

declare i32 @gimp_plug_in_manager_register_save_handler(%struct._GimpPlugInManager*, i8*, i8*, i8*) #1

declare i32 @gimp_plug_in_manager_register_mime_type(%struct._GimpPlugInManager*, i8*, i8*) #1

declare i32 @gimp_plug_in_manager_register_thumb_loader(%struct._GimpPlugInManager*, i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
