; ModuleID = './app/xcf/xcf-load.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type { %struct._GimpObject, i32, %struct._GimpRGB, %struct._GimpRGB, double, double, i32, double, double, i32 }
%struct._GimpColorConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type { %struct._GimpObject, %struct._GHashTable* }
%struct._GHashTable = type opaque
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
%struct._GimpTemplate = type { %struct._GimpViewable }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._XcfInfo = type { %struct._Gimp*, %struct._GimpProgress*, %struct._IO_FILE*, i32, i8*, i32, %struct._GimpLayer*, %struct._GimpChannel*, %struct._GimpDrawable*, %struct._GimpLayer*, i32, i32, i32*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type { i32, %struct._TileManager*, %struct._TileManager*, %struct._GeglNode*, %struct._GeglNode*, %struct._GimpLayer*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GSList*, i32 }
%struct._TileManager = type { i32, i32, i32, i32, i32, i32, %struct._Tile**, void (%struct._TileManager*, %struct._Tile*, i8*)*, i8*, i32, %struct._Tile* }
%struct._Tile = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GimpImagePrivate = type { i32, %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure*, i8*, i8*, i32, i32, double, double, i32, i32, i8*, i32, %struct._GimpPalette*, i32, i32, i32, i32, i32, i32, i32, %struct._GimpProjection*, %struct._GeglNode*, %struct._GList*, %struct._GimpGrid*, %struct._GList*, %struct._GimpItemTree*, %struct._GimpItemTree*, %struct._GimpItemTree*, %struct._GSList*, i32, i32, i32, %struct._GimpLayer*, %struct._GimpChannel*, %struct._GimpParasiteList*, [4 x i32], [4 x i32], i32, i32, %struct._GimpRGB, %struct._GimpUndoStack*, %struct._GimpUndoStack*, i32, i32, %struct._TempBuf*, %struct._GimpImageFlushAccumulator }
%struct._GimpPlugInProcedure = type opaque
%struct._GimpPalette = type opaque
%struct._GimpProjection = type opaque
%struct._GimpItemTree = type opaque
%struct._GimpUndoStack = type opaque
%struct._TempBuf = type opaque
%struct._GimpImageFlushAccumulator = type { i32, i32, i32, i32 }
%struct._GimpItemStack = type { %struct._GimpList }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GimpGuide = type opaque
%struct._GimpSamplePoint = type opaque
%struct._GimpTextLayer = type { %struct._GimpLayer, %struct._GimpText*, i8*, i32, i32 }
%struct._GimpText = type opaque
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, %struct.cairo_path*, i32, i32, double, double, double, double }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.1 }
%struct.anon.1 = type { double, double }
%struct._GimpVectorsCompatPoint = type { i32, double, double }
%struct._GimpStroke = type { %struct._GimpObject, i32, %struct._GList*, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpAnchor = type { %struct._GimpCoords, i32, i32 }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }

@.str = private unnamed_addr constant [87 x i8] c"This XCF file is corrupt!  I have loaded as much of it as I can, but it is incomplete.\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"This XCF file is corrupt!  I could not even salvage any partial image data from it.\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"gimp-layer-mask\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Maximum colormap size (%d) exceeded\00", align 1
@.str.4 = private unnamed_addr constant [112 x i8] c"XCF warning: version 0 of XCF file format\0Adid not save indexed colormaps correctly.\0ASubstituting grayscale map.\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Unknown compression type: %d\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Guide orientation out of range in XCF file\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Warning, resolution out of range in XCF file\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Error while loading an image's parasites\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"Warning, unit out of range in XCF file, falling back to inches\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"Mismatch in PROP_VECTORS size: skipping %d bytes.\0A\00", align 1
@.str.12 = private unnamed_addr constant [78 x i8] c"Maximum parasite data length (%ld bytes) exceeded. Possibly corrupt XCF file.\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Gimp-XCF\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"Unknown path type. Possibly corrupt XCF file\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Unknown vectors version: %d (skipping)\00", align 1
@xcf_load_vector.coords = private unnamed_addr constant [8 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00], align 16
@.str.16 = private unnamed_addr constant [30 x i8] c"skipping unknown stroke type\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"bad number of axes in stroke description\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"control-points\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"Error while loading a layer's parasites\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"not enough tiles found in level\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"xcf: zlib compression unimplemented\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"xcf: fractal compression unimplemented\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"xcf: unknown compression\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"encountered garbage after reading level: %d\00", align 1
@xcf_load_layer_mask.color = private unnamed_addr constant %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, align 8
@.str.26 = private unnamed_addr constant [42 x i8] c"Error while loading a channel's parasites\00", align 1
@xcf_load_channel.color = private unnamed_addr constant %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, align 8

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @xcf_load_image(%struct._Gimp* %gimp, %struct._XcfInfo* %info, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %info.addr = alloca %struct._XcfInfo*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %image = alloca %struct._GimpImage*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %saved_pos = alloca i32, align 4
  %offset = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %image_type = alloca i32, align 4
  %num_successful_elements = alloca i32, align 4
  %retry_offset = alloca i32, align 4
  %retried = alloca i32, align 4
  %terminate_loop = alloca i32, align 4
  %grid = alloca %struct._GimpGrid*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %item_path = alloca %struct._GList*, align 8
  %layers = alloca %struct._GimpContainer*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %parent = alloca %struct._GimpLayer*, align 8
  %toplevel_index = alloca i32, align 4
  %channel = alloca %struct._GimpChannel*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  store i32 0, i32* %num_successful_elements, align 4
  store i32 0, i32* %retried, align 4
  store i32 0, i32* %terminate_loop, align 4
  %0 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %0, i32 0, i32 2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @xcf_read_int32(%struct._IO_FILE* %1, i32* %width, i32 1)
  %2 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %2, i32 0, i32 3
  %3 = load i32, i32* %cp, align 4
  %add = add i32 %3, %call
  store i32 %add, i32* %cp, align 4
  %4 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %4, i32 0, i32 2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %call2 = call i32 @xcf_read_int32(%struct._IO_FILE* %5, i32* %height, i32 1)
  %6 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp3 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %6, i32 0, i32 3
  %7 = load i32, i32* %cp3, align 4
  %add4 = add i32 %7, %call2
  store i32 %add4, i32* %cp3, align 4
  %8 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp5 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %8, i32 0, i32 2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp5, align 8
  %call6 = call i32 @xcf_read_int32(%struct._IO_FILE* %9, i32* %image_type, i32 1)
  %10 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp7 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %10, i32 0, i32 3
  %11 = load i32, i32* %cp7, align 4
  %add8 = add i32 %11, %call6
  store i32 %add8, i32* %cp7, align 4
  %12 = load i32, i32* %image_type, align 4
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = load i32, i32* %image_type, align 4
  %cmp9 = icmp sgt i32 %13, 2
  br i1 %cmp9, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %14 = load i32, i32* %width, align 4
  %cmp11 = icmp sle i32 %14, 0
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.10
  %15 = load i32, i32* %height, align 4
  %cmp13 = icmp sle i32 %15, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.12, %lor.lhs.false.10, %lor.lhs.false, %entry
  br label %hard_error

if.end:                                           ; preds = %lor.lhs.false.12
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %height, align 4
  %19 = load i32, i32* %image_type, align 4
  %call14 = call %struct._GimpImage* @gimp_create_image(%struct._Gimp* %16, i32 %17, i32 %18, i32 %19, i32 0)
  store %struct._GimpImage* %call14, %struct._GimpImage** %image, align 8
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call15 = call i32 @gimp_image_undo_disable(%struct._GimpImage* %20)
  br label %do.body

do.body:                                          ; preds = %if.end
  %21 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %21, i32 0, i32 1
  %22 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool = icmp ne %struct._GimpProgress* %22, null
  br i1 %tobool, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %do.body
  %23 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress17 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %23, i32 0, i32 1
  %24 = load %struct._GimpProgress*, %struct._GimpProgress** %progress17, align 8
  call void @gimp_progress_pulse(%struct._GimpProgress* %24)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %25 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call19 = call i32 @xcf_load_image_props(%struct._XcfInfo* %25, %struct._GimpImage* %26)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %do.end
  br label %hard_error

if.end.22:                                        ; preds = %do.end
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %28 = bitcast %struct._GimpImage* %27 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_image_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call23)
  %29 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpImage*
  %call25 = call i8* @gimp_grid_parasite_name() #6
  %call26 = call %struct._GimpParasite* @gimp_image_parasite_find(%struct._GimpImage* %29, i8* %call25)
  store %struct._GimpParasite* %call26, %struct._GimpParasite** %parasite, align 8
  %30 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool27 = icmp ne %struct._GimpParasite* %30, null
  br i1 %tobool27, label %if.then.28, label %if.end.38

if.then.28:                                       ; preds = %if.end.22
  %31 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call29 = call %struct._GimpGrid* @gimp_grid_from_parasite(%struct._GimpParasite* %31)
  store %struct._GimpGrid* %call29, %struct._GimpGrid** %grid, align 8
  %32 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %tobool30 = icmp ne %struct._GimpGrid* %32, null
  br i1 %tobool30, label %if.then.31, label %if.end.37

if.then.31:                                       ; preds = %if.then.28
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %34 = bitcast %struct._GimpImage* %33 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_image_get_type() #6
  %call33 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %34, i64 %call32)
  %35 = bitcast i8* %call33 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %35, %struct._GimpImagePrivate** %private, align 8
  %36 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %parasites = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %36, i32 0, i32 36
  %37 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %38 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call34 = call i8* @gimp_parasite_name(%struct._GimpParasite* %38)
  call void @gimp_parasite_list_remove(%struct._GimpParasiteList* %37, i8* %call34)
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %40 = bitcast %struct._GimpImage* %39 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_image_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call35)
  %41 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpImage*
  %42 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  call void @gimp_image_set_grid(%struct._GimpImage* %41, %struct._GimpGrid* %42, i32 0)
  %43 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %44 = bitcast %struct._GimpGrid* %43 to i8*
  call void @g_object_unref(i8* %44)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.31, %if.then.28
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.22
  br label %do.body.39

do.body.39:                                       ; preds = %if.end.38
  %45 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress40 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %45, i32 0, i32 1
  %46 = load %struct._GimpProgress*, %struct._GimpProgress** %progress40, align 8
  %tobool41 = icmp ne %struct._GimpProgress* %46, null
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %do.body.39
  %47 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress43 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %47, i32 0, i32 1
  %48 = load %struct._GimpProgress*, %struct._GimpProgress** %progress43, align 8
  call void @gimp_progress_pulse(%struct._GimpProgress* %48)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %do.body.39
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %49 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp46 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %49, i32 0, i32 3
  %50 = load i32, i32* %cp46, align 4
  store i32 %50, i32* %retry_offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.150, %do.end.45
  %51 = load i32, i32* %terminate_loop, align 4
  %tobool47 = icmp ne i32 %51, 0
  %lnot = xor i1 %tobool47, true
  br i1 %lnot, label %while.body, label %while.end.151

while.body:                                       ; preds = %while.cond
  br label %while.body.49

while.body.49:                                    ; preds = %while.body, %if.end.99
  store %struct._GList* null, %struct._GList** %item_path, align 8
  %52 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp50 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %52, i32 0, i32 2
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp50, align 8
  %call51 = call i32 @xcf_read_int32(%struct._IO_FILE* %53, i32* %offset, i32 1)
  %54 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp52 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %54, i32 0, i32 3
  %55 = load i32, i32* %cp52, align 4
  %add53 = add i32 %55, %call51
  store i32 %add53, i32* %cp52, align 4
  %56 = load i32, i32* %offset, align 4
  %cmp54 = icmp eq i32 %56, 0
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %while.body.49
  br label %while.end

if.end.56:                                        ; preds = %while.body.49
  %57 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp57 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %57, i32 0, i32 3
  %58 = load i32, i32* %cp57, align 4
  store i32 %58, i32* %saved_pos, align 4
  %59 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %60 = load i32, i32* %offset, align 4
  %call58 = call i32 @xcf_seek_pos(%struct._XcfInfo* %59, i32 %60, %struct._GError** null)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.end.56
  br label %error.176

if.end.61:                                        ; preds = %if.end.56
  %61 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %62 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call62 = call %struct._GimpLayer* @xcf_load_layer(%struct._XcfInfo* %61, %struct._GimpImage* %62, %struct._GList** %item_path)
  store %struct._GimpLayer* %call62, %struct._GimpLayer** %layer, align 8
  %63 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool63 = icmp ne %struct._GimpLayer* %63, null
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %if.end.61
  br label %error.176

if.end.65:                                        ; preds = %if.end.61
  %64 = load i32, i32* %num_successful_elements, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %num_successful_elements, align 4
  br label %do.body.66

do.body.66:                                       ; preds = %if.end.65
  %65 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress67 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %65, i32 0, i32 1
  %66 = load %struct._GimpProgress*, %struct._GimpProgress** %progress67, align 8
  %tobool68 = icmp ne %struct._GimpProgress* %66, null
  br i1 %tobool68, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %do.body.66
  %67 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress70 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %67, i32 0, i32 1
  %68 = load %struct._GimpProgress*, %struct._GimpProgress** %progress70, align 8
  call void @gimp_progress_pulse(%struct._GimpProgress* %68)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %do.body.66
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  %69 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %70 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %70, i32 0, i32 9
  %71 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %cmp73 = icmp ne %struct._GimpLayer* %69, %71
  br i1 %cmp73, label %if.then.74, label %if.end.95

if.then.74:                                       ; preds = %do.end.72
  %72 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call75 = call %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage* %72)
  store %struct._GimpContainer* %call75, %struct._GimpContainer** %layers, align 8
  %73 = load %struct._GList*, %struct._GList** %item_path, align 8
  %tobool76 = icmp ne %struct._GList* %73, null
  br i1 %tobool76, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %if.then.74
  %74 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel78 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %74, i32 0, i32 9
  %75 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel78, align 8
  %tobool79 = icmp ne %struct._GimpLayer* %75, null
  br i1 %tobool79, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %if.then.77
  %76 = load %struct._GList*, %struct._GList** %item_path, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %76, i32 0, i32 0
  %77 = load i8*, i8** %data, align 8
  %78 = ptrtoint i8* %77 to i64
  %conv = trunc i64 %78 to i32
  store i32 %conv, i32* %toplevel_index, align 4
  %79 = load i32, i32* %toplevel_index, align 4
  %dec = add nsw i32 %79, -1
  store i32 %dec, i32* %toplevel_index, align 4
  %80 = load i32, i32* %toplevel_index, align 4
  %conv81 = sext i32 %80 to i64
  %81 = inttoptr i64 %conv81 to i8*
  %82 = load %struct._GList*, %struct._GList** %item_path, align 8
  %data82 = getelementptr inbounds %struct._GList, %struct._GList* %82, i32 0, i32 0
  store i8* %81, i8** %data82, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %if.then.77
  %83 = load %struct._GimpContainer*, %struct._GimpContainer** %layers, align 8
  %84 = bitcast %struct._GimpContainer* %83 to %struct._GTypeInstance*
  %call84 = call i64 @gimp_item_stack_get_type() #6
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call84)
  %85 = bitcast %struct._GTypeInstance* %call85 to %struct._GimpItemStack*
  %86 = load %struct._GList*, %struct._GList** %item_path, align 8
  %call86 = call %struct._GimpItem* @gimp_item_stack_get_parent_by_path(%struct._GimpItemStack* %85, %struct._GList* %86, i32* null)
  %87 = bitcast %struct._GimpItem* %call86 to %struct._GTypeInstance*
  %call87 = call i64 @gimp_layer_get_type() #6
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call87)
  %88 = bitcast %struct._GTypeInstance* %call88 to %struct._GimpLayer*
  store %struct._GimpLayer* %88, %struct._GimpLayer** %parent, align 8
  %89 = load %struct._GimpLayer*, %struct._GimpLayer** %parent, align 8
  %90 = bitcast %struct._GimpLayer* %89 to %struct._GTypeInstance*
  %call89 = call i64 @gimp_viewable_get_type() #6
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call89)
  %91 = bitcast %struct._GTypeInstance* %call90 to %struct._GimpViewable*
  %call91 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %91)
  store %struct._GimpContainer* %call91, %struct._GimpContainer** %container, align 8
  %92 = load %struct._GList*, %struct._GList** %item_path, align 8
  call void @g_list_free(%struct._GList* %92)
  br label %if.end.92

if.else:                                          ; preds = %if.then.74
  store %struct._GimpLayer* null, %struct._GimpLayer** %parent, align 8
  %93 = load %struct._GimpContainer*, %struct._GimpContainer** %layers, align 8
  store %struct._GimpContainer* %93, %struct._GimpContainer** %container, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.else, %if.end.83
  %94 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %95 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %96 = load %struct._GimpLayer*, %struct._GimpLayer** %parent, align 8
  %97 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call93 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %97)
  %call94 = call i32 @gimp_image_add_layer(%struct._GimpImage* %94, %struct._GimpLayer* %95, %struct._GimpLayer* %96, i32 %call93, i32 0)
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.92, %do.end.72
  %98 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %99 = load i32, i32* %saved_pos, align 4
  %call96 = call i32 @xcf_seek_pos(%struct._XcfInfo* %98, i32 %99, %struct._GError** null)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.end.99, label %if.then.98

if.then.98:                                       ; preds = %if.end.95
  br label %error.176

if.end.99:                                        ; preds = %if.end.95
  br label %while.body.49

while.end:                                        ; preds = %if.then.55
  br label %while.body.101

while.body.101:                                   ; preds = %while.end, %if.end.138
  %100 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp102 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %100, i32 0, i32 2
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %fp102, align 8
  %call103 = call i32 @xcf_read_int32(%struct._IO_FILE* %101, i32* %offset, i32 1)
  %102 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp104 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %102, i32 0, i32 3
  %103 = load i32, i32* %cp104, align 4
  %add105 = add i32 %103, %call103
  store i32 %add105, i32* %cp104, align 4
  %104 = load i32, i32* %offset, align 4
  %cmp106 = icmp eq i32 %104, 0
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %while.body.101
  br label %while.end.139

if.end.109:                                       ; preds = %while.body.101
  %105 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp110 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %105, i32 0, i32 3
  %106 = load i32, i32* %cp110, align 4
  store i32 %106, i32* %saved_pos, align 4
  %107 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %108 = load i32, i32* %offset, align 4
  %call111 = call i32 @xcf_seek_pos(%struct._XcfInfo* %107, i32 %108, %struct._GError** null)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.end.114, label %if.then.113

if.then.113:                                      ; preds = %if.end.109
  br label %error.176

if.end.114:                                       ; preds = %if.end.109
  %109 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %110 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call115 = call %struct._GimpChannel* @xcf_load_channel(%struct._XcfInfo* %109, %struct._GimpImage* %110)
  store %struct._GimpChannel* %call115, %struct._GimpChannel** %channel, align 8
  %111 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool116 = icmp ne %struct._GimpChannel* %111, null
  br i1 %tobool116, label %if.end.118, label %if.then.117

if.then.117:                                      ; preds = %if.end.114
  br label %error.176

if.end.118:                                       ; preds = %if.end.114
  %112 = load i32, i32* %num_successful_elements, align 4
  %inc119 = add nsw i32 %112, 1
  store i32 %inc119, i32* %num_successful_elements, align 4
  br label %do.body.120

do.body.120:                                      ; preds = %if.end.118
  %113 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress121 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %113, i32 0, i32 1
  %114 = load %struct._GimpProgress*, %struct._GimpProgress** %progress121, align 8
  %tobool122 = icmp ne %struct._GimpProgress* %114, null
  br i1 %tobool122, label %if.then.123, label %if.end.125

if.then.123:                                      ; preds = %do.body.120
  %115 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress124 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %115, i32 0, i32 1
  %116 = load %struct._GimpProgress*, %struct._GimpProgress** %progress124, align 8
  call void @gimp_progress_pulse(%struct._GimpProgress* %116)
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.123, %do.body.120
  br label %do.end.126

do.end.126:                                       ; preds = %if.end.125
  %117 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %118 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call127 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %118)
  %cmp128 = icmp ne %struct._GimpChannel* %117, %call127
  br i1 %cmp128, label %if.then.130, label %if.end.134

if.then.130:                                      ; preds = %do.end.126
  %119 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %120 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %121 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call131 = call %struct._GimpContainer* @gimp_image_get_channels(%struct._GimpImage* %121)
  %call132 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %call131)
  %call133 = call i32 @gimp_image_add_channel(%struct._GimpImage* %119, %struct._GimpChannel* %120, %struct._GimpChannel* null, i32 %call132, i32 0)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.130, %do.end.126
  %122 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %123 = load i32, i32* %saved_pos, align 4
  %call135 = call i32 @xcf_seek_pos(%struct._XcfInfo* %122, i32 %123, %struct._GError** null)
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.end.138, label %if.then.137

if.then.137:                                      ; preds = %if.end.134
  br label %error.176

if.end.138:                                       ; preds = %if.end.134
  br label %while.body.101

while.end.139:                                    ; preds = %if.then.108
  %124 = load i32, i32* %num_successful_elements, align 4
  %cmp140 = icmp sgt i32 %124, 0
  br i1 %cmp140, label %lor.end, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %while.end.139
  %125 = load i32, i32* %retried, align 4
  %tobool143 = icmp ne i32 %125, 0
  br i1 %tobool143, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.142
  %126 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %127 = load i32, i32* %retry_offset, align 4
  %conv144 = zext i32 %127 to i64
  %call145 = call i32 @xcf_find_layer_offset_table(%struct._XcfInfo* %126, i64 %conv144)
  %tobool146 = icmp ne i32 %call145, 0
  %lnot147 = xor i1 %tobool146, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.142, %while.end.139
  %128 = phi i1 [ true, %lor.lhs.false.142 ], [ true, %while.end.139 ], [ %lnot147, %lor.rhs ]
  %lor.ext = zext i1 %128 to i32
  store i32 %lor.ext, i32* %terminate_loop, align 4
  %129 = load i32, i32* %terminate_loop, align 4
  %tobool148 = icmp ne i32 %129, 0
  br i1 %tobool148, label %if.end.150, label %if.then.149

if.then.149:                                      ; preds = %lor.end
  store i32 1, i32* %retried, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %lor.end
  br label %while.cond

while.end.151:                                    ; preds = %while.cond
  %130 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @xcf_load_add_masks(%struct._GimpImage* %130)
  %131 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel152 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %131, i32 0, i32 9
  %132 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel152, align 8
  %tobool153 = icmp ne %struct._GimpLayer* %132, null
  br i1 %tobool153, label %land.lhs.true, label %if.end.158

land.lhs.true:                                    ; preds = %while.end.151
  %133 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel_drawable = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %133, i32 0, i32 8
  %134 = load %struct._GimpDrawable*, %struct._GimpDrawable** %floating_sel_drawable, align 8
  %tobool154 = icmp ne %struct._GimpDrawable* %134, null
  br i1 %tobool154, label %if.then.155, label %if.end.158

if.then.155:                                      ; preds = %land.lhs.true
  %135 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel156 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %135, i32 0, i32 9
  %136 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel156, align 8
  %137 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel_drawable157 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %137, i32 0, i32 8
  %138 = load %struct._GimpDrawable*, %struct._GimpDrawable** %floating_sel_drawable157, align 8
  call void @floating_sel_attach(%struct._GimpLayer* %136, %struct._GimpDrawable* %138)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.155, %land.lhs.true, %while.end.151
  %139 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %active_layer = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %139, i32 0, i32 6
  %140 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer, align 8
  %tobool159 = icmp ne %struct._GimpLayer* %140, null
  br i1 %tobool159, label %if.then.160, label %if.end.163

if.then.160:                                      ; preds = %if.end.158
  %141 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %142 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %active_layer161 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %142, i32 0, i32 6
  %143 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer161, align 8
  %call162 = call %struct._GimpLayer* @gimp_image_set_active_layer(%struct._GimpImage* %141, %struct._GimpLayer* %143)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.160, %if.end.158
  %144 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %active_channel = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %144, i32 0, i32 7
  %145 = load %struct._GimpChannel*, %struct._GimpChannel** %active_channel, align 8
  %tobool164 = icmp ne %struct._GimpChannel* %145, null
  br i1 %tobool164, label %if.then.165, label %if.end.168

if.then.165:                                      ; preds = %if.end.163
  %146 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %147 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %active_channel166 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %147, i32 0, i32 7
  %148 = load %struct._GimpChannel*, %struct._GimpChannel** %active_channel166, align 8
  %call167 = call %struct._GimpChannel* @gimp_image_set_active_channel(%struct._GimpImage* %146, %struct._GimpChannel* %148)
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.165, %if.end.163
  %149 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %150 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %filename = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %150, i32 0, i32 4
  %151 = load i8*, i8** %filename, align 8
  call void @gimp_image_set_filename(%struct._GimpImage* %149, i8* %151)
  %152 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %tattoo_state = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %152, i32 0, i32 5
  %153 = load i32, i32* %tattoo_state, align 4
  %cmp169 = icmp ugt i32 %153, 0
  br i1 %cmp169, label %if.then.171, label %if.end.174

if.then.171:                                      ; preds = %if.end.168
  %154 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %155 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %tattoo_state172 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %155, i32 0, i32 5
  %156 = load i32, i32* %tattoo_state172, align 4
  %call173 = call i32 @gimp_image_set_tattoo_state(%struct._GimpImage* %154, i32 %156)
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.171, %if.end.168
  %157 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call175 = call i32 @gimp_image_undo_enable(%struct._GimpImage* %157)
  %158 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  store %struct._GimpImage* %158, %struct._GimpImage** %retval
  br label %return

error.176:                                        ; preds = %if.then.137, %if.then.117, %if.then.113, %if.then.98, %if.then.64, %if.then.60
  %159 = load i32, i32* %num_successful_elements, align 4
  %cmp177 = icmp eq i32 %159, 0
  br i1 %cmp177, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %error.176
  br label %hard_error

if.end.180:                                       ; preds = %error.176
  %160 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %161 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress181 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %161, i32 0, i32 1
  %162 = load %struct._GimpProgress*, %struct._GimpProgress** %progress181, align 8
  %163 = bitcast %struct._GimpProgress* %162 to %struct._GTypeInstance*
  %call182 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %163, i64 80)
  %164 = bitcast %struct._GTypeInstance* %call182 to %struct._GObject*
  %call183 = call i8* @gettext(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %160, %struct._GObject* %164, i32 1, i8* %call183)
  %165 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @xcf_load_add_masks(%struct._GimpImage* %165)
  %166 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call184 = call i32 @gimp_image_undo_enable(%struct._GimpImage* %166)
  %167 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  store %struct._GimpImage* %167, %struct._GimpImage** %retval
  br label %return

hard_error:                                       ; preds = %if.then.179, %if.then.21, %if.then
  %168 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call185 = call i32 @g_file_error_quark()
  %call186 = call i8* @gettext(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %168, i32 %call185, i32 24, i8* %call186)
  %169 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool187 = icmp ne %struct._GimpImage* %169, null
  br i1 %tobool187, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %hard_error
  %170 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %171 = bitcast %struct._GimpImage* %170 to i8*
  call void @g_object_unref(i8* %171)
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.188, %hard_error
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %if.end.189, %if.end.180, %if.end.174
  %172 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %172
}

declare i32 @xcf_read_int32(%struct._IO_FILE*, i32*, i32) #1

declare %struct._GimpImage* @gimp_create_image(%struct._Gimp*, i32, i32, i32, i32) #1

declare i32 @gimp_image_undo_disable(%struct._GimpImage*) #1

declare void @gimp_progress_pulse(%struct._GimpProgress*) #1

; Function Attrs: nounwind uwtable
define internal i32 @xcf_load_image_props(%struct._XcfInfo* %info, %struct._GimpImage* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %prop_type = alloca i32, align 4
  %prop_size = alloca i32, align 4
  %n_colors = alloca i32, align 4
  %cmap = alloca [768 x i8], align 16
  %i = alloca i32, align 4
  %compression = alloca i8, align 1
  %private = alloca %struct._GimpImagePrivate*, align 8
  %position = alloca i32, align 4
  %orientation = alloca i8, align 1
  %i72 = alloca i32, align 4
  %nguides = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i103 = alloca i32, align 4
  %n_sample_points = alloca i32, align 4
  %xres = alloca float, align 4
  %yres = alloca float, align 4
  %template = alloca %struct._GimpTemplate*, align 8
  %base = alloca i64, align 8
  %p = alloca %struct._GimpParasite*, align 8
  %unit = alloca i32, align 4
  %unit_strings = alloca [5 x i8*], align 16
  %factor = alloca float, align 4
  %digits = alloca i32, align 4
  %unit205 = alloca i32, align 4
  %num_units = alloca i32, align 4
  %i206 = alloca i32, align 4
  %base288 = alloca i32, align 4
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %sw.epilog.314
  %0 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %call = call i32 @xcf_load_prop(%struct._XcfInfo* %0, i32* %prop_type, i32* %prop_size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %1 = load i32, i32* %prop_type, align 4
  switch i32 %1, label %sw.default.308 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 17, label %sw.bb.42
    i32 18, label %sw.bb.69
    i32 27, label %sw.bb.102
    i32 19, label %sw.bb.121
    i32 20, label %sw.bb.156
    i32 21, label %sw.bb.161
    i32 22, label %sw.bb.186
    i32 23, label %sw.bb.202
    i32 24, label %sw.bb.204
    i32 25, label %sw.bb.287
  ]

sw.bb:                                            ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %if.end
  %2 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %2, i32 0, i32 2
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i32 @xcf_read_int32(%struct._IO_FILE* %3, i32* %n_colors, i32 1)
  %4 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %4, i32 0, i32 3
  %5 = load i32, i32* %cp, align 4
  %add = add i32 %5, %call2
  store i32 %add, i32* %cp, align 4
  %6 = load i32, i32* %n_colors, align 4
  %cmp = icmp ugt i32 %6, 256
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %sw.bb.1
  %7 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %gimp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %7, i32 0, i32 0
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %9 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %9, i32 0, i32 1
  %10 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %11 = bitcast %struct._GimpProgress* %10 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 80)
  %12 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %8, %struct._GObject* %12, i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i32 768)
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %sw.bb.1
  %13 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %file_version = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %13, i32 0, i32 14
  %14 = load i32, i32* %file_version, align 4
  %cmp6 = icmp eq i32 %14, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.5
  %15 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %gimp8 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %15, i32 0, i32 0
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp8, align 8
  %17 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress9 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %17, i32 0, i32 1
  %18 = load %struct._GimpProgress*, %struct._GimpProgress** %progress9, align 8
  %19 = bitcast %struct._GimpProgress* %18 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 80)
  %20 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.4, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %16, %struct._GObject* %20, i32 1, i8* %call11)
  %21 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %22 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp12 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %22, i32 0, i32 3
  %23 = load i32, i32* %cp12, align 4
  %24 = load i32, i32* %n_colors, align 4
  %add13 = add i32 %23, %24
  %call14 = call i32 @xcf_seek_pos(%struct._XcfInfo* %21, i32 %add13, %struct._GError** null)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.7
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.7
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %n_colors, align 4
  %cmp18 = icmp ult i32 %25, %26
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4
  %conv = trunc i32 %27 to i8
  %28 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %28, 3
  %add19 = add nsw i32 %mul, 0
  %idxprom = sext i32 %add19 to i64
  %arrayidx = getelementptr inbounds [768 x i8], [768 x i8]* %cmap, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %29 = load i32, i32* %i, align 4
  %conv20 = trunc i32 %29 to i8
  %30 = load i32, i32* %i, align 4
  %mul21 = mul nsw i32 %30, 3
  %add22 = add nsw i32 %mul21, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [768 x i8], [768 x i8]* %cmap, i32 0, i64 %idxprom23
  store i8 %conv20, i8* %arrayidx24, align 1
  %31 = load i32, i32* %i, align 4
  %conv25 = trunc i32 %31 to i8
  %32 = load i32, i32* %i, align 4
  %mul26 = mul nsw i32 %32, 3
  %add27 = add nsw i32 %mul26, 2
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [768 x i8], [768 x i8]* %cmap, i32 0, i64 %idxprom28
  store i8 %conv25, i8* %arrayidx29, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.35

if.else:                                          ; preds = %if.end.5
  %34 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp30 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %34, i32 0, i32 2
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp30, align 8
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %cmap, i32 0, i32 0
  %36 = load i32, i32* %n_colors, align 4
  %mul31 = mul i32 %36, 3
  %call32 = call i32 @xcf_read_int8(%struct._IO_FILE* %35, i8* %arraydecay, i32 %mul31)
  %37 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp33 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %37, i32 0, i32 3
  %38 = load i32, i32* %cp33, align 4
  %add34 = add i32 %38, %call32
  store i32 %add34, i32* %cp33, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %for.end
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call36 = call i32 @gimp_image_base_type(%struct._GimpImage* %39)
  %cmp37 = icmp eq i32 %call36, 2
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.35
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %arraydecay40 = getelementptr inbounds [768 x i8], [768 x i8]* %cmap, i32 0, i32 0
  %41 = load i32, i32* %n_colors, align 4
  call void @gimp_image_set_colormap(%struct._GimpImage* %40, i8* %arraydecay40, i32 %41, i32 0)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.35
  br label %sw.epilog.314

sw.bb.42:                                         ; preds = %if.end
  %42 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp43 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %42, i32 0, i32 2
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp43, align 8
  %call44 = call i32 @xcf_read_int8(%struct._IO_FILE* %43, i8* %compression, i32 1)
  %44 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp45 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %44, i32 0, i32 3
  %45 = load i32, i32* %cp45, align 4
  %add46 = add i32 %45, %call44
  store i32 %add46, i32* %cp45, align 4
  %46 = load i8, i8* %compression, align 1
  %conv47 = zext i8 %46 to i32
  %cmp48 = icmp ne i32 %conv47, 0
  br i1 %cmp48, label %land.lhs.true, label %if.end.66

land.lhs.true:                                    ; preds = %sw.bb.42
  %47 = load i8, i8* %compression, align 1
  %conv50 = zext i8 %47 to i32
  %cmp51 = icmp ne i32 %conv50, 1
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.66

land.lhs.true.53:                                 ; preds = %land.lhs.true
  %48 = load i8, i8* %compression, align 1
  %conv54 = zext i8 %48 to i32
  %cmp55 = icmp ne i32 %conv54, 2
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.66

land.lhs.true.57:                                 ; preds = %land.lhs.true.53
  %49 = load i8, i8* %compression, align 1
  %conv58 = zext i8 %49 to i32
  %cmp59 = icmp ne i32 %conv58, 3
  br i1 %cmp59, label %if.then.61, label %if.end.66

if.then.61:                                       ; preds = %land.lhs.true.57
  %50 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %gimp62 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %50, i32 0, i32 0
  %51 = load %struct._Gimp*, %struct._Gimp** %gimp62, align 8
  %52 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress63 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %52, i32 0, i32 1
  %53 = load %struct._GimpProgress*, %struct._GimpProgress** %progress63, align 8
  %54 = bitcast %struct._GimpProgress* %53 to %struct._GTypeInstance*
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 80)
  %55 = bitcast %struct._GTypeInstance* %call64 to %struct._GObject*
  %56 = load i8, i8* %compression, align 1
  %conv65 = zext i8 %56 to i32
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %51, %struct._GObject* %55, i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i32 %conv65)
  store i32 0, i32* %retval
  br label %return

if.end.66:                                        ; preds = %land.lhs.true.57, %land.lhs.true.53, %land.lhs.true, %sw.bb.42
  %57 = load i8, i8* %compression, align 1
  %conv67 = zext i8 %57 to i32
  %58 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %compression68 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %58, i32 0, i32 13
  store i32 %conv67, i32* %compression68, align 4
  br label %sw.epilog.314

sw.bb.69:                                         ; preds = %if.end
  %59 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %60 = bitcast %struct._GimpImage* %59 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_image_get_type() #6
  %call71 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %60, i64 %call70)
  %61 = bitcast i8* %call71 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %61, %struct._GimpImagePrivate** %private, align 8
  %62 = load i32, i32* %prop_size, align 4
  %div = udiv i32 %62, 5
  store i32 %div, i32* %nguides, align 4
  store i32 0, i32* %i72, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.97, %sw.bb.69
  %63 = load i32, i32* %i72, align 4
  %64 = load i32, i32* %nguides, align 4
  %cmp74 = icmp slt i32 %63, %64
  br i1 %cmp74, label %for.body.76, label %for.end.99

for.body.76:                                      ; preds = %for.cond.73
  %65 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp77 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %65, i32 0, i32 2
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %fp77, align 8
  %call78 = call i32 @xcf_read_int32(%struct._IO_FILE* %66, i32* %position, i32 1)
  %67 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp79 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %67, i32 0, i32 3
  %68 = load i32, i32* %cp79, align 4
  %add80 = add i32 %68, %call78
  store i32 %add80, i32* %cp79, align 4
  %69 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp81 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %69, i32 0, i32 2
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %fp81, align 8
  %call82 = call i32 @xcf_read_int8(%struct._IO_FILE* %70, i8* %orientation, i32 1)
  %71 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp83 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %71, i32 0, i32 3
  %72 = load i32, i32* %cp83, align 4
  %add84 = add i32 %72, %call82
  store i32 %add84, i32* %cp83, align 4
  %73 = load i32, i32* %position, align 4
  %cmp85 = icmp slt i32 %73, 0
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %for.body.76
  br label %for.inc.97

if.end.88:                                        ; preds = %for.body.76
  %74 = load i8, i8* %orientation, align 1
  %conv89 = sext i8 %74 to i32
  switch i32 %conv89, label %sw.default [
    i32 1, label %sw.bb.90
    i32 2, label %sw.bb.92
  ]

sw.bb.90:                                         ; preds = %if.end.88
  %75 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %76 = load i32, i32* %position, align 4
  %call91 = call %struct._GimpGuide* @gimp_image_add_hguide(%struct._GimpImage* %75, i32 %76, i32 0)
  br label %sw.epilog

sw.bb.92:                                         ; preds = %if.end.88
  %77 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %78 = load i32, i32* %position, align 4
  %call93 = call %struct._GimpGuide* @gimp_image_add_vguide(%struct._GimpImage* %77, i32 %78, i32 0)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.88
  %79 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %gimp94 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %79, i32 0, i32 0
  %80 = load %struct._Gimp*, %struct._Gimp** %gimp94, align 8
  %81 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress95 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %81, i32 0, i32 1
  %82 = load %struct._GimpProgress*, %struct._GimpProgress** %progress95, align 8
  %83 = bitcast %struct._GimpProgress* %82 to %struct._GTypeInstance*
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 80)
  %84 = bitcast %struct._GTypeInstance* %call96 to %struct._GObject*
  call void @gimp_message_literal(%struct._Gimp* %80, %struct._GObject* %84, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0))
  br label %for.inc.97

sw.epilog:                                        ; preds = %sw.bb.92, %sw.bb.90
  br label %for.inc.97

for.inc.97:                                       ; preds = %sw.epilog, %sw.default, %if.then.87
  %85 = load i32, i32* %i72, align 4
  %inc98 = add nsw i32 %85, 1
  store i32 %inc98, i32* %i72, align 4
  br label %for.cond.73

for.end.99:                                       ; preds = %for.cond.73
  %86 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %guides = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %86, i32 0, i32 24
  %87 = load %struct._GList*, %struct._GList** %guides, align 8
  %call100 = call %struct._GList* @g_list_reverse(%struct._GList* %87)
  %88 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %guides101 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %88, i32 0, i32 24
  store %struct._GList* %call100, %struct._GList** %guides101, align 8
  br label %sw.epilog.314

sw.bb.102:                                        ; preds = %if.end
  %89 = load i32, i32* %prop_size, align 4
  %div104 = udiv i32 %89, 8
  store i32 %div104, i32* %n_sample_points, align 4
  store i32 0, i32* %i103, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.118, %sw.bb.102
  %90 = load i32, i32* %i103, align 4
  %91 = load i32, i32* %n_sample_points, align 4
  %cmp106 = icmp slt i32 %90, %91
  br i1 %cmp106, label %for.body.108, label %for.end.120

for.body.108:                                     ; preds = %for.cond.105
  %92 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp109 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %92, i32 0, i32 2
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %fp109, align 8
  %call110 = call i32 @xcf_read_int32(%struct._IO_FILE* %93, i32* %x, i32 1)
  %94 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp111 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %94, i32 0, i32 3
  %95 = load i32, i32* %cp111, align 4
  %add112 = add i32 %95, %call110
  store i32 %add112, i32* %cp111, align 4
  %96 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp113 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %96, i32 0, i32 2
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %fp113, align 8
  %call114 = call i32 @xcf_read_int32(%struct._IO_FILE* %97, i32* %y, i32 1)
  %98 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp115 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %98, i32 0, i32 3
  %99 = load i32, i32* %cp115, align 4
  %add116 = add i32 %99, %call114
  store i32 %add116, i32* %cp115, align 4
  %100 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %101 = load i32, i32* %x, align 4
  %102 = load i32, i32* %y, align 4
  %call117 = call %struct._GimpSamplePoint* @gimp_image_add_sample_point_at_pos(%struct._GimpImage* %100, i32 %101, i32 %102, i32 0)
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.108
  %103 = load i32, i32* %i103, align 4
  %inc119 = add nsw i32 %103, 1
  store i32 %inc119, i32* %i103, align 4
  br label %for.cond.105

for.end.120:                                      ; preds = %for.cond.105
  br label %sw.epilog.314

sw.bb.121:                                        ; preds = %if.end
  %104 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp122 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %104, i32 0, i32 2
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %fp122, align 8
  %call123 = call i32 @xcf_read_float(%struct._IO_FILE* %105, float* %xres, i32 1)
  %106 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp124 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %106, i32 0, i32 3
  %107 = load i32, i32* %cp124, align 4
  %add125 = add i32 %107, %call123
  store i32 %add125, i32* %cp124, align 4
  %108 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp126 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %108, i32 0, i32 2
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %fp126, align 8
  %call127 = call i32 @xcf_read_float(%struct._IO_FILE* %109, float* %yres, i32 1)
  %110 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp128 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %110, i32 0, i32 3
  %111 = load i32, i32* %cp128, align 4
  %add129 = add i32 %111, %call127
  store i32 %add129, i32* %cp128, align 4
  %112 = load float, float* %xres, align 4
  %conv130 = fpext float %112 to double
  %cmp131 = fcmp olt double %conv130, 5.000000e-03
  br i1 %cmp131, label %if.then.144, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.121
  %113 = load float, float* %xres, align 4
  %conv133 = fpext float %113 to double
  %cmp134 = fcmp ogt double %conv133, 6.553600e+04
  br i1 %cmp134, label %if.then.144, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %lor.lhs.false
  %114 = load float, float* %yres, align 4
  %conv137 = fpext float %114 to double
  %cmp138 = fcmp olt double %conv137, 5.000000e-03
  br i1 %cmp138, label %if.then.144, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %lor.lhs.false.136
  %115 = load float, float* %yres, align 4
  %conv141 = fpext float %115 to double
  %cmp142 = fcmp ogt double %conv141, 6.553600e+04
  br i1 %cmp142, label %if.then.144, label %if.end.153

if.then.144:                                      ; preds = %lor.lhs.false.140, %lor.lhs.false.136, %lor.lhs.false, %sw.bb.121
  %116 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp145 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %116, i32 0, i32 1
  %117 = load %struct._Gimp*, %struct._Gimp** %gimp145, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %117, i32 0, i32 1
  %118 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %default_image = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %118, i32 0, i32 35
  %119 = load %struct._GimpTemplate*, %struct._GimpTemplate** %default_image, align 8
  store %struct._GimpTemplate* %119, %struct._GimpTemplate** %template, align 8
  %120 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %gimp146 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %120, i32 0, i32 0
  %121 = load %struct._Gimp*, %struct._Gimp** %gimp146, align 8
  %122 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress147 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %122, i32 0, i32 1
  %123 = load %struct._GimpProgress*, %struct._GimpProgress** %progress147, align 8
  %124 = bitcast %struct._GimpProgress* %123 to %struct._GTypeInstance*
  %call148 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 80)
  %125 = bitcast %struct._GTypeInstance* %call148 to %struct._GObject*
  call void @gimp_message_literal(%struct._Gimp* %121, %struct._GObject* %125, i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0))
  %126 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %call149 = call double @gimp_template_get_resolution_x(%struct._GimpTemplate* %126)
  %conv150 = fptrunc double %call149 to float
  store float %conv150, float* %xres, align 4
  %127 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %call151 = call double @gimp_template_get_resolution_y(%struct._GimpTemplate* %127)
  %conv152 = fptrunc double %call151 to float
  store float %conv152, float* %yres, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.144, %lor.lhs.false.140
  %128 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %129 = load float, float* %xres, align 4
  %conv154 = fpext float %129 to double
  %130 = load float, float* %yres, align 4
  %conv155 = fpext float %130 to double
  call void @gimp_image_set_resolution(%struct._GimpImage* %128, double %conv154, double %conv155)
  br label %sw.epilog.314

sw.bb.156:                                        ; preds = %if.end
  %131 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp157 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %131, i32 0, i32 2
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %fp157, align 8
  %133 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %tattoo_state = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %133, i32 0, i32 5
  %call158 = call i32 @xcf_read_int32(%struct._IO_FILE* %132, i32* %tattoo_state, i32 1)
  %134 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp159 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %134, i32 0, i32 3
  %135 = load i32, i32* %cp159, align 4
  %add160 = add i32 %135, %call158
  store i32 %add160, i32* %cp159, align 4
  br label %sw.epilog.314

sw.bb.161:                                        ; preds = %if.end
  %136 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp162 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %136, i32 0, i32 3
  %137 = load i32, i32* %cp162, align 4
  %conv163 = zext i32 %137 to i64
  store i64 %conv163, i64* %base, align 8
  br label %while.cond.164

while.cond.164:                                   ; preds = %if.end.174, %sw.bb.161
  %138 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp165 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %138, i32 0, i32 3
  %139 = load i32, i32* %cp165, align 4
  %conv166 = zext i32 %139 to i64
  %140 = load i64, i64* %base, align 8
  %sub = sub nsw i64 %conv166, %140
  %141 = load i32, i32* %prop_size, align 4
  %conv167 = zext i32 %141 to i64
  %cmp168 = icmp slt i64 %sub, %conv167
  br i1 %cmp168, label %while.body.170, label %while.end

while.body.170:                                   ; preds = %while.cond.164
  %142 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %call171 = call %struct._GimpParasite* @xcf_load_parasite(%struct._XcfInfo* %142)
  store %struct._GimpParasite* %call171, %struct._GimpParasite** %p, align 8
  %143 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  %tobool172 = icmp ne %struct._GimpParasite* %143, null
  br i1 %tobool172, label %if.end.174, label %if.then.173

if.then.173:                                      ; preds = %while.body.170
  store i32 0, i32* %retval
  br label %return

if.end.174:                                       ; preds = %while.body.170
  %144 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %145 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  call void @gimp_image_parasite_attach(%struct._GimpImage* %144, %struct._GimpParasite* %145)
  %146 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %146)
  br label %while.cond.164

while.end:                                        ; preds = %while.cond.164
  %147 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp175 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %147, i32 0, i32 3
  %148 = load i32, i32* %cp175, align 4
  %conv176 = zext i32 %148 to i64
  %149 = load i64, i64* %base, align 8
  %sub177 = sub nsw i64 %conv176, %149
  %150 = load i32, i32* %prop_size, align 4
  %conv178 = zext i32 %150 to i64
  %cmp179 = icmp ne i64 %sub177, %conv178
  br i1 %cmp179, label %if.then.181, label %if.end.185

if.then.181:                                      ; preds = %while.end
  %151 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %gimp182 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %151, i32 0, i32 0
  %152 = load %struct._Gimp*, %struct._Gimp** %gimp182, align 8
  %153 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress183 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %153, i32 0, i32 1
  %154 = load %struct._GimpProgress*, %struct._GimpProgress** %progress183, align 8
  %155 = bitcast %struct._GimpProgress* %154 to %struct._GTypeInstance*
  %call184 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %155, i64 80)
  %156 = bitcast %struct._GTypeInstance* %call184 to %struct._GObject*
  call void @gimp_message_literal(%struct._Gimp* %152, %struct._GObject* %156, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.181, %while.end
  br label %sw.epilog.314

sw.bb.186:                                        ; preds = %if.end
  %157 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp187 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %157, i32 0, i32 2
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %fp187, align 8
  %call188 = call i32 @xcf_read_int32(%struct._IO_FILE* %158, i32* %unit, i32 1)
  %159 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp189 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %159, i32 0, i32 3
  %160 = load i32, i32* %cp189, align 4
  %add190 = add i32 %160, %call188
  store i32 %add190, i32* %cp189, align 4
  %161 = load i32, i32* %unit, align 4
  %cmp191 = icmp ule i32 %161, 0
  br i1 %cmp191, label %if.then.197, label %lor.lhs.false.193

lor.lhs.false.193:                                ; preds = %sw.bb.186
  %162 = load i32, i32* %unit, align 4
  %call194 = call i32 @gimp_unit_get_number_of_built_in_units() #6
  %cmp195 = icmp uge i32 %162, %call194
  br i1 %cmp195, label %if.then.197, label %if.end.201

if.then.197:                                      ; preds = %lor.lhs.false.193, %sw.bb.186
  %163 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %gimp198 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %163, i32 0, i32 0
  %164 = load %struct._Gimp*, %struct._Gimp** %gimp198, align 8
  %165 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress199 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %165, i32 0, i32 1
  %166 = load %struct._GimpProgress*, %struct._GimpProgress** %progress199, align 8
  %167 = bitcast %struct._GimpProgress* %166 to %struct._GTypeInstance*
  %call200 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %167, i64 80)
  %168 = bitcast %struct._GTypeInstance* %call200 to %struct._GObject*
  call void @gimp_message_literal(%struct._Gimp* %164, %struct._GObject* %168, i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i32 0, i32 0))
  store i32 1, i32* %unit, align 4
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.197, %lor.lhs.false.193
  %169 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %170 = load i32, i32* %unit, align 4
  call void @gimp_image_set_unit(%struct._GimpImage* %169, i32 %170)
  br label %sw.epilog.314

sw.bb.202:                                        ; preds = %if.end
  %171 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %172 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call203 = call i32 @xcf_load_old_paths(%struct._XcfInfo* %171, %struct._GimpImage* %172)
  br label %sw.epilog.314

sw.bb.204:                                        ; preds = %if.end
  %173 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp207 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %173, i32 0, i32 2
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** %fp207, align 8
  %call208 = call i32 @xcf_read_float(%struct._IO_FILE* %174, float* %factor, i32 1)
  %175 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp209 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %175, i32 0, i32 3
  %176 = load i32, i32* %cp209, align 4
  %add210 = add i32 %176, %call208
  store i32 %add210, i32* %cp209, align 4
  %177 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp211 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %177, i32 0, i32 2
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** %fp211, align 8
  %call212 = call i32 @xcf_read_int32(%struct._IO_FILE* %178, i32* %digits, i32 1)
  %179 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp213 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %179, i32 0, i32 3
  %180 = load i32, i32* %cp213, align 4
  %add214 = add i32 %180, %call212
  store i32 %add214, i32* %cp213, align 4
  %181 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp215 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %181, i32 0, i32 2
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %fp215, align 8
  %arraydecay216 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i32 0
  %call217 = call i32 @xcf_read_string(%struct._IO_FILE* %182, i8** %arraydecay216, i32 5)
  %183 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp218 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %183, i32 0, i32 3
  %184 = load i32, i32* %cp218, align 4
  %add219 = add i32 %184, %call217
  store i32 %add219, i32* %cp218, align 4
  store i32 0, i32* %i206, align 4
  br label %for.cond.220

for.cond.220:                                     ; preds = %for.inc.233, %sw.bb.204
  %185 = load i32, i32* %i206, align 4
  %cmp221 = icmp slt i32 %185, 5
  br i1 %cmp221, label %for.body.223, label %for.end.235

for.body.223:                                     ; preds = %for.cond.220
  %186 = load i32, i32* %i206, align 4
  %idxprom224 = sext i32 %186 to i64
  %arrayidx225 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 %idxprom224
  %187 = load i8*, i8** %arrayidx225, align 8
  %cmp226 = icmp eq i8* %187, null
  br i1 %cmp226, label %if.then.228, label %if.end.232

if.then.228:                                      ; preds = %for.body.223
  %call229 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0))
  %188 = load i32, i32* %i206, align 4
  %idxprom230 = sext i32 %188 to i64
  %arrayidx231 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 %idxprom230
  store i8* %call229, i8** %arrayidx231, align 8
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.228, %for.body.223
  br label %for.inc.233

for.inc.233:                                      ; preds = %if.end.232
  %189 = load i32, i32* %i206, align 4
  %inc234 = add nsw i32 %189, 1
  store i32 %inc234, i32* %i206, align 4
  br label %for.cond.220

for.end.235:                                      ; preds = %for.cond.220
  %call236 = call i32 @gimp_unit_get_number_of_units()
  store i32 %call236, i32* %num_units, align 4
  %call237 = call i32 @gimp_unit_get_number_of_built_in_units() #6
  store i32 %call237, i32* %unit205, align 4
  br label %for.cond.238

for.cond.238:                                     ; preds = %for.inc.264, %for.end.235
  %190 = load i32, i32* %unit205, align 4
  %191 = load i32, i32* %num_units, align 4
  %cmp239 = icmp ult i32 %190, %191
  br i1 %cmp239, label %for.body.241, label %for.end.266

for.body.241:                                     ; preds = %for.cond.238
  %192 = load i32, i32* %unit205, align 4
  %call242 = call double @gimp_unit_get_factor(i32 %192)
  %193 = load float, float* %factor, align 4
  %conv243 = fpext float %193 to double
  %sub244 = fsub double %call242, %conv243
  %cmp245 = fcmp olt double %sub244, 0.000000e+00
  br i1 %cmp245, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.241
  %194 = load i32, i32* %unit205, align 4
  %call247 = call double @gimp_unit_get_factor(i32 %194)
  %195 = load float, float* %factor, align 4
  %conv248 = fpext float %195 to double
  %sub249 = fsub double %call247, %conv248
  %sub250 = fsub double -0.000000e+00, %sub249
  br label %cond.end

cond.false:                                       ; preds = %for.body.241
  %196 = load i32, i32* %unit205, align 4
  %call251 = call double @gimp_unit_get_factor(i32 %196)
  %197 = load float, float* %factor, align 4
  %conv252 = fpext float %197 to double
  %sub253 = fsub double %call251, %conv252
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub250, %cond.true ], [ %sub253, %cond.false ]
  %cmp254 = fcmp olt double %cond, 1.000000e-05
  br i1 %cmp254, label %land.lhs.true.256, label %if.end.263

land.lhs.true.256:                                ; preds = %cond.end
  %arrayidx257 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 0
  %198 = load i8*, i8** %arrayidx257, align 8
  %199 = load i32, i32* %unit205, align 4
  %call258 = call i8* @gimp_unit_get_identifier(i32 %199)
  %call259 = call i32 @strcmp(i8* %198, i8* %call258) #7
  %cmp260 = icmp eq i32 %call259, 0
  br i1 %cmp260, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %land.lhs.true.256
  br label %for.end.266

if.end.263:                                       ; preds = %land.lhs.true.256, %cond.end
  br label %for.inc.264

for.inc.264:                                      ; preds = %if.end.263
  %200 = load i32, i32* %unit205, align 4
  %inc265 = add i32 %200, 1
  store i32 %inc265, i32* %unit205, align 4
  br label %for.cond.238

for.end.266:                                      ; preds = %if.then.262, %for.cond.238
  %201 = load i32, i32* %unit205, align 4
  %202 = load i32, i32* %num_units, align 4
  %cmp267 = icmp eq i32 %201, %202
  br i1 %cmp267, label %if.then.269, label %if.end.277

if.then.269:                                      ; preds = %for.end.266
  %arrayidx270 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 0
  %203 = load i8*, i8** %arrayidx270, align 8
  %204 = load float, float* %factor, align 4
  %conv271 = fpext float %204 to double
  %205 = load i32, i32* %digits, align 4
  %arrayidx272 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 1
  %206 = load i8*, i8** %arrayidx272, align 8
  %arrayidx273 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 2
  %207 = load i8*, i8** %arrayidx273, align 8
  %arrayidx274 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 3
  %208 = load i8*, i8** %arrayidx274, align 8
  %arrayidx275 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 4
  %209 = load i8*, i8** %arrayidx275, align 8
  %call276 = call i32 @gimp_unit_new(i8* %203, double %conv271, i32 %205, i8* %206, i8* %207, i8* %208, i8* %209)
  store i32 %call276, i32* %unit205, align 4
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.269, %for.end.266
  %210 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %211 = load i32, i32* %unit205, align 4
  call void @gimp_image_set_unit(%struct._GimpImage* %210, i32 %211)
  store i32 0, i32* %i206, align 4
  br label %for.cond.278

for.cond.278:                                     ; preds = %for.inc.284, %if.end.277
  %212 = load i32, i32* %i206, align 4
  %cmp279 = icmp slt i32 %212, 5
  br i1 %cmp279, label %for.body.281, label %for.end.286

for.body.281:                                     ; preds = %for.cond.278
  %213 = load i32, i32* %i206, align 4
  %idxprom282 = sext i32 %213 to i64
  %arrayidx283 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 %idxprom282
  %214 = load i8*, i8** %arrayidx283, align 8
  call void @g_free(i8* %214)
  br label %for.inc.284

for.inc.284:                                      ; preds = %for.body.281
  %215 = load i32, i32* %i206, align 4
  %inc285 = add nsw i32 %215, 1
  store i32 %inc285, i32* %i206, align 4
  br label %for.cond.278

for.end.286:                                      ; preds = %for.cond.278
  br label %sw.epilog.314

sw.bb.287:                                        ; preds = %if.end
  %216 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp289 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %216, i32 0, i32 3
  %217 = load i32, i32* %cp289, align 4
  store i32 %217, i32* %base288, align 4
  %218 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %219 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call290 = call i32 @xcf_load_vectors(%struct._XcfInfo* %218, %struct._GimpImage* %219)
  %tobool291 = icmp ne i32 %call290, 0
  br i1 %tobool291, label %if.then.292, label %if.else.304

if.then.292:                                      ; preds = %sw.bb.287
  %220 = load i32, i32* %base288, align 4
  %221 = load i32, i32* %prop_size, align 4
  %add293 = add i32 %220, %221
  %222 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp294 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %222, i32 0, i32 3
  %223 = load i32, i32* %cp294, align 4
  %cmp295 = icmp ne i32 %add293, %223
  br i1 %cmp295, label %if.then.297, label %if.end.303

if.then.297:                                      ; preds = %if.then.292
  %224 = load i32, i32* %base288, align 4
  %225 = load i32, i32* %prop_size, align 4
  %add298 = add i32 %224, %225
  %226 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp299 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %226, i32 0, i32 3
  %227 = load i32, i32* %cp299, align 4
  %sub300 = sub i32 %add298, %227
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i32 0, i32 0), i32 %sub300)
  %228 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %229 = load i32, i32* %base288, align 4
  %230 = load i32, i32* %prop_size, align 4
  %add301 = add i32 %229, %230
  %call302 = call i32 @xcf_seek_pos(%struct._XcfInfo* %228, i32 %add301, %struct._GError** null)
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.297, %if.then.292
  br label %if.end.307

if.else.304:                                      ; preds = %sw.bb.287
  %231 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %232 = load i32, i32* %base288, align 4
  %233 = load i32, i32* %prop_size, align 4
  %add305 = add i32 %232, %233
  %call306 = call i32 @xcf_seek_pos(%struct._XcfInfo* %231, i32 %add305, %struct._GError** null)
  br label %if.end.307

if.end.307:                                       ; preds = %if.else.304, %if.end.303
  br label %sw.epilog.314

sw.default.308:                                   ; preds = %if.end
  %234 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %235 = load i32, i32* %prop_size, align 4
  %conv309 = zext i32 %235 to i64
  %call310 = call i32 @xcf_skip_unknown_prop(%struct._XcfInfo* %234, i64 %conv309)
  %tobool311 = icmp ne i32 %call310, 0
  br i1 %tobool311, label %if.end.313, label %if.then.312

if.then.312:                                      ; preds = %sw.default.308
  store i32 0, i32* %retval
  br label %return

if.end.313:                                       ; preds = %sw.default.308
  br label %sw.epilog.314

sw.epilog.314:                                    ; preds = %if.end.313, %if.end.307, %for.end.286, %sw.bb.202, %if.end.201, %if.end.185, %sw.bb.156, %if.end.153, %for.end.120, %for.end.99, %if.end.66, %if.end.41
  br label %while.body

return:                                           ; preds = %if.then.312, %if.then.173, %if.then.61, %if.then.16, %if.then.3, %sw.bb, %if.then
  %236 = load i32, i32* %retval
  ret i32 %236
}

declare %struct._GimpParasite* @gimp_image_parasite_find(%struct._GimpImage*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind readnone
declare i8* @gimp_grid_parasite_name() #2

declare %struct._GimpGrid* @gimp_grid_from_parasite(%struct._GimpParasite*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @gimp_parasite_list_remove(%struct._GimpParasiteList*, i8*) #1

declare i8* @gimp_parasite_name(%struct._GimpParasite*) #1

declare void @gimp_image_set_grid(%struct._GimpImage*, %struct._GimpGrid*, i32) #1

declare void @g_object_unref(i8*) #1

declare i32 @xcf_seek_pos(%struct._XcfInfo*, i32, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpLayer* @xcf_load_layer(%struct._XcfInfo* %info, %struct._GimpImage* %image, %struct._GList** %item_path) #0 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %info.addr = alloca %struct._XcfInfo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %item_path.addr = alloca %struct._GList**, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %layer_mask = alloca %struct._GimpLayerMask*, align 8
  %hierarchy_offset = alloca i32, align 4
  %layer_mask_offset = alloca i32, align 4
  %apply_mask = alloca i32, align 4
  %edit_mask = alloca i32, align 4
  %show_mask = alloca i32, align 4
  %active = alloca i32, align 4
  %floating = alloca i32, align 4
  %group_layer_flags = alloca i32, align 4
  %text_layer_flags = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %type = alloca i32, align 4
  %is_fs_drawable = alloca i32, align 4
  %name = alloca i8*, align 8
  %expanded = alloca i32, align 4
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GList** %item_path, %struct._GList*** %item_path.addr, align 8
  store i32 1, i32* %apply_mask, align 4
  store i32 0, i32* %edit_mask, align 4
  store i32 0, i32* %show_mask, align 4
  store i32 0, i32* %group_layer_flags, align 4
  store i32 0, i32* %text_layer_flags, align 4
  %0 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %0, i32 0, i32 3
  %1 = load i32, i32* %cp, align 4
  %2 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel_offset = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %2, i32 0, i32 10
  %3 = load i32, i32* %floating_sel_offset, align 4
  %cmp = icmp eq i32 %1, %3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %is_fs_drawable, align 4
  %4 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %4, i32 0, i32 2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @xcf_read_int32(%struct._IO_FILE* %5, i32* %width, i32 1)
  %6 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %6, i32 0, i32 3
  %7 = load i32, i32* %cp1, align 4
  %add = add i32 %7, %call
  store i32 %add, i32* %cp1, align 4
  %8 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp2 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %8, i32 0, i32 2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %call3 = call i32 @xcf_read_int32(%struct._IO_FILE* %9, i32* %height, i32 1)
  %10 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp4 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %10, i32 0, i32 3
  %11 = load i32, i32* %cp4, align 4
  %add5 = add i32 %11, %call3
  store i32 %add5, i32* %cp4, align 4
  %12 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp6 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %12, i32 0, i32 2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp6, align 8
  %call7 = call i32 @xcf_read_int32(%struct._IO_FILE* %13, i32* %type, i32 1)
  %14 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp8 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %14, i32 0, i32 3
  %15 = load i32, i32* %cp8, align 4
  %add9 = add i32 %15, %call7
  store i32 %add9, i32* %cp8, align 4
  %16 = load i32, i32* %width, align 4
  %cmp10 = icmp sle i32 %16, 0
  br i1 %cmp10, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load i32, i32* %height, align 4
  %cmp12 = icmp sle i32 %17, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %18 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp14 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %18, i32 0, i32 2
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp14, align 8
  %call15 = call i32 @xcf_read_string(%struct._IO_FILE* %19, i8** %name, i32 1)
  %20 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp16 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %20, i32 0, i32 3
  %21 = load i32, i32* %cp16, align 4
  %add17 = add i32 %21, %call15
  store i32 %add17, i32* %cp16, align 4
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %23 = load i32, i32* %width, align 4
  %24 = load i32, i32* %height, align 4
  %25 = load i32, i32* %type, align 4
  %26 = load i8*, i8** %name, align 8
  %call18 = call %struct._GimpLayer* @gimp_layer_new(%struct._GimpImage* %22, i32 %23, i32 %24, i32 %25, i8* %26, double 2.550000e+02, i32 0)
  store %struct._GimpLayer* %call18, %struct._GimpLayer** %layer, align 8
  %27 = load i8*, i8** %name, align 8
  call void @g_free(i8* %27)
  %28 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool = icmp ne %struct._GimpLayer* %28, null
  br i1 %tobool, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.20:                                        ; preds = %if.end
  %29 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %31 = load %struct._GList**, %struct._GList*** %item_path.addr, align 8
  %call21 = call i32 @xcf_load_layer_props(%struct._XcfInfo* %29, %struct._GimpImage* %30, %struct._GimpLayer** %layer, %struct._GList** %31, i32* %apply_mask, i32* %edit_mask, i32* %show_mask, i32* %text_layer_flags, i32* %group_layer_flags)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.20
  br label %error

if.end.24:                                        ; preds = %if.end.20
  br label %do.body

do.body:                                          ; preds = %if.end.24
  %32 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %32, i32 0, i32 1
  %33 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool25 = icmp ne %struct._GimpProgress* %33, null
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %do.body
  %34 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress27 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %34, i32 0, i32 1
  %35 = load %struct._GimpProgress*, %struct._GimpProgress** %progress27, align 8
  call void @gimp_progress_pulse(%struct._GimpProgress* %35)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.28
  %36 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %active_layer = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %36, i32 0, i32 6
  %37 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer, align 8
  %38 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %cmp29 = icmp eq %struct._GimpLayer* %37, %38
  %conv30 = zext i1 %cmp29 to i32
  store i32 %conv30, i32* %active, align 4
  %39 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %39, i32 0, i32 9
  %40 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %41 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %cmp31 = icmp eq %struct._GimpLayer* %40, %41
  %conv32 = zext i1 %cmp31 to i32
  store i32 %conv32, i32* %floating, align 4
  %call33 = call i32 @gimp_text_layer_xcf_load_hack(%struct._GimpLayer** %layer)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.46

if.then.35:                                       ; preds = %do.end
  %42 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %43 = bitcast %struct._GimpLayer* %42 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_text_layer_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call36)
  %44 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpTextLayer*
  %45 = load i32, i32* %text_layer_flags, align 4
  call void @gimp_text_layer_set_xcf_flags(%struct._GimpTextLayer* %44, i32 %45)
  %46 = load i32, i32* %active, align 4
  %tobool38 = icmp ne i32 %46, 0
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.then.35
  %47 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %48 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %active_layer40 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %48, i32 0, i32 6
  store %struct._GimpLayer* %47, %struct._GimpLayer** %active_layer40, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.then.35
  %49 = load i32, i32* %floating, align 4
  %tobool42 = icmp ne i32 %49, 0
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.41
  %50 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %51 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel44 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %51, i32 0, i32 9
  store %struct._GimpLayer* %50, %struct._GimpLayer** %floating_sel44, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.41
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %do.end
  %52 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp47 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %52, i32 0, i32 2
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp47, align 8
  %call48 = call i32 @xcf_read_int32(%struct._IO_FILE* %53, i32* %hierarchy_offset, i32 1)
  %54 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp49 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %54, i32 0, i32 3
  %55 = load i32, i32* %cp49, align 4
  %add50 = add i32 %55, %call48
  store i32 %add50, i32* %cp49, align 4
  %56 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp51 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %56, i32 0, i32 2
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fp51, align 8
  %call52 = call i32 @xcf_read_int32(%struct._IO_FILE* %57, i32* %layer_mask_offset, i32 1)
  %58 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp53 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %58, i32 0, i32 3
  %59 = load i32, i32* %cp53, align 4
  %add54 = add i32 %59, %call52
  store i32 %add54, i32* %cp53, align 4
  %60 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %61 = bitcast %struct._GimpLayer* %60 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_viewable_get_type() #6
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call55)
  %62 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpViewable*
  %call57 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %62)
  %tobool58 = icmp ne %struct._GimpContainer* %call57, null
  br i1 %tobool58, label %if.else, label %if.then.59

if.then.59:                                       ; preds = %if.end.46
  %63 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %64 = load i32, i32* %hierarchy_offset, align 4
  %call60 = call i32 @xcf_seek_pos(%struct._XcfInfo* %63, i32 %64, %struct._GError** null)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %if.then.59
  br label %error

if.end.63:                                        ; preds = %if.then.59
  %65 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %66 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %67 = bitcast %struct._GimpLayer* %66 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_drawable_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call64)
  %68 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpDrawable*
  %call66 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %68)
  %call67 = call i32 @xcf_load_hierarchy(%struct._XcfInfo* %65, %struct._TileManager* %call66)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %if.end.63
  br label %error

if.end.70:                                        ; preds = %if.end.63
  br label %do.body.71

do.body.71:                                       ; preds = %if.end.70
  %69 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress72 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %69, i32 0, i32 1
  %70 = load %struct._GimpProgress*, %struct._GimpProgress** %progress72, align 8
  %tobool73 = icmp ne %struct._GimpProgress* %70, null
  br i1 %tobool73, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %do.body.71
  %71 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress75 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %71, i32 0, i32 1
  %72 = load %struct._GimpProgress*, %struct._GimpProgress** %progress75, align 8
  call void @gimp_progress_pulse(%struct._GimpProgress* %72)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %do.body.71
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  br label %if.end.80

if.else:                                          ; preds = %if.end.46
  %73 = load i32, i32* %group_layer_flags, align 4
  %and = and i32 %73, 1
  store i32 %and, i32* %expanded, align 4
  %74 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %75 = bitcast %struct._GimpLayer* %74 to %struct._GTypeInstance*
  %call78 = call i64 @gimp_viewable_get_type() #6
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call78)
  %76 = bitcast %struct._GTypeInstance* %call79 to %struct._GimpViewable*
  %77 = load i32, i32* %expanded, align 4
  call void @gimp_viewable_set_expanded(%struct._GimpViewable* %76, i32 %77)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else, %do.end.77
  %78 = load i32, i32* %layer_mask_offset, align 4
  %cmp81 = icmp ne i32 %78, 0
  br i1 %cmp81, label %if.then.83, label %if.end.101

if.then.83:                                       ; preds = %if.end.80
  %79 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %80 = load i32, i32* %layer_mask_offset, align 4
  %call84 = call i32 @xcf_seek_pos(%struct._XcfInfo* %79, i32 %80, %struct._GError** null)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.end.87, label %if.then.86

if.then.86:                                       ; preds = %if.then.83
  br label %error

if.end.87:                                        ; preds = %if.then.83
  %81 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %82 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call88 = call %struct._GimpLayerMask* @xcf_load_layer_mask(%struct._XcfInfo* %81, %struct._GimpImage* %82)
  store %struct._GimpLayerMask* %call88, %struct._GimpLayerMask** %layer_mask, align 8
  %83 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  %tobool89 = icmp ne %struct._GimpLayerMask* %83, null
  br i1 %tobool89, label %if.end.91, label %if.then.90

if.then.90:                                       ; preds = %if.end.87
  br label %error

if.end.91:                                        ; preds = %if.end.87
  br label %do.body.92

do.body.92:                                       ; preds = %if.end.91
  %84 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress93 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %84, i32 0, i32 1
  %85 = load %struct._GimpProgress*, %struct._GimpProgress** %progress93, align 8
  %tobool94 = icmp ne %struct._GimpProgress* %85, null
  br i1 %tobool94, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %do.body.92
  %86 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress96 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %86, i32 0, i32 1
  %87 = load %struct._GimpProgress*, %struct._GimpProgress** %progress96, align 8
  call void @gimp_progress_pulse(%struct._GimpProgress* %87)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %do.body.92
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  %88 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  %89 = load i32, i32* %apply_mask, align 4
  call void @gimp_layer_mask_set_apply(%struct._GimpLayerMask* %88, i32 %89, i32 0)
  %90 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  %91 = load i32, i32* %edit_mask, align 4
  call void @gimp_layer_mask_set_edit(%struct._GimpLayerMask* %90, i32 %91)
  %92 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  %93 = load i32, i32* %show_mask, align 4
  call void @gimp_layer_mask_set_show(%struct._GimpLayerMask* %92, i32 %93, i32 0)
  %94 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %95 = bitcast %struct._GimpLayer* %94 to %struct._GTypeInstance*
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 80)
  %96 = bitcast %struct._GTypeInstance* %call99 to %struct._GObject*
  %97 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  %98 = bitcast %struct._GimpLayerMask* %97 to i8*
  %call100 = call i8* @g_object_ref_sink(i8* %98)
  call void @g_object_set_data_full(%struct._GObject* %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* %call100, void (i8*)* @g_object_unref)
  br label %if.end.101

if.end.101:                                       ; preds = %do.end.98, %if.end.80
  %99 = load i32, i32* %is_fs_drawable, align 4
  %tobool102 = icmp ne i32 %99, 0
  br i1 %tobool102, label %if.then.103, label %if.end.106

if.then.103:                                      ; preds = %if.end.101
  %100 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %101 = bitcast %struct._GimpLayer* %100 to %struct._GTypeInstance*
  %call104 = call i64 @gimp_drawable_get_type() #6
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call104)
  %102 = bitcast %struct._GTypeInstance* %call105 to %struct._GimpDrawable*
  %103 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel_drawable = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %103, i32 0, i32 8
  store %struct._GimpDrawable* %102, %struct._GimpDrawable** %floating_sel_drawable, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.103, %if.end.101
  %104 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  store %struct._GimpLayer* %104, %struct._GimpLayer** %retval
  br label %return

error:                                            ; preds = %if.then.90, %if.then.86, %if.then.69, %if.then.62, %if.then.23
  %105 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %106 = bitcast %struct._GimpLayer* %105 to i8*
  call void @g_object_unref(i8* %106)
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %error, %if.end.106, %if.then.19, %if.then
  %107 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %107
}

declare %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage*) #1

declare %struct._GimpItem* @gimp_item_stack_get_parent_by_path(%struct._GimpItemStack*, %struct._GList*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_stack_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare void @g_list_free(%struct._GList*) #1

declare i32 @gimp_image_add_layer(%struct._GimpImage*, %struct._GimpLayer*, %struct._GimpLayer*, i32, i32) #1

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpChannel* @xcf_load_channel(%struct._XcfInfo* %info, %struct._GimpImage* %image) #0 {
entry:
  %retval = alloca %struct._GimpChannel*, align 8
  %info.addr = alloca %struct._XcfInfo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %hierarchy_offset = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %is_fs_drawable = alloca i32, align 4
  %name = alloca i8*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @xcf_load_channel.color to i8*), i64 32, i32 8, i1 false)
  %1 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %1, i32 0, i32 3
  %2 = load i32, i32* %cp, align 4
  %3 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel_offset = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %3, i32 0, i32 10
  %4 = load i32, i32* %floating_sel_offset, align 4
  %cmp = icmp eq i32 %2, %4
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %is_fs_drawable, align 4
  %5 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %5, i32 0, i32 2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @xcf_read_int32(%struct._IO_FILE* %6, i32* %width, i32 1)
  %7 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %7, i32 0, i32 3
  %8 = load i32, i32* %cp1, align 4
  %add = add i32 %8, %call
  store i32 %add, i32* %cp1, align 4
  %9 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp2 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %9, i32 0, i32 2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %call3 = call i32 @xcf_read_int32(%struct._IO_FILE* %10, i32* %height, i32 1)
  %11 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp4 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %11, i32 0, i32 3
  %12 = load i32, i32* %cp4, align 4
  %add5 = add i32 %12, %call3
  store i32 %add5, i32* %cp4, align 4
  %13 = load i32, i32* %width, align 4
  %cmp6 = icmp sle i32 %13, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %14 = load i32, i32* %height, align 4
  %cmp8 = icmp sle i32 %14, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %15 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp10 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %15, i32 0, i32 2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp10, align 8
  %call11 = call i32 @xcf_read_string(%struct._IO_FILE* %16, i8** %name, i32 1)
  %17 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp12 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %17, i32 0, i32 3
  %18 = load i32, i32* %cp12, align 4
  %add13 = add i32 %18, %call11
  store i32 %add13, i32* %cp12, align 4
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %20 = load i32, i32* %width, align 4
  %21 = load i32, i32* %height, align 4
  %22 = load i8*, i8** %name, align 8
  %call14 = call %struct._GimpChannel* @gimp_channel_new(%struct._GimpImage* %19, i32 %20, i32 %21, i8* %22, %struct._GimpRGB* %color)
  store %struct._GimpChannel* %call14, %struct._GimpChannel** %channel, align 8
  %23 = load i8*, i8** %name, align 8
  call void @g_free(i8* %23)
  %24 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool = icmp ne %struct._GimpChannel* %24, null
  br i1 %tobool, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.16:                                        ; preds = %if.end
  %25 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call17 = call i32 @xcf_load_channel_props(%struct._XcfInfo* %25, %struct._GimpImage* %26, %struct._GimpChannel** %channel)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.16
  br label %error

if.end.20:                                        ; preds = %if.end.16
  br label %do.body

do.body:                                          ; preds = %if.end.20
  %27 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %27, i32 0, i32 1
  %28 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool21 = icmp ne %struct._GimpProgress* %28, null
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %do.body
  %29 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress23 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %29, i32 0, i32 1
  %30 = load %struct._GimpProgress*, %struct._GimpProgress** %progress23, align 8
  call void @gimp_progress_pulse(%struct._GimpProgress* %30)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.24
  %31 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp25 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %31, i32 0, i32 2
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp25, align 8
  %call26 = call i32 @xcf_read_int32(%struct._IO_FILE* %32, i32* %hierarchy_offset, i32 1)
  %33 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp27 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %33, i32 0, i32 3
  %34 = load i32, i32* %cp27, align 4
  %add28 = add i32 %34, %call26
  store i32 %add28, i32* %cp27, align 4
  %35 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %36 = load i32, i32* %hierarchy_offset, align 4
  %call29 = call i32 @xcf_seek_pos(%struct._XcfInfo* %35, i32 %36, %struct._GError** null)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %do.end
  br label %error

if.end.32:                                        ; preds = %do.end
  %37 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %38 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %39 = bitcast %struct._GimpChannel* %38 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_drawable_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call33)
  %40 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpDrawable*
  %call35 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %40)
  %call36 = call i32 @xcf_load_hierarchy(%struct._XcfInfo* %37, %struct._TileManager* %call35)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %if.end.32
  br label %error

if.end.39:                                        ; preds = %if.end.32
  br label %do.body.40

do.body.40:                                       ; preds = %if.end.39
  %41 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress41 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %41, i32 0, i32 1
  %42 = load %struct._GimpProgress*, %struct._GimpProgress** %progress41, align 8
  %tobool42 = icmp ne %struct._GimpProgress* %42, null
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %do.body.40
  %43 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress44 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %43, i32 0, i32 1
  %44 = load %struct._GimpProgress*, %struct._GimpProgress** %progress44, align 8
  call void @gimp_progress_pulse(%struct._GimpProgress* %44)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %do.body.40
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %45 = load i32, i32* %is_fs_drawable, align 4
  %tobool47 = icmp ne i32 %45, 0
  br i1 %tobool47, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %do.end.46
  %46 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %47 = bitcast %struct._GimpChannel* %46 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_drawable_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call49)
  %48 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpDrawable*
  %49 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel_drawable = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %49, i32 0, i32 8
  store %struct._GimpDrawable* %48, %struct._GimpDrawable** %floating_sel_drawable, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %do.end.46
  %50 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  store %struct._GimpChannel* %50, %struct._GimpChannel** %retval
  br label %return

error:                                            ; preds = %if.then.38, %if.then.31, %if.then.19
  %51 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %52 = bitcast %struct._GimpChannel* %51 to i8*
  call void @g_object_unref(i8* %52)
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

return:                                           ; preds = %error, %if.end.51, %if.then.15, %if.then
  %53 = load %struct._GimpChannel*, %struct._GimpChannel** %retval
  ret %struct._GimpChannel* %53
}

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare i32 @gimp_image_add_channel(%struct._GimpImage*, %struct._GimpChannel*, %struct._GimpChannel*, i32, i32) #1

declare %struct._GimpContainer* @gimp_image_get_channels(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define internal i32 @xcf_find_layer_offset_table(%struct._XcfInfo* %info, i64 %offset) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %offset.addr = alloca i64, align 8
  %c = alloca i8, align 1
  %buf = alloca [4 x i8], align 1
  %layer_offset = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i8 0, i8* %c, align 1
  %0 = bitcast [4 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 4, i32 1, i1 false)
  %1 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %2 = load i64, i64* %offset.addr, align 8
  %conv = trunc i64 %2 to i32
  %call = call i32 @xcf_seek_pos(%struct._XcfInfo* %1, i32 %conv, %struct._GError** null)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i8, i8* %c, align 1
  %conv1 = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %4, i32 0, i32 2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call3 = call i32 @xcf_read_int8(%struct._IO_FILE* %5, i8* %c, i32 1)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %6 = load i64, i64* %offset.addr, align 8
  %inc = add nsw i64 %6, 1
  store i64 %inc, i64* %offset.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i8, i8* %c, align 1
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 0
  store i8 %7, i8* %arrayidx, align 1
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %8 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %8, 4
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp8 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %9, i32 0, i32 2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp8, align 8
  %call9 = call i32 @xcf_read_int8(%struct._IO_FILE* %10, i8* %c, i32 1)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %for.body
  %11 = load i8, i8* %c, align 1
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 %idxprom
  store i8 %11, i8* %arrayidx14, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %13 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %13, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %layer_offset, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.35, %for.end
  %14 = load i32, i32* %i, align 4
  %cmp17 = icmp slt i32 %14, 4
  br i1 %cmp17, label %for.body.19, label %for.end.37

for.body.19:                                      ; preds = %for.cond.16
  %15 = load i32, i32* %layer_offset, align 4
  %shl = shl i32 %15, 8
  %16 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 %idxprom20
  %17 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %17 to i32
  %or = or i32 %shl, %conv22
  store i32 %or, i32* %layer_offset, align 4
  %18 = load i32, i32* %layer_offset, align 4
  %conv23 = zext i32 %18 to i64
  %19 = load i64, i64* %offset.addr, align 8
  %sub = sub nsw i64 %19, 4
  %20 = load i32, i32* %i, align 4
  %conv24 = sext i32 %20 to i64
  %add = add nsw i64 %sub, %conv24
  %add25 = add nsw i64 %add, 12
  %cmp26 = icmp sge i64 %conv23, %add25
  br i1 %cmp26, label %if.then.28, label %if.end.34

if.then.28:                                       ; preds = %for.body.19
  %21 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %21, i32 0, i32 3
  store i32 0, i32* %cp, align 4
  %22 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %23 = load i64, i64* %offset.addr, align 8
  %sub29 = sub nsw i64 %23, 4
  %24 = load i32, i32* %i, align 4
  %conv30 = sext i32 %24 to i64
  %add31 = add nsw i64 %sub29, %conv30
  %conv32 = trunc i64 %add31 to i32
  %call33 = call i32 @xcf_seek_pos(%struct._XcfInfo* %22, i32 %conv32, %struct._GError** null)
  store i32 1, i32* %retval
  br label %return

if.end.34:                                        ; preds = %for.body.19
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %25 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %25, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.16

for.end.37:                                       ; preds = %for.cond.16
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.37, %if.then.28, %if.then.12, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal void @xcf_load_add_masks(%struct._GimpImage* %image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %layers = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage* %0)
  store %struct._GList* %call, %struct._GList** %layers, align 8
  %1 = load %struct._GList*, %struct._GList** %layers, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpLayer*
  store %struct._GimpLayer* %5, %struct._GimpLayer** %layer, align 8
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %call2 = call i8* @g_object_get_data(%struct._GObject* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  %9 = bitcast i8* %call2 to %struct._GimpLayerMask*
  store %struct._GimpLayerMask* %9, %struct._GimpLayerMask** %mask, align 8
  %10 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool3 = icmp ne %struct._GimpLayerMask* %10, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %12 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call4 = call %struct._GimpLayerMask* @gimp_layer_add_mask(%struct._GimpLayer* %11, %struct._GimpLayerMask* %12, i32 0, %struct._GError** null)
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %14 = bitcast %struct._GimpLayer* %13 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool6 = icmp ne %struct._GList* %16, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %18, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._GList*, %struct._GList** %layers, align 8
  call void @g_list_free(%struct._GList* %19)
  ret void
}

declare void @floating_sel_attach(%struct._GimpLayer*, %struct._GimpDrawable*) #1

declare %struct._GimpLayer* @gimp_image_set_active_layer(%struct._GimpImage*, %struct._GimpLayer*) #1

declare %struct._GimpChannel* @gimp_image_set_active_channel(%struct._GimpImage*, %struct._GimpChannel*) #1

declare void @gimp_image_set_filename(%struct._GimpImage*, i8*) #1

declare i32 @gimp_image_set_tattoo_state(%struct._GimpImage*, i32) #1

declare i32 @gimp_image_undo_enable(%struct._GimpImage*) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

declare i32 @g_file_error_quark() #1

declare %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare %struct._GimpLayerMask* @gimp_layer_add_mask(%struct._GimpLayer*, %struct._GimpLayerMask*, i32, %struct._GError**) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @xcf_load_prop(%struct._XcfInfo* %info, i32* %prop_type, i32* %prop_size) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %prop_type.addr = alloca i32*, align 8
  %prop_size.addr = alloca i32*, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store i32* %prop_type, i32** %prop_type.addr, align 8
  store i32* %prop_size, i32** %prop_size.addr, align 8
  %0 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %0, i32 0, i32 2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %2 = load i32*, i32** %prop_type.addr, align 8
  %call = call i32 @xcf_read_int32(%struct._IO_FILE* %1, i32* %2, i32 1)
  %cmp = icmp ne i32 %call, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %3, i32 0, i32 3
  %4 = load i32, i32* %cp, align 4
  %add = add i32 %4, 4
  store i32 %add, i32* %cp, align 4
  %5 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %5, i32 0, i32 2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %7 = load i32*, i32** %prop_size.addr, align 8
  %call2 = call i32 @xcf_read_int32(%struct._IO_FILE* %6, i32* %7, i32 1)
  %cmp3 = icmp ne i32 %call2, 4
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp6 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %8, i32 0, i32 3
  %9 = load i32, i32* %cp6, align 4
  %add7 = add i32 %9, 4
  store i32 %add7, i32* %cp6, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #1

declare i32 @xcf_read_int8(%struct._IO_FILE*, i8*, i32) #1

declare i32 @gimp_image_base_type(%struct._GimpImage*) #1

declare void @gimp_image_set_colormap(%struct._GimpImage*, i8*, i32, i32) #1

declare %struct._GimpGuide* @gimp_image_add_hguide(%struct._GimpImage*, i32, i32) #1

declare %struct._GimpGuide* @gimp_image_add_vguide(%struct._GimpImage*, i32, i32) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

declare %struct._GimpSamplePoint* @gimp_image_add_sample_point_at_pos(%struct._GimpImage*, i32, i32, i32) #1

declare i32 @xcf_read_float(%struct._IO_FILE*, float*, i32) #1

declare double @gimp_template_get_resolution_x(%struct._GimpTemplate*) #1

declare double @gimp_template_get_resolution_y(%struct._GimpTemplate*) #1

declare void @gimp_image_set_resolution(%struct._GimpImage*, double, double) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpParasite* @xcf_load_parasite(%struct._XcfInfo* %info) #0 {
entry:
  %retval = alloca %struct._GimpParasite*, align 8
  %info.addr = alloca %struct._XcfInfo*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %name = alloca i8*, align 8
  %flags = alloca i32, align 4
  %size = alloca i32, align 4
  %data = alloca i8*, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  %0 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %0, i32 0, i32 2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @xcf_read_string(%struct._IO_FILE* %1, i8** %name, i32 1)
  %2 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %2, i32 0, i32 3
  %3 = load i32, i32* %cp, align 4
  %add = add i32 %3, %call
  store i32 %add, i32* %cp, align 4
  %4 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %4, i32 0, i32 2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %call2 = call i32 @xcf_read_int32(%struct._IO_FILE* %5, i32* %flags, i32 1)
  %6 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp3 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %6, i32 0, i32 3
  %7 = load i32, i32* %cp3, align 4
  %add4 = add i32 %7, %call2
  store i32 %add4, i32* %cp3, align 4
  %8 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp5 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %8, i32 0, i32 2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp5, align 8
  %call6 = call i32 @xcf_read_int32(%struct._IO_FILE* %9, i32* %size, i32 1)
  %10 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp7 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %10, i32 0, i32 3
  %11 = load i32, i32* %cp7, align 4
  %add8 = add i32 %11, %call6
  store i32 %add8, i32* %cp7, align 4
  %12 = load i32, i32* %size, align 4
  %conv = zext i32 %12 to i64
  %cmp = icmp sgt i64 %conv, 268435456
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i32 0, i32 0), i64 268435456)
  %13 = load i8*, i8** %name, align 8
  call void @g_free(i8* %13)
  store %struct._GimpParasite* null, %struct._GimpParasite** %retval
  br label %return

if.end:                                           ; preds = %entry
  %14 = load i32, i32* %size, align 4
  %conv10 = zext i32 %14 to i64
  %call11 = call noalias i8* @g_malloc_n(i64 %conv10, i64 1)
  store i8* %call11, i8** %data, align 8
  %15 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp12 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %15, i32 0, i32 2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp12, align 8
  %17 = load i8*, i8** %data, align 8
  %18 = load i32, i32* %size, align 4
  %call13 = call i32 @xcf_read_int8(%struct._IO_FILE* %16, i8* %17, i32 %18)
  %19 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp14 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %19, i32 0, i32 3
  %20 = load i32, i32* %cp14, align 4
  %add15 = add i32 %20, %call13
  store i32 %add15, i32* %cp14, align 4
  %21 = load i8*, i8** %name, align 8
  %22 = load i32, i32* %flags, align 4
  %23 = load i32, i32* %size, align 4
  %24 = load i8*, i8** %data, align 8
  %call16 = call %struct._GimpParasite* @gimp_parasite_new(i8* %21, i32 %22, i32 %23, i8* %24)
  store %struct._GimpParasite* %call16, %struct._GimpParasite** %parasite, align 8
  %25 = load i8*, i8** %name, align 8
  call void @g_free(i8* %25)
  %26 = load i8*, i8** %data, align 8
  call void @g_free(i8* %26)
  %27 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  store %struct._GimpParasite* %27, %struct._GimpParasite** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %28 = load %struct._GimpParasite*, %struct._GimpParasite** %retval
  ret %struct._GimpParasite* %28
}

declare void @gimp_image_parasite_attach(%struct._GimpImage*, %struct._GimpParasite*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_unit_get_number_of_built_in_units() #2

declare void @gimp_image_set_unit(%struct._GimpImage*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @xcf_load_old_paths(%struct._XcfInfo* %info, %struct._GimpImage* %image) #0 {
entry:
  %info.addr = alloca %struct._XcfInfo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %num_paths = alloca i32, align 4
  %last_selected_row = alloca i32, align 4
  %active_vectors = alloca %struct._GimpVectors*, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %0, i32 0, i32 2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @xcf_read_int32(%struct._IO_FILE* %1, i32* %last_selected_row, i32 1)
  %2 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %2, i32 0, i32 3
  %3 = load i32, i32* %cp, align 4
  %add = add i32 %3, %call
  store i32 %add, i32* %cp, align 4
  %4 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %4, i32 0, i32 2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %call2 = call i32 @xcf_read_int32(%struct._IO_FILE* %5, i32* %num_paths, i32 1)
  %6 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp3 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %6, i32 0, i32 3
  %7 = load i32, i32* %cp3, align 4
  %add4 = add i32 %7, %call2
  store i32 %add4, i32* %cp3, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %8 = load i32, i32* %num_paths, align 4
  %dec = add i32 %8, -1
  store i32 %dec, i32* %num_paths, align 4
  %cmp = icmp ugt i32 %8, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call5 = call i32 @xcf_load_old_path(%struct._XcfInfo* %9, %struct._GimpImage* %10)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call6 = call %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage* %11)
  %12 = load i32, i32* %last_selected_row, align 4
  %call7 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %call6, i32 %12)
  %13 = bitcast %struct._GimpObject* %call7 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_vectors_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpVectors*
  store %struct._GimpVectors* %14, %struct._GimpVectors** %active_vectors, align 8
  %15 = load %struct._GimpVectors*, %struct._GimpVectors** %active_vectors, align 8
  %tobool = icmp ne %struct._GimpVectors* %15, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %17 = load %struct._GimpVectors*, %struct._GimpVectors** %active_vectors, align 8
  %call10 = call %struct._GimpVectors* @gimp_image_set_active_vectors(%struct._GimpImage* %16, %struct._GimpVectors* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 1
}

declare i32 @xcf_read_string(%struct._IO_FILE*, i8**, i32) #1

declare noalias i8* @g_strdup(i8*) #1

declare i32 @gimp_unit_get_number_of_units() #1

declare double @gimp_unit_get_factor(i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i8* @gimp_unit_get_identifier(i32) #1

declare i32 @gimp_unit_new(i8*, double, i32, i8*, i8*, i8*, i8*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @xcf_load_vectors(%struct._XcfInfo* %info, %struct._GimpImage* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %version = alloca i32, align 4
  %active_index = alloca i32, align 4
  %num_paths = alloca i32, align 4
  %active_vectors = alloca %struct._GimpVectors*, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %0, i32 0, i32 2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @xcf_read_int32(%struct._IO_FILE* %1, i32* %version, i32 1)
  %2 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %2, i32 0, i32 3
  %3 = load i32, i32* %cp, align 4
  %add = add i32 %3, %call
  store i32 %add, i32* %cp, align 4
  %4 = load i32, i32* %version, align 4
  %cmp = icmp ne i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %gimp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %5, i32 0, i32 0
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %7 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %7, i32 0, i32 1
  %8 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %9 = bitcast %struct._GimpProgress* %8 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %11 = load i32, i32* %version, align 4
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %6, %struct._GObject* %10, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0), i32 %11)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp2 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %12, i32 0, i32 2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %call3 = call i32 @xcf_read_int32(%struct._IO_FILE* %13, i32* %active_index, i32 1)
  %14 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp4 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %14, i32 0, i32 3
  %15 = load i32, i32* %cp4, align 4
  %add5 = add i32 %15, %call3
  store i32 %add5, i32* %cp4, align 4
  %16 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp6 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %16, i32 0, i32 2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp6, align 8
  %call7 = call i32 @xcf_read_int32(%struct._IO_FILE* %17, i32* %num_paths, i32 1)
  %18 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp8 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %18, i32 0, i32 3
  %19 = load i32, i32* %cp8, align 4
  %add9 = add i32 %19, %call7
  store i32 %add9, i32* %cp8, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %if.end
  %20 = load i32, i32* %num_paths, align 4
  %dec = add i32 %20, -1
  store i32 %dec, i32* %num_paths, align 4
  %cmp10 = icmp ugt i32 %20, 0
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call11 = call i32 @xcf_load_vector(%struct._XcfInfo* %21, %struct._GimpImage* %22)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call14 = call %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage* %23)
  %24 = load i32, i32* %active_index, align 4
  %call15 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %call14, i32 %24)
  %25 = bitcast %struct._GimpObject* %call15 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_vectors_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call16)
  %26 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpVectors*
  store %struct._GimpVectors* %26, %struct._GimpVectors** %active_vectors, align 8
  %27 = load %struct._GimpVectors*, %struct._GimpVectors** %active_vectors, align 8
  %tobool18 = icmp ne %struct._GimpVectors* %27, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %while.end
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %29 = load %struct._GimpVectors*, %struct._GimpVectors** %active_vectors, align 8
  %call20 = call %struct._GimpVectors* @gimp_image_set_active_vectors(%struct._GimpImage* %28, %struct._GimpVectors* %29)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %while.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.12, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare void @g_printerr(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @xcf_skip_unknown_prop(%struct._XcfInfo* %info, i64 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %size.addr = alloca i64, align 8
  %buf = alloca [16 x i8], align 16
  %amount = alloca i32, align 4
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end.8, %entry
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %1, i32 0, i32 2
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @feof(%struct._IO_FILE* %2) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %3 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp ult i64 16, %3
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 16, %cond.true ], [ %4, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %amount, align 4
  %5 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp2 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %5, i32 0, i32 2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %7 = load i32, i32* %amount, align 4
  %call3 = call i32 @xcf_read_int8(%struct._IO_FILE* %6, i8* %arraydecay, i32 %7)
  %8 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %8, i32 0, i32 3
  %9 = load i32, i32* %cp, align 4
  %add = add i32 %9, %call3
  store i32 %add, i32* %cp, align 4
  %10 = load i32, i32* %amount, align 4
  %cmp4 = icmp ult i32 16, %10
  br i1 %cmp4, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  %11 = load i32, i32* %amount, align 4
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.6
  %cond9 = phi i32 [ 16, %cond.true.6 ], [ %11, %cond.false.7 ]
  %conv10 = zext i32 %cond9 to i64
  %12 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %12, %conv10
  store i64 %sub, i64* %size.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

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
  call void @g_logv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @xcf_load_old_path(%struct._XcfInfo* %info, %struct._GimpImage* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %name = alloca i8*, align 8
  %linked = alloca i32, align 4
  %state = alloca i8, align 1
  %closed = alloca i32, align 4
  %num_points = alloca i32, align 4
  %version = alloca i32, align 4
  %tattoo = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %points = alloca %struct._GimpVectorsCompatPoint*, align 8
  %i = alloca i32, align 4
  %dummy = alloca i32, align 4
  %dummy27 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x71 = alloca float, align 4
  %y72 = alloca float, align 4
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 0, i32* %tattoo, align 4
  %0 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %0, i32 0, i32 2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @xcf_read_string(%struct._IO_FILE* %1, i8** %name, i32 1)
  %2 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %2, i32 0, i32 3
  %3 = load i32, i32* %cp, align 4
  %add = add i32 %3, %call
  store i32 %add, i32* %cp, align 4
  %4 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %4, i32 0, i32 2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %call2 = call i32 @xcf_read_int32(%struct._IO_FILE* %5, i32* %linked, i32 1)
  %6 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp3 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %6, i32 0, i32 3
  %7 = load i32, i32* %cp3, align 4
  %add4 = add i32 %7, %call2
  store i32 %add4, i32* %cp3, align 4
  %8 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp5 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %8, i32 0, i32 2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp5, align 8
  %call6 = call i32 @xcf_read_int8(%struct._IO_FILE* %9, i8* %state, i32 1)
  %10 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp7 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %10, i32 0, i32 3
  %11 = load i32, i32* %cp7, align 4
  %add8 = add i32 %11, %call6
  store i32 %add8, i32* %cp7, align 4
  %12 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp9 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %12, i32 0, i32 2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp9, align 8
  %call10 = call i32 @xcf_read_int32(%struct._IO_FILE* %13, i32* %closed, i32 1)
  %14 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp11 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %14, i32 0, i32 3
  %15 = load i32, i32* %cp11, align 4
  %add12 = add i32 %15, %call10
  store i32 %add12, i32* %cp11, align 4
  %16 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp13 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %16, i32 0, i32 2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp13, align 8
  %call14 = call i32 @xcf_read_int32(%struct._IO_FILE* %17, i32* %num_points, i32 1)
  %18 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp15 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %18, i32 0, i32 3
  %19 = load i32, i32* %cp15, align 4
  %add16 = add i32 %19, %call14
  store i32 %add16, i32* %cp15, align 4
  %20 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp17 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %20, i32 0, i32 2
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp17, align 8
  %call18 = call i32 @xcf_read_int32(%struct._IO_FILE* %21, i32* %version, i32 1)
  %22 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp19 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %22, i32 0, i32 3
  %23 = load i32, i32* %cp19, align 4
  %add20 = add i32 %23, %call18
  store i32 %add20, i32* %cp19, align 4
  %24 = load i32, i32* %version, align 4
  %cmp = icmp eq i32 %24, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %25 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp21 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %25, i32 0, i32 2
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp21, align 8
  %call22 = call i32 @xcf_read_int32(%struct._IO_FILE* %26, i32* %dummy, i32 1)
  %27 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp23 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %27, i32 0, i32 3
  %28 = load i32, i32* %cp23, align 4
  %add24 = add i32 %28, %call22
  store i32 %add24, i32* %cp23, align 4
  br label %if.end.40

if.else:                                          ; preds = %entry
  %29 = load i32, i32* %version, align 4
  %cmp25 = icmp eq i32 %29, 3
  br i1 %cmp25, label %if.then.26, label %if.else.36

if.then.26:                                       ; preds = %if.else
  %30 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp28 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %30, i32 0, i32 2
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp28, align 8
  %call29 = call i32 @xcf_read_int32(%struct._IO_FILE* %31, i32* %dummy27, i32 1)
  %32 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp30 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %32, i32 0, i32 3
  %33 = load i32, i32* %cp30, align 4
  %add31 = add i32 %33, %call29
  store i32 %add31, i32* %cp30, align 4
  %34 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp32 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %34, i32 0, i32 2
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp32, align 8
  %call33 = call i32 @xcf_read_int32(%struct._IO_FILE* %35, i32* %tattoo, i32 1)
  %36 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp34 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %36, i32 0, i32 3
  %37 = load i32, i32* %cp34, align 4
  %add35 = add i32 %37, %call33
  store i32 %add35, i32* %cp34, align 4
  br label %if.end.39

if.else.36:                                       ; preds = %if.else
  %38 = load i32, i32* %version, align 4
  %cmp37 = icmp ne i32 %38, 1
  br i1 %cmp37, label %if.then.38, label %if.end

if.then.38:                                       ; preds = %if.else.36
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.36
  br label %if.end.39

if.end.39:                                        ; preds = %if.end, %if.then.26
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then
  %39 = load i32, i32* %num_points, align 4
  %cmp41 = icmp eq i32 %39, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.40
  %40 = load i8*, i8** %name, align 8
  call void @g_free(i8* %40)
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.40
  %41 = load i32, i32* %num_points, align 4
  %conv = zext i32 %41 to i64
  %call44 = call noalias i8* @g_malloc0_n(i64 %conv, i64 24)
  %42 = bitcast i8* %call44 to %struct._GimpVectorsCompatPoint*
  store %struct._GimpVectorsCompatPoint* %42, %struct._GimpVectorsCompatPoint** %points, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.43
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %num_points, align 4
  %cmp45 = icmp ult i32 %43, %44
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load i32, i32* %version, align 4
  %cmp47 = icmp eq i32 %45, 1
  br i1 %cmp47, label %if.then.49, label %if.else.70

if.then.49:                                       ; preds = %for.body
  %46 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp50 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %46, i32 0, i32 2
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp50, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom = sext i32 %48 to i64
  %49 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %49, i64 %idxprom
  %type = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx, i32 0, i32 0
  %call51 = call i32 @xcf_read_int32(%struct._IO_FILE* %47, i32* %type, i32 1)
  %50 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp52 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %50, i32 0, i32 3
  %51 = load i32, i32* %cp52, align 4
  %add53 = add i32 %51, %call51
  store i32 %add53, i32* %cp52, align 4
  %52 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp54 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %52, i32 0, i32 2
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp54, align 8
  %call55 = call i32 @xcf_read_int32(%struct._IO_FILE* %53, i32* %x, i32 1)
  %54 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp56 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %54, i32 0, i32 3
  %55 = load i32, i32* %cp56, align 4
  %add57 = add i32 %55, %call55
  store i32 %add57, i32* %cp56, align 4
  %56 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp58 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %56, i32 0, i32 2
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fp58, align 8
  %call59 = call i32 @xcf_read_int32(%struct._IO_FILE* %57, i32* %y, i32 1)
  %58 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp60 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %58, i32 0, i32 3
  %59 = load i32, i32* %cp60, align 4
  %add61 = add i32 %59, %call59
  store i32 %add61, i32* %cp60, align 4
  %60 = load i32, i32* %x, align 4
  %conv62 = sitofp i32 %60 to double
  %61 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %61 to i64
  %62 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx64 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %62, i64 %idxprom63
  %x65 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx64, i32 0, i32 1
  store double %conv62, double* %x65, align 8
  %63 = load i32, i32* %y, align 4
  %conv66 = sitofp i32 %63 to double
  %64 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %64 to i64
  %65 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx68 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %65, i64 %idxprom67
  %y69 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx68, i32 0, i32 2
  store double %conv66, double* %y69, align 8
  br label %if.end.96

if.else.70:                                       ; preds = %for.body
  %66 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp73 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %66, i32 0, i32 2
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp73, align 8
  %68 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %68 to i64
  %69 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx75 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %69, i64 %idxprom74
  %type76 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx75, i32 0, i32 0
  %call77 = call i32 @xcf_read_int32(%struct._IO_FILE* %67, i32* %type76, i32 1)
  %70 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp78 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %70, i32 0, i32 3
  %71 = load i32, i32* %cp78, align 4
  %add79 = add i32 %71, %call77
  store i32 %add79, i32* %cp78, align 4
  %72 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp80 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %72, i32 0, i32 2
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %fp80, align 8
  %call81 = call i32 @xcf_read_float(%struct._IO_FILE* %73, float* %x71, i32 1)
  %74 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp82 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %74, i32 0, i32 3
  %75 = load i32, i32* %cp82, align 4
  %add83 = add i32 %75, %call81
  store i32 %add83, i32* %cp82, align 4
  %76 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp84 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %76, i32 0, i32 2
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fp84, align 8
  %call85 = call i32 @xcf_read_float(%struct._IO_FILE* %77, float* %y72, i32 1)
  %78 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp86 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %78, i32 0, i32 3
  %79 = load i32, i32* %cp86, align 4
  %add87 = add i32 %79, %call85
  store i32 %add87, i32* %cp86, align 4
  %80 = load float, float* %x71, align 4
  %conv88 = fpext float %80 to double
  %81 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %81 to i64
  %82 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx90 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %82, i64 %idxprom89
  %x91 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx90, i32 0, i32 1
  store double %conv88, double* %x91, align 8
  %83 = load float, float* %y72, align 4
  %conv92 = fpext float %83 to double
  %84 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %84 to i64
  %85 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx94 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %85, i64 %idxprom93
  %y95 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx94, i32 0, i32 2
  store double %conv92, double* %y95, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.70, %if.then.49
  br label %for.inc

for.inc:                                          ; preds = %if.end.96
  %86 = load i32, i32* %i, align 4
  %inc = add nsw i32 %86, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %87 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %88 = load i8*, i8** %name, align 8
  %89 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %90 = load i32, i32* %num_points, align 4
  %91 = load i32, i32* %closed, align 4
  %call97 = call %struct._GimpVectors* @gimp_vectors_compat_new(%struct._GimpImage* %87, i8* %88, %struct._GimpVectorsCompatPoint* %89, i32 %90, i32 %91)
  store %struct._GimpVectors* %call97, %struct._GimpVectors** %vectors, align 8
  %92 = load i8*, i8** %name, align 8
  call void @g_free(i8* %92)
  %93 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %94 = bitcast %struct._GimpVectorsCompatPoint* %93 to i8*
  call void @g_free(i8* %94)
  %95 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %96 = bitcast %struct._GimpVectors* %95 to %struct._GTypeInstance*
  %call98 = call i64 @gimp_item_get_type() #6
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call98)
  %97 = bitcast %struct._GTypeInstance* %call99 to %struct._GimpItem*
  %98 = load i32, i32* %linked, align 4
  call void @gimp_item_set_linked(%struct._GimpItem* %97, i32 %98, i32 0)
  %99 = load i32, i32* %tattoo, align 4
  %tobool = icmp ne i32 %99, 0
  br i1 %tobool, label %if.then.100, label %if.end.103

if.then.100:                                      ; preds = %for.end
  %100 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %101 = bitcast %struct._GimpVectors* %100 to %struct._GTypeInstance*
  %call101 = call i64 @gimp_item_get_type() #6
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call101)
  %102 = bitcast %struct._GTypeInstance* %call102 to %struct._GimpItem*
  %103 = load i32, i32* %tattoo, align 4
  call void @gimp_item_set_tattoo(%struct._GimpItem* %102, i32 %103)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.100, %for.end
  %104 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %105 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %106 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call104 = call %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage* %106)
  %call105 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %call104)
  %call106 = call i32 @gimp_image_add_vectors(%struct._GimpImage* %104, %struct._GimpVectors* %105, %struct._GimpVectors* null, i32 %call105, i32 0)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.103, %if.then.42, %if.then.38
  %107 = load i32, i32* %retval
  ret i32 %107
}

declare %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer*, i32) #1

declare %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #2

declare %struct._GimpVectors* @gimp_image_set_active_vectors(%struct._GimpImage*, %struct._GimpVectors*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare %struct._GimpVectors* @gimp_vectors_compat_new(%struct._GimpImage*, i8*, %struct._GimpVectorsCompatPoint*, i32, i32) #1

declare void @gimp_item_set_linked(%struct._GimpItem*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare void @gimp_item_set_tattoo(%struct._GimpItem*, i32) #1

declare i32 @gimp_image_add_vectors(%struct._GimpImage*, %struct._GimpVectors*, %struct._GimpVectors*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @xcf_load_vector(%struct._XcfInfo* %info, %struct._GimpImage* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %name = alloca i8*, align 8
  %tattoo = alloca i32, align 4
  %visible = alloca i32, align 4
  %linked = alloca i32, align 4
  %num_parasites = alloca i32, align 4
  %num_strokes = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %i = alloca i32, align 4
  %parasite = alloca %struct._GimpParasite*, align 8
  %stroke_type_id = alloca i32, align 4
  %closed = alloca i32, align 4
  %num_axes = alloca i32, align 4
  %num_control_points = alloca i32, align 4
  %type = alloca i32, align 4
  %coords = alloca [8 x float], align 16
  %stroke = alloca %struct._GimpStroke*, align 8
  %j = alloca i32, align 4
  %control_points = alloca %struct._GValueArray*, align 8
  %value = alloca %struct._GValue, align 8
  %anchor = alloca %struct._GimpAnchor, align 8
  %stroke_type = alloca i64, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 0, i32* %tattoo, align 4
  %0 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %0, i32 0, i32 2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @xcf_read_string(%struct._IO_FILE* %1, i8** %name, i32 1)
  %2 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %2, i32 0, i32 3
  %3 = load i32, i32* %cp, align 4
  %add = add i32 %3, %call
  store i32 %add, i32* %cp, align 4
  %4 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %4, i32 0, i32 2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %call2 = call i32 @xcf_read_int32(%struct._IO_FILE* %5, i32* %tattoo, i32 1)
  %6 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp3 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %6, i32 0, i32 3
  %7 = load i32, i32* %cp3, align 4
  %add4 = add i32 %7, %call2
  store i32 %add4, i32* %cp3, align 4
  %8 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp5 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %8, i32 0, i32 2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp5, align 8
  %call6 = call i32 @xcf_read_int32(%struct._IO_FILE* %9, i32* %visible, i32 1)
  %10 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp7 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %10, i32 0, i32 3
  %11 = load i32, i32* %cp7, align 4
  %add8 = add i32 %11, %call6
  store i32 %add8, i32* %cp7, align 4
  %12 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp9 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %12, i32 0, i32 2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp9, align 8
  %call10 = call i32 @xcf_read_int32(%struct._IO_FILE* %13, i32* %linked, i32 1)
  %14 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp11 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %14, i32 0, i32 3
  %15 = load i32, i32* %cp11, align 4
  %add12 = add i32 %15, %call10
  store i32 %add12, i32* %cp11, align 4
  %16 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp13 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %16, i32 0, i32 2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp13, align 8
  %call14 = call i32 @xcf_read_int32(%struct._IO_FILE* %17, i32* %num_parasites, i32 1)
  %18 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp15 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %18, i32 0, i32 3
  %19 = load i32, i32* %cp15, align 4
  %add16 = add i32 %19, %call14
  store i32 %add16, i32* %cp15, align 4
  %20 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp17 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %20, i32 0, i32 2
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp17, align 8
  %call18 = call i32 @xcf_read_int32(%struct._IO_FILE* %21, i32* %num_strokes, i32 1)
  %22 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp19 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %22, i32 0, i32 3
  %23 = load i32, i32* %cp19, align 4
  %add20 = add i32 %23, %call18
  store i32 %add20, i32* %cp19, align 4
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %25 = load i8*, i8** %name, align 8
  %call21 = call %struct._GimpVectors* @gimp_vectors_new(%struct._GimpImage* %24, i8* %25)
  store %struct._GimpVectors* %call21, %struct._GimpVectors** %vectors, align 8
  %26 = load i8*, i8** %name, align 8
  call void @g_free(i8* %26)
  %27 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %28 = bitcast %struct._GimpVectors* %27 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call22)
  %29 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %30 = load i32, i32* %visible, align 4
  call void @gimp_item_set_visible(%struct._GimpItem* %29, i32 %30, i32 0)
  %31 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %32 = bitcast %struct._GimpVectors* %31 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_item_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call24)
  %33 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpItem*
  %34 = load i32, i32* %linked, align 4
  call void @gimp_item_set_linked(%struct._GimpItem* %33, i32 %34, i32 0)
  %35 = load i32, i32* %tattoo, align 4
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %36 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %37 = bitcast %struct._GimpVectors* %36 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_item_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call26)
  %38 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpItem*
  %39 = load i32, i32* %tattoo, align 4
  call void @gimp_item_set_tattoo(%struct._GimpItem* %38, i32 %39)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %num_parasites, align 4
  %cmp = icmp ult i32 %40, %41
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %call28 = call %struct._GimpParasite* @xcf_load_parasite(%struct._XcfInfo* %42)
  store %struct._GimpParasite* %call28, %struct._GimpParasite** %parasite, align 8
  %43 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool29 = icmp ne %struct._GimpParasite* %43, null
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.31:                                        ; preds = %for.body
  %44 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %45 = bitcast %struct._GimpVectors* %44 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_item_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call32)
  %46 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpItem*
  %47 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_item_parasite_attach(%struct._GimpItem* %46, %struct._GimpParasite* %47, i32 0)
  %48 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %48)
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %49 = load i32, i32* %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.97, %for.end
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %num_strokes, align 4
  %cmp35 = icmp ult i32 %50, %51
  br i1 %cmp35, label %for.body.36, label %for.end.99

for.body.36:                                      ; preds = %for.cond.34
  %52 = bitcast [8 x float]* %coords to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* bitcast ([8 x float]* @xcf_load_vector.coords to i8*), i64 32, i32 16, i1 false)
  %53 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %53, i8 0, i64 24, i32 8, i1 false)
  %54 = bitcast %struct._GimpAnchor* %anchor to i8*
  call void @llvm.memset.p0i8.i64(i8* %54, i8 0, i64 72, i32 8, i1 false)
  %call37 = call i64 @gimp_anchor_get_type() #6
  %call38 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %call37)
  %55 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp39 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %55, i32 0, i32 2
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp39, align 8
  %call40 = call i32 @xcf_read_int32(%struct._IO_FILE* %56, i32* %stroke_type_id, i32 1)
  %57 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp41 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %57, i32 0, i32 3
  %58 = load i32, i32* %cp41, align 4
  %add42 = add i32 %58, %call40
  store i32 %add42, i32* %cp41, align 4
  %59 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp43 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %59, i32 0, i32 2
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %fp43, align 8
  %call44 = call i32 @xcf_read_int32(%struct._IO_FILE* %60, i32* %closed, i32 1)
  %61 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp45 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %61, i32 0, i32 3
  %62 = load i32, i32* %cp45, align 4
  %add46 = add i32 %62, %call44
  store i32 %add46, i32* %cp45, align 4
  %63 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp47 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %63, i32 0, i32 2
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %fp47, align 8
  %call48 = call i32 @xcf_read_int32(%struct._IO_FILE* %64, i32* %num_axes, i32 1)
  %65 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp49 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %65, i32 0, i32 3
  %66 = load i32, i32* %cp49, align 4
  %add50 = add i32 %66, %call48
  store i32 %add50, i32* %cp49, align 4
  %67 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp51 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %67, i32 0, i32 2
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %fp51, align 8
  %call52 = call i32 @xcf_read_int32(%struct._IO_FILE* %68, i32* %num_control_points, i32 1)
  %69 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp53 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %69, i32 0, i32 3
  %70 = load i32, i32* %cp53, align 4
  %add54 = add i32 %70, %call52
  store i32 %add54, i32* %cp53, align 4
  %71 = load i32, i32* %stroke_type_id, align 4
  switch i32 %71, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.body.36
  %call55 = call i64 @gimp_bezier_stroke_get_type() #6
  store i64 %call55, i64* %stroke_type, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.36
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0))
  %72 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %73 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp56 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %73, i32 0, i32 3
  %74 = load i32, i32* %cp56, align 4
  %75 = load i32, i32* %num_axes, align 4
  %mul = mul i32 4, %75
  %76 = load i32, i32* %num_control_points, align 4
  %mul57 = mul i32 %mul, %76
  %add58 = add i32 %74, %mul57
  %call59 = call i32 @xcf_seek_pos(%struct._XcfInfo* %72, i32 %add58, %struct._GError** null)
  br label %for.inc.97

sw.epilog:                                        ; preds = %sw.bb
  %77 = load i32, i32* %num_axes, align 4
  %cmp60 = icmp ult i32 %77, 2
  br i1 %cmp60, label %if.then.62, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %78 = load i32, i32* %num_axes, align 4
  %cmp61 = icmp ugt i32 %78, 6
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %lor.lhs.false, %sw.epilog
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.63:                                        ; preds = %lor.lhs.false
  %79 = load i32, i32* %num_control_points, align 4
  %call64 = call %struct._GValueArray* @g_value_array_new(i32 %79)
  store %struct._GValueArray* %call64, %struct._GValueArray** %control_points, align 8
  %selected = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %anchor, i32 0, i32 2
  store i32 0, i32* %selected, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.93, %if.end.63
  %80 = load i32, i32* %j, align 4
  %81 = load i32, i32* %num_control_points, align 4
  %cmp66 = icmp ult i32 %80, %81
  br i1 %cmp66, label %for.body.67, label %for.end.95

for.body.67:                                      ; preds = %for.cond.65
  %82 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp68 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %82, i32 0, i32 2
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %fp68, align 8
  %call69 = call i32 @xcf_read_int32(%struct._IO_FILE* %83, i32* %type, i32 1)
  %84 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp70 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %84, i32 0, i32 3
  %85 = load i32, i32* %cp70, align 4
  %add71 = add i32 %85, %call69
  store i32 %add71, i32* %cp70, align 4
  %86 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp72 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %86, i32 0, i32 2
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %fp72, align 8
  %arraydecay = getelementptr inbounds [8 x float], [8 x float]* %coords, i32 0, i32 0
  %88 = load i32, i32* %num_axes, align 4
  %call73 = call i32 @xcf_read_float(%struct._IO_FILE* %87, float* %arraydecay, i32 %88)
  %89 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp74 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %89, i32 0, i32 3
  %90 = load i32, i32* %cp74, align 4
  %add75 = add i32 %90, %call73
  store i32 %add75, i32* %cp74, align 4
  %91 = load i32, i32* %type, align 4
  %type76 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %anchor, i32 0, i32 1
  store i32 %91, i32* %type76, align 4
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %coords, i32 0, i64 0
  %92 = load float, float* %arrayidx, align 4
  %conv = fpext float %92 to double
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %anchor, i32 0, i32 0
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 0
  store double %conv, double* %x, align 8
  %arrayidx77 = getelementptr inbounds [8 x float], [8 x float]* %coords, i32 0, i64 1
  %93 = load float, float* %arrayidx77, align 4
  %conv78 = fpext float %93 to double
  %position79 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %anchor, i32 0, i32 0
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position79, i32 0, i32 1
  store double %conv78, double* %y, align 8
  %arrayidx80 = getelementptr inbounds [8 x float], [8 x float]* %coords, i32 0, i64 2
  %94 = load float, float* %arrayidx80, align 4
  %conv81 = fpext float %94 to double
  %position82 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %anchor, i32 0, i32 0
  %pressure = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position82, i32 0, i32 2
  store double %conv81, double* %pressure, align 8
  %arrayidx83 = getelementptr inbounds [8 x float], [8 x float]* %coords, i32 0, i64 3
  %95 = load float, float* %arrayidx83, align 4
  %conv84 = fpext float %95 to double
  %position85 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %anchor, i32 0, i32 0
  %xtilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position85, i32 0, i32 3
  store double %conv84, double* %xtilt, align 8
  %arrayidx86 = getelementptr inbounds [8 x float], [8 x float]* %coords, i32 0, i64 4
  %96 = load float, float* %arrayidx86, align 4
  %conv87 = fpext float %96 to double
  %position88 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %anchor, i32 0, i32 0
  %ytilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position88, i32 0, i32 4
  store double %conv87, double* %ytilt, align 8
  %arrayidx89 = getelementptr inbounds [8 x float], [8 x float]* %coords, i32 0, i64 5
  %97 = load float, float* %arrayidx89, align 4
  %conv90 = fpext float %97 to double
  %position91 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %anchor, i32 0, i32 0
  %wheel = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position91, i32 0, i32 5
  store double %conv90, double* %wheel, align 8
  %98 = bitcast %struct._GimpAnchor* %anchor to i8*
  call void @g_value_set_boxed(%struct._GValue* %value, i8* %98)
  %99 = load %struct._GValueArray*, %struct._GValueArray** %control_points, align 8
  %call92 = call %struct._GValueArray* @g_value_array_append(%struct._GValueArray* %99, %struct._GValue* %value)
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.body.67
  %100 = load i32, i32* %j, align 4
  %inc94 = add nsw i32 %100, 1
  store i32 %inc94, i32* %j, align 4
  br label %for.cond.65

for.end.95:                                       ; preds = %for.cond.65
  call void @g_value_unset(%struct._GValue* %value)
  %101 = load i64, i64* %stroke_type, align 8
  %102 = load i32, i32* %closed, align 4
  %103 = load %struct._GValueArray*, %struct._GValueArray** %control_points, align 8
  %call96 = call i8* (i64, i8*, ...) @g_object_new(i64 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), %struct._GValueArray* %103, i8* null)
  %104 = bitcast i8* %call96 to %struct._GimpStroke*
  store %struct._GimpStroke* %104, %struct._GimpStroke** %stroke, align 8
  %105 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %106 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_vectors_stroke_add(%struct._GimpVectors* %105, %struct._GimpStroke* %106)
  %107 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %108 = bitcast %struct._GimpStroke* %107 to i8*
  call void @g_object_unref(i8* %108)
  %109 = load %struct._GValueArray*, %struct._GValueArray** %control_points, align 8
  call void @g_value_array_free(%struct._GValueArray* %109)
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.end.95, %sw.default
  %110 = load i32, i32* %i, align 4
  %inc98 = add nsw i32 %110, 1
  store i32 %inc98, i32* %i, align 4
  br label %for.cond.34

for.end.99:                                       ; preds = %for.cond.34
  %111 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %112 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %113 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call100 = call %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage* %113)
  %call101 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %call100)
  %call102 = call i32 @gimp_image_add_vectors(%struct._GimpImage* %111, %struct._GimpVectors* %112, %struct._GimpVectors* null, i32 %call101, i32 0)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.99, %if.then.62, %if.then.30
  %114 = load i32, i32* %retval
  ret i32 %114
}

declare %struct._GimpVectors* @gimp_vectors_new(%struct._GimpImage*, i8*) #1

declare void @gimp_item_set_visible(%struct._GimpItem*, i32, i32) #1

declare void @gimp_item_parasite_attach(%struct._GimpItem*, %struct._GimpParasite*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_anchor_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_bezier_stroke_get_type() #2

declare %struct._GValueArray* @g_value_array_new(i32) #1

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

declare %struct._GValueArray* @g_value_array_append(%struct._GValueArray*, %struct._GValue*) #1

declare void @g_value_unset(%struct._GValue*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @gimp_vectors_stroke_add(%struct._GimpVectors*, %struct._GimpStroke*) #1

declare void @g_value_array_free(%struct._GValueArray*) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

declare %struct._GimpLayer* @gimp_layer_new(%struct._GimpImage*, i32, i32, i32, i8*, double, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @xcf_load_layer_props(%struct._XcfInfo* %info, %struct._GimpImage* %image, %struct._GimpLayer** %layer, %struct._GList** %item_path, i32* %apply_mask, i32* %edit_mask, i32* %show_mask, i32* %text_layer_flags, i32* %group_layer_flags) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %layer.addr = alloca %struct._GimpLayer**, align 8
  %item_path.addr = alloca %struct._GList**, align 8
  %apply_mask.addr = alloca i32*, align 8
  %edit_mask.addr = alloca i32*, align 8
  %show_mask.addr = alloca i32*, align 8
  %text_layer_flags.addr = alloca i32*, align 8
  %group_layer_flags.addr = alloca i32*, align 8
  %prop_type = alloca i32, align 4
  %prop_size = alloca i32, align 4
  %opacity = alloca i32, align 4
  %visible = alloca i32, align 4
  %linked = alloca i32, align 4
  %lock_content = alloca i32, align 4
  %lock_alpha = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %mode = alloca i32, align 4
  %tattoo = alloca i32, align 4
  %base = alloca i64, align 8
  %p = alloca %struct._GimpParasite*, align 8
  %group = alloca %struct._GimpLayer*, align 8
  %is_active_layer = alloca i32, align 4
  %base141 = alloca i64, align 8
  %path = alloca %struct._GList*, align 8
  %index = alloca i32, align 4
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpLayer** %layer, %struct._GimpLayer*** %layer.addr, align 8
  store %struct._GList** %item_path, %struct._GList*** %item_path.addr, align 8
  store i32* %apply_mask, i32** %apply_mask.addr, align 8
  store i32* %edit_mask, i32** %edit_mask.addr, align 8
  store i32* %show_mask, i32** %show_mask.addr, align 8
  store i32* %text_layer_flags, i32** %text_layer_flags.addr, align 8
  store i32* %group_layer_flags, i32** %group_layer_flags.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %sw.epilog
  %0 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %call = call i32 @xcf_load_prop(%struct._XcfInfo* %0, i32* %prop_type, i32* %prop_size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %1 = load i32, i32* %prop_type, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.1
    i32 5, label %sw.bb.2
    i32 6, label %sw.bb.4
    i32 8, label %sw.bb.9
    i32 9, label %sw.bb.16
    i32 28, label %sw.bb.23
    i32 10, label %sw.bb.36
    i32 11, label %sw.bb.45
    i32 12, label %sw.bb.50
    i32 13, label %sw.bb.55
    i32 15, label %sw.bb.60
    i32 7, label %sw.bb.71
    i32 20, label %sw.bb.76
    i32 21, label %sw.bb.83
    i32 26, label %sw.bb.107
    i32 29, label %sw.bb.112
    i32 30, label %sw.bb.140
    i32 31, label %sw.bb.163
  ]

sw.bb:                                            ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %if.end
  %2 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %2, align 8
  %4 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %active_layer = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %4, i32 0, i32 6
  store %struct._GimpLayer* %3, %struct._GimpLayer** %active_layer, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.end
  %5 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %5, align 8
  %7 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %7, i32 0, i32 9
  store %struct._GimpLayer* %6, %struct._GimpLayer** %floating_sel, align 8
  %8 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %8, i32 0, i32 2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %10 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel_offset = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %10, i32 0, i32 10
  %call3 = call i32 @xcf_read_int32(%struct._IO_FILE* %9, i32* %floating_sel_offset, i32 1)
  %11 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %11, i32 0, i32 3
  %12 = load i32, i32* %cp, align 4
  %add = add i32 %12, %call3
  store i32 %add, i32* %cp, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %13 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp5 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %13, i32 0, i32 2
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp5, align 8
  %call6 = call i32 @xcf_read_int32(%struct._IO_FILE* %14, i32* %opacity, i32 1)
  %15 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp7 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %15, i32 0, i32 3
  %16 = load i32, i32* %cp7, align 4
  %add8 = add i32 %16, %call6
  store i32 %add8, i32* %cp7, align 4
  %17 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %17, align 8
  %19 = load i32, i32* %opacity, align 4
  %conv = uitofp i32 %19 to double
  %div = fdiv double %conv, 2.550000e+02
  call void @gimp_layer_set_opacity(%struct._GimpLayer* %18, double %div, i32 0)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end
  %20 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp10 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %20, i32 0, i32 2
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp10, align 8
  %call11 = call i32 @xcf_read_int32(%struct._IO_FILE* %21, i32* %visible, i32 1)
  %22 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp12 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %22, i32 0, i32 3
  %23 = load i32, i32* %cp12, align 4
  %add13 = add i32 %23, %call11
  store i32 %add13, i32* %cp12, align 4
  %24 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %25 = load %struct._GimpLayer*, %struct._GimpLayer** %24, align 8
  %26 = bitcast %struct._GimpLayer* %25 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call14)
  %27 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %28 = load i32, i32* %visible, align 4
  call void @gimp_item_set_visible(%struct._GimpItem* %27, i32 %28, i32 0)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end
  %29 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp17 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %29, i32 0, i32 2
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp17, align 8
  %call18 = call i32 @xcf_read_int32(%struct._IO_FILE* %30, i32* %linked, i32 1)
  %31 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp19 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %31, i32 0, i32 3
  %32 = load i32, i32* %cp19, align 4
  %add20 = add i32 %32, %call18
  store i32 %add20, i32* %cp19, align 4
  %33 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %34 = load %struct._GimpLayer*, %struct._GimpLayer** %33, align 8
  %35 = bitcast %struct._GimpLayer* %34 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call21)
  %36 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItem*
  %37 = load i32, i32* %linked, align 4
  call void @gimp_item_set_linked(%struct._GimpItem* %36, i32 %37, i32 0)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end
  %38 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp24 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %38, i32 0, i32 2
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp24, align 8
  %call25 = call i32 @xcf_read_int32(%struct._IO_FILE* %39, i32* %lock_content, i32 1)
  %40 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp26 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %40, i32 0, i32 3
  %41 = load i32, i32* %cp26, align 4
  %add27 = add i32 %41, %call25
  store i32 %add27, i32* %cp26, align 4
  %42 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %43 = load %struct._GimpLayer*, %struct._GimpLayer** %42, align 8
  %44 = bitcast %struct._GimpLayer* %43 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call28)
  %45 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpItem*
  %call30 = call i32 @gimp_item_can_lock_content(%struct._GimpItem* %45)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %sw.bb.23
  %46 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %47 = load %struct._GimpLayer*, %struct._GimpLayer** %46, align 8
  %48 = bitcast %struct._GimpLayer* %47 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_item_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call33)
  %49 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpItem*
  %50 = load i32, i32* %lock_content, align 4
  call void @gimp_item_set_lock_content(%struct._GimpItem* %49, i32 %50, i32 0)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %sw.bb.23
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.end
  %51 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp37 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %51, i32 0, i32 2
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %fp37, align 8
  %call38 = call i32 @xcf_read_int32(%struct._IO_FILE* %52, i32* %lock_alpha, i32 1)
  %53 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp39 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %53, i32 0, i32 3
  %54 = load i32, i32* %cp39, align 4
  %add40 = add i32 %54, %call38
  store i32 %add40, i32* %cp39, align 4
  %55 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %56 = load %struct._GimpLayer*, %struct._GimpLayer** %55, align 8
  %call41 = call i32 @gimp_layer_can_lock_alpha(%struct._GimpLayer* %56)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %sw.bb.36
  %57 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %58 = load %struct._GimpLayer*, %struct._GimpLayer** %57, align 8
  %59 = load i32, i32* %lock_alpha, align 4
  call void @gimp_layer_set_lock_alpha(%struct._GimpLayer* %58, i32 %59, i32 0)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %sw.bb.36
  br label %sw.epilog

sw.bb.45:                                         ; preds = %if.end
  %60 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp46 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %60, i32 0, i32 2
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %fp46, align 8
  %62 = load i32*, i32** %apply_mask.addr, align 8
  %call47 = call i32 @xcf_read_int32(%struct._IO_FILE* %61, i32* %62, i32 1)
  %63 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp48 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %63, i32 0, i32 3
  %64 = load i32, i32* %cp48, align 4
  %add49 = add i32 %64, %call47
  store i32 %add49, i32* %cp48, align 4
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.end
  %65 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp51 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %65, i32 0, i32 2
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %fp51, align 8
  %67 = load i32*, i32** %edit_mask.addr, align 8
  %call52 = call i32 @xcf_read_int32(%struct._IO_FILE* %66, i32* %67, i32 1)
  %68 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp53 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %68, i32 0, i32 3
  %69 = load i32, i32* %cp53, align 4
  %add54 = add i32 %69, %call52
  store i32 %add54, i32* %cp53, align 4
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end
  %70 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp56 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %70, i32 0, i32 2
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %fp56, align 8
  %72 = load i32*, i32** %show_mask.addr, align 8
  %call57 = call i32 @xcf_read_int32(%struct._IO_FILE* %71, i32* %72, i32 1)
  %73 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp58 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %73, i32 0, i32 3
  %74 = load i32, i32* %cp58, align 4
  %add59 = add i32 %74, %call57
  store i32 %add59, i32* %cp58, align 4
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.end
  %75 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp61 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %75, i32 0, i32 2
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %fp61, align 8
  %call62 = call i32 @xcf_read_int32(%struct._IO_FILE* %76, i32* %offset_x, i32 1)
  %77 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp63 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %77, i32 0, i32 3
  %78 = load i32, i32* %cp63, align 4
  %add64 = add i32 %78, %call62
  store i32 %add64, i32* %cp63, align 4
  %79 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp65 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %79, i32 0, i32 2
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %fp65, align 8
  %call66 = call i32 @xcf_read_int32(%struct._IO_FILE* %80, i32* %offset_y, i32 1)
  %81 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp67 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %81, i32 0, i32 3
  %82 = load i32, i32* %cp67, align 4
  %add68 = add i32 %82, %call66
  store i32 %add68, i32* %cp67, align 4
  %83 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %84 = load %struct._GimpLayer*, %struct._GimpLayer** %83, align 8
  %85 = bitcast %struct._GimpLayer* %84 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_item_get_type() #6
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call69)
  %86 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpItem*
  %87 = load i32, i32* %offset_x, align 4
  %88 = load i32, i32* %offset_y, align 4
  call void @gimp_item_set_offset(%struct._GimpItem* %86, i32 %87, i32 %88)
  br label %sw.epilog

sw.bb.71:                                         ; preds = %if.end
  %89 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp72 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %89, i32 0, i32 2
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %fp72, align 8
  %call73 = call i32 @xcf_read_int32(%struct._IO_FILE* %90, i32* %mode, i32 1)
  %91 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp74 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %91, i32 0, i32 3
  %92 = load i32, i32* %cp74, align 4
  %add75 = add i32 %92, %call73
  store i32 %add75, i32* %cp74, align 4
  %93 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %94 = load %struct._GimpLayer*, %struct._GimpLayer** %93, align 8
  %95 = load i32, i32* %mode, align 4
  call void @gimp_layer_set_mode(%struct._GimpLayer* %94, i32 %95, i32 0)
  br label %sw.epilog

sw.bb.76:                                         ; preds = %if.end
  %96 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp77 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %96, i32 0, i32 2
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %fp77, align 8
  %call78 = call i32 @xcf_read_int32(%struct._IO_FILE* %97, i32* %tattoo, i32 1)
  %98 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp79 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %98, i32 0, i32 3
  %99 = load i32, i32* %cp79, align 4
  %add80 = add i32 %99, %call78
  store i32 %add80, i32* %cp79, align 4
  %100 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %101 = load %struct._GimpLayer*, %struct._GimpLayer** %100, align 8
  %102 = bitcast %struct._GimpLayer* %101 to %struct._GTypeInstance*
  %call81 = call i64 @gimp_item_get_type() #6
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call81)
  %103 = bitcast %struct._GTypeInstance* %call82 to %struct._GimpItem*
  %104 = load i32, i32* %tattoo, align 4
  call void @gimp_item_set_tattoo(%struct._GimpItem* %103, i32 %104)
  br label %sw.epilog

sw.bb.83:                                         ; preds = %if.end
  %105 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp84 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %105, i32 0, i32 3
  %106 = load i32, i32* %cp84, align 4
  %conv85 = zext i32 %106 to i64
  store i64 %conv85, i64* %base, align 8
  br label %while.cond.86

while.cond.86:                                    ; preds = %if.end.95, %sw.bb.83
  %107 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp87 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %107, i32 0, i32 3
  %108 = load i32, i32* %cp87, align 4
  %conv88 = zext i32 %108 to i64
  %109 = load i64, i64* %base, align 8
  %sub = sub nsw i64 %conv88, %109
  %110 = load i32, i32* %prop_size, align 4
  %conv89 = zext i32 %110 to i64
  %cmp = icmp slt i64 %sub, %conv89
  br i1 %cmp, label %while.body.91, label %while.end

while.body.91:                                    ; preds = %while.cond.86
  %111 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %call92 = call %struct._GimpParasite* @xcf_load_parasite(%struct._XcfInfo* %111)
  store %struct._GimpParasite* %call92, %struct._GimpParasite** %p, align 8
  %112 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  %tobool93 = icmp ne %struct._GimpParasite* %112, null
  br i1 %tobool93, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %while.body.91
  store i32 0, i32* %retval
  br label %return

if.end.95:                                        ; preds = %while.body.91
  %113 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %114 = load %struct._GimpLayer*, %struct._GimpLayer** %113, align 8
  %115 = bitcast %struct._GimpLayer* %114 to %struct._GTypeInstance*
  %call96 = call i64 @gimp_item_get_type() #6
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call96)
  %116 = bitcast %struct._GTypeInstance* %call97 to %struct._GimpItem*
  %117 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  call void @gimp_item_parasite_attach(%struct._GimpItem* %116, %struct._GimpParasite* %117, i32 0)
  %118 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %118)
  br label %while.cond.86

while.end:                                        ; preds = %while.cond.86
  %119 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp98 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %119, i32 0, i32 3
  %120 = load i32, i32* %cp98, align 4
  %conv99 = zext i32 %120 to i64
  %121 = load i64, i64* %base, align 8
  %sub100 = sub nsw i64 %conv99, %121
  %122 = load i32, i32* %prop_size, align 4
  %conv101 = zext i32 %122 to i64
  %cmp102 = icmp ne i64 %sub100, %conv101
  br i1 %cmp102, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %while.end
  %123 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %gimp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %123, i32 0, i32 0
  %124 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %125 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %125, i32 0, i32 1
  %126 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %127 = bitcast %struct._GimpProgress* %126 to %struct._GTypeInstance*
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 80)
  %128 = bitcast %struct._GTypeInstance* %call105 to %struct._GObject*
  call void @gimp_message_literal(%struct._Gimp* %124, %struct._GObject* %128, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %while.end
  br label %sw.epilog

sw.bb.107:                                        ; preds = %if.end
  %129 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp108 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %129, i32 0, i32 2
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %fp108, align 8
  %131 = load i32*, i32** %text_layer_flags.addr, align 8
  %call109 = call i32 @xcf_read_int32(%struct._IO_FILE* %130, i32* %131, i32 1)
  %132 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp110 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %132, i32 0, i32 3
  %133 = load i32, i32* %cp110, align 4
  %add111 = add i32 %133, %call109
  store i32 %add111, i32* %cp110, align 4
  br label %sw.epilog

sw.bb.112:                                        ; preds = %if.end
  %134 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %135 = load %struct._GimpLayer*, %struct._GimpLayer** %134, align 8
  %136 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %active_layer113 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %136, i32 0, i32 6
  %137 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer113, align 8
  %cmp114 = icmp eq %struct._GimpLayer* %135, %137
  %conv115 = zext i1 %cmp114 to i32
  store i32 %conv115, i32* %is_active_layer, align 4
  %138 = load i32, i32* %is_active_layer, align 4
  %tobool116 = icmp ne i32 %138, 0
  br i1 %tobool116, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %sw.bb.112
  %139 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %active_layer118 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %139, i32 0, i32 6
  store %struct._GimpLayer* null, %struct._GimpLayer** %active_layer118, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %sw.bb.112
  %140 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %141 = load %struct._GimpLayer*, %struct._GimpLayer** %140, align 8
  %142 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel120 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %142, i32 0, i32 9
  %143 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel120, align 8
  %cmp121 = icmp eq %struct._GimpLayer* %141, %143
  br i1 %cmp121, label %if.then.123, label %if.end.125

if.then.123:                                      ; preds = %if.end.119
  %144 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel124 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %144, i32 0, i32 9
  store %struct._GimpLayer* null, %struct._GimpLayer** %floating_sel124, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.123, %if.end.119
  %145 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call126 = call %struct._GimpLayer* @gimp_group_layer_new(%struct._GimpImage* %145)
  store %struct._GimpLayer* %call126, %struct._GimpLayer** %group, align 8
  %146 = load %struct._GimpLayer*, %struct._GimpLayer** %group, align 8
  %147 = bitcast %struct._GimpLayer* %146 to %struct._GTypeInstance*
  %call127 = call i64 @gimp_object_get_type() #6
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call127)
  %148 = bitcast %struct._GTypeInstance* %call128 to %struct._GimpObject*
  %149 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %150 = load %struct._GimpLayer*, %struct._GimpLayer** %149, align 8
  %151 = bitcast %struct._GimpLayer* %150 to i8*
  %call129 = call i8* @gimp_object_get_name(i8* %151)
  call void @gimp_object_set_name(%struct._GimpObject* %148, i8* %call129)
  %152 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %153 = load %struct._GimpLayer*, %struct._GimpLayer** %152, align 8
  %154 = bitcast %struct._GimpLayer* %153 to %struct._GTypeInstance*
  %call130 = call i64 @gimp_drawable_get_type() #6
  %call131 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %154, i64 %call130)
  %155 = bitcast %struct._GTypeInstance* %call131 to %struct._GimpDrawable*
  %call132 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %155)
  %156 = load %struct._GimpLayer*, %struct._GimpLayer** %group, align 8
  %157 = bitcast %struct._GimpLayer* %156 to %struct._GTypeInstance*
  %call133 = call i64 @gimp_drawable_get_type() #6
  %call134 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %157, i64 %call133)
  %158 = bitcast %struct._GTypeInstance* %call134 to %struct._GimpDrawable*
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %158, i32 0, i32 1
  %159 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %type = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %159, i32 0, i32 0
  store i32 %call132, i32* %type, align 4
  %160 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %161 = load %struct._GimpLayer*, %struct._GimpLayer** %160, align 8
  %162 = bitcast %struct._GimpLayer* %161 to i8*
  %call135 = call i8* @g_object_ref_sink(i8* %162)
  %163 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %164 = load %struct._GimpLayer*, %struct._GimpLayer** %163, align 8
  %165 = bitcast %struct._GimpLayer* %164 to i8*
  call void @g_object_unref(i8* %165)
  %166 = load %struct._GimpLayer*, %struct._GimpLayer** %group, align 8
  %167 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  store %struct._GimpLayer* %166, %struct._GimpLayer** %167, align 8
  %168 = load i32, i32* %is_active_layer, align 4
  %tobool136 = icmp ne i32 %168, 0
  br i1 %tobool136, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %if.end.125
  %169 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %170 = load %struct._GimpLayer*, %struct._GimpLayer** %169, align 8
  %171 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %active_layer138 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %171, i32 0, i32 6
  store %struct._GimpLayer* %170, %struct._GimpLayer** %active_layer138, align 8
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.137, %if.end.125
  br label %sw.epilog

sw.bb.140:                                        ; preds = %if.end
  %172 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp142 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %172, i32 0, i32 3
  %173 = load i32, i32* %cp142, align 4
  %conv143 = zext i32 %173 to i64
  store i64 %conv143, i64* %base141, align 8
  store %struct._GList* null, %struct._GList** %path, align 8
  br label %while.cond.144

while.cond.144:                                   ; preds = %if.end.157, %sw.bb.140
  %174 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp145 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %174, i32 0, i32 3
  %175 = load i32, i32* %cp145, align 4
  %conv146 = zext i32 %175 to i64
  %176 = load i64, i64* %base141, align 8
  %sub147 = sub nsw i64 %conv146, %176
  %177 = load i32, i32* %prop_size, align 4
  %conv148 = zext i32 %177 to i64
  %cmp149 = icmp slt i64 %sub147, %conv148
  br i1 %cmp149, label %while.body.151, label %while.end.162

while.body.151:                                   ; preds = %while.cond.144
  %178 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp152 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %178, i32 0, i32 2
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** %fp152, align 8
  %call153 = call i32 @xcf_read_int32(%struct._IO_FILE* %179, i32* %index, i32 1)
  %cmp154 = icmp ne i32 %call153, 4
  br i1 %cmp154, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %while.body.151
  %180 = load %struct._GList*, %struct._GList** %path, align 8
  call void @g_list_free(%struct._GList* %180)
  store i32 0, i32* %retval
  br label %return

if.end.157:                                       ; preds = %while.body.151
  %181 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp158 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %181, i32 0, i32 3
  %182 = load i32, i32* %cp158, align 4
  %add159 = add i32 %182, 4
  store i32 %add159, i32* %cp158, align 4
  %183 = load %struct._GList*, %struct._GList** %path, align 8
  %184 = load i32, i32* %index, align 4
  %conv160 = zext i32 %184 to i64
  %185 = inttoptr i64 %conv160 to i8*
  %call161 = call %struct._GList* @g_list_append(%struct._GList* %183, i8* %185)
  store %struct._GList* %call161, %struct._GList** %path, align 8
  br label %while.cond.144

while.end.162:                                    ; preds = %while.cond.144
  %186 = load %struct._GList*, %struct._GList** %path, align 8
  %187 = load %struct._GList**, %struct._GList*** %item_path.addr, align 8
  store %struct._GList* %186, %struct._GList** %187, align 8
  br label %sw.epilog

sw.bb.163:                                        ; preds = %if.end
  %188 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp164 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %188, i32 0, i32 2
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** %fp164, align 8
  %190 = load i32*, i32** %group_layer_flags.addr, align 8
  %call165 = call i32 @xcf_read_int32(%struct._IO_FILE* %189, i32* %190, i32 1)
  %191 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp166 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %191, i32 0, i32 3
  %192 = load i32, i32* %cp166, align 4
  %add167 = add i32 %192, %call165
  store i32 %add167, i32* %cp166, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %193 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %194 = load i32, i32* %prop_size, align 4
  %conv168 = zext i32 %194 to i64
  %call169 = call i32 @xcf_skip_unknown_prop(%struct._XcfInfo* %193, i64 %conv168)
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.end.172, label %if.then.171

if.then.171:                                      ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

if.end.172:                                       ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.172, %sw.bb.163, %while.end.162, %if.end.139, %sw.bb.107, %if.end.106, %sw.bb.76, %sw.bb.71, %sw.bb.60, %sw.bb.55, %sw.bb.50, %sw.bb.45, %if.end.44, %if.end.35, %sw.bb.16, %sw.bb.9, %sw.bb.4, %sw.bb.2, %sw.bb.1
  br label %while.body

return:                                           ; preds = %if.then.171, %if.then.156, %if.then.94, %sw.bb, %if.then
  %195 = load i32, i32* %retval
  ret i32 %195
}

declare i32 @gimp_text_layer_xcf_load_hack(%struct._GimpLayer**) #1

declare void @gimp_text_layer_set_xcf_flags(%struct._GimpTextLayer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_layer_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @xcf_load_hierarchy(%struct._XcfInfo* %info, %struct._TileManager* %tiles) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %offset = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  %0 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %0, i32 0, i32 2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @xcf_read_int32(%struct._IO_FILE* %1, i32* %width, i32 1)
  %2 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %2, i32 0, i32 3
  %3 = load i32, i32* %cp, align 4
  %add = add i32 %3, %call
  store i32 %add, i32* %cp, align 4
  %4 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %4, i32 0, i32 2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %call2 = call i32 @xcf_read_int32(%struct._IO_FILE* %5, i32* %height, i32 1)
  %6 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp3 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %6, i32 0, i32 3
  %7 = load i32, i32* %cp3, align 4
  %add4 = add i32 %7, %call2
  store i32 %add4, i32* %cp3, align 4
  %8 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp5 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %8, i32 0, i32 2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp5, align 8
  %call6 = call i32 @xcf_read_int32(%struct._IO_FILE* %9, i32* %bpp, i32 1)
  %10 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp7 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %10, i32 0, i32 3
  %11 = load i32, i32* %cp7, align 4
  %add8 = add i32 %11, %call6
  store i32 %add8, i32* %cp7, align 4
  %12 = load i32, i32* %width, align 4
  %13 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call9 = call i32 @tile_manager_width(%struct._TileManager* %13)
  %cmp = icmp ne i32 %12, %call9
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %14 = load i32, i32* %height, align 4
  %15 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call10 = call i32 @tile_manager_height(%struct._TileManager* %15)
  %cmp11 = icmp ne i32 %14, %call10
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %16 = load i32, i32* %bpp, align 4
  %17 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call13 = call i32 @tile_manager_bpp(%struct._TileManager* %17)
  %cmp14 = icmp ne i32 %16, %call13
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.12, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.12
  %18 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp15 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %18, i32 0, i32 2
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp15, align 8
  %call16 = call i32 @xcf_read_int32(%struct._IO_FILE* %19, i32* %offset, i32 1)
  %20 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp17 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %20, i32 0, i32 3
  %21 = load i32, i32* %cp17, align 4
  %add18 = add i32 %21, %call16
  store i32 %add18, i32* %cp17, align 4
  %22 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %23 = load i32, i32* %offset, align 4
  %call19 = call i32 @xcf_seek_pos(%struct._XcfInfo* %22, i32 %23, %struct._GError** null)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end
  %24 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %25 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call22 = call i32 @xcf_load_level(%struct._XcfInfo* %24, %struct._TileManager* %25)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.21
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.21
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.24, %if.then.20, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare void @gimp_viewable_set_expanded(%struct._GimpViewable*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpLayerMask* @xcf_load_layer_mask(%struct._XcfInfo* %info, %struct._GimpImage* %image) #0 {
entry:
  %retval = alloca %struct._GimpLayerMask*, align 8
  %info.addr = alloca %struct._XcfInfo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %layer_mask = alloca %struct._GimpLayerMask*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %hierarchy_offset = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %is_fs_drawable = alloca i32, align 4
  %name = alloca i8*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @xcf_load_layer_mask.color to i8*), i64 32, i32 8, i1 false)
  %1 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %1, i32 0, i32 3
  %2 = load i32, i32* %cp, align 4
  %3 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel_offset = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %3, i32 0, i32 10
  %4 = load i32, i32* %floating_sel_offset, align 4
  %cmp = icmp eq i32 %2, %4
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %is_fs_drawable, align 4
  %5 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %5, i32 0, i32 2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @xcf_read_int32(%struct._IO_FILE* %6, i32* %width, i32 1)
  %7 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %7, i32 0, i32 3
  %8 = load i32, i32* %cp1, align 4
  %add = add i32 %8, %call
  store i32 %add, i32* %cp1, align 4
  %9 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp2 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %9, i32 0, i32 2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %call3 = call i32 @xcf_read_int32(%struct._IO_FILE* %10, i32* %height, i32 1)
  %11 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp4 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %11, i32 0, i32 3
  %12 = load i32, i32* %cp4, align 4
  %add5 = add i32 %12, %call3
  store i32 %add5, i32* %cp4, align 4
  %13 = load i32, i32* %width, align 4
  %cmp6 = icmp sle i32 %13, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %14 = load i32, i32* %height, align 4
  %cmp8 = icmp sle i32 %14, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %15 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp10 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %15, i32 0, i32 2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp10, align 8
  %call11 = call i32 @xcf_read_string(%struct._IO_FILE* %16, i8** %name, i32 1)
  %17 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp12 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %17, i32 0, i32 3
  %18 = load i32, i32* %cp12, align 4
  %add13 = add i32 %18, %call11
  store i32 %add13, i32* %cp12, align 4
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %20 = load i32, i32* %width, align 4
  %21 = load i32, i32* %height, align 4
  %22 = load i8*, i8** %name, align 8
  %call14 = call %struct._GimpLayerMask* @gimp_layer_mask_new(%struct._GimpImage* %19, i32 %20, i32 %21, i8* %22, %struct._GimpRGB* %color)
  store %struct._GimpLayerMask* %call14, %struct._GimpLayerMask** %layer_mask, align 8
  %23 = load i8*, i8** %name, align 8
  call void @g_free(i8* %23)
  %24 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  %tobool = icmp ne %struct._GimpLayerMask* %24, null
  br i1 %tobool, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %retval
  br label %return

if.end.16:                                        ; preds = %if.end
  %25 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  %26 = bitcast %struct._GimpLayerMask* %25 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_channel_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call17)
  %27 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpChannel*
  store %struct._GimpChannel* %27, %struct._GimpChannel** %channel, align 8
  %28 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call19 = call i32 @xcf_load_channel_props(%struct._XcfInfo* %28, %struct._GimpImage* %29, %struct._GimpChannel** %channel)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.16
  br label %error

if.end.22:                                        ; preds = %if.end.16
  br label %do.body

do.body:                                          ; preds = %if.end.22
  %30 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %30, i32 0, i32 1
  %31 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool23 = icmp ne %struct._GimpProgress* %31, null
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %do.body
  %32 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress25 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %32, i32 0, i32 1
  %33 = load %struct._GimpProgress*, %struct._GimpProgress** %progress25, align 8
  call void @gimp_progress_pulse(%struct._GimpProgress* %33)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.26
  %34 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp27 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %34, i32 0, i32 2
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp27, align 8
  %call28 = call i32 @xcf_read_int32(%struct._IO_FILE* %35, i32* %hierarchy_offset, i32 1)
  %36 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp29 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %36, i32 0, i32 3
  %37 = load i32, i32* %cp29, align 4
  %add30 = add i32 %37, %call28
  store i32 %add30, i32* %cp29, align 4
  %38 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %39 = load i32, i32* %hierarchy_offset, align 4
  %call31 = call i32 @xcf_seek_pos(%struct._XcfInfo* %38, i32 %39, %struct._GError** null)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %do.end
  br label %error

if.end.34:                                        ; preds = %do.end
  %40 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %41 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  %42 = bitcast %struct._GimpLayerMask* %41 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_drawable_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call35)
  %43 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpDrawable*
  %call37 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %43)
  %call38 = call i32 @xcf_load_hierarchy(%struct._XcfInfo* %40, %struct._TileManager* %call37)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %if.end.34
  br label %error

if.end.41:                                        ; preds = %if.end.34
  br label %do.body.42

do.body.42:                                       ; preds = %if.end.41
  %44 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress43 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %44, i32 0, i32 1
  %45 = load %struct._GimpProgress*, %struct._GimpProgress** %progress43, align 8
  %tobool44 = icmp ne %struct._GimpProgress* %45, null
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %do.body.42
  %46 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress46 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %46, i32 0, i32 1
  %47 = load %struct._GimpProgress*, %struct._GimpProgress** %progress46, align 8
  call void @gimp_progress_pulse(%struct._GimpProgress* %47)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %do.body.42
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  %48 = load i32, i32* %is_fs_drawable, align 4
  %tobool49 = icmp ne i32 %48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %do.end.48
  %49 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  %50 = bitcast %struct._GimpLayerMask* %49 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_drawable_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call51)
  %51 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpDrawable*
  %52 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel_drawable = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %52, i32 0, i32 8
  store %struct._GimpDrawable* %51, %struct._GimpDrawable** %floating_sel_drawable, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %do.end.48
  %53 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  store %struct._GimpLayerMask* %53, %struct._GimpLayerMask** %retval
  br label %return

error:                                            ; preds = %if.then.40, %if.then.33, %if.then.21
  %54 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  %55 = bitcast %struct._GimpLayerMask* %54 to i8*
  call void @g_object_unref(i8* %55)
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %retval
  br label %return

return:                                           ; preds = %error, %if.end.53, %if.then.15, %if.then
  %56 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %retval
  ret %struct._GimpLayerMask* %56
}

declare void @gimp_layer_mask_set_apply(%struct._GimpLayerMask*, i32, i32) #1

declare void @gimp_layer_mask_set_edit(%struct._GimpLayerMask*, i32) #1

declare void @gimp_layer_mask_set_show(%struct._GimpLayerMask*, i32, i32) #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

declare i8* @g_object_ref_sink(i8*) #1

declare void @gimp_layer_set_opacity(%struct._GimpLayer*, double, i32) #1

declare i32 @gimp_item_can_lock_content(%struct._GimpItem*) #1

declare void @gimp_item_set_lock_content(%struct._GimpItem*, i32, i32) #1

declare i32 @gimp_layer_can_lock_alpha(%struct._GimpLayer*) #1

declare void @gimp_layer_set_lock_alpha(%struct._GimpLayer*, i32, i32) #1

declare void @gimp_item_set_offset(%struct._GimpItem*, i32, i32) #1

declare void @gimp_layer_set_mode(%struct._GimpLayer*, i32, i32) #1

declare %struct._GimpLayer* @gimp_group_layer_new(%struct._GimpImage*) #1

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @gimp_object_get_name(i8*) #1

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare i32 @tile_manager_width(%struct._TileManager*) #1

declare i32 @tile_manager_height(%struct._TileManager*) #1

declare i32 @tile_manager_bpp(%struct._TileManager*) #1

; Function Attrs: nounwind uwtable
define internal i32 @xcf_load_level(%struct._XcfInfo* %info, %struct._TileManager* %tiles) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %saved_pos = alloca i32, align 4
  %offset = alloca i32, align 4
  %offset2 = alloca i32, align 4
  %ntiles = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %i = alloca i32, align 4
  %fail = alloca i32, align 4
  %previous = alloca %struct._Tile*, align 8
  %tile = alloca %struct._Tile*, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  %0 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %0, i32 0, i32 2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @xcf_read_int32(%struct._IO_FILE* %1, i32* %width, i32 1)
  %2 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %2, i32 0, i32 3
  %3 = load i32, i32* %cp, align 4
  %add = add i32 %3, %call
  store i32 %add, i32* %cp, align 4
  %4 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %4, i32 0, i32 2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %call2 = call i32 @xcf_read_int32(%struct._IO_FILE* %5, i32* %height, i32 1)
  %6 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp3 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %6, i32 0, i32 3
  %7 = load i32, i32* %cp3, align 4
  %add4 = add i32 %7, %call2
  store i32 %add4, i32* %cp3, align 4
  %8 = load i32, i32* %width, align 4
  %9 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call5 = call i32 @tile_manager_width(%struct._TileManager* %9)
  %cmp = icmp ne i32 %8, %call5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load i32, i32* %height, align 4
  %11 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call6 = call i32 @tile_manager_height(%struct._TileManager* %11)
  %cmp7 = icmp ne i32 %10, %call6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %12 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp8 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %12, i32 0, i32 2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp8, align 8
  %call9 = call i32 @xcf_read_int32(%struct._IO_FILE* %13, i32* %offset, i32 1)
  %14 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp10 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %14, i32 0, i32 3
  %15 = load i32, i32* %cp10, align 4
  %add11 = add i32 %15, %call9
  store i32 %add11, i32* %cp10, align 4
  %16 = load i32, i32* %offset, align 4
  %cmp12 = icmp eq i32 %16, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  store %struct._Tile* null, %struct._Tile** %previous, align 8
  %17 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %ntile_rows = getelementptr inbounds %struct._TileManager, %struct._TileManager* %17, i32 0, i32 4
  %18 = load i32, i32* %ntile_rows, align 4
  %19 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %ntile_cols = getelementptr inbounds %struct._TileManager, %struct._TileManager* %19, i32 0, i32 5
  %20 = load i32, i32* %ntile_cols, align 4
  %mul = mul nsw i32 %18, %20
  store i32 %mul, i32* %ntiles, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %ntiles, align 4
  %cmp15 = icmp ult i32 %21, %22
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %fail, align 4
  %23 = load i32, i32* %offset, align 4
  %cmp16 = icmp eq i32 %23, 0
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %for.body
  %24 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %gimp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %24, i32 0, i32 0
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %26 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %26, i32 0, i32 1
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %28 = bitcast %struct._GimpProgress* %27 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 80)
  %29 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @gimp_message_literal(%struct._Gimp* %25, %struct._GObject* %29, i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %for.body
  %30 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp20 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %30, i32 0, i32 3
  %31 = load i32, i32* %cp20, align 4
  store i32 %31, i32* %saved_pos, align 4
  %32 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp21 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %32, i32 0, i32 2
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp21, align 8
  %call22 = call i32 @xcf_read_int32(%struct._IO_FILE* %33, i32* %offset2, i32 1)
  %34 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp23 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %34, i32 0, i32 3
  %35 = load i32, i32* %cp23, align 4
  %add24 = add i32 %35, %call22
  store i32 %add24, i32* %cp23, align 4
  %36 = load i32, i32* %offset2, align 4
  %cmp25 = icmp eq i32 %36, 0
  br i1 %cmp25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end.19
  %37 = load i32, i32* %offset, align 4
  %conv = uitofp i32 %37 to double
  %add27 = fadd double %conv, 2.457600e+04
  %conv28 = fptoui double %add27 to i32
  store i32 %conv28, i32* %offset2, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.end.19
  %38 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %39 = load i32, i32* %offset, align 4
  %call30 = call i32 @xcf_seek_pos(%struct._XcfInfo* %38, i32 %39, %struct._GError** null)
  %tobool = icmp ne i32 %call30, 0
  br i1 %tobool, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.end.29
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.29
  %40 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %41 = load i32, i32* %i, align 4
  %call33 = call %struct._Tile* @tile_manager_get(%struct._TileManager* %40, i32 %41, i32 1, i32 1)
  store %struct._Tile* %call33, %struct._Tile** %tile, align 8
  %42 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %compression = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %42, i32 0, i32 13
  %43 = load i32, i32* %compression, align 4
  switch i32 %43, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.38
    i32 2, label %sw.bb.43
    i32 3, label %sw.bb.44
  ]

sw.bb:                                            ; preds = %if.end.32
  %44 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %45 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call34 = call i32 @xcf_load_tile(%struct._XcfInfo* %44, %struct._Tile* %45)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %sw.bb
  store i32 1, i32* %fail, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %sw.bb
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.end.32
  %46 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %47 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %48 = load i32, i32* %offset2, align 4
  %49 = load i32, i32* %offset, align 4
  %sub = sub i32 %48, %49
  %call39 = call i32 @xcf_load_tile_rle(%struct._XcfInfo* %46, %struct._Tile* %47, i32 %sub)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %sw.bb.38
  store i32 1, i32* %fail, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %sw.bb.38
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.end.32
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i32 0, i32 0))
  store i32 1, i32* %fail, align 4
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.end.32
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0))
  store i32 1, i32* %fail, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.32
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0))
  store i32 1, i32* %fail, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.44, %sw.bb.43, %if.end.42, %if.end.37
  %50 = load i32, i32* %fail, align 4
  %tobool45 = icmp ne i32 %50, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %sw.epilog
  %51 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %51, i32 1)
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %sw.epilog
  %52 = load %struct._Tile*, %struct._Tile** %previous, align 8
  %cmp48 = icmp ne %struct._Tile* %52, null
  br i1 %cmp48, label %if.then.50, label %if.end.74

if.then.50:                                       ; preds = %if.end.47
  %53 = load %struct._Tile*, %struct._Tile** %previous, align 8
  call void @tile_lock(%struct._Tile* %53)
  %54 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call51 = call i32 @tile_ewidth(%struct._Tile* %54)
  %55 = load %struct._Tile*, %struct._Tile** %previous, align 8
  %call52 = call i32 @tile_ewidth(%struct._Tile* %55)
  %cmp53 = icmp eq i32 %call51, %call52
  br i1 %cmp53, label %land.lhs.true, label %if.end.73

land.lhs.true:                                    ; preds = %if.then.50
  %56 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call55 = call i32 @tile_eheight(%struct._Tile* %56)
  %57 = load %struct._Tile*, %struct._Tile** %previous, align 8
  %call56 = call i32 @tile_eheight(%struct._Tile* %57)
  %cmp57 = icmp eq i32 %call55, %call56
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.73

land.lhs.true.59:                                 ; preds = %land.lhs.true
  %58 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call60 = call i32 @tile_bpp(%struct._Tile* %58)
  %59 = load %struct._Tile*, %struct._Tile** %previous, align 8
  %call61 = call i32 @tile_bpp(%struct._Tile* %59)
  %cmp62 = icmp eq i32 %call60, %call61
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.73

land.lhs.true.64:                                 ; preds = %land.lhs.true.59
  %60 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call65 = call i8* @tile_data_pointer(%struct._Tile* %60, i32 0, i32 0)
  %61 = load %struct._Tile*, %struct._Tile** %previous, align 8
  %call66 = call i8* @tile_data_pointer(%struct._Tile* %61, i32 0, i32 0)
  %62 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call67 = call i32 @tile_size(%struct._Tile* %62)
  %conv68 = sext i32 %call67 to i64
  %call69 = call i32 @memcmp(i8* %call65, i8* %call66, i64 %conv68) #7
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %land.lhs.true.64
  %63 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %64 = load i32, i32* %i, align 4
  %65 = load %struct._Tile*, %struct._Tile** %previous, align 8
  call void @tile_manager_map(%struct._TileManager* %63, i32 %64, %struct._Tile* %65)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %land.lhs.true.64, %land.lhs.true.59, %land.lhs.true, %if.then.50
  %66 = load %struct._Tile*, %struct._Tile** %previous, align 8
  call void @tile_release(%struct._Tile* %66, i32 0)
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.47
  %67 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %67, i32 1)
  %68 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %69 = load i32, i32* %i, align 4
  %call75 = call %struct._Tile* @tile_manager_get(%struct._TileManager* %68, i32 %69, i32 0, i32 0)
  store %struct._Tile* %call75, %struct._Tile** %previous, align 8
  %70 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %71 = load i32, i32* %saved_pos, align 4
  %call76 = call i32 @xcf_seek_pos(%struct._XcfInfo* %70, i32 %71, %struct._GError** null)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %if.end.74
  store i32 0, i32* %retval
  br label %return

if.end.79:                                        ; preds = %if.end.74
  %72 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp80 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %72, i32 0, i32 2
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %fp80, align 8
  %call81 = call i32 @xcf_read_int32(%struct._IO_FILE* %73, i32* %offset, i32 1)
  %74 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp82 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %74, i32 0, i32 3
  %75 = load i32, i32* %cp82, align 4
  %add83 = add i32 %75, %call81
  store i32 %add83, i32* %cp82, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.79
  %76 = load i32, i32* %i, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %77 = load i32, i32* %offset, align 4
  %cmp84 = icmp ne i32 %77, 0
  br i1 %cmp84, label %if.then.86, label %if.end.90

if.then.86:                                       ; preds = %for.end
  %78 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %gimp87 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %78, i32 0, i32 0
  %79 = load %struct._Gimp*, %struct._Gimp** %gimp87, align 8
  %80 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress88 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %80, i32 0, i32 1
  %81 = load %struct._GimpProgress*, %struct._GimpProgress** %progress88, align 8
  %82 = bitcast %struct._GimpProgress* %81 to %struct._GTypeInstance*
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 80)
  %83 = bitcast %struct._GTypeInstance* %call89 to %struct._GObject*
  %84 = load i32, i32* %offset, align 4
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %79, %struct._GObject* %83, i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i32 0, i32 0), i32 %84)
  store i32 0, i32* %retval
  br label %return

if.end.90:                                        ; preds = %for.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.90, %if.then.86, %if.then.78, %if.then.46, %if.then.31, %if.then.17, %if.then.13, %if.then
  %85 = load i32, i32* %retval
  ret i32 %85
}

declare %struct._Tile* @tile_manager_get(%struct._TileManager*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @xcf_load_tile(%struct._XcfInfo* %info, %struct._Tile* %tile) #0 {
entry:
  %info.addr = alloca %struct._XcfInfo*, align 8
  %tile.addr = alloca %struct._Tile*, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %0, i32 0, i32 2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %2 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call = call i8* @tile_data_pointer(%struct._Tile* %2, i32 0, i32 0)
  %3 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call1 = call i32 @tile_size(%struct._Tile* %3)
  %call2 = call i32 @xcf_read_int8(%struct._IO_FILE* %1, i8* %call, i32 %call1)
  %4 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %4, i32 0, i32 3
  %5 = load i32, i32* %cp, align 4
  %add = add i32 %5, %call2
  store i32 %add, i32* %cp, align 4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_load_tile_rle(%struct._XcfInfo* %info, %struct._Tile* %tile, i32 %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %tile.addr = alloca %struct._Tile*, align 8
  %data_length.addr = alloca i32, align 4
  %data = alloca i8*, align 8
  %val = alloca i8, align 1
  %size = alloca i32, align 4
  %count = alloca i32, align 4
  %length = alloca i32, align 4
  %bpp = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nmemb_read_successfully = alloca i32, align 4
  %xcfdata = alloca i8*, align 8
  %xcfodata = alloca i8*, align 8
  %xcfdatalimit = alloca i8*, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  store i32 %data_length, i32* %data_length.addr, align 4
  %0 = load i32, i32* %data_length.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call = call i32 @tile_bpp(%struct._Tile* %1)
  store i32 %call, i32* %bpp, align 4
  %2 = load i32, i32* %data_length.addr, align 4
  %conv = sext i32 %2 to i64
  %call1 = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call1, i8** %xcfodata, align 8
  store i8* %call1, i8** %xcfdata, align 8
  %3 = load i8*, i8** %xcfdata, align 8
  %4 = load i32, i32* %data_length.addr, align 4
  %conv2 = sext i32 %4 to i64
  %5 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %5, i32 0, i32 2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call3 = call i64 @fread(i8* %3, i64 1, i64 %conv2, %struct._IO_FILE* %6)
  %conv4 = trunc i64 %call3 to i32
  store i32 %conv4, i32* %nmemb_read_successfully, align 4
  %7 = load i32, i32* %nmemb_read_successfully, align 4
  %8 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %8, i32 0, i32 3
  %9 = load i32, i32* %cp, align 4
  %add = add i32 %9, %7
  store i32 %add, i32* %cp, align 4
  %10 = load i32, i32* %nmemb_read_successfully, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %11 = load i8*, i8** %xcfodata, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  store i8* %arrayidx, i8** %xcfdatalimit, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.89, %if.end
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %bpp, align 4
  %cmp5 = icmp slt i32 %12, %13
  br i1 %cmp5, label %for.body, label %for.end.91

for.body:                                         ; preds = %for.cond
  %14 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call7 = call i8* @tile_data_pointer(%struct._Tile* %14, i32 0, i32 0)
  %15 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call7, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8
  %16 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call8 = call i32 @tile_ewidth(%struct._Tile* %16)
  %17 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call9 = call i32 @tile_eheight(%struct._Tile* %17)
  %mul = mul nsw i32 %call8, %call9
  store i32 %mul, i32* %size, align 4
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.87, %for.body
  %18 = load i32, i32* %size, align 4
  %cmp10 = icmp sgt i32 %18, 0
  br i1 %cmp10, label %while.body, label %while.end.88

while.body:                                       ; preds = %while.cond
  %19 = load i8*, i8** %xcfdata, align 8
  %20 = load i8*, i8** %xcfdatalimit, align 8
  %cmp12 = icmp ugt i8* %19, %20
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %while.body
  br label %bogus_rle

if.end.15:                                        ; preds = %while.body
  %21 = load i8*, i8** %xcfdata, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %xcfdata, align 8
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %val, align 1
  %23 = load i8, i8* %val, align 1
  %conv16 = zext i8 %23 to i32
  store i32 %conv16, i32* %length, align 4
  %24 = load i32, i32* %length, align 4
  %cmp17 = icmp sge i32 %24, 128
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.15
  %25 = load i32, i32* %length, align 4
  %sub20 = sub nsw i32 %25, 1
  %sub21 = sub nsw i32 255, %sub20
  store i32 %sub21, i32* %length, align 4
  %26 = load i32, i32* %length, align 4
  %cmp22 = icmp eq i32 %26, 128
  br i1 %cmp22, label %if.then.24, label %if.end.34

if.then.24:                                       ; preds = %if.then.19
  %27 = load i8*, i8** %xcfdata, align 8
  %28 = load i8*, i8** %xcfdatalimit, align 8
  %cmp25 = icmp uge i8* %27, %28
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.24
  br label %bogus_rle

if.end.28:                                        ; preds = %if.then.24
  %29 = load i8*, i8** %xcfdata, align 8
  %30 = load i8, i8* %29, align 1
  %conv29 = zext i8 %30 to i32
  %shl = shl i32 %conv29, 8
  %31 = load i8*, i8** %xcfdata, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %32 to i32
  %add32 = add nsw i32 %shl, %conv31
  store i32 %add32, i32* %length, align 4
  %33 = load i8*, i8** %xcfdata, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %add.ptr33, i8** %xcfdata, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.28, %if.then.19
  %34 = load i32, i32* %length, align 4
  %35 = load i32, i32* %count, align 4
  %add35 = add nsw i32 %35, %34
  store i32 %add35, i32* %count, align 4
  %36 = load i32, i32* %length, align 4
  %37 = load i32, i32* %size, align 4
  %sub36 = sub nsw i32 %37, %36
  store i32 %sub36, i32* %size, align 4
  %38 = load i32, i32* %size, align 4
  %cmp37 = icmp slt i32 %38, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.34
  br label %bogus_rle

if.end.40:                                        ; preds = %if.end.34
  %39 = load i32, i32* %length, align 4
  %sub41 = sub nsw i32 %39, 1
  %idxprom42 = sext i32 %sub41 to i64
  %40 = load i8*, i8** %xcfdata, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %40, i64 %idxprom42
  %41 = load i8*, i8** %xcfdatalimit, align 8
  %cmp44 = icmp ugt i8* %arrayidx43, %41
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.40
  br label %bogus_rle

if.end.47:                                        ; preds = %if.end.40
  br label %while.cond.48

while.cond.48:                                    ; preds = %while.body.51, %if.end.47
  %42 = load i32, i32* %length, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %length, align 4
  %cmp49 = icmp sgt i32 %42, 0
  br i1 %cmp49, label %while.body.51, label %while.end

while.body.51:                                    ; preds = %while.cond.48
  %43 = load i8*, i8** %xcfdata, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr52, i8** %xcfdata, align 8
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %data, align 8
  store i8 %44, i8* %45, align 1
  %46 = load i32, i32* %bpp, align 4
  %47 = load i8*, i8** %data, align 8
  %idx.ext53 = sext i32 %46 to i64
  %add.ptr54 = getelementptr inbounds i8, i8* %47, i64 %idx.ext53
  store i8* %add.ptr54, i8** %data, align 8
  br label %while.cond.48

while.end:                                        ; preds = %while.cond.48
  br label %if.end.87

if.else:                                          ; preds = %if.end.15
  %48 = load i32, i32* %length, align 4
  %add55 = add nsw i32 %48, 1
  store i32 %add55, i32* %length, align 4
  %49 = load i32, i32* %length, align 4
  %cmp56 = icmp eq i32 %49, 128
  br i1 %cmp56, label %if.then.58, label %if.end.69

if.then.58:                                       ; preds = %if.else
  %50 = load i8*, i8** %xcfdata, align 8
  %51 = load i8*, i8** %xcfdatalimit, align 8
  %cmp59 = icmp uge i8* %50, %51
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.58
  br label %bogus_rle

if.end.62:                                        ; preds = %if.then.58
  %52 = load i8*, i8** %xcfdata, align 8
  %53 = load i8, i8* %52, align 1
  %conv63 = zext i8 %53 to i32
  %shl64 = shl i32 %conv63, 8
  %54 = load i8*, i8** %xcfdata, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %54, i64 1
  %55 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %55 to i32
  %add67 = add nsw i32 %shl64, %conv66
  store i32 %add67, i32* %length, align 4
  %56 = load i8*, i8** %xcfdata, align 8
  %add.ptr68 = getelementptr inbounds i8, i8* %56, i64 2
  store i8* %add.ptr68, i8** %xcfdata, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.62, %if.else
  %57 = load i32, i32* %length, align 4
  %58 = load i32, i32* %count, align 4
  %add70 = add nsw i32 %58, %57
  store i32 %add70, i32* %count, align 4
  %59 = load i32, i32* %length, align 4
  %60 = load i32, i32* %size, align 4
  %sub71 = sub nsw i32 %60, %59
  store i32 %sub71, i32* %size, align 4
  %61 = load i32, i32* %size, align 4
  %cmp72 = icmp slt i32 %61, 0
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.69
  br label %bogus_rle

if.end.75:                                        ; preds = %if.end.69
  %62 = load i8*, i8** %xcfdata, align 8
  %63 = load i8*, i8** %xcfdatalimit, align 8
  %cmp76 = icmp ugt i8* %62, %63
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.75
  br label %bogus_rle

if.end.79:                                        ; preds = %if.end.75
  %64 = load i8*, i8** %xcfdata, align 8
  %incdec.ptr80 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr80, i8** %xcfdata, align 8
  %65 = load i8, i8* %64, align 1
  store i8 %65, i8* %val, align 1
  store i32 0, i32* %j, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc, %if.end.79
  %66 = load i32, i32* %j, align 4
  %67 = load i32, i32* %length, align 4
  %cmp82 = icmp slt i32 %66, %67
  br i1 %cmp82, label %for.body.84, label %for.end

for.body.84:                                      ; preds = %for.cond.81
  %68 = load i8, i8* %val, align 1
  %69 = load i8*, i8** %data, align 8
  store i8 %68, i8* %69, align 1
  %70 = load i32, i32* %bpp, align 4
  %71 = load i8*, i8** %data, align 8
  %idx.ext85 = sext i32 %70 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %71, i64 %idx.ext85
  store i8* %add.ptr86, i8** %data, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.84
  %72 = load i32, i32* %j, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.81

for.end:                                          ; preds = %for.cond.81
  br label %if.end.87

if.end.87:                                        ; preds = %for.end, %while.end
  br label %while.cond

while.end.88:                                     ; preds = %while.cond
  br label %for.inc.89

for.inc.89:                                       ; preds = %while.end.88
  %73 = load i32, i32* %i, align 4
  %inc90 = add nsw i32 %73, 1
  store i32 %inc90, i32* %i, align 4
  br label %for.cond

for.end.91:                                       ; preds = %for.cond
  %74 = load i8*, i8** %xcfodata, align 8
  call void @g_free(i8* %74)
  store i32 1, i32* %retval
  br label %return

bogus_rle:                                        ; preds = %if.then.78, %if.then.74, %if.then.61, %if.then.46, %if.then.39, %if.then.27, %if.then.14
  %75 = load i8*, i8** %xcfodata, align 8
  %tobool = icmp ne i8* %75, null
  br i1 %tobool, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %bogus_rle
  %76 = load i8*, i8** %xcfodata, align 8
  call void @g_free(i8* %76)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %bogus_rle
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.93, %for.end.91, %if.then
  %77 = load i32, i32* %retval
  ret i32 %77
}

declare void @tile_release(%struct._Tile*, i32) #1

declare void @tile_lock(%struct._Tile*) #1

declare i32 @tile_ewidth(%struct._Tile*) #1

declare i32 @tile_eheight(%struct._Tile*) #1

declare i32 @tile_bpp(%struct._Tile*) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i8* @tile_data_pointer(%struct._Tile*, i32, i32) #1

declare i32 @tile_size(%struct._Tile*) #1

declare void @tile_manager_map(%struct._TileManager*, i32, %struct._Tile*) #1

declare noalias i8* @g_malloc(i64) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare %struct._GimpLayerMask* @gimp_layer_mask_new(%struct._GimpImage*, i32, i32, i8*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @xcf_load_channel_props(%struct._XcfInfo* %info, %struct._GimpImage* %image, %struct._GimpChannel** %channel) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %channel.addr = alloca %struct._GimpChannel**, align 8
  %prop_type = alloca i32, align 4
  %prop_size = alloca i32, align 4
  %mask = alloca %struct._GimpChannel*, align 8
  %opacity = alloca i32, align 4
  %visible = alloca i32, align 4
  %linked = alloca i32, align 4
  %lock_content = alloca i32, align 4
  %show_masked = alloca i32, align 4
  %col = alloca [3 x i8], align 1
  %tattoo = alloca i32, align 4
  %base = alloca i64, align 8
  %p = alloca %struct._GimpParasite*, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpChannel** %channel, %struct._GimpChannel*** %channel.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %sw.epilog
  %0 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %call = call i32 @xcf_load_prop(%struct._XcfInfo* %0, i32* %prop_type, i32* %prop_size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %1 = load i32, i32* %prop_type, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.2
    i32 6, label %sw.bb.28
    i32 8, label %sw.bb.30
    i32 9, label %sw.bb.38
    i32 28, label %sw.bb.47
    i32 14, label %sw.bb.56
    i32 16, label %sw.bb.61
    i32 20, label %sw.bb.68
    i32 21, label %sw.bb.75
  ]

sw.bb:                                            ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %if.end
  %2 = load %struct._GimpChannel**, %struct._GimpChannel*** %channel.addr, align 8
  %3 = load %struct._GimpChannel*, %struct._GimpChannel** %2, align 8
  %4 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %active_channel = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %4, i32 0, i32 7
  store %struct._GimpChannel* %3, %struct._GimpChannel** %active_channel, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.end
  %5 = load %struct._GimpChannel**, %struct._GimpChannel*** %channel.addr, align 8
  %6 = load %struct._GimpChannel*, %struct._GimpChannel** %5, align 8
  %7 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %active_channel3 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %7, i32 0, i32 7
  %8 = load %struct._GimpChannel*, %struct._GimpChannel** %active_channel3, align 8
  %cmp = icmp eq %struct._GimpChannel* %6, %8
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %sw.bb.2
  %9 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %active_channel5 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %9, i32 0, i32 7
  store %struct._GimpChannel* null, %struct._GimpChannel** %active_channel5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %sw.bb.2
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %11 = load %struct._GimpChannel**, %struct._GimpChannel*** %channel.addr, align 8
  %12 = load %struct._GimpChannel*, %struct._GimpChannel** %11, align 8
  %13 = bitcast %struct._GimpChannel* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %call9 = call i32 @gimp_item_get_width(%struct._GimpItem* %14)
  %15 = load %struct._GimpChannel**, %struct._GimpChannel*** %channel.addr, align 8
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %15, align 8
  %17 = bitcast %struct._GimpChannel* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %call12 = call i32 @gimp_item_get_height(%struct._GimpItem* %18)
  %call13 = call %struct._GimpChannel* @gimp_selection_new(%struct._GimpImage* %10, i32 %call9, i32 %call12)
  store %struct._GimpChannel* %call13, %struct._GimpChannel** %mask, align 8
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %20 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  call void @gimp_image_take_mask(%struct._GimpImage* %19, %struct._GimpChannel* %20)
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %22 = bitcast %struct._GimpChannel* %21 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_drawable_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call14)
  %23 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpDrawable*
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 1
  %24 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %tiles = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %24, i32 0, i32 1
  %25 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %25)
  %26 = load %struct._GimpChannel**, %struct._GimpChannel*** %channel.addr, align 8
  %27 = load %struct._GimpChannel*, %struct._GimpChannel** %26, align 8
  %28 = bitcast %struct._GimpChannel* %27 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_drawable_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call16)
  %29 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpDrawable*
  %private18 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %29, i32 0, i32 1
  %30 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private18, align 8
  %tiles19 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %30, i32 0, i32 1
  %31 = load %struct._TileManager*, %struct._TileManager** %tiles19, align 8
  %32 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %33 = bitcast %struct._GimpChannel* %32 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_drawable_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call20)
  %34 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpDrawable*
  %private22 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %34, i32 0, i32 1
  %35 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private22, align 8
  %tiles23 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %35, i32 0, i32 1
  store %struct._TileManager* %31, %struct._TileManager** %tiles23, align 8
  %36 = load %struct._GimpChannel**, %struct._GimpChannel*** %channel.addr, align 8
  %37 = load %struct._GimpChannel*, %struct._GimpChannel** %36, align 8
  %38 = bitcast %struct._GimpChannel* %37 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_drawable_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call24)
  %39 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpDrawable*
  %private26 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %39, i32 0, i32 1
  %40 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private26, align 8
  %tiles27 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %40, i32 0, i32 1
  store %struct._TileManager* null, %struct._TileManager** %tiles27, align 8
  %41 = load %struct._GimpChannel**, %struct._GimpChannel*** %channel.addr, align 8
  %42 = load %struct._GimpChannel*, %struct._GimpChannel** %41, align 8
  %43 = bitcast %struct._GimpChannel* %42 to i8*
  call void @g_object_unref(i8* %43)
  %44 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %45 = load %struct._GimpChannel**, %struct._GimpChannel*** %channel.addr, align 8
  store %struct._GimpChannel* %44, %struct._GimpChannel** %45, align 8
  %46 = load %struct._GimpChannel**, %struct._GimpChannel*** %channel.addr, align 8
  %47 = load %struct._GimpChannel*, %struct._GimpChannel** %46, align 8
  %boundary_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %47, i32 0, i32 6
  store i32 0, i32* %boundary_known, align 4
  %48 = load %struct._GimpChannel**, %struct._GimpChannel*** %channel.addr, align 8
  %49 = load %struct._GimpChannel*, %struct._GimpChannel** %48, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %49, i32 0, i32 12
  store i32 0, i32* %bounds_known, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.end
  %50 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %50, i32 0, i32 2
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call29 = call i32 @xcf_read_int32(%struct._IO_FILE* %51, i32* %opacity, i32 1)
  %52 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %52, i32 0, i32 3
  %53 = load i32, i32* %cp, align 4
  %add = add i32 %53, %call29
  store i32 %add, i32* %cp, align 4
  %54 = load %struct._GimpChannel**, %struct._GimpChannel*** %channel.addr, align 8
  %55 = load %struct._GimpChannel*, %struct._GimpChannel** %54, align 8
  %56 = load i32, i32* %opacity, align 4
  %conv = uitofp i32 %56 to double
  %div = fdiv double %conv, 2.550000e+02
  call void @gimp_channel_set_opacity(%struct._GimpChannel* %55, double %div, i32 0)
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end
  %57 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp31 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %57, i32 0, i32 2
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp31, align 8
  %call32 = call i32 @xcf_read_int32(%struct._IO_FILE* %58, i32* %visible, i32 1)
  %59 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp33 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %59, i32 0, i32 3
  %60 = load i32, i32* %cp33, align 4
  %add34 = add i32 %60, %call32
  store i32 %add34, i32* %cp33, align 4
  %61 = load %struct._GimpChannel**, %struct._GimpChannel*** %channel.addr, align 8
  %62 = load %struct._GimpChannel*, %struct._GimpChannel** %61, align 8
  %63 = bitcast %struct._GimpChannel* %62 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_item_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call35)
  %64 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpItem*
  %65 = load i32, i32* %visible, align 4
  %tobool37 = icmp ne i32 %65, 0
  %cond = select i1 %tobool37, i32 1, i32 0
  call void @gimp_item_set_visible(%struct._GimpItem* %64, i32 %cond, i32 0)
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.end
  %66 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp39 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %66, i32 0, i32 2
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp39, align 8
  %call40 = call i32 @xcf_read_int32(%struct._IO_FILE* %67, i32* %linked, i32 1)
  %68 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp41 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %68, i32 0, i32 3
  %69 = load i32, i32* %cp41, align 4
  %add42 = add i32 %69, %call40
  store i32 %add42, i32* %cp41, align 4
  %70 = load %struct._GimpChannel**, %struct._GimpChannel*** %channel.addr, align 8
  %71 = load %struct._GimpChannel*, %struct._GimpChannel** %70, align 8
  %72 = bitcast %struct._GimpChannel* %71 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_item_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call43)
  %73 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpItem*
  %74 = load i32, i32* %linked, align 4
  %tobool45 = icmp ne i32 %74, 0
  %cond46 = select i1 %tobool45, i32 1, i32 0
  call void @gimp_item_set_linked(%struct._GimpItem* %73, i32 %cond46, i32 0)
  br label %sw.epilog

sw.bb.47:                                         ; preds = %if.end
  %75 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp48 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %75, i32 0, i32 2
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %fp48, align 8
  %call49 = call i32 @xcf_read_int32(%struct._IO_FILE* %76, i32* %lock_content, i32 1)
  %77 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp50 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %77, i32 0, i32 3
  %78 = load i32, i32* %cp50, align 4
  %add51 = add i32 %78, %call49
  store i32 %add51, i32* %cp50, align 4
  %79 = load %struct._GimpChannel**, %struct._GimpChannel*** %channel.addr, align 8
  %80 = load %struct._GimpChannel*, %struct._GimpChannel** %79, align 8
  %81 = bitcast %struct._GimpChannel* %80 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_item_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call52)
  %82 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpItem*
  %83 = load i32, i32* %lock_content, align 4
  %tobool54 = icmp ne i32 %83, 0
  %cond55 = select i1 %tobool54, i32 1, i32 0
  call void @gimp_item_set_lock_content(%struct._GimpItem* %82, i32 %cond55, i32 0)
  br label %sw.epilog

sw.bb.56:                                         ; preds = %if.end
  %84 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp57 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %84, i32 0, i32 2
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %fp57, align 8
  %call58 = call i32 @xcf_read_int32(%struct._IO_FILE* %85, i32* %show_masked, i32 1)
  %86 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp59 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %86, i32 0, i32 3
  %87 = load i32, i32* %cp59, align 4
  %add60 = add i32 %87, %call58
  store i32 %add60, i32* %cp59, align 4
  %88 = load %struct._GimpChannel**, %struct._GimpChannel*** %channel.addr, align 8
  %89 = load %struct._GimpChannel*, %struct._GimpChannel** %88, align 8
  %90 = load i32, i32* %show_masked, align 4
  call void @gimp_channel_set_show_masked(%struct._GimpChannel* %89, i32 %90)
  br label %sw.epilog

sw.bb.61:                                         ; preds = %if.end
  %91 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp62 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %91, i32 0, i32 2
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %fp62, align 8
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %col, i32 0, i32 0
  %call63 = call i32 @xcf_read_int8(%struct._IO_FILE* %92, i8* %arraydecay, i32 3)
  %93 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp64 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %93, i32 0, i32 3
  %94 = load i32, i32* %cp64, align 4
  %add65 = add i32 %94, %call63
  store i32 %add65, i32* %cp64, align 4
  %95 = load %struct._GimpChannel**, %struct._GimpChannel*** %channel.addr, align 8
  %96 = load %struct._GimpChannel*, %struct._GimpChannel** %95, align 8
  %color = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %96, i32 0, i32 1
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %col, i32 0, i64 0
  %97 = load i8, i8* %arrayidx, align 1
  %arrayidx66 = getelementptr inbounds [3 x i8], [3 x i8]* %col, i32 0, i64 1
  %98 = load i8, i8* %arrayidx66, align 1
  %arrayidx67 = getelementptr inbounds [3 x i8], [3 x i8]* %col, i32 0, i64 2
  %99 = load i8, i8* %arrayidx67, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* %color, i8 zeroext %97, i8 zeroext %98, i8 zeroext %99)
  br label %sw.epilog

sw.bb.68:                                         ; preds = %if.end
  %100 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp69 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %100, i32 0, i32 2
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %fp69, align 8
  %call70 = call i32 @xcf_read_int32(%struct._IO_FILE* %101, i32* %tattoo, i32 1)
  %102 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp71 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %102, i32 0, i32 3
  %103 = load i32, i32* %cp71, align 4
  %add72 = add i32 %103, %call70
  store i32 %add72, i32* %cp71, align 4
  %104 = load %struct._GimpChannel**, %struct._GimpChannel*** %channel.addr, align 8
  %105 = load %struct._GimpChannel*, %struct._GimpChannel** %104, align 8
  %106 = bitcast %struct._GimpChannel* %105 to %struct._GTypeInstance*
  %call73 = call i64 @gimp_item_get_type() #6
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call73)
  %107 = bitcast %struct._GTypeInstance* %call74 to %struct._GimpItem*
  %108 = load i32, i32* %tattoo, align 4
  call void @gimp_item_set_tattoo(%struct._GimpItem* %107, i32 %108)
  br label %sw.epilog

sw.bb.75:                                         ; preds = %if.end
  %109 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp76 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %109, i32 0, i32 3
  %110 = load i32, i32* %cp76, align 4
  %conv77 = zext i32 %110 to i64
  store i64 %conv77, i64* %base, align 8
  br label %while.cond.78

while.cond.78:                                    ; preds = %if.end.88, %sw.bb.75
  %111 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp79 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %111, i32 0, i32 3
  %112 = load i32, i32* %cp79, align 4
  %conv80 = zext i32 %112 to i64
  %113 = load i64, i64* %base, align 8
  %sub = sub nsw i64 %conv80, %113
  %114 = load i32, i32* %prop_size, align 4
  %conv81 = zext i32 %114 to i64
  %cmp82 = icmp slt i64 %sub, %conv81
  br i1 %cmp82, label %while.body.84, label %while.end

while.body.84:                                    ; preds = %while.cond.78
  %115 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %call85 = call %struct._GimpParasite* @xcf_load_parasite(%struct._XcfInfo* %115)
  store %struct._GimpParasite* %call85, %struct._GimpParasite** %p, align 8
  %116 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  %tobool86 = icmp ne %struct._GimpParasite* %116, null
  br i1 %tobool86, label %if.end.88, label %if.then.87

if.then.87:                                       ; preds = %while.body.84
  store i32 0, i32* %retval
  br label %return

if.end.88:                                        ; preds = %while.body.84
  %117 = load %struct._GimpChannel**, %struct._GimpChannel*** %channel.addr, align 8
  %118 = load %struct._GimpChannel*, %struct._GimpChannel** %117, align 8
  %119 = bitcast %struct._GimpChannel* %118 to %struct._GTypeInstance*
  %call89 = call i64 @gimp_item_get_type() #6
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call89)
  %120 = bitcast %struct._GTypeInstance* %call90 to %struct._GimpItem*
  %121 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  call void @gimp_item_parasite_attach(%struct._GimpItem* %120, %struct._GimpParasite* %121, i32 0)
  %122 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %122)
  br label %while.cond.78

while.end:                                        ; preds = %while.cond.78
  %123 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp91 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %123, i32 0, i32 3
  %124 = load i32, i32* %cp91, align 4
  %conv92 = zext i32 %124 to i64
  %125 = load i64, i64* %base, align 8
  %sub93 = sub nsw i64 %conv92, %125
  %126 = load i32, i32* %prop_size, align 4
  %conv94 = zext i32 %126 to i64
  %cmp95 = icmp ne i64 %sub93, %conv94
  br i1 %cmp95, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %while.end
  %127 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %gimp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %127, i32 0, i32 0
  %128 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %129 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %129, i32 0, i32 1
  %130 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %131 = bitcast %struct._GimpProgress* %130 to %struct._GTypeInstance*
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 80)
  %132 = bitcast %struct._GTypeInstance* %call98 to %struct._GObject*
  call void @gimp_message_literal(%struct._Gimp* %128, %struct._GObject* %132, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.97, %while.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %133 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %134 = load i32, i32* %prop_size, align 4
  %conv100 = zext i32 %134 to i64
  %call101 = call i32 @xcf_skip_unknown_prop(%struct._XcfInfo* %133, i64 %conv100)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.end.104, label %if.then.103

if.then.103:                                      ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

if.end.104:                                       ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.104, %if.end.99, %sw.bb.68, %sw.bb.61, %sw.bb.56, %sw.bb.47, %sw.bb.38, %sw.bb.30, %sw.bb.28, %if.end.6, %sw.bb.1
  br label %while.body

return:                                           ; preds = %if.then.103, %if.then.87, %sw.bb, %if.then
  %135 = load i32, i32* %retval
  ret i32 %135
}

declare %struct._GimpChannel* @gimp_selection_new(%struct._GimpImage*, i32, i32) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare void @gimp_image_take_mask(%struct._GimpImage*, %struct._GimpChannel*) #1

declare void @tile_manager_unref(%struct._TileManager*) #1

declare void @gimp_channel_set_opacity(%struct._GimpChannel*, double, i32) #1

declare void @gimp_channel_set_show_masked(%struct._GimpChannel*, i32) #1

declare void @gimp_rgb_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare %struct._GimpChannel* @gimp_channel_new(%struct._GimpImage*, i32, i32, i8*, %struct._GimpRGB*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
