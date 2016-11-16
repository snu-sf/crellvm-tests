; ModuleID = './app/xcf/xcf-save.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._XcfInfo = type { %struct._Gimp*, %struct._GimpProgress*, %struct._IO_FILE*, i32, i8*, i32, %struct._GimpLayer*, %struct._GimpChannel*, %struct._GimpDrawable*, %struct._GimpLayer*, i32, i32, i32*, i32, i32 }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
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
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpProgress = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GError = type { i32, i32, i8* }
%struct._GimpImagePrivate = type { i32, %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure*, i8*, i8*, i32, i32, double, double, i32, i32, i8*, i32, %struct._GimpPalette*, i32, i32, i32, i32, i32, i32, i32, %struct._GimpProjection*, %struct._GeglNode*, %struct._GList*, %struct._GimpGrid*, %struct._GList*, %struct._GimpItemTree*, %struct._GimpItemTree*, %struct._GimpItemTree*, %struct._GSList*, i32, i32, i32, %struct._GimpLayer*, %struct._GimpChannel*, %struct._GimpParasiteList*, [4 x i32], [4 x i32], i32, i32, %struct._GimpRGB, %struct._GimpUndoStack*, %struct._GimpUndoStack*, i32, i32, %struct._TempBuf*, %struct._GimpImageFlushAccumulator }
%struct._GimpPlugInProcedure = type opaque
%struct._GimpPalette = type opaque
%struct._GimpProjection = type opaque
%struct._GimpGrid = type { %struct._GimpObject, i32, %struct._GimpRGB, %struct._GimpRGB, double, double, i32, double, double, i32 }
%struct._GimpItemTree = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpUndoStack = type opaque
%struct._TempBuf = type opaque
%struct._GimpImageFlushAccumulator = type { i32, i32, i32, i32 }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._TileManager = type { i32, i32, i32, i32, i32, i32, %struct._Tile**, void (%struct._TileManager*, %struct._Tile*, i8*)*, i8*, i32, %struct._Tile* }
%struct._Tile = type opaque
%struct._GimpGuide = type { %struct._GObject, i32, i32, i32 }
%struct._GimpSamplePoint = type { i32, i32, i32, i32 }
%struct.XcfParasiteData = type { %struct._XcfInfo*, %struct._GError* }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, %struct.cairo_path*, i32, i32, double, double, double, double }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.1 }
%struct.anon.1 = type { double, double }
%struct._GimpVectorsCompatPoint = type { i32, double, double }
%struct._GimpStroke = type { %struct._GimpObject, i32, %struct._GList*, i32 }
%struct._GArray = type { i8*, i32 }
%struct._GimpAnchor = type { %struct._GimpCoords, i32, i32 }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpTextLayer = type { %struct._GimpLayer, %struct._GimpText*, i8*, i32, i32 }
%struct._GimpText = type opaque

@.str = private unnamed_addr constant [15 x i8] c"gimp xcf v%03d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"gimp xcf file\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%s: skipping guide with bad orientation\00", align 1
@__func__.xcf_save_prop = private unnamed_addr constant [14 x i8] c"xcf_save_prop\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Gimp-XCF\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Skipping unknown stroke type!\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"xcf: zlib compression unimplemented\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"xcf: fractal compression unimplemented\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"xcf: uh oh! xcf rle tile saving error: %d\00", align 1

; Function Attrs: nounwind uwtable
define void @xcf_save_choose_format(%struct._XcfInfo* %info, %struct._GimpImage* %image) #0 {
entry:
  %info.addr = alloca %struct._XcfInfo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %list = alloca %struct._GList*, align 8
  %save_version = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 0, i32* %save_version, align 4
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call i8* @gimp_image_get_colormap(%struct._GimpImage* %0)
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %save_version, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call1 = call %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage* %1)
  store %struct._GList* %call1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.21, %if.end
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool2 = icmp ne %struct._GList* %2, null
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %save_version, align 4
  %cmp = icmp slt i32 %3, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_layer_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpLayer*
  store %struct._GimpLayer* %8, %struct._GimpLayer** %layer, align 8
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call5 = call i32 @gimp_layer_get_mode(%struct._GimpLayer* %9)
  switch i32 %call5, label %sw.default [
    i32 19, label %sw.bb
    i32 20, label %sw.bb
    i32 21, label %sw.bb
    i32 22, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body
  %10 = load i32, i32* %save_version, align 4
  %cmp6 = icmp sgt i32 2, %10
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %11 = load i32, i32* %save_version, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %11, %cond.false ]
  store i32 %cond, i32* %save_version, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %13 = bitcast %struct._GimpLayer* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_viewable_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpViewable*
  %call9 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %14)
  %tobool10 = icmp ne %struct._GimpContainer* %call9, null
  br i1 %tobool10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %sw.epilog
  %15 = load i32, i32* %save_version, align 4
  %cmp12 = icmp sgt i32 3, %15
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %if.then.11
  br label %cond.end.15

cond.false.14:                                    ; preds = %if.then.11
  %16 = load i32, i32* %save_version, align 4
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi i32 [ 3, %cond.true.13 ], [ %16, %cond.false.14 ]
  store i32 %cond16, i32* %save_version, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %cond.end.15, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool18 = icmp ne %struct._GList* %17, null
  br i1 %tobool18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %for.inc
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.21

cond.false.20:                                    ; preds = %for.inc
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.19
  %cond22 = phi %struct._GList* [ %19, %cond.true.19 ], [ null, %cond.false.20 ]
  store %struct._GList* %cond22, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %20 = load i32, i32* %save_version, align 4
  %21 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %file_version = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %21, i32 0, i32 14
  store i32 %20, i32* %file_version, align 4
  ret void
}

declare i8* @gimp_image_get_colormap(%struct._GimpImage*) #1

declare %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

declare i32 @gimp_layer_get_mode(%struct._GimpLayer*) #1

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define i32 @xcf_save_image(%struct._XcfInfo* %info, %struct._GimpImage* %image, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %all_layers = alloca %struct._GList*, align 8
  %all_channels = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %saved_pos = alloca i32, align 4
  %offset = alloca i32, align 4
  %value = alloca i32, align 4
  %n_layers = alloca i32, align 4
  %n_channels = alloca i32, align 4
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %t1 = alloca i32, align 4
  %t2 = alloca i32, align 4
  %t3 = alloca i32, align 4
  %t4 = alloca i32, align 4
  %version_tag = alloca [16 x i8], align 16
  %tmp_error = alloca %struct._GError*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %progress, align 4
  store %struct._GError* null, %struct._GError** %tmp_error, align 8
  %0 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %file_version = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %0, i32 0, i32 14
  %1 = load i32, i32* %file_version, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %version_tag, i32 0, i32 0
  %2 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %file_version1 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %2, i32 0, i32 14
  %3 = load i32, i32* %file_version1, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 %3) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %version_tag, i32 0, i32 0
  %call3 = call i8* @strcpy(i8* %arraydecay2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %4, i32 0, i32 2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arraydecay4 = getelementptr inbounds [16 x i8], [16 x i8]* %version_tag, i32 0, i32 0
  %call5 = call i32 @xcf_write_int8(%struct._IO_FILE* %5, i8* %arraydecay4, i32 14, %struct._GError** %tmp_error)
  %6 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %6, i32 0, i32 3
  %7 = load i32, i32* %cp, align 4
  %add = add i32 %7, %call5
  store i32 %add, i32* %cp, align 4
  %8 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool = icmp ne %struct._GError* %8, null
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.body
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %10 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %9, %struct._GError* %10)
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call8 = call i32 @gimp_image_get_width(%struct._GimpImage* %11)
  store i32 %call8, i32* %value, align 4
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %12 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp10 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %12, i32 0, i32 2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp10, align 8
  %call11 = call i32 @xcf_write_int32(%struct._IO_FILE* %13, i32* %value, i32 1, %struct._GError** %tmp_error)
  %14 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp12 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %14, i32 0, i32 3
  %15 = load i32, i32* %cp12, align 4
  %add13 = add i32 %15, %call11
  store i32 %add13, i32* %cp12, align 4
  %16 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool14 = icmp ne %struct._GError* %16, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %do.body.9
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %17, %struct._GError* %18)
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %do.body.9
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call18 = call i32 @gimp_image_get_height(%struct._GimpImage* %19)
  store i32 %call18, i32* %value, align 4
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.17
  %20 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp20 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %20, i32 0, i32 2
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp20, align 8
  %call21 = call i32 @xcf_write_int32(%struct._IO_FILE* %21, i32* %value, i32 1, %struct._GError** %tmp_error)
  %22 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp22 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %22, i32 0, i32 3
  %23 = load i32, i32* %cp22, align 4
  %add23 = add i32 %23, %call21
  store i32 %add23, i32* %cp22, align 4
  %24 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool24 = icmp ne %struct._GError* %24, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %do.body.19
  %25 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %26 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %25, %struct._GError* %26)
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %do.body.19
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call28 = call i32 @gimp_image_base_type(%struct._GimpImage* %27)
  store i32 %call28, i32* %value, align 4
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.27
  %28 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp30 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %28, i32 0, i32 2
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp30, align 8
  %call31 = call i32 @xcf_write_int32(%struct._IO_FILE* %29, i32* %value, i32 1, %struct._GError** %tmp_error)
  %30 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp32 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %30, i32 0, i32 3
  %31 = load i32, i32* %cp32, align 4
  %add33 = add i32 %31, %call31
  store i32 %add33, i32* %cp32, align 4
  %32 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool34 = icmp ne %struct._GError* %32, null
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %do.body.29
  %33 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %34 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %33, %struct._GError* %34)
  store i32 0, i32* %retval
  br label %return

if.end.36:                                        ; preds = %do.body.29
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call38 = call %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage* %35)
  store %struct._GList* %call38, %struct._GList** %all_layers, align 8
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call39 = call %struct._GList* @gimp_image_get_channel_list(%struct._GimpImage* %36)
  store %struct._GList* %call39, %struct._GList** %all_channels, align 8
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call40 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %37)
  %call41 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %call40, i32* %t1, i32* %t2, i32* %t3, i32* %t4)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %do.end.37
  %38 = load %struct._GList*, %struct._GList** %all_channels, align 8
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call44 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %39)
  %40 = bitcast %struct._GimpChannel* %call44 to i8*
  %call45 = call %struct._GList* @g_list_append(%struct._GList* %38, i8* %40)
  store %struct._GList* %call45, %struct._GList** %all_channels, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %do.end.37
  %41 = load %struct._GList*, %struct._GList** %all_layers, align 8
  %call47 = call i32 @g_list_length(%struct._GList* %41)
  store i32 %call47, i32* %n_layers, align 4
  %42 = load %struct._GList*, %struct._GList** %all_channels, align 8
  %call48 = call i32 @g_list_length(%struct._GList* %42)
  store i32 %call48, i32* %n_channels, align 4
  %43 = load i32, i32* %n_layers, align 4
  %add49 = add i32 1, %43
  %44 = load i32, i32* %n_channels, align 4
  %add50 = add i32 %add49, %44
  store i32 %add50, i32* %max_progress, align 4
  br label %do.body.51

do.body.51:                                       ; preds = %if.end.46
  %45 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %47 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call52 = call i32 @xcf_save_image_props(%struct._XcfInfo* %45, %struct._GimpImage* %46, %struct._GError** %47)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %do.body.51
  store i32 0, i32* %retval
  br label %return

if.end.55:                                        ; preds = %do.body.51
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  br label %do.body.57

do.body.57:                                       ; preds = %do.end.56
  %48 = load i32, i32* %progress, align 4
  %inc = add i32 %48, 1
  store i32 %inc, i32* %progress, align 4
  %49 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress58 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %49, i32 0, i32 1
  %50 = load %struct._GimpProgress*, %struct._GimpProgress** %progress58, align 8
  %tobool59 = icmp ne %struct._GimpProgress* %50, null
  br i1 %tobool59, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %do.body.57
  %51 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress61 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %51, i32 0, i32 1
  %52 = load %struct._GimpProgress*, %struct._GimpProgress** %progress61, align 8
  %53 = load i32, i32* %progress, align 4
  %conv = uitofp i32 %53 to double
  %54 = load i32, i32* %max_progress, align 4
  %conv62 = uitofp i32 %54 to double
  %div = fdiv double %conv, %conv62
  call void @gimp_progress_set_value(%struct._GimpProgress* %52, double %div)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %do.body.57
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  %55 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp65 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %55, i32 0, i32 3
  %56 = load i32, i32* %cp65, align 4
  store i32 %56, i32* %saved_pos, align 4
  br label %do.body.66

do.body.66:                                       ; preds = %do.end.64
  %57 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp67 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %57, i32 0, i32 2
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp67, align 8
  %59 = load i32, i32* %n_layers, align 4
  %60 = load i32, i32* %n_channels, align 4
  %add68 = add i32 %59, %60
  %add69 = add i32 %add68, 2
  %call70 = call i32 @xcf_write_zero_int32(%struct._IO_FILE* %58, i32 %add69, %struct._GError** %tmp_error)
  %61 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp71 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %61, i32 0, i32 3
  %62 = load i32, i32* %cp71, align 4
  %add72 = add i32 %62, %call70
  store i32 %add72, i32* %cp71, align 4
  %63 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool73 = icmp ne %struct._GError* %63, null
  br i1 %tobool73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %do.body.66
  %64 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %65 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %64, %struct._GError* %65)
  store i32 0, i32* %retval
  br label %return

if.end.75:                                        ; preds = %do.body.66
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  %66 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp77 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %66, i32 0, i32 3
  %67 = load i32, i32* %cp77, align 4
  store i32 %67, i32* %offset, align 4
  %68 = load %struct._GList*, %struct._GList** %all_layers, align 8
  store %struct._GList* %68, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.76
  %69 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool78 = icmp ne %struct._GList* %69, null
  br i1 %tobool78, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %70 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %70, i32 0, i32 0
  %71 = load i8*, i8** %data, align 8
  %72 = bitcast i8* %71 to %struct._GimpLayer*
  store %struct._GimpLayer* %72, %struct._GimpLayer** %layer, align 8
  br label %do.body.79

do.body.79:                                       ; preds = %for.body
  %73 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %74 = load i32, i32* %saved_pos, align 4
  %75 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call80 = call i32 @xcf_seek_pos(%struct._XcfInfo* %73, i32 %74, %struct._GError** %75)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %do.body.79
  store i32 0, i32* %retval
  br label %return

if.end.83:                                        ; preds = %do.body.79
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  br label %do.body.85

do.body.85:                                       ; preds = %do.end.84
  %76 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp86 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %76, i32 0, i32 2
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fp86, align 8
  %call87 = call i32 @xcf_write_int32(%struct._IO_FILE* %77, i32* %offset, i32 1, %struct._GError** %tmp_error)
  %78 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp88 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %78, i32 0, i32 3
  %79 = load i32, i32* %cp88, align 4
  %add89 = add i32 %79, %call87
  store i32 %add89, i32* %cp88, align 4
  %80 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool90 = icmp ne %struct._GError* %80, null
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %do.body.85
  %81 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %82 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %81, %struct._GError* %82)
  store i32 0, i32* %retval
  br label %return

if.end.92:                                        ; preds = %do.body.85
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.92
  %83 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp94 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %83, i32 0, i32 3
  %84 = load i32, i32* %cp94, align 4
  store i32 %84, i32* %saved_pos, align 4
  br label %do.body.95

do.body.95:                                       ; preds = %do.end.93
  %85 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %86 = load i32, i32* %offset, align 4
  %87 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call96 = call i32 @xcf_seek_pos(%struct._XcfInfo* %85, i32 %86, %struct._GError** %87)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.end.99, label %if.then.98

if.then.98:                                       ; preds = %do.body.95
  store i32 0, i32* %retval
  br label %return

if.end.99:                                        ; preds = %do.body.95
  br label %do.end.100

do.end.100:                                       ; preds = %if.end.99
  br label %do.body.101

do.body.101:                                      ; preds = %do.end.100
  %88 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %89 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %90 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %91 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call102 = call i32 @xcf_save_layer(%struct._XcfInfo* %88, %struct._GimpImage* %89, %struct._GimpLayer* %90, %struct._GError** %91)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.end.105, label %if.then.104

if.then.104:                                      ; preds = %do.body.101
  store i32 0, i32* %retval
  br label %return

if.end.105:                                       ; preds = %do.body.101
  br label %do.end.106

do.end.106:                                       ; preds = %if.end.105
  %92 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp107 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %92, i32 0, i32 3
  %93 = load i32, i32* %cp107, align 4
  store i32 %93, i32* %offset, align 4
  br label %do.body.108

do.body.108:                                      ; preds = %do.end.106
  %94 = load i32, i32* %progress, align 4
  %inc109 = add i32 %94, 1
  store i32 %inc109, i32* %progress, align 4
  %95 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress110 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %95, i32 0, i32 1
  %96 = load %struct._GimpProgress*, %struct._GimpProgress** %progress110, align 8
  %tobool111 = icmp ne %struct._GimpProgress* %96, null
  br i1 %tobool111, label %if.then.112, label %if.end.117

if.then.112:                                      ; preds = %do.body.108
  %97 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress113 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %97, i32 0, i32 1
  %98 = load %struct._GimpProgress*, %struct._GimpProgress** %progress113, align 8
  %99 = load i32, i32* %progress, align 4
  %conv114 = uitofp i32 %99 to double
  %100 = load i32, i32* %max_progress, align 4
  %conv115 = uitofp i32 %100 to double
  %div116 = fdiv double %conv114, %conv115
  call void @gimp_progress_set_value(%struct._GimpProgress* %98, double %div116)
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.112, %do.body.108
  br label %do.end.118

do.end.118:                                       ; preds = %if.end.117
  br label %for.inc

for.inc:                                          ; preds = %do.end.118
  %101 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool119 = icmp ne %struct._GList* %101, null
  br i1 %tobool119, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %102 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %102, i32 0, i32 1
  %103 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %103, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %104 = load i32, i32* %saved_pos, align 4
  %add120 = add i32 %104, 4
  store i32 %add120, i32* %saved_pos, align 4
  %105 = load %struct._GList*, %struct._GList** %all_channels, align 8
  store %struct._GList* %105, %struct._GList** %list, align 8
  br label %for.cond.121

for.cond.121:                                     ; preds = %cond.end.170, %for.end
  %106 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool122 = icmp ne %struct._GList* %106, null
  br i1 %tobool122, label %for.body.123, label %for.end.172

for.body.123:                                     ; preds = %for.cond.121
  %107 = load %struct._GList*, %struct._GList** %list, align 8
  %data124 = getelementptr inbounds %struct._GList, %struct._GList* %107, i32 0, i32 0
  %108 = load i8*, i8** %data124, align 8
  %109 = bitcast i8* %108 to %struct._GimpChannel*
  store %struct._GimpChannel* %109, %struct._GimpChannel** %channel, align 8
  br label %do.body.125

do.body.125:                                      ; preds = %for.body.123
  %110 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %111 = load i32, i32* %saved_pos, align 4
  %112 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call126 = call i32 @xcf_seek_pos(%struct._XcfInfo* %110, i32 %111, %struct._GError** %112)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.end.129, label %if.then.128

if.then.128:                                      ; preds = %do.body.125
  store i32 0, i32* %retval
  br label %return

if.end.129:                                       ; preds = %do.body.125
  br label %do.end.130

do.end.130:                                       ; preds = %if.end.129
  br label %do.body.131

do.body.131:                                      ; preds = %do.end.130
  %113 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp132 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %113, i32 0, i32 2
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %fp132, align 8
  %call133 = call i32 @xcf_write_int32(%struct._IO_FILE* %114, i32* %offset, i32 1, %struct._GError** %tmp_error)
  %115 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp134 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %115, i32 0, i32 3
  %116 = load i32, i32* %cp134, align 4
  %add135 = add i32 %116, %call133
  store i32 %add135, i32* %cp134, align 4
  %117 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool136 = icmp ne %struct._GError* %117, null
  br i1 %tobool136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %do.body.131
  %118 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %119 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %118, %struct._GError* %119)
  store i32 0, i32* %retval
  br label %return

if.end.138:                                       ; preds = %do.body.131
  br label %do.end.139

do.end.139:                                       ; preds = %if.end.138
  %120 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp140 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %120, i32 0, i32 3
  %121 = load i32, i32* %cp140, align 4
  store i32 %121, i32* %saved_pos, align 4
  br label %do.body.141

do.body.141:                                      ; preds = %do.end.139
  %122 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %123 = load i32, i32* %offset, align 4
  %124 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call142 = call i32 @xcf_seek_pos(%struct._XcfInfo* %122, i32 %123, %struct._GError** %124)
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %if.end.145, label %if.then.144

if.then.144:                                      ; preds = %do.body.141
  store i32 0, i32* %retval
  br label %return

if.end.145:                                       ; preds = %do.body.141
  br label %do.end.146

do.end.146:                                       ; preds = %if.end.145
  br label %do.body.147

do.body.147:                                      ; preds = %do.end.146
  %125 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %126 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %127 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %128 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call148 = call i32 @xcf_save_channel(%struct._XcfInfo* %125, %struct._GimpImage* %126, %struct._GimpChannel* %127, %struct._GError** %128)
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %if.end.151, label %if.then.150

if.then.150:                                      ; preds = %do.body.147
  store i32 0, i32* %retval
  br label %return

if.end.151:                                       ; preds = %do.body.147
  br label %do.end.152

do.end.152:                                       ; preds = %if.end.151
  %129 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp153 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %129, i32 0, i32 3
  %130 = load i32, i32* %cp153, align 4
  store i32 %130, i32* %offset, align 4
  br label %do.body.154

do.body.154:                                      ; preds = %do.end.152
  %131 = load i32, i32* %progress, align 4
  %inc155 = add i32 %131, 1
  store i32 %inc155, i32* %progress, align 4
  %132 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress156 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %132, i32 0, i32 1
  %133 = load %struct._GimpProgress*, %struct._GimpProgress** %progress156, align 8
  %tobool157 = icmp ne %struct._GimpProgress* %133, null
  br i1 %tobool157, label %if.then.158, label %if.end.163

if.then.158:                                      ; preds = %do.body.154
  %134 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %progress159 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %134, i32 0, i32 1
  %135 = load %struct._GimpProgress*, %struct._GimpProgress** %progress159, align 8
  %136 = load i32, i32* %progress, align 4
  %conv160 = uitofp i32 %136 to double
  %137 = load i32, i32* %max_progress, align 4
  %conv161 = uitofp i32 %137 to double
  %div162 = fdiv double %conv160, %conv161
  call void @gimp_progress_set_value(%struct._GimpProgress* %135, double %div162)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.158, %do.body.154
  br label %do.end.164

do.end.164:                                       ; preds = %if.end.163
  br label %for.inc.165

for.inc.165:                                      ; preds = %do.end.164
  %138 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool166 = icmp ne %struct._GList* %138, null
  br i1 %tobool166, label %cond.true.167, label %cond.false.169

cond.true.167:                                    ; preds = %for.inc.165
  %139 = load %struct._GList*, %struct._GList** %list, align 8
  %next168 = getelementptr inbounds %struct._GList, %struct._GList* %139, i32 0, i32 1
  %140 = load %struct._GList*, %struct._GList** %next168, align 8
  br label %cond.end.170

cond.false.169:                                   ; preds = %for.inc.165
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.169, %cond.true.167
  %cond171 = phi %struct._GList* [ %140, %cond.true.167 ], [ null, %cond.false.169 ]
  store %struct._GList* %cond171, %struct._GList** %list, align 8
  br label %for.cond.121

for.end.172:                                      ; preds = %for.cond.121
  %141 = load %struct._GList*, %struct._GList** %all_layers, align 8
  call void @g_list_free(%struct._GList* %141)
  %142 = load %struct._GList*, %struct._GList** %all_channels, align 8
  call void @g_list_free(%struct._GList* %142)
  %143 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp173 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %143, i32 0, i32 2
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %fp173, align 8
  %call174 = call i32 @ferror(%struct._IO_FILE* %144) #4
  %tobool175 = icmp ne i32 %call174, 0
  %lnot = xor i1 %tobool175, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %for.end.172, %if.then.150, %if.then.144, %if.then.137, %if.then.128, %if.then.104, %if.then.98, %if.then.91, %if.then.82, %if.then.74, %if.then.54, %if.then.35, %if.then.25, %if.then.15, %if.then.6
  %145 = load i32, i32* %retval
  ret i32 %145
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i32 @xcf_write_int8(%struct._IO_FILE*, i8*, i32, %struct._GError**) #1

declare void @g_propagate_error(%struct._GError**, %struct._GError*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @xcf_write_int32(%struct._IO_FILE*, i32*, i32, %struct._GError**) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare i32 @gimp_image_base_type(%struct._GimpImage*) #1

declare %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage*) #1

declare %struct._GList* @gimp_image_get_channel_list(%struct._GimpImage*) #1

declare i32 @gimp_channel_bounds(%struct._GimpChannel*, i32*, i32*, i32*, i32*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare i32 @g_list_length(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define internal i32 @xcf_save_image_props(%struct._XcfInfo* %info, %struct._GimpImage* %image, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %unit = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %grid = alloca %struct._GimpGrid*, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %2, %struct._GimpImagePrivate** %private, align 8
  store %struct._GimpParasite* null, %struct._GimpParasite** %parasite, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call2 = call i32 @gimp_image_get_unit(%struct._GimpImage* %3)
  store i32 %call2, i32* %unit, align 4
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %4, double* %xres, double* %yres)
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call3 = call i8* @gimp_image_get_colormap(%struct._GimpImage* %5)
  %tobool = icmp ne i8* %call3, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %6 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call4 = call i32 @gimp_image_get_colormap_size(%struct._GimpImage* %9)
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call5 = call i8* @gimp_image_get_colormap(%struct._GimpImage* %10)
  %call6 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %6, %struct._GimpImage* %7, i32 1, %struct._GError** %8, i32 %call4, i8* %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %do.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %entry
  %11 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %compression = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %11, i32 0, i32 13
  %12 = load i32, i32* %compression, align 4
  %cmp = icmp ne i32 %12, 0
  br i1 %cmp, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.9
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %13 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %compression12 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %16, i32 0, i32 13
  %17 = load i32, i32* %compression12, align 4
  %call13 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %13, %struct._GimpImage* %14, i32 17, %struct._GError** %15, i32 %17)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %do.body.11
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %do.body.11
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %if.end.18

if.end.18:                                        ; preds = %do.end.17, %if.end.9
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call19 = call %struct._GList* @gimp_image_get_guides(%struct._GimpImage* %18)
  %tobool20 = icmp ne %struct._GList* %call19, null
  br i1 %tobool20, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %if.end.18
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.21
  %19 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call23 = call %struct._GList* @gimp_image_get_guides(%struct._GimpImage* %22)
  %call24 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %19, %struct._GimpImage* %20, i32 18, %struct._GError** %21, %struct._GList* %call23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %do.body.22
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %do.body.22
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %if.end.29

if.end.29:                                        ; preds = %do.end.28, %if.end.18
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call30 = call %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage* %23)
  %tobool31 = icmp ne %struct._GList* %call30, null
  br i1 %tobool31, label %if.then.32, label %if.end.40

if.then.32:                                       ; preds = %if.end.29
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  %24 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call34 = call %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage* %27)
  %call35 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %24, %struct._GimpImage* %25, i32 27, %struct._GError** %26, %struct._GList* %call34)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %do.body.33
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %do.body.33
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %if.end.40

if.end.40:                                        ; preds = %do.end.39, %if.end.29
  br label %do.body.41

do.body.41:                                       ; preds = %if.end.40
  %28 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load double, double* %xres, align 8
  %32 = load double, double* %yres, align 8
  %call42 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %28, %struct._GimpImage* %29, i32 19, %struct._GError** %30, double %31, double %32)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %do.body.41
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %do.body.41
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %33 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call48 = call i32 @gimp_image_get_tattoo_state(%struct._GimpImage* %36)
  %call49 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %33, %struct._GimpImage* %34, i32 20, %struct._GError** %35, i32 %call48)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %do.body.47
  store i32 0, i32* %retval
  br label %return

if.end.52:                                        ; preds = %do.body.47
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  %37 = load i32, i32* %unit, align 4
  %call54 = call i32 @gimp_unit_get_number_of_built_in_units() #6
  %cmp55 = icmp ult i32 %37, %call54
  br i1 %cmp55, label %if.then.56, label %if.end.63

if.then.56:                                       ; preds = %do.end.53
  br label %do.body.57

do.body.57:                                       ; preds = %if.then.56
  %38 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %40 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %41 = load i32, i32* %unit, align 4
  %call58 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %38, %struct._GimpImage* %39, i32 22, %struct._GError** %40, i32 %41)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %do.body.57
  store i32 0, i32* %retval
  br label %return

if.end.61:                                        ; preds = %do.body.57
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %if.end.63

if.end.63:                                        ; preds = %do.end.62, %do.end.53
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call64 = call %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage* %42)
  %call65 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %call64)
  %cmp66 = icmp sgt i32 %call65, 0
  br i1 %cmp66, label %if.then.67, label %if.end.84

if.then.67:                                       ; preds = %if.end.63
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call68 = call i32 @gimp_vectors_compat_is_compatible(%struct._GimpImage* %43)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.else

if.then.70:                                       ; preds = %if.then.67
  br label %do.body.71

do.body.71:                                       ; preds = %if.then.70
  %44 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %46 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call72 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %44, %struct._GimpImage* %45, i32 23, %struct._GError** %46)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %do.body.71
  store i32 0, i32* %retval
  br label %return

if.end.75:                                        ; preds = %do.body.71
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %if.end.83

if.else:                                          ; preds = %if.then.67
  br label %do.body.77

do.body.77:                                       ; preds = %if.else
  %47 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %49 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call78 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %47, %struct._GimpImage* %48, i32 25, %struct._GError** %49)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %do.body.77
  store i32 0, i32* %retval
  br label %return

if.end.81:                                        ; preds = %do.body.77
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  br label %if.end.83

if.end.83:                                        ; preds = %do.end.82, %do.end.76
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.63
  %50 = load i32, i32* %unit, align 4
  %call85 = call i32 @gimp_unit_get_number_of_built_in_units() #6
  %cmp86 = icmp uge i32 %50, %call85
  br i1 %cmp86, label %if.then.87, label %if.end.94

if.then.87:                                       ; preds = %if.end.84
  br label %do.body.88

do.body.88:                                       ; preds = %if.then.87
  %51 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %53 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %54 = load i32, i32* %unit, align 4
  %call89 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %51, %struct._GimpImage* %52, i32 24, %struct._GError** %53, i32 %54)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.end.92, label %if.then.91

if.then.91:                                       ; preds = %do.body.88
  store i32 0, i32* %retval
  br label %return

if.end.92:                                        ; preds = %do.body.88
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.92
  br label %if.end.94

if.end.94:                                        ; preds = %do.end.93, %if.end.84
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call95 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %55)
  %tobool96 = icmp ne %struct._GimpGrid* %call95, null
  br i1 %tobool96, label %if.then.97, label %if.end.100

if.then.97:                                       ; preds = %if.end.94
  %56 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call98 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %56)
  store %struct._GimpGrid* %call98, %struct._GimpGrid** %grid, align 8
  %57 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %call99 = call %struct._GimpParasite* @gimp_grid_to_parasite(%struct._GimpGrid* %57)
  store %struct._GimpParasite* %call99, %struct._GimpParasite** %parasite, align 8
  %58 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %parasites = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %58, i32 0, i32 36
  %59 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %60 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_list_add(%struct._GimpParasiteList* %59, %struct._GimpParasite* %60)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.97, %if.end.94
  %61 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %parasites101 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %61, i32 0, i32 36
  %62 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites101, align 8
  %call102 = call i32 @gimp_parasite_list_length(%struct._GimpParasiteList* %62)
  %cmp103 = icmp sgt i32 %call102, 0
  br i1 %cmp103, label %if.then.104, label %if.end.112

if.then.104:                                      ; preds = %if.end.100
  br label %do.body.105

do.body.105:                                      ; preds = %if.then.104
  %63 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %64 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %65 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %66 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %parasites106 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %66, i32 0, i32 36
  %67 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites106, align 8
  %call107 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %63, %struct._GimpImage* %64, i32 21, %struct._GError** %65, %struct._GimpParasiteList* %67)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.end.110, label %if.then.109

if.then.109:                                      ; preds = %do.body.105
  store i32 0, i32* %retval
  br label %return

if.end.110:                                       ; preds = %do.body.105
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  br label %if.end.112

if.end.112:                                       ; preds = %do.end.111, %if.end.100
  %68 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool113 = icmp ne %struct._GimpParasite* %68, null
  br i1 %tobool113, label %if.then.114, label %if.end.117

if.then.114:                                      ; preds = %if.end.112
  %69 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %parasites115 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %69, i32 0, i32 36
  %70 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites115, align 8
  %71 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call116 = call i8* @gimp_parasite_name(%struct._GimpParasite* %71)
  call void @gimp_parasite_list_remove(%struct._GimpParasiteList* %70, i8* %call116)
  %72 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %72)
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.114, %if.end.112
  br label %do.body.118

do.body.118:                                      ; preds = %if.end.117
  %73 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %74 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %75 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call119 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %73, %struct._GimpImage* %74, i32 0, %struct._GError** %75)
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.end.122, label %if.then.121

if.then.121:                                      ; preds = %do.body.118
  store i32 0, i32* %retval
  br label %return

if.end.122:                                       ; preds = %do.body.118
  br label %do.end.123

do.end.123:                                       ; preds = %if.end.122
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.123, %if.then.121, %if.then.109, %if.then.91, %if.then.80, %if.then.74, %if.then.60, %if.then.51, %if.then.44, %if.then.37, %if.then.26, %if.then.15, %if.then.8
  %76 = load i32, i32* %retval
  ret i32 %76
}

declare void @gimp_progress_set_value(%struct._GimpProgress*, double) #1

declare i32 @xcf_write_zero_int32(%struct._IO_FILE*, i32, %struct._GError**) #1

declare i32 @xcf_seek_pos(%struct._XcfInfo*, i32, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal i32 @xcf_save_layer(%struct._XcfInfo* %info, %struct._GimpImage* %image, %struct._GimpLayer* %layer, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %saved_pos = alloca i32, align 4
  %offset = alloca i32, align 4
  %value = alloca i32, align 4
  %string = alloca i8*, align 8
  %tmp_error = alloca %struct._GError*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GError* null, %struct._GError** %tmp_error, align 8
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  %3 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel_drawable = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %3, i32 0, i32 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %floating_sel_drawable, align 8
  %cmp = icmp eq %struct._GimpDrawable* %2, %4
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %5 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %5, i32 0, i32 3
  %6 = load i32, i32* %cp, align 4
  store i32 %6, i32* %saved_pos, align 4
  br label %do.body

do.body:                                          ; preds = %if.then
  %7 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %8 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel_offset = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %8, i32 0, i32 10
  %9 = load i32, i32* %floating_sel_offset, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call2 = call i32 @xcf_seek_pos(%struct._XcfInfo* %7, i32 %9, %struct._GError** %10)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %do.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.4

do.body.4:                                        ; preds = %do.end
  %11 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %11, i32 0, i32 2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call5 = call i32 @xcf_write_int32(%struct._IO_FILE* %12, i32* %saved_pos, i32 1, %struct._GError** %tmp_error)
  %13 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp6 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %13, i32 0, i32 3
  %14 = load i32, i32* %cp6, align 4
  %add = add i32 %14, %call5
  store i32 %add, i32* %cp6, align 4
  %15 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool7 = icmp ne %struct._GError* %15, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.body.4
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %17 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %16, %struct._GError* %17)
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %do.body.4
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  br label %do.body.11

do.body.11:                                       ; preds = %do.end.10
  %18 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %19 = load i32, i32* %saved_pos, align 4
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call i32 @xcf_seek_pos(%struct._XcfInfo* %18, i32 %19, %struct._GError** %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %do.body.11
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %do.body.11
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %if.end.17

if.end.17:                                        ; preds = %do.end.16, %entry
  %21 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %22 = bitcast %struct._GimpLayer* %21 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call18)
  %23 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call i32 @gimp_item_get_width(%struct._GimpItem* %23)
  store i32 %call20, i32* %value, align 4
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.17
  %24 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp22 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %24, i32 0, i32 2
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp22, align 8
  %call23 = call i32 @xcf_write_int32(%struct._IO_FILE* %25, i32* %value, i32 1, %struct._GError** %tmp_error)
  %26 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp24 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %26, i32 0, i32 3
  %27 = load i32, i32* %cp24, align 4
  %add25 = add i32 %27, %call23
  store i32 %add25, i32* %cp24, align 4
  %28 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool26 = icmp ne %struct._GError* %28, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %do.body.21
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %30 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %29, %struct._GError* %30)
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %do.body.21
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  %31 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %32 = bitcast %struct._GimpLayer* %31 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_item_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call30)
  %33 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpItem*
  %call32 = call i32 @gimp_item_get_height(%struct._GimpItem* %33)
  store i32 %call32, i32* %value, align 4
  br label %do.body.33

do.body.33:                                       ; preds = %do.end.29
  %34 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp34 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %34, i32 0, i32 2
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp34, align 8
  %call35 = call i32 @xcf_write_int32(%struct._IO_FILE* %35, i32* %value, i32 1, %struct._GError** %tmp_error)
  %36 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp36 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %36, i32 0, i32 3
  %37 = load i32, i32* %cp36, align 4
  %add37 = add i32 %37, %call35
  store i32 %add37, i32* %cp36, align 4
  %38 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool38 = icmp ne %struct._GError* %38, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %do.body.33
  %39 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %40 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %39, %struct._GError* %40)
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %do.body.33
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  %41 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %42 = bitcast %struct._GimpLayer* %41 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_drawable_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call42)
  %43 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpDrawable*
  %call44 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %43)
  store i32 %call44, i32* %value, align 4
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.41
  %44 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp46 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %44, i32 0, i32 2
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %fp46, align 8
  %call47 = call i32 @xcf_write_int32(%struct._IO_FILE* %45, i32* %value, i32 1, %struct._GError** %tmp_error)
  %46 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp48 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %46, i32 0, i32 3
  %47 = load i32, i32* %cp48, align 4
  %add49 = add i32 %47, %call47
  store i32 %add49, i32* %cp48, align 4
  %48 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool50 = icmp ne %struct._GError* %48, null
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %do.body.45
  %49 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %50 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %49, %struct._GError* %50)
  store i32 0, i32* %retval
  br label %return

if.end.52:                                        ; preds = %do.body.45
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  %51 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %52 = bitcast %struct._GimpLayer* %51 to i8*
  %call54 = call i8* @gimp_object_get_name(i8* %52)
  store i8* %call54, i8** %string, align 8
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.53
  %53 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp56 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %53, i32 0, i32 2
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fp56, align 8
  %call57 = call i32 @xcf_write_string(%struct._IO_FILE* %54, i8** %string, i32 1, %struct._GError** %tmp_error)
  %55 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp58 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %55, i32 0, i32 3
  %56 = load i32, i32* %cp58, align 4
  %add59 = add i32 %56, %call57
  store i32 %add59, i32* %cp58, align 4
  %57 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool60 = icmp ne %struct._GError* %57, null
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %do.body.55
  %58 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %59 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %58, %struct._GError* %59)
  store i32 0, i32* %retval
  br label %return

if.end.62:                                        ; preds = %do.body.55
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  %60 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %61 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %62 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %63 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call64 = call i32 @xcf_save_layer_props(%struct._XcfInfo* %60, %struct._GimpImage* %61, %struct._GimpLayer* %62, %struct._GError** %63)
  %64 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp65 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %64, i32 0, i32 3
  %65 = load i32, i32* %cp65, align 4
  %add66 = add i32 %65, 8
  store i32 %add66, i32* %offset, align 4
  br label %do.body.67

do.body.67:                                       ; preds = %do.end.63
  %66 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp68 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %66, i32 0, i32 2
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp68, align 8
  %call69 = call i32 @xcf_write_int32(%struct._IO_FILE* %67, i32* %offset, i32 1, %struct._GError** %tmp_error)
  %68 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp70 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %68, i32 0, i32 3
  %69 = load i32, i32* %cp70, align 4
  %add71 = add i32 %69, %call69
  store i32 %add71, i32* %cp70, align 4
  %70 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool72 = icmp ne %struct._GError* %70, null
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %do.body.67
  %71 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %72 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %71, %struct._GError* %72)
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %do.body.67
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  %73 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp76 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %73, i32 0, i32 3
  %74 = load i32, i32* %cp76, align 4
  store i32 %74, i32* %saved_pos, align 4
  br label %do.body.77

do.body.77:                                       ; preds = %do.end.75
  %75 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp78 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %75, i32 0, i32 2
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %fp78, align 8
  %call79 = call i32 @xcf_write_zero_int32(%struct._IO_FILE* %76, i32 1, %struct._GError** %tmp_error)
  %77 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp80 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %77, i32 0, i32 3
  %78 = load i32, i32* %cp80, align 4
  %add81 = add i32 %78, %call79
  store i32 %add81, i32* %cp80, align 4
  %79 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool82 = icmp ne %struct._GError* %79, null
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %do.body.77
  %80 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %81 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %80, %struct._GError* %81)
  store i32 0, i32* %retval
  br label %return

if.end.84:                                        ; preds = %do.body.77
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  br label %do.body.86

do.body.86:                                       ; preds = %do.end.85
  %82 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %83 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %84 = bitcast %struct._GimpLayer* %83 to %struct._GTypeInstance*
  %call87 = call i64 @gimp_drawable_get_type() #6
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call87)
  %85 = bitcast %struct._GTypeInstance* %call88 to %struct._GimpDrawable*
  %call89 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %85)
  %86 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call90 = call i32 @xcf_save_hierarchy(%struct._XcfInfo* %82, %struct._TileManager* %call89, %struct._GError** %86)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.end.93, label %if.then.92

if.then.92:                                       ; preds = %do.body.86
  store i32 0, i32* %retval
  br label %return

if.end.93:                                        ; preds = %do.body.86
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  %87 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp95 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %87, i32 0, i32 3
  %88 = load i32, i32* %cp95, align 4
  store i32 %88, i32* %offset, align 4
  %89 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call96 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %89)
  %tobool97 = icmp ne %struct._GimpLayerMask* %call96, null
  br i1 %tobool97, label %if.then.98, label %if.end.129

if.then.98:                                       ; preds = %do.end.94
  %90 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call99 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %90)
  store %struct._GimpLayerMask* %call99, %struct._GimpLayerMask** %mask, align 8
  br label %do.body.100

do.body.100:                                      ; preds = %if.then.98
  %91 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %92 = load i32, i32* %saved_pos, align 4
  %93 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call101 = call i32 @xcf_seek_pos(%struct._XcfInfo* %91, i32 %92, %struct._GError** %93)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.end.104, label %if.then.103

if.then.103:                                      ; preds = %do.body.100
  store i32 0, i32* %retval
  br label %return

if.end.104:                                       ; preds = %do.body.100
  br label %do.end.105

do.end.105:                                       ; preds = %if.end.104
  br label %do.body.106

do.body.106:                                      ; preds = %do.end.105
  %94 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp107 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %94, i32 0, i32 2
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %fp107, align 8
  %call108 = call i32 @xcf_write_int32(%struct._IO_FILE* %95, i32* %offset, i32 1, %struct._GError** %tmp_error)
  %96 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp109 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %96, i32 0, i32 3
  %97 = load i32, i32* %cp109, align 4
  %add110 = add i32 %97, %call108
  store i32 %add110, i32* %cp109, align 4
  %98 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool111 = icmp ne %struct._GError* %98, null
  br i1 %tobool111, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %do.body.106
  %99 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %100 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %99, %struct._GError* %100)
  store i32 0, i32* %retval
  br label %return

if.end.113:                                       ; preds = %do.body.106
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  br label %do.body.115

do.body.115:                                      ; preds = %do.end.114
  %101 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %102 = load i32, i32* %offset, align 4
  %103 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call116 = call i32 @xcf_seek_pos(%struct._XcfInfo* %101, i32 %102, %struct._GError** %103)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.end.119, label %if.then.118

if.then.118:                                      ; preds = %do.body.115
  store i32 0, i32* %retval
  br label %return

if.end.119:                                       ; preds = %do.body.115
  br label %do.end.120

do.end.120:                                       ; preds = %if.end.119
  br label %do.body.121

do.body.121:                                      ; preds = %do.end.120
  %104 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %105 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %106 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %107 = bitcast %struct._GimpLayerMask* %106 to %struct._GTypeInstance*
  %call122 = call i64 @gimp_channel_get_type() #6
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call122)
  %108 = bitcast %struct._GTypeInstance* %call123 to %struct._GimpChannel*
  %109 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call124 = call i32 @xcf_save_channel(%struct._XcfInfo* %104, %struct._GimpImage* %105, %struct._GimpChannel* %108, %struct._GError** %109)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.end.127, label %if.then.126

if.then.126:                                      ; preds = %do.body.121
  store i32 0, i32* %retval
  br label %return

if.end.127:                                       ; preds = %do.body.121
  br label %do.end.128

do.end.128:                                       ; preds = %if.end.127
  br label %if.end.129

if.end.129:                                       ; preds = %do.end.128, %do.end.94
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.129, %if.then.126, %if.then.118, %if.then.112, %if.then.103, %if.then.92, %if.then.83, %if.then.73, %if.then.61, %if.then.51, %if.then.39, %if.then.27, %if.then.14, %if.then.8, %if.then.3
  %110 = load i32, i32* %retval
  ret i32 %110
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_save_channel(%struct._XcfInfo* %info, %struct._GimpImage* %image, %struct._GimpChannel* %channel, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %saved_pos = alloca i32, align 4
  %offset = alloca i32, align 4
  %value = alloca i32, align 4
  %string = alloca i8*, align 8
  %tmp_error = alloca %struct._GError*, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GError* null, %struct._GError** %tmp_error, align 8
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  %3 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel_drawable = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %3, i32 0, i32 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %floating_sel_drawable, align 8
  %cmp = icmp eq %struct._GimpDrawable* %2, %4
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %5 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %5, i32 0, i32 3
  %6 = load i32, i32* %cp, align 4
  store i32 %6, i32* %saved_pos, align 4
  br label %do.body

do.body:                                          ; preds = %if.then
  %7 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %8 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel_offset = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %8, i32 0, i32 10
  %9 = load i32, i32* %floating_sel_offset, align 4
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call2 = call i32 @xcf_seek_pos(%struct._XcfInfo* %7, i32 %9, %struct._GError** %10)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %do.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.4

do.body.4:                                        ; preds = %do.end
  %11 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %11, i32 0, i32 2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call5 = call i32 @xcf_write_int32(%struct._IO_FILE* %12, i32* %saved_pos, i32 1, %struct._GError** %tmp_error)
  %13 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp6 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %13, i32 0, i32 3
  %14 = load i32, i32* %cp6, align 4
  %add = add i32 %14, %call5
  store i32 %add, i32* %cp6, align 4
  %15 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool7 = icmp ne %struct._GError* %15, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.body.4
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %17 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %16, %struct._GError* %17)
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %do.body.4
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  br label %do.body.11

do.body.11:                                       ; preds = %do.end.10
  %18 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %19 = load i32, i32* %saved_pos, align 4
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call i32 @xcf_seek_pos(%struct._XcfInfo* %18, i32 %19, %struct._GError** %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %do.body.11
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %do.body.11
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %if.end.17

if.end.17:                                        ; preds = %do.end.16, %entry
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %22 = bitcast %struct._GimpChannel* %21 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call18)
  %23 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call i32 @gimp_item_get_width(%struct._GimpItem* %23)
  store i32 %call20, i32* %value, align 4
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.17
  %24 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp22 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %24, i32 0, i32 2
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp22, align 8
  %call23 = call i32 @xcf_write_int32(%struct._IO_FILE* %25, i32* %value, i32 1, %struct._GError** %tmp_error)
  %26 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp24 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %26, i32 0, i32 3
  %27 = load i32, i32* %cp24, align 4
  %add25 = add i32 %27, %call23
  store i32 %add25, i32* %cp24, align 4
  %28 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool26 = icmp ne %struct._GError* %28, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %do.body.21
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %30 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %29, %struct._GError* %30)
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %do.body.21
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  %31 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %32 = bitcast %struct._GimpChannel* %31 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_item_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call30)
  %33 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpItem*
  %call32 = call i32 @gimp_item_get_height(%struct._GimpItem* %33)
  store i32 %call32, i32* %value, align 4
  br label %do.body.33

do.body.33:                                       ; preds = %do.end.29
  %34 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp34 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %34, i32 0, i32 2
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp34, align 8
  %call35 = call i32 @xcf_write_int32(%struct._IO_FILE* %35, i32* %value, i32 1, %struct._GError** %tmp_error)
  %36 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp36 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %36, i32 0, i32 3
  %37 = load i32, i32* %cp36, align 4
  %add37 = add i32 %37, %call35
  store i32 %add37, i32* %cp36, align 4
  %38 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool38 = icmp ne %struct._GError* %38, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %do.body.33
  %39 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %40 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %39, %struct._GError* %40)
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %do.body.33
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  %41 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %42 = bitcast %struct._GimpChannel* %41 to i8*
  %call42 = call i8* @gimp_object_get_name(i8* %42)
  store i8* %call42, i8** %string, align 8
  br label %do.body.43

do.body.43:                                       ; preds = %do.end.41
  %43 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp44 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %43, i32 0, i32 2
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp44, align 8
  %call45 = call i32 @xcf_write_string(%struct._IO_FILE* %44, i8** %string, i32 1, %struct._GError** %tmp_error)
  %45 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp46 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %45, i32 0, i32 3
  %46 = load i32, i32* %cp46, align 4
  %add47 = add i32 %46, %call45
  store i32 %add47, i32* %cp46, align 4
  %47 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool48 = icmp ne %struct._GError* %47, null
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %do.body.43
  %48 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %49 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %48, %struct._GError* %49)
  store i32 0, i32* %retval
  br label %return

if.end.50:                                        ; preds = %do.body.43
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  %50 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %52 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %53 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call52 = call i32 @xcf_save_channel_props(%struct._XcfInfo* %50, %struct._GimpImage* %51, %struct._GimpChannel* %52, %struct._GError** %53)
  %54 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp53 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %54, i32 0, i32 3
  %55 = load i32, i32* %cp53, align 4
  %add54 = add i32 %55, 4
  store i32 %add54, i32* %offset, align 4
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.51
  %56 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp56 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %56, i32 0, i32 2
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fp56, align 8
  %call57 = call i32 @xcf_write_int32(%struct._IO_FILE* %57, i32* %offset, i32 1, %struct._GError** %tmp_error)
  %58 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp58 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %58, i32 0, i32 3
  %59 = load i32, i32* %cp58, align 4
  %add59 = add i32 %59, %call57
  store i32 %add59, i32* %cp58, align 4
  %60 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool60 = icmp ne %struct._GError* %60, null
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %do.body.55
  %61 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %62 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %61, %struct._GError* %62)
  store i32 0, i32* %retval
  br label %return

if.end.62:                                        ; preds = %do.body.55
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  br label %do.body.64

do.body.64:                                       ; preds = %do.end.63
  %63 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %64 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %65 = bitcast %struct._GimpChannel* %64 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_drawable_get_type() #6
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call65)
  %66 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpDrawable*
  %call67 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %66)
  %67 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call68 = call i32 @xcf_save_hierarchy(%struct._XcfInfo* %63, %struct._TileManager* %call67, %struct._GError** %67)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %do.body.64
  store i32 0, i32* %retval
  br label %return

if.end.71:                                        ; preds = %do.body.64
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.72, %if.then.70, %if.then.61, %if.then.49, %if.then.39, %if.then.27, %if.then.14, %if.then.8, %if.then.3
  %68 = load i32, i32* %retval
  ret i32 %68
}

declare void @g_list_free(%struct._GList*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

declare i32 @gimp_image_get_unit(%struct._GimpImage*) #1

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

; Function Attrs: nounwind uwtable
define internal i32 @xcf_save_prop(%struct._XcfInfo* %info, %struct._GimpImage* %image, i32 %prop_type, %struct._GError** %error, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %prop_type.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %size = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %tmp_error = alloca %struct._GError*, align 8
  %_prop_int32 = alloca i32, align 4
  %n_colors = alloca i32, align 4
  %colors = alloca i8*, align 8
  %_prop_int3229 = alloca i32, align 4
  %_prop_int3270 = alloca i32, align 4
  %dummy = alloca i32, align 4
  %_prop_int3292 = alloca i32, align 4
  %opacity = alloca double, align 8
  %uint_opacity = alloca i32, align 4
  %_prop_int32134 = alloca i32, align 4
  %mode = alloca i32, align 4
  %_prop_int32177 = alloca i32, align 4
  %visible = alloca i32, align 4
  %_prop_int32220 = alloca i32, align 4
  %linked = alloca i32, align 4
  %_prop_int32263 = alloca i32, align 4
  %lock_content = alloca i32, align 4
  %_prop_int32306 = alloca i32, align 4
  %lock_alpha = alloca i32, align 4
  %_prop_int32349 = alloca i32, align 4
  %apply_mask = alloca i32, align 4
  %_prop_int32392 = alloca i32, align 4
  %edit_mask = alloca i32, align 4
  %_prop_int32435 = alloca i32, align 4
  %show_mask = alloca i32, align 4
  %_prop_int32478 = alloca i32, align 4
  %show_masked = alloca i32, align 4
  %_prop_int32521 = alloca i32, align 4
  %offsets = alloca [2 x i32], align 4
  %_prop_int32577 = alloca i32, align 4
  %color = alloca i8*, align 8
  %_prop_int32621 = alloca i32, align 4
  %compression = alloca i8, align 1
  %_prop_int32665 = alloca i32, align 4
  %guides = alloca %struct._GList*, align 8
  %n_guides = alloca i32, align 4
  %_prop_int32710 = alloca i32, align 4
  %guide = alloca %struct._GimpGuide*, align 8
  %position = alloca i32, align 4
  %orientation = alloca i8, align 1
  %sample_points = alloca %struct._GList*, align 8
  %n_sample_points = alloca i32, align 4
  %_prop_int32770 = alloca i32, align 4
  %sample_point = alloca %struct._GimpSamplePoint*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %xresolution = alloca float, align 4
  %yresolution = alloca float, align 4
  %_prop_int32850 = alloca i32, align 4
  %tattoo = alloca i32, align 4
  %_prop_int32902 = alloca i32, align 4
  %list = alloca %struct._GimpParasiteList*, align 8
  %base = alloca i32, align 4
  %length = alloca i32, align 4
  %pos = alloca i64, align 8
  %_prop_int32948 = alloca i32, align 4
  %unit = alloca i32, align 4
  %_prop_int321012 = alloca i32, align 4
  %base1042 = alloca i32, align 4
  %length1043 = alloca i32, align 4
  %pos1044 = alloca i64, align 8
  %_prop_int321046 = alloca i32, align 4
  %unit1097 = alloca i32, align 4
  %unit_strings = alloca [5 x i8*], align 16
  %factor = alloca float, align 4
  %digits = alloca i32, align 4
  %_prop_int321180 = alloca i32, align 4
  %base1229 = alloca i32, align 4
  %length1230 = alloca i32, align 4
  %pos1231 = alloca i64, align 8
  %_prop_int321233 = alloca i32, align 4
  %flags = alloca i32, align 4
  %_prop_int321297 = alloca i32, align 4
  %path = alloca %struct._GList*, align 8
  %_prop_int321342 = alloca i32, align 4
  %index = alloca i32, align 4
  %flags1381 = alloca i32, align 4
  %_prop_int321395 = alloca i32, align 4
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %prop_type, i32* %prop_type.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GError* null, %struct._GError** %tmp_error, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* %prop_type.addr, align 4
  switch i32 %0, label %sw.epilog.1424 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.13
    i32 2, label %sw.bb.68
    i32 3, label %sw.bb.68
    i32 4, label %sw.bb.68
    i32 29, label %sw.bb.68
    i32 5, label %sw.bb.90
    i32 6, label %sw.bb.122
    i32 7, label %sw.bb.163
    i32 8, label %sw.bb.206
    i32 9, label %sw.bb.249
    i32 28, label %sw.bb.292
    i32 10, label %sw.bb.335
    i32 11, label %sw.bb.378
    i32 12, label %sw.bb.421
    i32 13, label %sw.bb.464
    i32 14, label %sw.bb.507
    i32 15, label %sw.bb.550
    i32 16, label %sw.bb.607
    i32 17, label %sw.bb.650
    i32 18, label %sw.bb.694
    i32 27, label %sw.bb.754
    i32 19, label %sw.bb.822
    i32 20, label %sw.bb.888
    i32 21, label %sw.bb.931
    i32 22, label %sw.bb.998
    i32 23, label %sw.bb.1041
    i32 24, label %sw.bb.1096
    i32 25, label %sw.bb.1228
    i32 26, label %sw.bb.1283
    i32 30, label %sw.bb.1326
    i32 31, label %sw.bb.1380
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %size, align 4
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %1 = load i32, i32* %prop_type.addr, align 4
  store i32 %1, i32* %_prop_int32, align 4
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %2 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %2, i32 0, i32 2
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @xcf_write_int32(%struct._IO_FILE* %3, i32* %_prop_int32, i32 1, %struct._GError** %tmp_error)
  %4 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %4, i32 0, i32 3
  %5 = load i32, i32* %cp, align 4
  %add = add i32 %5, %call
  store i32 %add, i32* %cp, align 4
  %6 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool = icmp ne %struct._GError* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.2
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %8 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %7, %struct._GError* %8)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body.2
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.end.3

do.end.3:                                         ; preds = %do.end
  br label %do.body.4

do.body.4:                                        ; preds = %do.end.3
  %9 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp5 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %9, i32 0, i32 2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp5, align 8
  %call6 = call i32 @xcf_write_int32(%struct._IO_FILE* %10, i32* %size, i32 1, %struct._GError** %tmp_error)
  %11 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp7 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %11, i32 0, i32 3
  %12 = load i32, i32* %cp7, align 4
  %add8 = add i32 %12, %call6
  store i32 %add8, i32* %cp7, align 4
  %13 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool9 = icmp ne %struct._GError* %13, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.body.4
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %14, %struct._GError* %15)
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %do.body.4
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  br label %sw.epilog.1424

sw.bb.13:                                         ; preds = %entry
  %arraydecay14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay14, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb.13
  %16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay14, i32 0, i32 3
  %reg_save_area = load i8*, i8** %16
  %17 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %18 = bitcast i8* %17 to i32*
  %19 = add i32 %gp_offset, 8
  store i32 %19, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb.13
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay14, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %20 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %18, %vaarg.in_reg ], [ %20, %vaarg.in_mem ]
  %21 = load i32, i32* %vaarg.addr
  store i32 %21, i32* %n_colors, align 4
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 0
  %gp_offset17 = load i32, i32* %gp_offset_p16
  %fits_in_gp18 = icmp ule i32 %gp_offset17, 40
  br i1 %fits_in_gp18, label %vaarg.in_reg.19, label %vaarg.in_mem.21

vaarg.in_reg.19:                                  ; preds = %vaarg.end
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 3
  %reg_save_area20 = load i8*, i8** %22
  %23 = getelementptr i8, i8* %reg_save_area20, i32 %gp_offset17
  %24 = bitcast i8* %23 to i8**
  %25 = add i32 %gp_offset17, 8
  store i32 %25, i32* %gp_offset_p16
  br label %vaarg.end.25

vaarg.in_mem.21:                                  ; preds = %vaarg.end
  %overflow_arg_area_p22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 2
  %overflow_arg_area23 = load i8*, i8** %overflow_arg_area_p22
  %26 = bitcast i8* %overflow_arg_area23 to i8**
  %overflow_arg_area.next24 = getelementptr i8, i8* %overflow_arg_area23, i32 8
  store i8* %overflow_arg_area.next24, i8** %overflow_arg_area_p22
  br label %vaarg.end.25

vaarg.end.25:                                     ; preds = %vaarg.in_mem.21, %vaarg.in_reg.19
  %vaarg.addr26 = phi i8** [ %24, %vaarg.in_reg.19 ], [ %26, %vaarg.in_mem.21 ]
  %27 = load i8*, i8** %vaarg.addr26
  store i8* %27, i8** %colors, align 8
  %28 = load i32, i32* %n_colors, align 4
  %mul = mul i32 %28, 3
  %add27 = add i32 4, %mul
  store i32 %add27, i32* %size, align 4
  br label %do.body.28

do.body.28:                                       ; preds = %vaarg.end.25
  %29 = load i32, i32* %prop_type.addr, align 4
  store i32 %29, i32* %_prop_int3229, align 4
  br label %do.body.30

do.body.30:                                       ; preds = %do.body.28
  %30 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp31 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %30, i32 0, i32 2
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp31, align 8
  %call32 = call i32 @xcf_write_int32(%struct._IO_FILE* %31, i32* %_prop_int3229, i32 1, %struct._GError** %tmp_error)
  %32 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp33 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %32, i32 0, i32 3
  %33 = load i32, i32* %cp33, align 4
  %add34 = add i32 %33, %call32
  store i32 %add34, i32* %cp33, align 4
  %34 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool35 = icmp ne %struct._GError* %34, null
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %do.body.30
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %36 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %35, %struct._GError* %36)
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %do.body.30
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.end.39

do.end.39:                                        ; preds = %do.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %37 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp41 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %37, i32 0, i32 2
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp41, align 8
  %call42 = call i32 @xcf_write_int32(%struct._IO_FILE* %38, i32* %size, i32 1, %struct._GError** %tmp_error)
  %39 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp43 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %39, i32 0, i32 3
  %40 = load i32, i32* %cp43, align 4
  %add44 = add i32 %40, %call42
  store i32 %add44, i32* %cp43, align 4
  %41 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool45 = icmp ne %struct._GError* %41, null
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %do.body.40
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %43 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %42, %struct._GError* %43)
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %do.body.40
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %44 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp50 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %44, i32 0, i32 2
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %fp50, align 8
  %call51 = call i32 @xcf_write_int32(%struct._IO_FILE* %45, i32* %n_colors, i32 1, %struct._GError** %tmp_error)
  %46 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp52 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %46, i32 0, i32 3
  %47 = load i32, i32* %cp52, align 4
  %add53 = add i32 %47, %call51
  store i32 %add53, i32* %cp52, align 4
  %48 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool54 = icmp ne %struct._GError* %48, null
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %do.body.49
  %49 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %50 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %49, %struct._GError* %50)
  store i32 0, i32* %retval
  br label %return

if.end.56:                                        ; preds = %do.body.49
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  br label %do.body.58

do.body.58:                                       ; preds = %do.end.57
  %51 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp59 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %51, i32 0, i32 2
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %fp59, align 8
  %53 = load i8*, i8** %colors, align 8
  %54 = load i32, i32* %n_colors, align 4
  %mul60 = mul i32 %54, 3
  %call61 = call i32 @xcf_write_int8(%struct._IO_FILE* %52, i8* %53, i32 %mul60, %struct._GError** %tmp_error)
  %55 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp62 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %55, i32 0, i32 3
  %56 = load i32, i32* %cp62, align 4
  %add63 = add i32 %56, %call61
  store i32 %add63, i32* %cp62, align 4
  %57 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool64 = icmp ne %struct._GError* %57, null
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %do.body.58
  %58 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %59 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %58, %struct._GError* %59)
  store i32 0, i32* %retval
  br label %return

if.end.66:                                        ; preds = %do.body.58
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %sw.epilog.1424

sw.bb.68:                                         ; preds = %entry, %entry, %entry, %entry
  store i32 0, i32* %size, align 4
  br label %do.body.69

do.body.69:                                       ; preds = %sw.bb.68
  %60 = load i32, i32* %prop_type.addr, align 4
  store i32 %60, i32* %_prop_int3270, align 4
  br label %do.body.71

do.body.71:                                       ; preds = %do.body.69
  %61 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp72 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %61, i32 0, i32 2
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp72, align 8
  %call73 = call i32 @xcf_write_int32(%struct._IO_FILE* %62, i32* %_prop_int3270, i32 1, %struct._GError** %tmp_error)
  %63 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp74 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %63, i32 0, i32 3
  %64 = load i32, i32* %cp74, align 4
  %add75 = add i32 %64, %call73
  store i32 %add75, i32* %cp74, align 4
  %65 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool76 = icmp ne %struct._GError* %65, null
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %do.body.71
  %66 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %67 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %66, %struct._GError* %67)
  store i32 0, i32* %retval
  br label %return

if.end.78:                                        ; preds = %do.body.71
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  br label %do.end.80

do.end.80:                                        ; preds = %do.end.79
  br label %do.body.81

do.body.81:                                       ; preds = %do.end.80
  %68 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp82 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %68, i32 0, i32 2
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %fp82, align 8
  %call83 = call i32 @xcf_write_int32(%struct._IO_FILE* %69, i32* %size, i32 1, %struct._GError** %tmp_error)
  %70 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp84 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %70, i32 0, i32 3
  %71 = load i32, i32* %cp84, align 4
  %add85 = add i32 %71, %call83
  store i32 %add85, i32* %cp84, align 4
  %72 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool86 = icmp ne %struct._GError* %72, null
  br i1 %tobool86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %do.body.81
  %73 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %74 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %73, %struct._GError* %74)
  store i32 0, i32* %retval
  br label %return

if.end.88:                                        ; preds = %do.body.81
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.88
  br label %sw.epilog.1424

sw.bb.90:                                         ; preds = %entry
  store i32 0, i32* %dummy, align 4
  store i32 4, i32* %size, align 4
  br label %do.body.91

do.body.91:                                       ; preds = %sw.bb.90
  %75 = load i32, i32* %prop_type.addr, align 4
  store i32 %75, i32* %_prop_int3292, align 4
  br label %do.body.93

do.body.93:                                       ; preds = %do.body.91
  %76 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp94 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %76, i32 0, i32 2
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fp94, align 8
  %call95 = call i32 @xcf_write_int32(%struct._IO_FILE* %77, i32* %_prop_int3292, i32 1, %struct._GError** %tmp_error)
  %78 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp96 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %78, i32 0, i32 3
  %79 = load i32, i32* %cp96, align 4
  %add97 = add i32 %79, %call95
  store i32 %add97, i32* %cp96, align 4
  %80 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool98 = icmp ne %struct._GError* %80, null
  br i1 %tobool98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %do.body.93
  %81 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %82 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %81, %struct._GError* %82)
  store i32 0, i32* %retval
  br label %return

if.end.100:                                       ; preds = %do.body.93
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %do.end.102

do.end.102:                                       ; preds = %do.end.101
  br label %do.body.103

do.body.103:                                      ; preds = %do.end.102
  %83 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp104 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %83, i32 0, i32 2
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %fp104, align 8
  %call105 = call i32 @xcf_write_int32(%struct._IO_FILE* %84, i32* %size, i32 1, %struct._GError** %tmp_error)
  %85 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp106 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %85, i32 0, i32 3
  %86 = load i32, i32* %cp106, align 4
  %add107 = add i32 %86, %call105
  store i32 %add107, i32* %cp106, align 4
  %87 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool108 = icmp ne %struct._GError* %87, null
  br i1 %tobool108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %do.body.103
  %88 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %89 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %88, %struct._GError* %89)
  store i32 0, i32* %retval
  br label %return

if.end.110:                                       ; preds = %do.body.103
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  %90 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp112 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %90, i32 0, i32 3
  %91 = load i32, i32* %cp112, align 4
  %92 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel_offset = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %92, i32 0, i32 10
  store i32 %91, i32* %floating_sel_offset, align 4
  br label %do.body.113

do.body.113:                                      ; preds = %do.end.111
  %93 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp114 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %93, i32 0, i32 2
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %fp114, align 8
  %call115 = call i32 @xcf_write_int32(%struct._IO_FILE* %94, i32* %dummy, i32 1, %struct._GError** %tmp_error)
  %95 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp116 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %95, i32 0, i32 3
  %96 = load i32, i32* %cp116, align 4
  %add117 = add i32 %96, %call115
  store i32 %add117, i32* %cp116, align 4
  %97 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool118 = icmp ne %struct._GError* %97, null
  br i1 %tobool118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %do.body.113
  %98 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %99 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %98, %struct._GError* %99)
  store i32 0, i32* %retval
  br label %return

if.end.120:                                       ; preds = %do.body.113
  br label %do.end.121

do.end.121:                                       ; preds = %if.end.120
  br label %sw.epilog.1424

sw.bb.122:                                        ; preds = %entry
  %arraydecay123 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay123, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg.124, label %vaarg.in_mem.126

vaarg.in_reg.124:                                 ; preds = %sw.bb.122
  %100 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay123, i32 0, i32 3
  %reg_save_area125 = load i8*, i8** %100
  %101 = getelementptr i8, i8* %reg_save_area125, i32 %fp_offset
  %102 = bitcast i8* %101 to double*
  %103 = add i32 %fp_offset, 16
  store i32 %103, i32* %fp_offset_p
  br label %vaarg.end.130

vaarg.in_mem.126:                                 ; preds = %sw.bb.122
  %overflow_arg_area_p127 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay123, i32 0, i32 2
  %overflow_arg_area128 = load i8*, i8** %overflow_arg_area_p127
  %104 = bitcast i8* %overflow_arg_area128 to double*
  %overflow_arg_area.next129 = getelementptr i8, i8* %overflow_arg_area128, i32 8
  store i8* %overflow_arg_area.next129, i8** %overflow_arg_area_p127
  br label %vaarg.end.130

vaarg.end.130:                                    ; preds = %vaarg.in_mem.126, %vaarg.in_reg.124
  %vaarg.addr131 = phi double* [ %102, %vaarg.in_reg.124 ], [ %104, %vaarg.in_mem.126 ]
  %105 = load double, double* %vaarg.addr131
  store double %105, double* %opacity, align 8
  %106 = load double, double* %opacity, align 8
  %mul132 = fmul double %106, 2.559990e+02
  %conv = fptoui double %mul132 to i32
  store i32 %conv, i32* %uint_opacity, align 4
  store i32 4, i32* %size, align 4
  br label %do.body.133

do.body.133:                                      ; preds = %vaarg.end.130
  %107 = load i32, i32* %prop_type.addr, align 4
  store i32 %107, i32* %_prop_int32134, align 4
  br label %do.body.135

do.body.135:                                      ; preds = %do.body.133
  %108 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp136 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %108, i32 0, i32 2
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %fp136, align 8
  %call137 = call i32 @xcf_write_int32(%struct._IO_FILE* %109, i32* %_prop_int32134, i32 1, %struct._GError** %tmp_error)
  %110 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp138 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %110, i32 0, i32 3
  %111 = load i32, i32* %cp138, align 4
  %add139 = add i32 %111, %call137
  store i32 %add139, i32* %cp138, align 4
  %112 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool140 = icmp ne %struct._GError* %112, null
  br i1 %tobool140, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %do.body.135
  %113 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %114 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %113, %struct._GError* %114)
  store i32 0, i32* %retval
  br label %return

if.end.142:                                       ; preds = %do.body.135
  br label %do.end.143

do.end.143:                                       ; preds = %if.end.142
  br label %do.end.144

do.end.144:                                       ; preds = %do.end.143
  br label %do.body.145

do.body.145:                                      ; preds = %do.end.144
  %115 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp146 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %115, i32 0, i32 2
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %fp146, align 8
  %call147 = call i32 @xcf_write_int32(%struct._IO_FILE* %116, i32* %size, i32 1, %struct._GError** %tmp_error)
  %117 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp148 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %117, i32 0, i32 3
  %118 = load i32, i32* %cp148, align 4
  %add149 = add i32 %118, %call147
  store i32 %add149, i32* %cp148, align 4
  %119 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool150 = icmp ne %struct._GError* %119, null
  br i1 %tobool150, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %do.body.145
  %120 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %121 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %120, %struct._GError* %121)
  store i32 0, i32* %retval
  br label %return

if.end.152:                                       ; preds = %do.body.145
  br label %do.end.153

do.end.153:                                       ; preds = %if.end.152
  br label %do.body.154

do.body.154:                                      ; preds = %do.end.153
  %122 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp155 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %122, i32 0, i32 2
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %fp155, align 8
  %call156 = call i32 @xcf_write_int32(%struct._IO_FILE* %123, i32* %uint_opacity, i32 1, %struct._GError** %tmp_error)
  %124 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp157 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %124, i32 0, i32 3
  %125 = load i32, i32* %cp157, align 4
  %add158 = add i32 %125, %call156
  store i32 %add158, i32* %cp157, align 4
  %126 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool159 = icmp ne %struct._GError* %126, null
  br i1 %tobool159, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %do.body.154
  %127 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %128 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %127, %struct._GError* %128)
  store i32 0, i32* %retval
  br label %return

if.end.161:                                       ; preds = %do.body.154
  br label %do.end.162

do.end.162:                                       ; preds = %if.end.161
  br label %sw.epilog.1424

sw.bb.163:                                        ; preds = %entry
  %arraydecay164 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p165 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay164, i32 0, i32 0
  %gp_offset166 = load i32, i32* %gp_offset_p165
  %fits_in_gp167 = icmp ule i32 %gp_offset166, 40
  br i1 %fits_in_gp167, label %vaarg.in_reg.168, label %vaarg.in_mem.170

vaarg.in_reg.168:                                 ; preds = %sw.bb.163
  %129 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay164, i32 0, i32 3
  %reg_save_area169 = load i8*, i8** %129
  %130 = getelementptr i8, i8* %reg_save_area169, i32 %gp_offset166
  %131 = bitcast i8* %130 to i32*
  %132 = add i32 %gp_offset166, 8
  store i32 %132, i32* %gp_offset_p165
  br label %vaarg.end.174

vaarg.in_mem.170:                                 ; preds = %sw.bb.163
  %overflow_arg_area_p171 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay164, i32 0, i32 2
  %overflow_arg_area172 = load i8*, i8** %overflow_arg_area_p171
  %133 = bitcast i8* %overflow_arg_area172 to i32*
  %overflow_arg_area.next173 = getelementptr i8, i8* %overflow_arg_area172, i32 8
  store i8* %overflow_arg_area.next173, i8** %overflow_arg_area_p171
  br label %vaarg.end.174

vaarg.end.174:                                    ; preds = %vaarg.in_mem.170, %vaarg.in_reg.168
  %vaarg.addr175 = phi i32* [ %131, %vaarg.in_reg.168 ], [ %133, %vaarg.in_mem.170 ]
  %134 = load i32, i32* %vaarg.addr175
  store i32 %134, i32* %mode, align 4
  store i32 4, i32* %size, align 4
  br label %do.body.176

do.body.176:                                      ; preds = %vaarg.end.174
  %135 = load i32, i32* %prop_type.addr, align 4
  store i32 %135, i32* %_prop_int32177, align 4
  br label %do.body.178

do.body.178:                                      ; preds = %do.body.176
  %136 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp179 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %136, i32 0, i32 2
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %fp179, align 8
  %call180 = call i32 @xcf_write_int32(%struct._IO_FILE* %137, i32* %_prop_int32177, i32 1, %struct._GError** %tmp_error)
  %138 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp181 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %138, i32 0, i32 3
  %139 = load i32, i32* %cp181, align 4
  %add182 = add i32 %139, %call180
  store i32 %add182, i32* %cp181, align 4
  %140 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool183 = icmp ne %struct._GError* %140, null
  br i1 %tobool183, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %do.body.178
  %141 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %142 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %141, %struct._GError* %142)
  store i32 0, i32* %retval
  br label %return

if.end.185:                                       ; preds = %do.body.178
  br label %do.end.186

do.end.186:                                       ; preds = %if.end.185
  br label %do.end.187

do.end.187:                                       ; preds = %do.end.186
  br label %do.body.188

do.body.188:                                      ; preds = %do.end.187
  %143 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp189 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %143, i32 0, i32 2
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %fp189, align 8
  %call190 = call i32 @xcf_write_int32(%struct._IO_FILE* %144, i32* %size, i32 1, %struct._GError** %tmp_error)
  %145 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp191 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %145, i32 0, i32 3
  %146 = load i32, i32* %cp191, align 4
  %add192 = add i32 %146, %call190
  store i32 %add192, i32* %cp191, align 4
  %147 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool193 = icmp ne %struct._GError* %147, null
  br i1 %tobool193, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %do.body.188
  %148 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %149 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %148, %struct._GError* %149)
  store i32 0, i32* %retval
  br label %return

if.end.195:                                       ; preds = %do.body.188
  br label %do.end.196

do.end.196:                                       ; preds = %if.end.195
  br label %do.body.197

do.body.197:                                      ; preds = %do.end.196
  %150 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp198 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %150, i32 0, i32 2
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %fp198, align 8
  %call199 = call i32 @xcf_write_int32(%struct._IO_FILE* %151, i32* %mode, i32 1, %struct._GError** %tmp_error)
  %152 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp200 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %152, i32 0, i32 3
  %153 = load i32, i32* %cp200, align 4
  %add201 = add i32 %153, %call199
  store i32 %add201, i32* %cp200, align 4
  %154 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool202 = icmp ne %struct._GError* %154, null
  br i1 %tobool202, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %do.body.197
  %155 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %156 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %155, %struct._GError* %156)
  store i32 0, i32* %retval
  br label %return

if.end.204:                                       ; preds = %do.body.197
  br label %do.end.205

do.end.205:                                       ; preds = %if.end.204
  br label %sw.epilog.1424

sw.bb.206:                                        ; preds = %entry
  %arraydecay207 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p208 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay207, i32 0, i32 0
  %gp_offset209 = load i32, i32* %gp_offset_p208
  %fits_in_gp210 = icmp ule i32 %gp_offset209, 40
  br i1 %fits_in_gp210, label %vaarg.in_reg.211, label %vaarg.in_mem.213

vaarg.in_reg.211:                                 ; preds = %sw.bb.206
  %157 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay207, i32 0, i32 3
  %reg_save_area212 = load i8*, i8** %157
  %158 = getelementptr i8, i8* %reg_save_area212, i32 %gp_offset209
  %159 = bitcast i8* %158 to i32*
  %160 = add i32 %gp_offset209, 8
  store i32 %160, i32* %gp_offset_p208
  br label %vaarg.end.217

vaarg.in_mem.213:                                 ; preds = %sw.bb.206
  %overflow_arg_area_p214 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay207, i32 0, i32 2
  %overflow_arg_area215 = load i8*, i8** %overflow_arg_area_p214
  %161 = bitcast i8* %overflow_arg_area215 to i32*
  %overflow_arg_area.next216 = getelementptr i8, i8* %overflow_arg_area215, i32 8
  store i8* %overflow_arg_area.next216, i8** %overflow_arg_area_p214
  br label %vaarg.end.217

vaarg.end.217:                                    ; preds = %vaarg.in_mem.213, %vaarg.in_reg.211
  %vaarg.addr218 = phi i32* [ %159, %vaarg.in_reg.211 ], [ %161, %vaarg.in_mem.213 ]
  %162 = load i32, i32* %vaarg.addr218
  store i32 %162, i32* %visible, align 4
  store i32 4, i32* %size, align 4
  br label %do.body.219

do.body.219:                                      ; preds = %vaarg.end.217
  %163 = load i32, i32* %prop_type.addr, align 4
  store i32 %163, i32* %_prop_int32220, align 4
  br label %do.body.221

do.body.221:                                      ; preds = %do.body.219
  %164 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp222 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %164, i32 0, i32 2
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %fp222, align 8
  %call223 = call i32 @xcf_write_int32(%struct._IO_FILE* %165, i32* %_prop_int32220, i32 1, %struct._GError** %tmp_error)
  %166 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp224 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %166, i32 0, i32 3
  %167 = load i32, i32* %cp224, align 4
  %add225 = add i32 %167, %call223
  store i32 %add225, i32* %cp224, align 4
  %168 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool226 = icmp ne %struct._GError* %168, null
  br i1 %tobool226, label %if.then.227, label %if.end.228

if.then.227:                                      ; preds = %do.body.221
  %169 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %170 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %169, %struct._GError* %170)
  store i32 0, i32* %retval
  br label %return

if.end.228:                                       ; preds = %do.body.221
  br label %do.end.229

do.end.229:                                       ; preds = %if.end.228
  br label %do.end.230

do.end.230:                                       ; preds = %do.end.229
  br label %do.body.231

do.body.231:                                      ; preds = %do.end.230
  %171 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp232 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %171, i32 0, i32 2
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** %fp232, align 8
  %call233 = call i32 @xcf_write_int32(%struct._IO_FILE* %172, i32* %size, i32 1, %struct._GError** %tmp_error)
  %173 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp234 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %173, i32 0, i32 3
  %174 = load i32, i32* %cp234, align 4
  %add235 = add i32 %174, %call233
  store i32 %add235, i32* %cp234, align 4
  %175 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool236 = icmp ne %struct._GError* %175, null
  br i1 %tobool236, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %do.body.231
  %176 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %177 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %176, %struct._GError* %177)
  store i32 0, i32* %retval
  br label %return

if.end.238:                                       ; preds = %do.body.231
  br label %do.end.239

do.end.239:                                       ; preds = %if.end.238
  br label %do.body.240

do.body.240:                                      ; preds = %do.end.239
  %178 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp241 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %178, i32 0, i32 2
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** %fp241, align 8
  %call242 = call i32 @xcf_write_int32(%struct._IO_FILE* %179, i32* %visible, i32 1, %struct._GError** %tmp_error)
  %180 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp243 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %180, i32 0, i32 3
  %181 = load i32, i32* %cp243, align 4
  %add244 = add i32 %181, %call242
  store i32 %add244, i32* %cp243, align 4
  %182 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool245 = icmp ne %struct._GError* %182, null
  br i1 %tobool245, label %if.then.246, label %if.end.247

if.then.246:                                      ; preds = %do.body.240
  %183 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %184 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %183, %struct._GError* %184)
  store i32 0, i32* %retval
  br label %return

if.end.247:                                       ; preds = %do.body.240
  br label %do.end.248

do.end.248:                                       ; preds = %if.end.247
  br label %sw.epilog.1424

sw.bb.249:                                        ; preds = %entry
  %arraydecay250 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p251 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay250, i32 0, i32 0
  %gp_offset252 = load i32, i32* %gp_offset_p251
  %fits_in_gp253 = icmp ule i32 %gp_offset252, 40
  br i1 %fits_in_gp253, label %vaarg.in_reg.254, label %vaarg.in_mem.256

vaarg.in_reg.254:                                 ; preds = %sw.bb.249
  %185 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay250, i32 0, i32 3
  %reg_save_area255 = load i8*, i8** %185
  %186 = getelementptr i8, i8* %reg_save_area255, i32 %gp_offset252
  %187 = bitcast i8* %186 to i32*
  %188 = add i32 %gp_offset252, 8
  store i32 %188, i32* %gp_offset_p251
  br label %vaarg.end.260

vaarg.in_mem.256:                                 ; preds = %sw.bb.249
  %overflow_arg_area_p257 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay250, i32 0, i32 2
  %overflow_arg_area258 = load i8*, i8** %overflow_arg_area_p257
  %189 = bitcast i8* %overflow_arg_area258 to i32*
  %overflow_arg_area.next259 = getelementptr i8, i8* %overflow_arg_area258, i32 8
  store i8* %overflow_arg_area.next259, i8** %overflow_arg_area_p257
  br label %vaarg.end.260

vaarg.end.260:                                    ; preds = %vaarg.in_mem.256, %vaarg.in_reg.254
  %vaarg.addr261 = phi i32* [ %187, %vaarg.in_reg.254 ], [ %189, %vaarg.in_mem.256 ]
  %190 = load i32, i32* %vaarg.addr261
  store i32 %190, i32* %linked, align 4
  store i32 4, i32* %size, align 4
  br label %do.body.262

do.body.262:                                      ; preds = %vaarg.end.260
  %191 = load i32, i32* %prop_type.addr, align 4
  store i32 %191, i32* %_prop_int32263, align 4
  br label %do.body.264

do.body.264:                                      ; preds = %do.body.262
  %192 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp265 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %192, i32 0, i32 2
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %fp265, align 8
  %call266 = call i32 @xcf_write_int32(%struct._IO_FILE* %193, i32* %_prop_int32263, i32 1, %struct._GError** %tmp_error)
  %194 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp267 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %194, i32 0, i32 3
  %195 = load i32, i32* %cp267, align 4
  %add268 = add i32 %195, %call266
  store i32 %add268, i32* %cp267, align 4
  %196 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool269 = icmp ne %struct._GError* %196, null
  br i1 %tobool269, label %if.then.270, label %if.end.271

if.then.270:                                      ; preds = %do.body.264
  %197 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %198 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %197, %struct._GError* %198)
  store i32 0, i32* %retval
  br label %return

if.end.271:                                       ; preds = %do.body.264
  br label %do.end.272

do.end.272:                                       ; preds = %if.end.271
  br label %do.end.273

do.end.273:                                       ; preds = %do.end.272
  br label %do.body.274

do.body.274:                                      ; preds = %do.end.273
  %199 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp275 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %199, i32 0, i32 2
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** %fp275, align 8
  %call276 = call i32 @xcf_write_int32(%struct._IO_FILE* %200, i32* %size, i32 1, %struct._GError** %tmp_error)
  %201 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp277 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %201, i32 0, i32 3
  %202 = load i32, i32* %cp277, align 4
  %add278 = add i32 %202, %call276
  store i32 %add278, i32* %cp277, align 4
  %203 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool279 = icmp ne %struct._GError* %203, null
  br i1 %tobool279, label %if.then.280, label %if.end.281

if.then.280:                                      ; preds = %do.body.274
  %204 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %205 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %204, %struct._GError* %205)
  store i32 0, i32* %retval
  br label %return

if.end.281:                                       ; preds = %do.body.274
  br label %do.end.282

do.end.282:                                       ; preds = %if.end.281
  br label %do.body.283

do.body.283:                                      ; preds = %do.end.282
  %206 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp284 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %206, i32 0, i32 2
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** %fp284, align 8
  %call285 = call i32 @xcf_write_int32(%struct._IO_FILE* %207, i32* %linked, i32 1, %struct._GError** %tmp_error)
  %208 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp286 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %208, i32 0, i32 3
  %209 = load i32, i32* %cp286, align 4
  %add287 = add i32 %209, %call285
  store i32 %add287, i32* %cp286, align 4
  %210 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool288 = icmp ne %struct._GError* %210, null
  br i1 %tobool288, label %if.then.289, label %if.end.290

if.then.289:                                      ; preds = %do.body.283
  %211 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %212 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %211, %struct._GError* %212)
  store i32 0, i32* %retval
  br label %return

if.end.290:                                       ; preds = %do.body.283
  br label %do.end.291

do.end.291:                                       ; preds = %if.end.290
  br label %sw.epilog.1424

sw.bb.292:                                        ; preds = %entry
  %arraydecay293 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p294 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay293, i32 0, i32 0
  %gp_offset295 = load i32, i32* %gp_offset_p294
  %fits_in_gp296 = icmp ule i32 %gp_offset295, 40
  br i1 %fits_in_gp296, label %vaarg.in_reg.297, label %vaarg.in_mem.299

vaarg.in_reg.297:                                 ; preds = %sw.bb.292
  %213 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay293, i32 0, i32 3
  %reg_save_area298 = load i8*, i8** %213
  %214 = getelementptr i8, i8* %reg_save_area298, i32 %gp_offset295
  %215 = bitcast i8* %214 to i32*
  %216 = add i32 %gp_offset295, 8
  store i32 %216, i32* %gp_offset_p294
  br label %vaarg.end.303

vaarg.in_mem.299:                                 ; preds = %sw.bb.292
  %overflow_arg_area_p300 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay293, i32 0, i32 2
  %overflow_arg_area301 = load i8*, i8** %overflow_arg_area_p300
  %217 = bitcast i8* %overflow_arg_area301 to i32*
  %overflow_arg_area.next302 = getelementptr i8, i8* %overflow_arg_area301, i32 8
  store i8* %overflow_arg_area.next302, i8** %overflow_arg_area_p300
  br label %vaarg.end.303

vaarg.end.303:                                    ; preds = %vaarg.in_mem.299, %vaarg.in_reg.297
  %vaarg.addr304 = phi i32* [ %215, %vaarg.in_reg.297 ], [ %217, %vaarg.in_mem.299 ]
  %218 = load i32, i32* %vaarg.addr304
  store i32 %218, i32* %lock_content, align 4
  store i32 4, i32* %size, align 4
  br label %do.body.305

do.body.305:                                      ; preds = %vaarg.end.303
  %219 = load i32, i32* %prop_type.addr, align 4
  store i32 %219, i32* %_prop_int32306, align 4
  br label %do.body.307

do.body.307:                                      ; preds = %do.body.305
  %220 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp308 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %220, i32 0, i32 2
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %fp308, align 8
  %call309 = call i32 @xcf_write_int32(%struct._IO_FILE* %221, i32* %_prop_int32306, i32 1, %struct._GError** %tmp_error)
  %222 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp310 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %222, i32 0, i32 3
  %223 = load i32, i32* %cp310, align 4
  %add311 = add i32 %223, %call309
  store i32 %add311, i32* %cp310, align 4
  %224 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool312 = icmp ne %struct._GError* %224, null
  br i1 %tobool312, label %if.then.313, label %if.end.314

if.then.313:                                      ; preds = %do.body.307
  %225 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %226 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %225, %struct._GError* %226)
  store i32 0, i32* %retval
  br label %return

if.end.314:                                       ; preds = %do.body.307
  br label %do.end.315

do.end.315:                                       ; preds = %if.end.314
  br label %do.end.316

do.end.316:                                       ; preds = %do.end.315
  br label %do.body.317

do.body.317:                                      ; preds = %do.end.316
  %227 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp318 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %227, i32 0, i32 2
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** %fp318, align 8
  %call319 = call i32 @xcf_write_int32(%struct._IO_FILE* %228, i32* %size, i32 1, %struct._GError** %tmp_error)
  %229 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp320 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %229, i32 0, i32 3
  %230 = load i32, i32* %cp320, align 4
  %add321 = add i32 %230, %call319
  store i32 %add321, i32* %cp320, align 4
  %231 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool322 = icmp ne %struct._GError* %231, null
  br i1 %tobool322, label %if.then.323, label %if.end.324

if.then.323:                                      ; preds = %do.body.317
  %232 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %233 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %232, %struct._GError* %233)
  store i32 0, i32* %retval
  br label %return

if.end.324:                                       ; preds = %do.body.317
  br label %do.end.325

do.end.325:                                       ; preds = %if.end.324
  br label %do.body.326

do.body.326:                                      ; preds = %do.end.325
  %234 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp327 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %234, i32 0, i32 2
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** %fp327, align 8
  %call328 = call i32 @xcf_write_int32(%struct._IO_FILE* %235, i32* %lock_content, i32 1, %struct._GError** %tmp_error)
  %236 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp329 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %236, i32 0, i32 3
  %237 = load i32, i32* %cp329, align 4
  %add330 = add i32 %237, %call328
  store i32 %add330, i32* %cp329, align 4
  %238 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool331 = icmp ne %struct._GError* %238, null
  br i1 %tobool331, label %if.then.332, label %if.end.333

if.then.332:                                      ; preds = %do.body.326
  %239 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %240 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %239, %struct._GError* %240)
  store i32 0, i32* %retval
  br label %return

if.end.333:                                       ; preds = %do.body.326
  br label %do.end.334

do.end.334:                                       ; preds = %if.end.333
  br label %sw.epilog.1424

sw.bb.335:                                        ; preds = %entry
  %arraydecay336 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p337 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay336, i32 0, i32 0
  %gp_offset338 = load i32, i32* %gp_offset_p337
  %fits_in_gp339 = icmp ule i32 %gp_offset338, 40
  br i1 %fits_in_gp339, label %vaarg.in_reg.340, label %vaarg.in_mem.342

vaarg.in_reg.340:                                 ; preds = %sw.bb.335
  %241 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay336, i32 0, i32 3
  %reg_save_area341 = load i8*, i8** %241
  %242 = getelementptr i8, i8* %reg_save_area341, i32 %gp_offset338
  %243 = bitcast i8* %242 to i32*
  %244 = add i32 %gp_offset338, 8
  store i32 %244, i32* %gp_offset_p337
  br label %vaarg.end.346

vaarg.in_mem.342:                                 ; preds = %sw.bb.335
  %overflow_arg_area_p343 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay336, i32 0, i32 2
  %overflow_arg_area344 = load i8*, i8** %overflow_arg_area_p343
  %245 = bitcast i8* %overflow_arg_area344 to i32*
  %overflow_arg_area.next345 = getelementptr i8, i8* %overflow_arg_area344, i32 8
  store i8* %overflow_arg_area.next345, i8** %overflow_arg_area_p343
  br label %vaarg.end.346

vaarg.end.346:                                    ; preds = %vaarg.in_mem.342, %vaarg.in_reg.340
  %vaarg.addr347 = phi i32* [ %243, %vaarg.in_reg.340 ], [ %245, %vaarg.in_mem.342 ]
  %246 = load i32, i32* %vaarg.addr347
  store i32 %246, i32* %lock_alpha, align 4
  store i32 4, i32* %size, align 4
  br label %do.body.348

do.body.348:                                      ; preds = %vaarg.end.346
  %247 = load i32, i32* %prop_type.addr, align 4
  store i32 %247, i32* %_prop_int32349, align 4
  br label %do.body.350

do.body.350:                                      ; preds = %do.body.348
  %248 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp351 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %248, i32 0, i32 2
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** %fp351, align 8
  %call352 = call i32 @xcf_write_int32(%struct._IO_FILE* %249, i32* %_prop_int32349, i32 1, %struct._GError** %tmp_error)
  %250 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp353 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %250, i32 0, i32 3
  %251 = load i32, i32* %cp353, align 4
  %add354 = add i32 %251, %call352
  store i32 %add354, i32* %cp353, align 4
  %252 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool355 = icmp ne %struct._GError* %252, null
  br i1 %tobool355, label %if.then.356, label %if.end.357

if.then.356:                                      ; preds = %do.body.350
  %253 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %254 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %253, %struct._GError* %254)
  store i32 0, i32* %retval
  br label %return

if.end.357:                                       ; preds = %do.body.350
  br label %do.end.358

do.end.358:                                       ; preds = %if.end.357
  br label %do.end.359

do.end.359:                                       ; preds = %do.end.358
  br label %do.body.360

do.body.360:                                      ; preds = %do.end.359
  %255 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp361 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %255, i32 0, i32 2
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** %fp361, align 8
  %call362 = call i32 @xcf_write_int32(%struct._IO_FILE* %256, i32* %size, i32 1, %struct._GError** %tmp_error)
  %257 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp363 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %257, i32 0, i32 3
  %258 = load i32, i32* %cp363, align 4
  %add364 = add i32 %258, %call362
  store i32 %add364, i32* %cp363, align 4
  %259 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool365 = icmp ne %struct._GError* %259, null
  br i1 %tobool365, label %if.then.366, label %if.end.367

if.then.366:                                      ; preds = %do.body.360
  %260 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %261 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %260, %struct._GError* %261)
  store i32 0, i32* %retval
  br label %return

if.end.367:                                       ; preds = %do.body.360
  br label %do.end.368

do.end.368:                                       ; preds = %if.end.367
  br label %do.body.369

do.body.369:                                      ; preds = %do.end.368
  %262 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp370 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %262, i32 0, i32 2
  %263 = load %struct._IO_FILE*, %struct._IO_FILE** %fp370, align 8
  %call371 = call i32 @xcf_write_int32(%struct._IO_FILE* %263, i32* %lock_alpha, i32 1, %struct._GError** %tmp_error)
  %264 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp372 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %264, i32 0, i32 3
  %265 = load i32, i32* %cp372, align 4
  %add373 = add i32 %265, %call371
  store i32 %add373, i32* %cp372, align 4
  %266 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool374 = icmp ne %struct._GError* %266, null
  br i1 %tobool374, label %if.then.375, label %if.end.376

if.then.375:                                      ; preds = %do.body.369
  %267 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %268 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %267, %struct._GError* %268)
  store i32 0, i32* %retval
  br label %return

if.end.376:                                       ; preds = %do.body.369
  br label %do.end.377

do.end.377:                                       ; preds = %if.end.376
  br label %sw.epilog.1424

sw.bb.378:                                        ; preds = %entry
  %arraydecay379 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p380 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay379, i32 0, i32 0
  %gp_offset381 = load i32, i32* %gp_offset_p380
  %fits_in_gp382 = icmp ule i32 %gp_offset381, 40
  br i1 %fits_in_gp382, label %vaarg.in_reg.383, label %vaarg.in_mem.385

vaarg.in_reg.383:                                 ; preds = %sw.bb.378
  %269 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay379, i32 0, i32 3
  %reg_save_area384 = load i8*, i8** %269
  %270 = getelementptr i8, i8* %reg_save_area384, i32 %gp_offset381
  %271 = bitcast i8* %270 to i32*
  %272 = add i32 %gp_offset381, 8
  store i32 %272, i32* %gp_offset_p380
  br label %vaarg.end.389

vaarg.in_mem.385:                                 ; preds = %sw.bb.378
  %overflow_arg_area_p386 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay379, i32 0, i32 2
  %overflow_arg_area387 = load i8*, i8** %overflow_arg_area_p386
  %273 = bitcast i8* %overflow_arg_area387 to i32*
  %overflow_arg_area.next388 = getelementptr i8, i8* %overflow_arg_area387, i32 8
  store i8* %overflow_arg_area.next388, i8** %overflow_arg_area_p386
  br label %vaarg.end.389

vaarg.end.389:                                    ; preds = %vaarg.in_mem.385, %vaarg.in_reg.383
  %vaarg.addr390 = phi i32* [ %271, %vaarg.in_reg.383 ], [ %273, %vaarg.in_mem.385 ]
  %274 = load i32, i32* %vaarg.addr390
  store i32 %274, i32* %apply_mask, align 4
  store i32 4, i32* %size, align 4
  br label %do.body.391

do.body.391:                                      ; preds = %vaarg.end.389
  %275 = load i32, i32* %prop_type.addr, align 4
  store i32 %275, i32* %_prop_int32392, align 4
  br label %do.body.393

do.body.393:                                      ; preds = %do.body.391
  %276 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp394 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %276, i32 0, i32 2
  %277 = load %struct._IO_FILE*, %struct._IO_FILE** %fp394, align 8
  %call395 = call i32 @xcf_write_int32(%struct._IO_FILE* %277, i32* %_prop_int32392, i32 1, %struct._GError** %tmp_error)
  %278 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp396 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %278, i32 0, i32 3
  %279 = load i32, i32* %cp396, align 4
  %add397 = add i32 %279, %call395
  store i32 %add397, i32* %cp396, align 4
  %280 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool398 = icmp ne %struct._GError* %280, null
  br i1 %tobool398, label %if.then.399, label %if.end.400

if.then.399:                                      ; preds = %do.body.393
  %281 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %282 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %281, %struct._GError* %282)
  store i32 0, i32* %retval
  br label %return

if.end.400:                                       ; preds = %do.body.393
  br label %do.end.401

do.end.401:                                       ; preds = %if.end.400
  br label %do.end.402

do.end.402:                                       ; preds = %do.end.401
  br label %do.body.403

do.body.403:                                      ; preds = %do.end.402
  %283 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp404 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %283, i32 0, i32 2
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** %fp404, align 8
  %call405 = call i32 @xcf_write_int32(%struct._IO_FILE* %284, i32* %size, i32 1, %struct._GError** %tmp_error)
  %285 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp406 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %285, i32 0, i32 3
  %286 = load i32, i32* %cp406, align 4
  %add407 = add i32 %286, %call405
  store i32 %add407, i32* %cp406, align 4
  %287 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool408 = icmp ne %struct._GError* %287, null
  br i1 %tobool408, label %if.then.409, label %if.end.410

if.then.409:                                      ; preds = %do.body.403
  %288 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %289 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %288, %struct._GError* %289)
  store i32 0, i32* %retval
  br label %return

if.end.410:                                       ; preds = %do.body.403
  br label %do.end.411

do.end.411:                                       ; preds = %if.end.410
  br label %do.body.412

do.body.412:                                      ; preds = %do.end.411
  %290 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp413 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %290, i32 0, i32 2
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** %fp413, align 8
  %call414 = call i32 @xcf_write_int32(%struct._IO_FILE* %291, i32* %apply_mask, i32 1, %struct._GError** %tmp_error)
  %292 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp415 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %292, i32 0, i32 3
  %293 = load i32, i32* %cp415, align 4
  %add416 = add i32 %293, %call414
  store i32 %add416, i32* %cp415, align 4
  %294 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool417 = icmp ne %struct._GError* %294, null
  br i1 %tobool417, label %if.then.418, label %if.end.419

if.then.418:                                      ; preds = %do.body.412
  %295 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %296 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %295, %struct._GError* %296)
  store i32 0, i32* %retval
  br label %return

if.end.419:                                       ; preds = %do.body.412
  br label %do.end.420

do.end.420:                                       ; preds = %if.end.419
  br label %sw.epilog.1424

sw.bb.421:                                        ; preds = %entry
  %arraydecay422 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p423 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay422, i32 0, i32 0
  %gp_offset424 = load i32, i32* %gp_offset_p423
  %fits_in_gp425 = icmp ule i32 %gp_offset424, 40
  br i1 %fits_in_gp425, label %vaarg.in_reg.426, label %vaarg.in_mem.428

vaarg.in_reg.426:                                 ; preds = %sw.bb.421
  %297 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay422, i32 0, i32 3
  %reg_save_area427 = load i8*, i8** %297
  %298 = getelementptr i8, i8* %reg_save_area427, i32 %gp_offset424
  %299 = bitcast i8* %298 to i32*
  %300 = add i32 %gp_offset424, 8
  store i32 %300, i32* %gp_offset_p423
  br label %vaarg.end.432

vaarg.in_mem.428:                                 ; preds = %sw.bb.421
  %overflow_arg_area_p429 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay422, i32 0, i32 2
  %overflow_arg_area430 = load i8*, i8** %overflow_arg_area_p429
  %301 = bitcast i8* %overflow_arg_area430 to i32*
  %overflow_arg_area.next431 = getelementptr i8, i8* %overflow_arg_area430, i32 8
  store i8* %overflow_arg_area.next431, i8** %overflow_arg_area_p429
  br label %vaarg.end.432

vaarg.end.432:                                    ; preds = %vaarg.in_mem.428, %vaarg.in_reg.426
  %vaarg.addr433 = phi i32* [ %299, %vaarg.in_reg.426 ], [ %301, %vaarg.in_mem.428 ]
  %302 = load i32, i32* %vaarg.addr433
  store i32 %302, i32* %edit_mask, align 4
  store i32 4, i32* %size, align 4
  br label %do.body.434

do.body.434:                                      ; preds = %vaarg.end.432
  %303 = load i32, i32* %prop_type.addr, align 4
  store i32 %303, i32* %_prop_int32435, align 4
  br label %do.body.436

do.body.436:                                      ; preds = %do.body.434
  %304 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp437 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %304, i32 0, i32 2
  %305 = load %struct._IO_FILE*, %struct._IO_FILE** %fp437, align 8
  %call438 = call i32 @xcf_write_int32(%struct._IO_FILE* %305, i32* %_prop_int32435, i32 1, %struct._GError** %tmp_error)
  %306 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp439 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %306, i32 0, i32 3
  %307 = load i32, i32* %cp439, align 4
  %add440 = add i32 %307, %call438
  store i32 %add440, i32* %cp439, align 4
  %308 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool441 = icmp ne %struct._GError* %308, null
  br i1 %tobool441, label %if.then.442, label %if.end.443

if.then.442:                                      ; preds = %do.body.436
  %309 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %310 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %309, %struct._GError* %310)
  store i32 0, i32* %retval
  br label %return

if.end.443:                                       ; preds = %do.body.436
  br label %do.end.444

do.end.444:                                       ; preds = %if.end.443
  br label %do.end.445

do.end.445:                                       ; preds = %do.end.444
  br label %do.body.446

do.body.446:                                      ; preds = %do.end.445
  %311 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp447 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %311, i32 0, i32 2
  %312 = load %struct._IO_FILE*, %struct._IO_FILE** %fp447, align 8
  %call448 = call i32 @xcf_write_int32(%struct._IO_FILE* %312, i32* %size, i32 1, %struct._GError** %tmp_error)
  %313 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp449 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %313, i32 0, i32 3
  %314 = load i32, i32* %cp449, align 4
  %add450 = add i32 %314, %call448
  store i32 %add450, i32* %cp449, align 4
  %315 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool451 = icmp ne %struct._GError* %315, null
  br i1 %tobool451, label %if.then.452, label %if.end.453

if.then.452:                                      ; preds = %do.body.446
  %316 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %317 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %316, %struct._GError* %317)
  store i32 0, i32* %retval
  br label %return

if.end.453:                                       ; preds = %do.body.446
  br label %do.end.454

do.end.454:                                       ; preds = %if.end.453
  br label %do.body.455

do.body.455:                                      ; preds = %do.end.454
  %318 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp456 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %318, i32 0, i32 2
  %319 = load %struct._IO_FILE*, %struct._IO_FILE** %fp456, align 8
  %call457 = call i32 @xcf_write_int32(%struct._IO_FILE* %319, i32* %edit_mask, i32 1, %struct._GError** %tmp_error)
  %320 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp458 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %320, i32 0, i32 3
  %321 = load i32, i32* %cp458, align 4
  %add459 = add i32 %321, %call457
  store i32 %add459, i32* %cp458, align 4
  %322 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool460 = icmp ne %struct._GError* %322, null
  br i1 %tobool460, label %if.then.461, label %if.end.462

if.then.461:                                      ; preds = %do.body.455
  %323 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %324 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %323, %struct._GError* %324)
  store i32 0, i32* %retval
  br label %return

if.end.462:                                       ; preds = %do.body.455
  br label %do.end.463

do.end.463:                                       ; preds = %if.end.462
  br label %sw.epilog.1424

sw.bb.464:                                        ; preds = %entry
  %arraydecay465 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p466 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay465, i32 0, i32 0
  %gp_offset467 = load i32, i32* %gp_offset_p466
  %fits_in_gp468 = icmp ule i32 %gp_offset467, 40
  br i1 %fits_in_gp468, label %vaarg.in_reg.469, label %vaarg.in_mem.471

vaarg.in_reg.469:                                 ; preds = %sw.bb.464
  %325 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay465, i32 0, i32 3
  %reg_save_area470 = load i8*, i8** %325
  %326 = getelementptr i8, i8* %reg_save_area470, i32 %gp_offset467
  %327 = bitcast i8* %326 to i32*
  %328 = add i32 %gp_offset467, 8
  store i32 %328, i32* %gp_offset_p466
  br label %vaarg.end.475

vaarg.in_mem.471:                                 ; preds = %sw.bb.464
  %overflow_arg_area_p472 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay465, i32 0, i32 2
  %overflow_arg_area473 = load i8*, i8** %overflow_arg_area_p472
  %329 = bitcast i8* %overflow_arg_area473 to i32*
  %overflow_arg_area.next474 = getelementptr i8, i8* %overflow_arg_area473, i32 8
  store i8* %overflow_arg_area.next474, i8** %overflow_arg_area_p472
  br label %vaarg.end.475

vaarg.end.475:                                    ; preds = %vaarg.in_mem.471, %vaarg.in_reg.469
  %vaarg.addr476 = phi i32* [ %327, %vaarg.in_reg.469 ], [ %329, %vaarg.in_mem.471 ]
  %330 = load i32, i32* %vaarg.addr476
  store i32 %330, i32* %show_mask, align 4
  store i32 4, i32* %size, align 4
  br label %do.body.477

do.body.477:                                      ; preds = %vaarg.end.475
  %331 = load i32, i32* %prop_type.addr, align 4
  store i32 %331, i32* %_prop_int32478, align 4
  br label %do.body.479

do.body.479:                                      ; preds = %do.body.477
  %332 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp480 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %332, i32 0, i32 2
  %333 = load %struct._IO_FILE*, %struct._IO_FILE** %fp480, align 8
  %call481 = call i32 @xcf_write_int32(%struct._IO_FILE* %333, i32* %_prop_int32478, i32 1, %struct._GError** %tmp_error)
  %334 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp482 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %334, i32 0, i32 3
  %335 = load i32, i32* %cp482, align 4
  %add483 = add i32 %335, %call481
  store i32 %add483, i32* %cp482, align 4
  %336 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool484 = icmp ne %struct._GError* %336, null
  br i1 %tobool484, label %if.then.485, label %if.end.486

if.then.485:                                      ; preds = %do.body.479
  %337 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %338 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %337, %struct._GError* %338)
  store i32 0, i32* %retval
  br label %return

if.end.486:                                       ; preds = %do.body.479
  br label %do.end.487

do.end.487:                                       ; preds = %if.end.486
  br label %do.end.488

do.end.488:                                       ; preds = %do.end.487
  br label %do.body.489

do.body.489:                                      ; preds = %do.end.488
  %339 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp490 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %339, i32 0, i32 2
  %340 = load %struct._IO_FILE*, %struct._IO_FILE** %fp490, align 8
  %call491 = call i32 @xcf_write_int32(%struct._IO_FILE* %340, i32* %size, i32 1, %struct._GError** %tmp_error)
  %341 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp492 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %341, i32 0, i32 3
  %342 = load i32, i32* %cp492, align 4
  %add493 = add i32 %342, %call491
  store i32 %add493, i32* %cp492, align 4
  %343 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool494 = icmp ne %struct._GError* %343, null
  br i1 %tobool494, label %if.then.495, label %if.end.496

if.then.495:                                      ; preds = %do.body.489
  %344 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %345 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %344, %struct._GError* %345)
  store i32 0, i32* %retval
  br label %return

if.end.496:                                       ; preds = %do.body.489
  br label %do.end.497

do.end.497:                                       ; preds = %if.end.496
  br label %do.body.498

do.body.498:                                      ; preds = %do.end.497
  %346 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp499 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %346, i32 0, i32 2
  %347 = load %struct._IO_FILE*, %struct._IO_FILE** %fp499, align 8
  %call500 = call i32 @xcf_write_int32(%struct._IO_FILE* %347, i32* %show_mask, i32 1, %struct._GError** %tmp_error)
  %348 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp501 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %348, i32 0, i32 3
  %349 = load i32, i32* %cp501, align 4
  %add502 = add i32 %349, %call500
  store i32 %add502, i32* %cp501, align 4
  %350 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool503 = icmp ne %struct._GError* %350, null
  br i1 %tobool503, label %if.then.504, label %if.end.505

if.then.504:                                      ; preds = %do.body.498
  %351 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %352 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %351, %struct._GError* %352)
  store i32 0, i32* %retval
  br label %return

if.end.505:                                       ; preds = %do.body.498
  br label %do.end.506

do.end.506:                                       ; preds = %if.end.505
  br label %sw.epilog.1424

sw.bb.507:                                        ; preds = %entry
  %arraydecay508 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p509 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay508, i32 0, i32 0
  %gp_offset510 = load i32, i32* %gp_offset_p509
  %fits_in_gp511 = icmp ule i32 %gp_offset510, 40
  br i1 %fits_in_gp511, label %vaarg.in_reg.512, label %vaarg.in_mem.514

vaarg.in_reg.512:                                 ; preds = %sw.bb.507
  %353 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay508, i32 0, i32 3
  %reg_save_area513 = load i8*, i8** %353
  %354 = getelementptr i8, i8* %reg_save_area513, i32 %gp_offset510
  %355 = bitcast i8* %354 to i32*
  %356 = add i32 %gp_offset510, 8
  store i32 %356, i32* %gp_offset_p509
  br label %vaarg.end.518

vaarg.in_mem.514:                                 ; preds = %sw.bb.507
  %overflow_arg_area_p515 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay508, i32 0, i32 2
  %overflow_arg_area516 = load i8*, i8** %overflow_arg_area_p515
  %357 = bitcast i8* %overflow_arg_area516 to i32*
  %overflow_arg_area.next517 = getelementptr i8, i8* %overflow_arg_area516, i32 8
  store i8* %overflow_arg_area.next517, i8** %overflow_arg_area_p515
  br label %vaarg.end.518

vaarg.end.518:                                    ; preds = %vaarg.in_mem.514, %vaarg.in_reg.512
  %vaarg.addr519 = phi i32* [ %355, %vaarg.in_reg.512 ], [ %357, %vaarg.in_mem.514 ]
  %358 = load i32, i32* %vaarg.addr519
  store i32 %358, i32* %show_masked, align 4
  store i32 4, i32* %size, align 4
  br label %do.body.520

do.body.520:                                      ; preds = %vaarg.end.518
  %359 = load i32, i32* %prop_type.addr, align 4
  store i32 %359, i32* %_prop_int32521, align 4
  br label %do.body.522

do.body.522:                                      ; preds = %do.body.520
  %360 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp523 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %360, i32 0, i32 2
  %361 = load %struct._IO_FILE*, %struct._IO_FILE** %fp523, align 8
  %call524 = call i32 @xcf_write_int32(%struct._IO_FILE* %361, i32* %_prop_int32521, i32 1, %struct._GError** %tmp_error)
  %362 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp525 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %362, i32 0, i32 3
  %363 = load i32, i32* %cp525, align 4
  %add526 = add i32 %363, %call524
  store i32 %add526, i32* %cp525, align 4
  %364 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool527 = icmp ne %struct._GError* %364, null
  br i1 %tobool527, label %if.then.528, label %if.end.529

if.then.528:                                      ; preds = %do.body.522
  %365 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %366 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %365, %struct._GError* %366)
  store i32 0, i32* %retval
  br label %return

if.end.529:                                       ; preds = %do.body.522
  br label %do.end.530

do.end.530:                                       ; preds = %if.end.529
  br label %do.end.531

do.end.531:                                       ; preds = %do.end.530
  br label %do.body.532

do.body.532:                                      ; preds = %do.end.531
  %367 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp533 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %367, i32 0, i32 2
  %368 = load %struct._IO_FILE*, %struct._IO_FILE** %fp533, align 8
  %call534 = call i32 @xcf_write_int32(%struct._IO_FILE* %368, i32* %size, i32 1, %struct._GError** %tmp_error)
  %369 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp535 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %369, i32 0, i32 3
  %370 = load i32, i32* %cp535, align 4
  %add536 = add i32 %370, %call534
  store i32 %add536, i32* %cp535, align 4
  %371 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool537 = icmp ne %struct._GError* %371, null
  br i1 %tobool537, label %if.then.538, label %if.end.539

if.then.538:                                      ; preds = %do.body.532
  %372 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %373 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %372, %struct._GError* %373)
  store i32 0, i32* %retval
  br label %return

if.end.539:                                       ; preds = %do.body.532
  br label %do.end.540

do.end.540:                                       ; preds = %if.end.539
  br label %do.body.541

do.body.541:                                      ; preds = %do.end.540
  %374 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp542 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %374, i32 0, i32 2
  %375 = load %struct._IO_FILE*, %struct._IO_FILE** %fp542, align 8
  %call543 = call i32 @xcf_write_int32(%struct._IO_FILE* %375, i32* %show_masked, i32 1, %struct._GError** %tmp_error)
  %376 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp544 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %376, i32 0, i32 3
  %377 = load i32, i32* %cp544, align 4
  %add545 = add i32 %377, %call543
  store i32 %add545, i32* %cp544, align 4
  %378 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool546 = icmp ne %struct._GError* %378, null
  br i1 %tobool546, label %if.then.547, label %if.end.548

if.then.547:                                      ; preds = %do.body.541
  %379 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %380 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %379, %struct._GError* %380)
  store i32 0, i32* %retval
  br label %return

if.end.548:                                       ; preds = %do.body.541
  br label %do.end.549

do.end.549:                                       ; preds = %if.end.548
  br label %sw.epilog.1424

sw.bb.550:                                        ; preds = %entry
  %arraydecay551 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p552 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay551, i32 0, i32 0
  %gp_offset553 = load i32, i32* %gp_offset_p552
  %fits_in_gp554 = icmp ule i32 %gp_offset553, 40
  br i1 %fits_in_gp554, label %vaarg.in_reg.555, label %vaarg.in_mem.557

vaarg.in_reg.555:                                 ; preds = %sw.bb.550
  %381 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay551, i32 0, i32 3
  %reg_save_area556 = load i8*, i8** %381
  %382 = getelementptr i8, i8* %reg_save_area556, i32 %gp_offset553
  %383 = bitcast i8* %382 to i32*
  %384 = add i32 %gp_offset553, 8
  store i32 %384, i32* %gp_offset_p552
  br label %vaarg.end.561

vaarg.in_mem.557:                                 ; preds = %sw.bb.550
  %overflow_arg_area_p558 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay551, i32 0, i32 2
  %overflow_arg_area559 = load i8*, i8** %overflow_arg_area_p558
  %385 = bitcast i8* %overflow_arg_area559 to i32*
  %overflow_arg_area.next560 = getelementptr i8, i8* %overflow_arg_area559, i32 8
  store i8* %overflow_arg_area.next560, i8** %overflow_arg_area_p558
  br label %vaarg.end.561

vaarg.end.561:                                    ; preds = %vaarg.in_mem.557, %vaarg.in_reg.555
  %vaarg.addr562 = phi i32* [ %383, %vaarg.in_reg.555 ], [ %385, %vaarg.in_mem.557 ]
  %386 = load i32, i32* %vaarg.addr562
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %offsets, i32 0, i64 0
  store i32 %386, i32* %arrayidx, align 4
  %arraydecay563 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p564 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay563, i32 0, i32 0
  %gp_offset565 = load i32, i32* %gp_offset_p564
  %fits_in_gp566 = icmp ule i32 %gp_offset565, 40
  br i1 %fits_in_gp566, label %vaarg.in_reg.567, label %vaarg.in_mem.569

vaarg.in_reg.567:                                 ; preds = %vaarg.end.561
  %387 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay563, i32 0, i32 3
  %reg_save_area568 = load i8*, i8** %387
  %388 = getelementptr i8, i8* %reg_save_area568, i32 %gp_offset565
  %389 = bitcast i8* %388 to i32*
  %390 = add i32 %gp_offset565, 8
  store i32 %390, i32* %gp_offset_p564
  br label %vaarg.end.573

vaarg.in_mem.569:                                 ; preds = %vaarg.end.561
  %overflow_arg_area_p570 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay563, i32 0, i32 2
  %overflow_arg_area571 = load i8*, i8** %overflow_arg_area_p570
  %391 = bitcast i8* %overflow_arg_area571 to i32*
  %overflow_arg_area.next572 = getelementptr i8, i8* %overflow_arg_area571, i32 8
  store i8* %overflow_arg_area.next572, i8** %overflow_arg_area_p570
  br label %vaarg.end.573

vaarg.end.573:                                    ; preds = %vaarg.in_mem.569, %vaarg.in_reg.567
  %vaarg.addr574 = phi i32* [ %389, %vaarg.in_reg.567 ], [ %391, %vaarg.in_mem.569 ]
  %392 = load i32, i32* %vaarg.addr574
  %arrayidx575 = getelementptr inbounds [2 x i32], [2 x i32]* %offsets, i32 0, i64 1
  store i32 %392, i32* %arrayidx575, align 4
  store i32 8, i32* %size, align 4
  br label %do.body.576

do.body.576:                                      ; preds = %vaarg.end.573
  %393 = load i32, i32* %prop_type.addr, align 4
  store i32 %393, i32* %_prop_int32577, align 4
  br label %do.body.578

do.body.578:                                      ; preds = %do.body.576
  %394 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp579 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %394, i32 0, i32 2
  %395 = load %struct._IO_FILE*, %struct._IO_FILE** %fp579, align 8
  %call580 = call i32 @xcf_write_int32(%struct._IO_FILE* %395, i32* %_prop_int32577, i32 1, %struct._GError** %tmp_error)
  %396 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp581 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %396, i32 0, i32 3
  %397 = load i32, i32* %cp581, align 4
  %add582 = add i32 %397, %call580
  store i32 %add582, i32* %cp581, align 4
  %398 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool583 = icmp ne %struct._GError* %398, null
  br i1 %tobool583, label %if.then.584, label %if.end.585

if.then.584:                                      ; preds = %do.body.578
  %399 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %400 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %399, %struct._GError* %400)
  store i32 0, i32* %retval
  br label %return

if.end.585:                                       ; preds = %do.body.578
  br label %do.end.586

do.end.586:                                       ; preds = %if.end.585
  br label %do.end.587

do.end.587:                                       ; preds = %do.end.586
  br label %do.body.588

do.body.588:                                      ; preds = %do.end.587
  %401 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp589 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %401, i32 0, i32 2
  %402 = load %struct._IO_FILE*, %struct._IO_FILE** %fp589, align 8
  %call590 = call i32 @xcf_write_int32(%struct._IO_FILE* %402, i32* %size, i32 1, %struct._GError** %tmp_error)
  %403 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp591 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %403, i32 0, i32 3
  %404 = load i32, i32* %cp591, align 4
  %add592 = add i32 %404, %call590
  store i32 %add592, i32* %cp591, align 4
  %405 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool593 = icmp ne %struct._GError* %405, null
  br i1 %tobool593, label %if.then.594, label %if.end.595

if.then.594:                                      ; preds = %do.body.588
  %406 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %407 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %406, %struct._GError* %407)
  store i32 0, i32* %retval
  br label %return

if.end.595:                                       ; preds = %do.body.588
  br label %do.end.596

do.end.596:                                       ; preds = %if.end.595
  br label %do.body.597

do.body.597:                                      ; preds = %do.end.596
  %408 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp598 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %408, i32 0, i32 2
  %409 = load %struct._IO_FILE*, %struct._IO_FILE** %fp598, align 8
  %arraydecay599 = getelementptr inbounds [2 x i32], [2 x i32]* %offsets, i32 0, i32 0
  %call600 = call i32 @xcf_write_int32(%struct._IO_FILE* %409, i32* %arraydecay599, i32 2, %struct._GError** %tmp_error)
  %410 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp601 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %410, i32 0, i32 3
  %411 = load i32, i32* %cp601, align 4
  %add602 = add i32 %411, %call600
  store i32 %add602, i32* %cp601, align 4
  %412 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool603 = icmp ne %struct._GError* %412, null
  br i1 %tobool603, label %if.then.604, label %if.end.605

if.then.604:                                      ; preds = %do.body.597
  %413 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %414 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %413, %struct._GError* %414)
  store i32 0, i32* %retval
  br label %return

if.end.605:                                       ; preds = %do.body.597
  br label %do.end.606

do.end.606:                                       ; preds = %if.end.605
  br label %sw.epilog.1424

sw.bb.607:                                        ; preds = %entry
  %arraydecay608 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p609 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay608, i32 0, i32 0
  %gp_offset610 = load i32, i32* %gp_offset_p609
  %fits_in_gp611 = icmp ule i32 %gp_offset610, 40
  br i1 %fits_in_gp611, label %vaarg.in_reg.612, label %vaarg.in_mem.614

vaarg.in_reg.612:                                 ; preds = %sw.bb.607
  %415 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay608, i32 0, i32 3
  %reg_save_area613 = load i8*, i8** %415
  %416 = getelementptr i8, i8* %reg_save_area613, i32 %gp_offset610
  %417 = bitcast i8* %416 to i8**
  %418 = add i32 %gp_offset610, 8
  store i32 %418, i32* %gp_offset_p609
  br label %vaarg.end.618

vaarg.in_mem.614:                                 ; preds = %sw.bb.607
  %overflow_arg_area_p615 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay608, i32 0, i32 2
  %overflow_arg_area616 = load i8*, i8** %overflow_arg_area_p615
  %419 = bitcast i8* %overflow_arg_area616 to i8**
  %overflow_arg_area.next617 = getelementptr i8, i8* %overflow_arg_area616, i32 8
  store i8* %overflow_arg_area.next617, i8** %overflow_arg_area_p615
  br label %vaarg.end.618

vaarg.end.618:                                    ; preds = %vaarg.in_mem.614, %vaarg.in_reg.612
  %vaarg.addr619 = phi i8** [ %417, %vaarg.in_reg.612 ], [ %419, %vaarg.in_mem.614 ]
  %420 = load i8*, i8** %vaarg.addr619
  store i8* %420, i8** %color, align 8
  store i32 3, i32* %size, align 4
  br label %do.body.620

do.body.620:                                      ; preds = %vaarg.end.618
  %421 = load i32, i32* %prop_type.addr, align 4
  store i32 %421, i32* %_prop_int32621, align 4
  br label %do.body.622

do.body.622:                                      ; preds = %do.body.620
  %422 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp623 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %422, i32 0, i32 2
  %423 = load %struct._IO_FILE*, %struct._IO_FILE** %fp623, align 8
  %call624 = call i32 @xcf_write_int32(%struct._IO_FILE* %423, i32* %_prop_int32621, i32 1, %struct._GError** %tmp_error)
  %424 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp625 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %424, i32 0, i32 3
  %425 = load i32, i32* %cp625, align 4
  %add626 = add i32 %425, %call624
  store i32 %add626, i32* %cp625, align 4
  %426 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool627 = icmp ne %struct._GError* %426, null
  br i1 %tobool627, label %if.then.628, label %if.end.629

if.then.628:                                      ; preds = %do.body.622
  %427 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %428 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %427, %struct._GError* %428)
  store i32 0, i32* %retval
  br label %return

if.end.629:                                       ; preds = %do.body.622
  br label %do.end.630

do.end.630:                                       ; preds = %if.end.629
  br label %do.end.631

do.end.631:                                       ; preds = %do.end.630
  br label %do.body.632

do.body.632:                                      ; preds = %do.end.631
  %429 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp633 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %429, i32 0, i32 2
  %430 = load %struct._IO_FILE*, %struct._IO_FILE** %fp633, align 8
  %call634 = call i32 @xcf_write_int32(%struct._IO_FILE* %430, i32* %size, i32 1, %struct._GError** %tmp_error)
  %431 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp635 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %431, i32 0, i32 3
  %432 = load i32, i32* %cp635, align 4
  %add636 = add i32 %432, %call634
  store i32 %add636, i32* %cp635, align 4
  %433 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool637 = icmp ne %struct._GError* %433, null
  br i1 %tobool637, label %if.then.638, label %if.end.639

if.then.638:                                      ; preds = %do.body.632
  %434 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %435 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %434, %struct._GError* %435)
  store i32 0, i32* %retval
  br label %return

if.end.639:                                       ; preds = %do.body.632
  br label %do.end.640

do.end.640:                                       ; preds = %if.end.639
  br label %do.body.641

do.body.641:                                      ; preds = %do.end.640
  %436 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp642 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %436, i32 0, i32 2
  %437 = load %struct._IO_FILE*, %struct._IO_FILE** %fp642, align 8
  %438 = load i8*, i8** %color, align 8
  %call643 = call i32 @xcf_write_int8(%struct._IO_FILE* %437, i8* %438, i32 3, %struct._GError** %tmp_error)
  %439 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp644 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %439, i32 0, i32 3
  %440 = load i32, i32* %cp644, align 4
  %add645 = add i32 %440, %call643
  store i32 %add645, i32* %cp644, align 4
  %441 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool646 = icmp ne %struct._GError* %441, null
  br i1 %tobool646, label %if.then.647, label %if.end.648

if.then.647:                                      ; preds = %do.body.641
  %442 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %443 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %442, %struct._GError* %443)
  store i32 0, i32* %retval
  br label %return

if.end.648:                                       ; preds = %do.body.641
  br label %do.end.649

do.end.649:                                       ; preds = %if.end.648
  br label %sw.epilog.1424

sw.bb.650:                                        ; preds = %entry
  %arraydecay651 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p652 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay651, i32 0, i32 0
  %gp_offset653 = load i32, i32* %gp_offset_p652
  %fits_in_gp654 = icmp ule i32 %gp_offset653, 40
  br i1 %fits_in_gp654, label %vaarg.in_reg.655, label %vaarg.in_mem.657

vaarg.in_reg.655:                                 ; preds = %sw.bb.650
  %444 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay651, i32 0, i32 3
  %reg_save_area656 = load i8*, i8** %444
  %445 = getelementptr i8, i8* %reg_save_area656, i32 %gp_offset653
  %446 = bitcast i8* %445 to i32*
  %447 = add i32 %gp_offset653, 8
  store i32 %447, i32* %gp_offset_p652
  br label %vaarg.end.661

vaarg.in_mem.657:                                 ; preds = %sw.bb.650
  %overflow_arg_area_p658 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay651, i32 0, i32 2
  %overflow_arg_area659 = load i8*, i8** %overflow_arg_area_p658
  %448 = bitcast i8* %overflow_arg_area659 to i32*
  %overflow_arg_area.next660 = getelementptr i8, i8* %overflow_arg_area659, i32 8
  store i8* %overflow_arg_area.next660, i8** %overflow_arg_area_p658
  br label %vaarg.end.661

vaarg.end.661:                                    ; preds = %vaarg.in_mem.657, %vaarg.in_reg.655
  %vaarg.addr662 = phi i32* [ %446, %vaarg.in_reg.655 ], [ %448, %vaarg.in_mem.657 ]
  %449 = load i32, i32* %vaarg.addr662
  %conv663 = trunc i32 %449 to i8
  store i8 %conv663, i8* %compression, align 1
  store i32 1, i32* %size, align 4
  br label %do.body.664

do.body.664:                                      ; preds = %vaarg.end.661
  %450 = load i32, i32* %prop_type.addr, align 4
  store i32 %450, i32* %_prop_int32665, align 4
  br label %do.body.666

do.body.666:                                      ; preds = %do.body.664
  %451 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp667 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %451, i32 0, i32 2
  %452 = load %struct._IO_FILE*, %struct._IO_FILE** %fp667, align 8
  %call668 = call i32 @xcf_write_int32(%struct._IO_FILE* %452, i32* %_prop_int32665, i32 1, %struct._GError** %tmp_error)
  %453 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp669 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %453, i32 0, i32 3
  %454 = load i32, i32* %cp669, align 4
  %add670 = add i32 %454, %call668
  store i32 %add670, i32* %cp669, align 4
  %455 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool671 = icmp ne %struct._GError* %455, null
  br i1 %tobool671, label %if.then.672, label %if.end.673

if.then.672:                                      ; preds = %do.body.666
  %456 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %457 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %456, %struct._GError* %457)
  store i32 0, i32* %retval
  br label %return

if.end.673:                                       ; preds = %do.body.666
  br label %do.end.674

do.end.674:                                       ; preds = %if.end.673
  br label %do.end.675

do.end.675:                                       ; preds = %do.end.674
  br label %do.body.676

do.body.676:                                      ; preds = %do.end.675
  %458 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp677 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %458, i32 0, i32 2
  %459 = load %struct._IO_FILE*, %struct._IO_FILE** %fp677, align 8
  %call678 = call i32 @xcf_write_int32(%struct._IO_FILE* %459, i32* %size, i32 1, %struct._GError** %tmp_error)
  %460 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp679 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %460, i32 0, i32 3
  %461 = load i32, i32* %cp679, align 4
  %add680 = add i32 %461, %call678
  store i32 %add680, i32* %cp679, align 4
  %462 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool681 = icmp ne %struct._GError* %462, null
  br i1 %tobool681, label %if.then.682, label %if.end.683

if.then.682:                                      ; preds = %do.body.676
  %463 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %464 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %463, %struct._GError* %464)
  store i32 0, i32* %retval
  br label %return

if.end.683:                                       ; preds = %do.body.676
  br label %do.end.684

do.end.684:                                       ; preds = %if.end.683
  br label %do.body.685

do.body.685:                                      ; preds = %do.end.684
  %465 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp686 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %465, i32 0, i32 2
  %466 = load %struct._IO_FILE*, %struct._IO_FILE** %fp686, align 8
  %call687 = call i32 @xcf_write_int8(%struct._IO_FILE* %466, i8* %compression, i32 1, %struct._GError** %tmp_error)
  %467 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp688 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %467, i32 0, i32 3
  %468 = load i32, i32* %cp688, align 4
  %add689 = add i32 %468, %call687
  store i32 %add689, i32* %cp688, align 4
  %469 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool690 = icmp ne %struct._GError* %469, null
  br i1 %tobool690, label %if.then.691, label %if.end.692

if.then.691:                                      ; preds = %do.body.685
  %470 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %471 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %470, %struct._GError* %471)
  store i32 0, i32* %retval
  br label %return

if.end.692:                                       ; preds = %do.body.685
  br label %do.end.693

do.end.693:                                       ; preds = %if.end.692
  br label %sw.epilog.1424

sw.bb.694:                                        ; preds = %entry
  %arraydecay695 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p696 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay695, i32 0, i32 0
  %gp_offset697 = load i32, i32* %gp_offset_p696
  %fits_in_gp698 = icmp ule i32 %gp_offset697, 40
  br i1 %fits_in_gp698, label %vaarg.in_reg.699, label %vaarg.in_mem.701

vaarg.in_reg.699:                                 ; preds = %sw.bb.694
  %472 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay695, i32 0, i32 3
  %reg_save_area700 = load i8*, i8** %472
  %473 = getelementptr i8, i8* %reg_save_area700, i32 %gp_offset697
  %474 = bitcast i8* %473 to %struct._GList**
  %475 = add i32 %gp_offset697, 8
  store i32 %475, i32* %gp_offset_p696
  br label %vaarg.end.705

vaarg.in_mem.701:                                 ; preds = %sw.bb.694
  %overflow_arg_area_p702 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay695, i32 0, i32 2
  %overflow_arg_area703 = load i8*, i8** %overflow_arg_area_p702
  %476 = bitcast i8* %overflow_arg_area703 to %struct._GList**
  %overflow_arg_area.next704 = getelementptr i8, i8* %overflow_arg_area703, i32 8
  store i8* %overflow_arg_area.next704, i8** %overflow_arg_area_p702
  br label %vaarg.end.705

vaarg.end.705:                                    ; preds = %vaarg.in_mem.701, %vaarg.in_reg.699
  %vaarg.addr706 = phi %struct._GList** [ %474, %vaarg.in_reg.699 ], [ %476, %vaarg.in_mem.701 ]
  %477 = load %struct._GList*, %struct._GList** %vaarg.addr706
  store %struct._GList* %477, %struct._GList** %guides, align 8
  %478 = load %struct._GList*, %struct._GList** %guides, align 8
  %call707 = call i32 @g_list_length(%struct._GList* %478)
  store i32 %call707, i32* %n_guides, align 4
  %479 = load i32, i32* %n_guides, align 4
  %mul708 = mul nsw i32 %479, 5
  store i32 %mul708, i32* %size, align 4
  br label %do.body.709

do.body.709:                                      ; preds = %vaarg.end.705
  %480 = load i32, i32* %prop_type.addr, align 4
  store i32 %480, i32* %_prop_int32710, align 4
  br label %do.body.711

do.body.711:                                      ; preds = %do.body.709
  %481 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp712 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %481, i32 0, i32 2
  %482 = load %struct._IO_FILE*, %struct._IO_FILE** %fp712, align 8
  %call713 = call i32 @xcf_write_int32(%struct._IO_FILE* %482, i32* %_prop_int32710, i32 1, %struct._GError** %tmp_error)
  %483 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp714 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %483, i32 0, i32 3
  %484 = load i32, i32* %cp714, align 4
  %add715 = add i32 %484, %call713
  store i32 %add715, i32* %cp714, align 4
  %485 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool716 = icmp ne %struct._GError* %485, null
  br i1 %tobool716, label %if.then.717, label %if.end.718

if.then.717:                                      ; preds = %do.body.711
  %486 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %487 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %486, %struct._GError* %487)
  store i32 0, i32* %retval
  br label %return

if.end.718:                                       ; preds = %do.body.711
  br label %do.end.719

do.end.719:                                       ; preds = %if.end.718
  br label %do.end.720

do.end.720:                                       ; preds = %do.end.719
  br label %do.body.721

do.body.721:                                      ; preds = %do.end.720
  %488 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp722 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %488, i32 0, i32 2
  %489 = load %struct._IO_FILE*, %struct._IO_FILE** %fp722, align 8
  %call723 = call i32 @xcf_write_int32(%struct._IO_FILE* %489, i32* %size, i32 1, %struct._GError** %tmp_error)
  %490 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp724 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %490, i32 0, i32 3
  %491 = load i32, i32* %cp724, align 4
  %add725 = add i32 %491, %call723
  store i32 %add725, i32* %cp724, align 4
  %492 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool726 = icmp ne %struct._GError* %492, null
  br i1 %tobool726, label %if.then.727, label %if.end.728

if.then.727:                                      ; preds = %do.body.721
  %493 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %494 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %493, %struct._GError* %494)
  store i32 0, i32* %retval
  br label %return

if.end.728:                                       ; preds = %do.body.721
  br label %do.end.729

do.end.729:                                       ; preds = %if.end.728
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.729
  %495 = load %struct._GList*, %struct._GList** %guides, align 8
  %tobool730 = icmp ne %struct._GList* %495, null
  br i1 %tobool730, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %496 = load %struct._GList*, %struct._GList** %guides, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %496, i32 0, i32 0
  %497 = load i8*, i8** %data, align 8
  %498 = bitcast i8* %497 to %struct._GimpGuide*
  store %struct._GimpGuide* %498, %struct._GimpGuide** %guide, align 8
  %499 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call731 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %499)
  store i32 %call731, i32* %position, align 4
  %500 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call732 = call i32 @gimp_guide_get_orientation(%struct._GimpGuide* %500)
  switch i32 %call732, label %sw.default [
    i32 0, label %sw.bb.733
    i32 1, label %sw.bb.734
  ]

sw.bb.733:                                        ; preds = %for.body
  store i8 1, i8* %orientation, align 1
  br label %sw.epilog

sw.bb.734:                                        ; preds = %for.body
  store i8 2, i8* %orientation, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.xcf_save_prop, i32 0, i32 0))
  br label %for.inc

sw.epilog:                                        ; preds = %sw.bb.734, %sw.bb.733
  br label %do.body.735

do.body.735:                                      ; preds = %sw.epilog
  %501 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp736 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %501, i32 0, i32 2
  %502 = load %struct._IO_FILE*, %struct._IO_FILE** %fp736, align 8
  %call737 = call i32 @xcf_write_int32(%struct._IO_FILE* %502, i32* %position, i32 1, %struct._GError** %tmp_error)
  %503 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp738 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %503, i32 0, i32 3
  %504 = load i32, i32* %cp738, align 4
  %add739 = add i32 %504, %call737
  store i32 %add739, i32* %cp738, align 4
  %505 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool740 = icmp ne %struct._GError* %505, null
  br i1 %tobool740, label %if.then.741, label %if.end.742

if.then.741:                                      ; preds = %do.body.735
  %506 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %507 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %506, %struct._GError* %507)
  store i32 0, i32* %retval
  br label %return

if.end.742:                                       ; preds = %do.body.735
  br label %do.end.743

do.end.743:                                       ; preds = %if.end.742
  br label %do.body.744

do.body.744:                                      ; preds = %do.end.743
  %508 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp745 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %508, i32 0, i32 2
  %509 = load %struct._IO_FILE*, %struct._IO_FILE** %fp745, align 8
  %call746 = call i32 @xcf_write_int8(%struct._IO_FILE* %509, i8* %orientation, i32 1, %struct._GError** %tmp_error)
  %510 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp747 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %510, i32 0, i32 3
  %511 = load i32, i32* %cp747, align 4
  %add748 = add i32 %511, %call746
  store i32 %add748, i32* %cp747, align 4
  %512 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool749 = icmp ne %struct._GError* %512, null
  br i1 %tobool749, label %if.then.750, label %if.end.751

if.then.750:                                      ; preds = %do.body.744
  %513 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %514 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %513, %struct._GError* %514)
  store i32 0, i32* %retval
  br label %return

if.end.751:                                       ; preds = %do.body.744
  br label %do.end.752

do.end.752:                                       ; preds = %if.end.751
  br label %for.inc

for.inc:                                          ; preds = %do.end.752, %sw.default
  %515 = load %struct._GList*, %struct._GList** %guides, align 8
  %tobool753 = icmp ne %struct._GList* %515, null
  br i1 %tobool753, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %516 = load %struct._GList*, %struct._GList** %guides, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %516, i32 0, i32 1
  %517 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %517, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %guides, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog.1424

sw.bb.754:                                        ; preds = %entry
  %arraydecay755 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p756 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay755, i32 0, i32 0
  %gp_offset757 = load i32, i32* %gp_offset_p756
  %fits_in_gp758 = icmp ule i32 %gp_offset757, 40
  br i1 %fits_in_gp758, label %vaarg.in_reg.759, label %vaarg.in_mem.761

vaarg.in_reg.759:                                 ; preds = %sw.bb.754
  %518 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay755, i32 0, i32 3
  %reg_save_area760 = load i8*, i8** %518
  %519 = getelementptr i8, i8* %reg_save_area760, i32 %gp_offset757
  %520 = bitcast i8* %519 to %struct._GList**
  %521 = add i32 %gp_offset757, 8
  store i32 %521, i32* %gp_offset_p756
  br label %vaarg.end.765

vaarg.in_mem.761:                                 ; preds = %sw.bb.754
  %overflow_arg_area_p762 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay755, i32 0, i32 2
  %overflow_arg_area763 = load i8*, i8** %overflow_arg_area_p762
  %522 = bitcast i8* %overflow_arg_area763 to %struct._GList**
  %overflow_arg_area.next764 = getelementptr i8, i8* %overflow_arg_area763, i32 8
  store i8* %overflow_arg_area.next764, i8** %overflow_arg_area_p762
  br label %vaarg.end.765

vaarg.end.765:                                    ; preds = %vaarg.in_mem.761, %vaarg.in_reg.759
  %vaarg.addr766 = phi %struct._GList** [ %520, %vaarg.in_reg.759 ], [ %522, %vaarg.in_mem.761 ]
  %523 = load %struct._GList*, %struct._GList** %vaarg.addr766
  store %struct._GList* %523, %struct._GList** %sample_points, align 8
  %524 = load %struct._GList*, %struct._GList** %sample_points, align 8
  %call767 = call i32 @g_list_length(%struct._GList* %524)
  store i32 %call767, i32* %n_sample_points, align 4
  %525 = load i32, i32* %n_sample_points, align 4
  %mul768 = mul nsw i32 %525, 8
  store i32 %mul768, i32* %size, align 4
  br label %do.body.769

do.body.769:                                      ; preds = %vaarg.end.765
  %526 = load i32, i32* %prop_type.addr, align 4
  store i32 %526, i32* %_prop_int32770, align 4
  br label %do.body.771

do.body.771:                                      ; preds = %do.body.769
  %527 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp772 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %527, i32 0, i32 2
  %528 = load %struct._IO_FILE*, %struct._IO_FILE** %fp772, align 8
  %call773 = call i32 @xcf_write_int32(%struct._IO_FILE* %528, i32* %_prop_int32770, i32 1, %struct._GError** %tmp_error)
  %529 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp774 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %529, i32 0, i32 3
  %530 = load i32, i32* %cp774, align 4
  %add775 = add i32 %530, %call773
  store i32 %add775, i32* %cp774, align 4
  %531 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool776 = icmp ne %struct._GError* %531, null
  br i1 %tobool776, label %if.then.777, label %if.end.778

if.then.777:                                      ; preds = %do.body.771
  %532 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %533 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %532, %struct._GError* %533)
  store i32 0, i32* %retval
  br label %return

if.end.778:                                       ; preds = %do.body.771
  br label %do.end.779

do.end.779:                                       ; preds = %if.end.778
  br label %do.end.780

do.end.780:                                       ; preds = %do.end.779
  br label %do.body.781

do.body.781:                                      ; preds = %do.end.780
  %534 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp782 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %534, i32 0, i32 2
  %535 = load %struct._IO_FILE*, %struct._IO_FILE** %fp782, align 8
  %call783 = call i32 @xcf_write_int32(%struct._IO_FILE* %535, i32* %size, i32 1, %struct._GError** %tmp_error)
  %536 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp784 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %536, i32 0, i32 3
  %537 = load i32, i32* %cp784, align 4
  %add785 = add i32 %537, %call783
  store i32 %add785, i32* %cp784, align 4
  %538 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool786 = icmp ne %struct._GError* %538, null
  br i1 %tobool786, label %if.then.787, label %if.end.788

if.then.787:                                      ; preds = %do.body.781
  %539 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %540 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %539, %struct._GError* %540)
  store i32 0, i32* %retval
  br label %return

if.end.788:                                       ; preds = %do.body.781
  br label %do.end.789

do.end.789:                                       ; preds = %if.end.788
  br label %for.cond.790

for.cond.790:                                     ; preds = %cond.end.819, %do.end.789
  %541 = load %struct._GList*, %struct._GList** %sample_points, align 8
  %tobool791 = icmp ne %struct._GList* %541, null
  br i1 %tobool791, label %for.body.792, label %for.end.821

for.body.792:                                     ; preds = %for.cond.790
  %542 = load %struct._GList*, %struct._GList** %sample_points, align 8
  %data793 = getelementptr inbounds %struct._GList, %struct._GList* %542, i32 0, i32 0
  %543 = load i8*, i8** %data793, align 8
  %544 = bitcast i8* %543 to %struct._GimpSamplePoint*
  store %struct._GimpSamplePoint* %544, %struct._GimpSamplePoint** %sample_point, align 8
  %545 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x794 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %545, i32 0, i32 2
  %546 = load i32, i32* %x794, align 4
  store i32 %546, i32* %x, align 4
  %547 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y795 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %547, i32 0, i32 3
  %548 = load i32, i32* %y795, align 4
  store i32 %548, i32* %y, align 4
  br label %do.body.796

do.body.796:                                      ; preds = %for.body.792
  %549 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp797 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %549, i32 0, i32 2
  %550 = load %struct._IO_FILE*, %struct._IO_FILE** %fp797, align 8
  %call798 = call i32 @xcf_write_int32(%struct._IO_FILE* %550, i32* %x, i32 1, %struct._GError** %tmp_error)
  %551 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp799 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %551, i32 0, i32 3
  %552 = load i32, i32* %cp799, align 4
  %add800 = add i32 %552, %call798
  store i32 %add800, i32* %cp799, align 4
  %553 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool801 = icmp ne %struct._GError* %553, null
  br i1 %tobool801, label %if.then.802, label %if.end.803

if.then.802:                                      ; preds = %do.body.796
  %554 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %555 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %554, %struct._GError* %555)
  store i32 0, i32* %retval
  br label %return

if.end.803:                                       ; preds = %do.body.796
  br label %do.end.804

do.end.804:                                       ; preds = %if.end.803
  br label %do.body.805

do.body.805:                                      ; preds = %do.end.804
  %556 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp806 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %556, i32 0, i32 2
  %557 = load %struct._IO_FILE*, %struct._IO_FILE** %fp806, align 8
  %call807 = call i32 @xcf_write_int32(%struct._IO_FILE* %557, i32* %y, i32 1, %struct._GError** %tmp_error)
  %558 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp808 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %558, i32 0, i32 3
  %559 = load i32, i32* %cp808, align 4
  %add809 = add i32 %559, %call807
  store i32 %add809, i32* %cp808, align 4
  %560 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool810 = icmp ne %struct._GError* %560, null
  br i1 %tobool810, label %if.then.811, label %if.end.812

if.then.811:                                      ; preds = %do.body.805
  %561 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %562 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %561, %struct._GError* %562)
  store i32 0, i32* %retval
  br label %return

if.end.812:                                       ; preds = %do.body.805
  br label %do.end.813

do.end.813:                                       ; preds = %if.end.812
  br label %for.inc.814

for.inc.814:                                      ; preds = %do.end.813
  %563 = load %struct._GList*, %struct._GList** %sample_points, align 8
  %tobool815 = icmp ne %struct._GList* %563, null
  br i1 %tobool815, label %cond.true.816, label %cond.false.818

cond.true.816:                                    ; preds = %for.inc.814
  %564 = load %struct._GList*, %struct._GList** %sample_points, align 8
  %next817 = getelementptr inbounds %struct._GList, %struct._GList* %564, i32 0, i32 1
  %565 = load %struct._GList*, %struct._GList** %next817, align 8
  br label %cond.end.819

cond.false.818:                                   ; preds = %for.inc.814
  br label %cond.end.819

cond.end.819:                                     ; preds = %cond.false.818, %cond.true.816
  %cond820 = phi %struct._GList* [ %565, %cond.true.816 ], [ null, %cond.false.818 ]
  store %struct._GList* %cond820, %struct._GList** %sample_points, align 8
  br label %for.cond.790

for.end.821:                                      ; preds = %for.cond.790
  br label %sw.epilog.1424

sw.bb.822:                                        ; preds = %entry
  %arraydecay823 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %fp_offset_p824 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay823, i32 0, i32 1
  %fp_offset825 = load i32, i32* %fp_offset_p824
  %fits_in_fp826 = icmp ule i32 %fp_offset825, 160
  br i1 %fits_in_fp826, label %vaarg.in_reg.827, label %vaarg.in_mem.829

vaarg.in_reg.827:                                 ; preds = %sw.bb.822
  %566 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay823, i32 0, i32 3
  %reg_save_area828 = load i8*, i8** %566
  %567 = getelementptr i8, i8* %reg_save_area828, i32 %fp_offset825
  %568 = bitcast i8* %567 to double*
  %569 = add i32 %fp_offset825, 16
  store i32 %569, i32* %fp_offset_p824
  br label %vaarg.end.833

vaarg.in_mem.829:                                 ; preds = %sw.bb.822
  %overflow_arg_area_p830 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay823, i32 0, i32 2
  %overflow_arg_area831 = load i8*, i8** %overflow_arg_area_p830
  %570 = bitcast i8* %overflow_arg_area831 to double*
  %overflow_arg_area.next832 = getelementptr i8, i8* %overflow_arg_area831, i32 8
  store i8* %overflow_arg_area.next832, i8** %overflow_arg_area_p830
  br label %vaarg.end.833

vaarg.end.833:                                    ; preds = %vaarg.in_mem.829, %vaarg.in_reg.827
  %vaarg.addr834 = phi double* [ %568, %vaarg.in_reg.827 ], [ %570, %vaarg.in_mem.829 ]
  %571 = load double, double* %vaarg.addr834
  %conv835 = fptrunc double %571 to float
  store float %conv835, float* %xresolution, align 4
  %arraydecay836 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %fp_offset_p837 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay836, i32 0, i32 1
  %fp_offset838 = load i32, i32* %fp_offset_p837
  %fits_in_fp839 = icmp ule i32 %fp_offset838, 160
  br i1 %fits_in_fp839, label %vaarg.in_reg.840, label %vaarg.in_mem.842

vaarg.in_reg.840:                                 ; preds = %vaarg.end.833
  %572 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay836, i32 0, i32 3
  %reg_save_area841 = load i8*, i8** %572
  %573 = getelementptr i8, i8* %reg_save_area841, i32 %fp_offset838
  %574 = bitcast i8* %573 to double*
  %575 = add i32 %fp_offset838, 16
  store i32 %575, i32* %fp_offset_p837
  br label %vaarg.end.846

vaarg.in_mem.842:                                 ; preds = %vaarg.end.833
  %overflow_arg_area_p843 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay836, i32 0, i32 2
  %overflow_arg_area844 = load i8*, i8** %overflow_arg_area_p843
  %576 = bitcast i8* %overflow_arg_area844 to double*
  %overflow_arg_area.next845 = getelementptr i8, i8* %overflow_arg_area844, i32 8
  store i8* %overflow_arg_area.next845, i8** %overflow_arg_area_p843
  br label %vaarg.end.846

vaarg.end.846:                                    ; preds = %vaarg.in_mem.842, %vaarg.in_reg.840
  %vaarg.addr847 = phi double* [ %574, %vaarg.in_reg.840 ], [ %576, %vaarg.in_mem.842 ]
  %577 = load double, double* %vaarg.addr847
  %conv848 = fptrunc double %577 to float
  store float %conv848, float* %yresolution, align 4
  store i32 8, i32* %size, align 4
  br label %do.body.849

do.body.849:                                      ; preds = %vaarg.end.846
  %578 = load i32, i32* %prop_type.addr, align 4
  store i32 %578, i32* %_prop_int32850, align 4
  br label %do.body.851

do.body.851:                                      ; preds = %do.body.849
  %579 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp852 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %579, i32 0, i32 2
  %580 = load %struct._IO_FILE*, %struct._IO_FILE** %fp852, align 8
  %call853 = call i32 @xcf_write_int32(%struct._IO_FILE* %580, i32* %_prop_int32850, i32 1, %struct._GError** %tmp_error)
  %581 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp854 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %581, i32 0, i32 3
  %582 = load i32, i32* %cp854, align 4
  %add855 = add i32 %582, %call853
  store i32 %add855, i32* %cp854, align 4
  %583 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool856 = icmp ne %struct._GError* %583, null
  br i1 %tobool856, label %if.then.857, label %if.end.858

if.then.857:                                      ; preds = %do.body.851
  %584 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %585 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %584, %struct._GError* %585)
  store i32 0, i32* %retval
  br label %return

if.end.858:                                       ; preds = %do.body.851
  br label %do.end.859

do.end.859:                                       ; preds = %if.end.858
  br label %do.end.860

do.end.860:                                       ; preds = %do.end.859
  br label %do.body.861

do.body.861:                                      ; preds = %do.end.860
  %586 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp862 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %586, i32 0, i32 2
  %587 = load %struct._IO_FILE*, %struct._IO_FILE** %fp862, align 8
  %call863 = call i32 @xcf_write_int32(%struct._IO_FILE* %587, i32* %size, i32 1, %struct._GError** %tmp_error)
  %588 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp864 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %588, i32 0, i32 3
  %589 = load i32, i32* %cp864, align 4
  %add865 = add i32 %589, %call863
  store i32 %add865, i32* %cp864, align 4
  %590 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool866 = icmp ne %struct._GError* %590, null
  br i1 %tobool866, label %if.then.867, label %if.end.868

if.then.867:                                      ; preds = %do.body.861
  %591 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %592 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %591, %struct._GError* %592)
  store i32 0, i32* %retval
  br label %return

if.end.868:                                       ; preds = %do.body.861
  br label %do.end.869

do.end.869:                                       ; preds = %if.end.868
  br label %do.body.870

do.body.870:                                      ; preds = %do.end.869
  %593 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp871 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %593, i32 0, i32 2
  %594 = load %struct._IO_FILE*, %struct._IO_FILE** %fp871, align 8
  %call872 = call i32 @xcf_write_float(%struct._IO_FILE* %594, float* %xresolution, i32 1, %struct._GError** %tmp_error)
  %595 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp873 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %595, i32 0, i32 3
  %596 = load i32, i32* %cp873, align 4
  %add874 = add i32 %596, %call872
  store i32 %add874, i32* %cp873, align 4
  %597 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool875 = icmp ne %struct._GError* %597, null
  br i1 %tobool875, label %if.then.876, label %if.end.877

if.then.876:                                      ; preds = %do.body.870
  %598 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %599 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %598, %struct._GError* %599)
  store i32 0, i32* %retval
  br label %return

if.end.877:                                       ; preds = %do.body.870
  br label %do.end.878

do.end.878:                                       ; preds = %if.end.877
  br label %do.body.879

do.body.879:                                      ; preds = %do.end.878
  %600 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp880 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %600, i32 0, i32 2
  %601 = load %struct._IO_FILE*, %struct._IO_FILE** %fp880, align 8
  %call881 = call i32 @xcf_write_float(%struct._IO_FILE* %601, float* %yresolution, i32 1, %struct._GError** %tmp_error)
  %602 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp882 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %602, i32 0, i32 3
  %603 = load i32, i32* %cp882, align 4
  %add883 = add i32 %603, %call881
  store i32 %add883, i32* %cp882, align 4
  %604 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool884 = icmp ne %struct._GError* %604, null
  br i1 %tobool884, label %if.then.885, label %if.end.886

if.then.885:                                      ; preds = %do.body.879
  %605 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %606 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %605, %struct._GError* %606)
  store i32 0, i32* %retval
  br label %return

if.end.886:                                       ; preds = %do.body.879
  br label %do.end.887

do.end.887:                                       ; preds = %if.end.886
  br label %sw.epilog.1424

sw.bb.888:                                        ; preds = %entry
  %arraydecay889 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p890 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay889, i32 0, i32 0
  %gp_offset891 = load i32, i32* %gp_offset_p890
  %fits_in_gp892 = icmp ule i32 %gp_offset891, 40
  br i1 %fits_in_gp892, label %vaarg.in_reg.893, label %vaarg.in_mem.895

vaarg.in_reg.893:                                 ; preds = %sw.bb.888
  %607 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay889, i32 0, i32 3
  %reg_save_area894 = load i8*, i8** %607
  %608 = getelementptr i8, i8* %reg_save_area894, i32 %gp_offset891
  %609 = bitcast i8* %608 to i32*
  %610 = add i32 %gp_offset891, 8
  store i32 %610, i32* %gp_offset_p890
  br label %vaarg.end.899

vaarg.in_mem.895:                                 ; preds = %sw.bb.888
  %overflow_arg_area_p896 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay889, i32 0, i32 2
  %overflow_arg_area897 = load i8*, i8** %overflow_arg_area_p896
  %611 = bitcast i8* %overflow_arg_area897 to i32*
  %overflow_arg_area.next898 = getelementptr i8, i8* %overflow_arg_area897, i32 8
  store i8* %overflow_arg_area.next898, i8** %overflow_arg_area_p896
  br label %vaarg.end.899

vaarg.end.899:                                    ; preds = %vaarg.in_mem.895, %vaarg.in_reg.893
  %vaarg.addr900 = phi i32* [ %609, %vaarg.in_reg.893 ], [ %611, %vaarg.in_mem.895 ]
  %612 = load i32, i32* %vaarg.addr900
  store i32 %612, i32* %tattoo, align 4
  store i32 4, i32* %size, align 4
  br label %do.body.901

do.body.901:                                      ; preds = %vaarg.end.899
  %613 = load i32, i32* %prop_type.addr, align 4
  store i32 %613, i32* %_prop_int32902, align 4
  br label %do.body.903

do.body.903:                                      ; preds = %do.body.901
  %614 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp904 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %614, i32 0, i32 2
  %615 = load %struct._IO_FILE*, %struct._IO_FILE** %fp904, align 8
  %call905 = call i32 @xcf_write_int32(%struct._IO_FILE* %615, i32* %_prop_int32902, i32 1, %struct._GError** %tmp_error)
  %616 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp906 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %616, i32 0, i32 3
  %617 = load i32, i32* %cp906, align 4
  %add907 = add i32 %617, %call905
  store i32 %add907, i32* %cp906, align 4
  %618 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool908 = icmp ne %struct._GError* %618, null
  br i1 %tobool908, label %if.then.909, label %if.end.910

if.then.909:                                      ; preds = %do.body.903
  %619 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %620 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %619, %struct._GError* %620)
  store i32 0, i32* %retval
  br label %return

if.end.910:                                       ; preds = %do.body.903
  br label %do.end.911

do.end.911:                                       ; preds = %if.end.910
  br label %do.end.912

do.end.912:                                       ; preds = %do.end.911
  br label %do.body.913

do.body.913:                                      ; preds = %do.end.912
  %621 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp914 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %621, i32 0, i32 2
  %622 = load %struct._IO_FILE*, %struct._IO_FILE** %fp914, align 8
  %call915 = call i32 @xcf_write_int32(%struct._IO_FILE* %622, i32* %size, i32 1, %struct._GError** %tmp_error)
  %623 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp916 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %623, i32 0, i32 3
  %624 = load i32, i32* %cp916, align 4
  %add917 = add i32 %624, %call915
  store i32 %add917, i32* %cp916, align 4
  %625 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool918 = icmp ne %struct._GError* %625, null
  br i1 %tobool918, label %if.then.919, label %if.end.920

if.then.919:                                      ; preds = %do.body.913
  %626 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %627 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %626, %struct._GError* %627)
  store i32 0, i32* %retval
  br label %return

if.end.920:                                       ; preds = %do.body.913
  br label %do.end.921

do.end.921:                                       ; preds = %if.end.920
  br label %do.body.922

do.body.922:                                      ; preds = %do.end.921
  %628 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp923 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %628, i32 0, i32 2
  %629 = load %struct._IO_FILE*, %struct._IO_FILE** %fp923, align 8
  %call924 = call i32 @xcf_write_int32(%struct._IO_FILE* %629, i32* %tattoo, i32 1, %struct._GError** %tmp_error)
  %630 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp925 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %630, i32 0, i32 3
  %631 = load i32, i32* %cp925, align 4
  %add926 = add i32 %631, %call924
  store i32 %add926, i32* %cp925, align 4
  %632 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool927 = icmp ne %struct._GError* %632, null
  br i1 %tobool927, label %if.then.928, label %if.end.929

if.then.928:                                      ; preds = %do.body.922
  %633 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %634 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %633, %struct._GError* %634)
  store i32 0, i32* %retval
  br label %return

if.end.929:                                       ; preds = %do.body.922
  br label %do.end.930

do.end.930:                                       ; preds = %if.end.929
  br label %sw.epilog.1424

sw.bb.931:                                        ; preds = %entry
  %arraydecay932 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p933 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay932, i32 0, i32 0
  %gp_offset934 = load i32, i32* %gp_offset_p933
  %fits_in_gp935 = icmp ule i32 %gp_offset934, 40
  br i1 %fits_in_gp935, label %vaarg.in_reg.936, label %vaarg.in_mem.938

vaarg.in_reg.936:                                 ; preds = %sw.bb.931
  %635 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay932, i32 0, i32 3
  %reg_save_area937 = load i8*, i8** %635
  %636 = getelementptr i8, i8* %reg_save_area937, i32 %gp_offset934
  %637 = bitcast i8* %636 to %struct._GimpParasiteList**
  %638 = add i32 %gp_offset934, 8
  store i32 %638, i32* %gp_offset_p933
  br label %vaarg.end.942

vaarg.in_mem.938:                                 ; preds = %sw.bb.931
  %overflow_arg_area_p939 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay932, i32 0, i32 2
  %overflow_arg_area940 = load i8*, i8** %overflow_arg_area_p939
  %639 = bitcast i8* %overflow_arg_area940 to %struct._GimpParasiteList**
  %overflow_arg_area.next941 = getelementptr i8, i8* %overflow_arg_area940, i32 8
  store i8* %overflow_arg_area.next941, i8** %overflow_arg_area_p939
  br label %vaarg.end.942

vaarg.end.942:                                    ; preds = %vaarg.in_mem.938, %vaarg.in_reg.936
  %vaarg.addr943 = phi %struct._GimpParasiteList** [ %637, %vaarg.in_reg.936 ], [ %639, %vaarg.in_mem.938 ]
  %640 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %vaarg.addr943
  store %struct._GimpParasiteList* %640, %struct._GimpParasiteList** %list, align 8
  %641 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list, align 8
  %call944 = call i32 @gimp_parasite_list_persistent_length(%struct._GimpParasiteList* %641)
  %cmp = icmp sgt i32 %call944, 0
  br i1 %cmp, label %if.then.946, label %if.end.997

if.then.946:                                      ; preds = %vaarg.end.942
  store i32 0, i32* %length, align 4
  br label %do.body.947

do.body.947:                                      ; preds = %if.then.946
  %642 = load i32, i32* %prop_type.addr, align 4
  store i32 %642, i32* %_prop_int32948, align 4
  br label %do.body.949

do.body.949:                                      ; preds = %do.body.947
  %643 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp950 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %643, i32 0, i32 2
  %644 = load %struct._IO_FILE*, %struct._IO_FILE** %fp950, align 8
  %call951 = call i32 @xcf_write_int32(%struct._IO_FILE* %644, i32* %_prop_int32948, i32 1, %struct._GError** %tmp_error)
  %645 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp952 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %645, i32 0, i32 3
  %646 = load i32, i32* %cp952, align 4
  %add953 = add i32 %646, %call951
  store i32 %add953, i32* %cp952, align 4
  %647 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool954 = icmp ne %struct._GError* %647, null
  br i1 %tobool954, label %if.then.955, label %if.end.956

if.then.955:                                      ; preds = %do.body.949
  %648 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %649 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %648, %struct._GError* %649)
  store i32 0, i32* %retval
  br label %return

if.end.956:                                       ; preds = %do.body.949
  br label %do.end.957

do.end.957:                                       ; preds = %if.end.956
  br label %do.end.958

do.end.958:                                       ; preds = %do.end.957
  %650 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp959 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %650, i32 0, i32 3
  %651 = load i32, i32* %cp959, align 4
  %conv960 = zext i32 %651 to i64
  store i64 %conv960, i64* %pos, align 8
  br label %do.body.961

do.body.961:                                      ; preds = %do.end.958
  %652 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp962 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %652, i32 0, i32 2
  %653 = load %struct._IO_FILE*, %struct._IO_FILE** %fp962, align 8
  %call963 = call i32 @xcf_write_int32(%struct._IO_FILE* %653, i32* %length, i32 1, %struct._GError** %tmp_error)
  %654 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp964 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %654, i32 0, i32 3
  %655 = load i32, i32* %cp964, align 4
  %add965 = add i32 %655, %call963
  store i32 %add965, i32* %cp964, align 4
  %656 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool966 = icmp ne %struct._GError* %656, null
  br i1 %tobool966, label %if.then.967, label %if.end.968

if.then.967:                                      ; preds = %do.body.961
  %657 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %658 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %657, %struct._GError* %658)
  store i32 0, i32* %retval
  br label %return

if.end.968:                                       ; preds = %do.body.961
  br label %do.end.969

do.end.969:                                       ; preds = %if.end.968
  %659 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp970 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %659, i32 0, i32 3
  %660 = load i32, i32* %cp970, align 4
  store i32 %660, i32* %base, align 4
  br label %do.body.971

do.body.971:                                      ; preds = %do.end.969
  %661 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %662 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list, align 8
  %663 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call972 = call i32 @xcf_save_parasite_list(%struct._XcfInfo* %661, %struct._GimpParasiteList* %662, %struct._GError** %663)
  %tobool973 = icmp ne i32 %call972, 0
  br i1 %tobool973, label %if.end.975, label %if.then.974

if.then.974:                                      ; preds = %do.body.971
  store i32 0, i32* %retval
  br label %return

if.end.975:                                       ; preds = %do.body.971
  br label %do.end.976

do.end.976:                                       ; preds = %if.end.975
  %664 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp977 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %664, i32 0, i32 3
  %665 = load i32, i32* %cp977, align 4
  %666 = load i32, i32* %base, align 4
  %sub = sub i32 %665, %666
  store i32 %sub, i32* %length, align 4
  br label %do.body.978

do.body.978:                                      ; preds = %do.end.976
  %667 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %668 = load i64, i64* %pos, align 8
  %conv979 = trunc i64 %668 to i32
  %669 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call980 = call i32 @xcf_seek_pos(%struct._XcfInfo* %667, i32 %conv979, %struct._GError** %669)
  %tobool981 = icmp ne i32 %call980, 0
  br i1 %tobool981, label %if.end.983, label %if.then.982

if.then.982:                                      ; preds = %do.body.978
  store i32 0, i32* %retval
  br label %return

if.end.983:                                       ; preds = %do.body.978
  br label %do.end.984

do.end.984:                                       ; preds = %if.end.983
  %670 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp985 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %670, i32 0, i32 2
  %671 = load %struct._IO_FILE*, %struct._IO_FILE** %fp985, align 8
  %call986 = call i32 @xcf_write_int32(%struct._IO_FILE* %671, i32* %length, i32 1, %struct._GError** %tmp_error)
  %672 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool987 = icmp ne %struct._GError* %672, null
  br i1 %tobool987, label %if.then.988, label %if.end.989

if.then.988:                                      ; preds = %do.end.984
  %673 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %674 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %673, %struct._GError* %674)
  store i32 0, i32* %retval
  br label %return

if.end.989:                                       ; preds = %do.end.984
  br label %do.body.990

do.body.990:                                      ; preds = %if.end.989
  %675 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %676 = load i32, i32* %base, align 4
  %677 = load i32, i32* %length, align 4
  %add991 = add i32 %676, %677
  %678 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call992 = call i32 @xcf_seek_pos(%struct._XcfInfo* %675, i32 %add991, %struct._GError** %678)
  %tobool993 = icmp ne i32 %call992, 0
  br i1 %tobool993, label %if.end.995, label %if.then.994

if.then.994:                                      ; preds = %do.body.990
  store i32 0, i32* %retval
  br label %return

if.end.995:                                       ; preds = %do.body.990
  br label %do.end.996

do.end.996:                                       ; preds = %if.end.995
  br label %if.end.997

if.end.997:                                       ; preds = %do.end.996, %vaarg.end.942
  br label %sw.epilog.1424

sw.bb.998:                                        ; preds = %entry
  %arraydecay999 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p1000 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay999, i32 0, i32 0
  %gp_offset1001 = load i32, i32* %gp_offset_p1000
  %fits_in_gp1002 = icmp ule i32 %gp_offset1001, 40
  br i1 %fits_in_gp1002, label %vaarg.in_reg.1003, label %vaarg.in_mem.1005

vaarg.in_reg.1003:                                ; preds = %sw.bb.998
  %679 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay999, i32 0, i32 3
  %reg_save_area1004 = load i8*, i8** %679
  %680 = getelementptr i8, i8* %reg_save_area1004, i32 %gp_offset1001
  %681 = bitcast i8* %680 to i32*
  %682 = add i32 %gp_offset1001, 8
  store i32 %682, i32* %gp_offset_p1000
  br label %vaarg.end.1009

vaarg.in_mem.1005:                                ; preds = %sw.bb.998
  %overflow_arg_area_p1006 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay999, i32 0, i32 2
  %overflow_arg_area1007 = load i8*, i8** %overflow_arg_area_p1006
  %683 = bitcast i8* %overflow_arg_area1007 to i32*
  %overflow_arg_area.next1008 = getelementptr i8, i8* %overflow_arg_area1007, i32 8
  store i8* %overflow_arg_area.next1008, i8** %overflow_arg_area_p1006
  br label %vaarg.end.1009

vaarg.end.1009:                                   ; preds = %vaarg.in_mem.1005, %vaarg.in_reg.1003
  %vaarg.addr1010 = phi i32* [ %681, %vaarg.in_reg.1003 ], [ %683, %vaarg.in_mem.1005 ]
  %684 = load i32, i32* %vaarg.addr1010
  store i32 %684, i32* %unit, align 4
  store i32 4, i32* %size, align 4
  br label %do.body.1011

do.body.1011:                                     ; preds = %vaarg.end.1009
  %685 = load i32, i32* %prop_type.addr, align 4
  store i32 %685, i32* %_prop_int321012, align 4
  br label %do.body.1013

do.body.1013:                                     ; preds = %do.body.1011
  %686 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1014 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %686, i32 0, i32 2
  %687 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1014, align 8
  %call1015 = call i32 @xcf_write_int32(%struct._IO_FILE* %687, i32* %_prop_int321012, i32 1, %struct._GError** %tmp_error)
  %688 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1016 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %688, i32 0, i32 3
  %689 = load i32, i32* %cp1016, align 4
  %add1017 = add i32 %689, %call1015
  store i32 %add1017, i32* %cp1016, align 4
  %690 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1018 = icmp ne %struct._GError* %690, null
  br i1 %tobool1018, label %if.then.1019, label %if.end.1020

if.then.1019:                                     ; preds = %do.body.1013
  %691 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %692 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %691, %struct._GError* %692)
  store i32 0, i32* %retval
  br label %return

if.end.1020:                                      ; preds = %do.body.1013
  br label %do.end.1021

do.end.1021:                                      ; preds = %if.end.1020
  br label %do.end.1022

do.end.1022:                                      ; preds = %do.end.1021
  br label %do.body.1023

do.body.1023:                                     ; preds = %do.end.1022
  %693 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1024 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %693, i32 0, i32 2
  %694 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1024, align 8
  %call1025 = call i32 @xcf_write_int32(%struct._IO_FILE* %694, i32* %size, i32 1, %struct._GError** %tmp_error)
  %695 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1026 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %695, i32 0, i32 3
  %696 = load i32, i32* %cp1026, align 4
  %add1027 = add i32 %696, %call1025
  store i32 %add1027, i32* %cp1026, align 4
  %697 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1028 = icmp ne %struct._GError* %697, null
  br i1 %tobool1028, label %if.then.1029, label %if.end.1030

if.then.1029:                                     ; preds = %do.body.1023
  %698 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %699 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %698, %struct._GError* %699)
  store i32 0, i32* %retval
  br label %return

if.end.1030:                                      ; preds = %do.body.1023
  br label %do.end.1031

do.end.1031:                                      ; preds = %if.end.1030
  br label %do.body.1032

do.body.1032:                                     ; preds = %do.end.1031
  %700 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1033 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %700, i32 0, i32 2
  %701 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1033, align 8
  %call1034 = call i32 @xcf_write_int32(%struct._IO_FILE* %701, i32* %unit, i32 1, %struct._GError** %tmp_error)
  %702 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1035 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %702, i32 0, i32 3
  %703 = load i32, i32* %cp1035, align 4
  %add1036 = add i32 %703, %call1034
  store i32 %add1036, i32* %cp1035, align 4
  %704 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1037 = icmp ne %struct._GError* %704, null
  br i1 %tobool1037, label %if.then.1038, label %if.end.1039

if.then.1038:                                     ; preds = %do.body.1032
  %705 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %706 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %705, %struct._GError* %706)
  store i32 0, i32* %retval
  br label %return

if.end.1039:                                      ; preds = %do.body.1032
  br label %do.end.1040

do.end.1040:                                      ; preds = %if.end.1039
  br label %sw.epilog.1424

sw.bb.1041:                                       ; preds = %entry
  store i32 0, i32* %length1043, align 4
  br label %do.body.1045

do.body.1045:                                     ; preds = %sw.bb.1041
  %707 = load i32, i32* %prop_type.addr, align 4
  store i32 %707, i32* %_prop_int321046, align 4
  br label %do.body.1047

do.body.1047:                                     ; preds = %do.body.1045
  %708 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1048 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %708, i32 0, i32 2
  %709 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1048, align 8
  %call1049 = call i32 @xcf_write_int32(%struct._IO_FILE* %709, i32* %_prop_int321046, i32 1, %struct._GError** %tmp_error)
  %710 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1050 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %710, i32 0, i32 3
  %711 = load i32, i32* %cp1050, align 4
  %add1051 = add i32 %711, %call1049
  store i32 %add1051, i32* %cp1050, align 4
  %712 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1052 = icmp ne %struct._GError* %712, null
  br i1 %tobool1052, label %if.then.1053, label %if.end.1054

if.then.1053:                                     ; preds = %do.body.1047
  %713 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %714 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %713, %struct._GError* %714)
  store i32 0, i32* %retval
  br label %return

if.end.1054:                                      ; preds = %do.body.1047
  br label %do.end.1055

do.end.1055:                                      ; preds = %if.end.1054
  br label %do.end.1056

do.end.1056:                                      ; preds = %do.end.1055
  %715 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1057 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %715, i32 0, i32 3
  %716 = load i32, i32* %cp1057, align 4
  %conv1058 = zext i32 %716 to i64
  store i64 %conv1058, i64* %pos1044, align 8
  br label %do.body.1059

do.body.1059:                                     ; preds = %do.end.1056
  %717 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1060 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %717, i32 0, i32 2
  %718 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1060, align 8
  %call1061 = call i32 @xcf_write_int32(%struct._IO_FILE* %718, i32* %length1043, i32 1, %struct._GError** %tmp_error)
  %719 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1062 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %719, i32 0, i32 3
  %720 = load i32, i32* %cp1062, align 4
  %add1063 = add i32 %720, %call1061
  store i32 %add1063, i32* %cp1062, align 4
  %721 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1064 = icmp ne %struct._GError* %721, null
  br i1 %tobool1064, label %if.then.1065, label %if.end.1066

if.then.1065:                                     ; preds = %do.body.1059
  %722 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %723 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %722, %struct._GError* %723)
  store i32 0, i32* %retval
  br label %return

if.end.1066:                                      ; preds = %do.body.1059
  br label %do.end.1067

do.end.1067:                                      ; preds = %if.end.1066
  %724 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1068 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %724, i32 0, i32 3
  %725 = load i32, i32* %cp1068, align 4
  store i32 %725, i32* %base1042, align 4
  br label %do.body.1069

do.body.1069:                                     ; preds = %do.end.1067
  %726 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %727 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %728 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1070 = call i32 @xcf_save_old_paths(%struct._XcfInfo* %726, %struct._GimpImage* %727, %struct._GError** %728)
  %tobool1071 = icmp ne i32 %call1070, 0
  br i1 %tobool1071, label %if.end.1073, label %if.then.1072

if.then.1072:                                     ; preds = %do.body.1069
  store i32 0, i32* %retval
  br label %return

if.end.1073:                                      ; preds = %do.body.1069
  br label %do.end.1074

do.end.1074:                                      ; preds = %if.end.1073
  %729 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1075 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %729, i32 0, i32 3
  %730 = load i32, i32* %cp1075, align 4
  %731 = load i32, i32* %base1042, align 4
  %sub1076 = sub i32 %730, %731
  store i32 %sub1076, i32* %length1043, align 4
  br label %do.body.1077

do.body.1077:                                     ; preds = %do.end.1074
  %732 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %733 = load i64, i64* %pos1044, align 8
  %conv1078 = trunc i64 %733 to i32
  %734 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1079 = call i32 @xcf_seek_pos(%struct._XcfInfo* %732, i32 %conv1078, %struct._GError** %734)
  %tobool1080 = icmp ne i32 %call1079, 0
  br i1 %tobool1080, label %if.end.1082, label %if.then.1081

if.then.1081:                                     ; preds = %do.body.1077
  store i32 0, i32* %retval
  br label %return

if.end.1082:                                      ; preds = %do.body.1077
  br label %do.end.1083

do.end.1083:                                      ; preds = %if.end.1082
  %735 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1084 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %735, i32 0, i32 2
  %736 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1084, align 8
  %call1085 = call i32 @xcf_write_int32(%struct._IO_FILE* %736, i32* %length1043, i32 1, %struct._GError** %tmp_error)
  %737 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1086 = icmp ne %struct._GError* %737, null
  br i1 %tobool1086, label %if.then.1087, label %if.end.1088

if.then.1087:                                     ; preds = %do.end.1083
  %738 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %739 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %738, %struct._GError* %739)
  store i32 0, i32* %retval
  br label %return

if.end.1088:                                      ; preds = %do.end.1083
  br label %do.body.1089

do.body.1089:                                     ; preds = %if.end.1088
  %740 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %741 = load i32, i32* %base1042, align 4
  %742 = load i32, i32* %length1043, align 4
  %add1090 = add i32 %741, %742
  %743 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1091 = call i32 @xcf_seek_pos(%struct._XcfInfo* %740, i32 %add1090, %struct._GError** %743)
  %tobool1092 = icmp ne i32 %call1091, 0
  br i1 %tobool1092, label %if.end.1094, label %if.then.1093

if.then.1093:                                     ; preds = %do.body.1089
  store i32 0, i32* %retval
  br label %return

if.end.1094:                                      ; preds = %do.body.1089
  br label %do.end.1095

do.end.1095:                                      ; preds = %if.end.1094
  br label %sw.epilog.1424

sw.bb.1096:                                       ; preds = %entry
  %arraydecay1098 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p1099 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1098, i32 0, i32 0
  %gp_offset1100 = load i32, i32* %gp_offset_p1099
  %fits_in_gp1101 = icmp ule i32 %gp_offset1100, 40
  br i1 %fits_in_gp1101, label %vaarg.in_reg.1102, label %vaarg.in_mem.1104

vaarg.in_reg.1102:                                ; preds = %sw.bb.1096
  %744 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1098, i32 0, i32 3
  %reg_save_area1103 = load i8*, i8** %744
  %745 = getelementptr i8, i8* %reg_save_area1103, i32 %gp_offset1100
  %746 = bitcast i8* %745 to i32*
  %747 = add i32 %gp_offset1100, 8
  store i32 %747, i32* %gp_offset_p1099
  br label %vaarg.end.1108

vaarg.in_mem.1104:                                ; preds = %sw.bb.1096
  %overflow_arg_area_p1105 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1098, i32 0, i32 2
  %overflow_arg_area1106 = load i8*, i8** %overflow_arg_area_p1105
  %748 = bitcast i8* %overflow_arg_area1106 to i32*
  %overflow_arg_area.next1107 = getelementptr i8, i8* %overflow_arg_area1106, i32 8
  store i8* %overflow_arg_area.next1107, i8** %overflow_arg_area_p1105
  br label %vaarg.end.1108

vaarg.end.1108:                                   ; preds = %vaarg.in_mem.1104, %vaarg.in_reg.1102
  %vaarg.addr1109 = phi i32* [ %746, %vaarg.in_reg.1102 ], [ %748, %vaarg.in_mem.1104 ]
  %749 = load i32, i32* %vaarg.addr1109
  store i32 %749, i32* %unit1097, align 4
  %750 = load i32, i32* %unit1097, align 4
  %call1110 = call i8* @gimp_unit_get_identifier(i32 %750)
  %arrayidx1111 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 0
  store i8* %call1110, i8** %arrayidx1111, align 8
  %751 = load i32, i32* %unit1097, align 4
  %call1112 = call double @gimp_unit_get_factor(i32 %751)
  %conv1113 = fptrunc double %call1112 to float
  store float %conv1113, float* %factor, align 4
  %752 = load i32, i32* %unit1097, align 4
  %call1114 = call i32 @gimp_unit_get_digits(i32 %752)
  store i32 %call1114, i32* %digits, align 4
  %753 = load i32, i32* %unit1097, align 4
  %call1115 = call i8* @gimp_unit_get_symbol(i32 %753)
  %arrayidx1116 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 1
  store i8* %call1115, i8** %arrayidx1116, align 8
  %754 = load i32, i32* %unit1097, align 4
  %call1117 = call i8* @gimp_unit_get_abbreviation(i32 %754)
  %arrayidx1118 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 2
  store i8* %call1117, i8** %arrayidx1118, align 8
  %755 = load i32, i32* %unit1097, align 4
  %call1119 = call i8* @gimp_unit_get_singular(i32 %755)
  %arrayidx1120 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 3
  store i8* %call1119, i8** %arrayidx1120, align 8
  %756 = load i32, i32* %unit1097, align 4
  %call1121 = call i8* @gimp_unit_get_plural(i32 %756)
  %arrayidx1122 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 4
  store i8* %call1121, i8** %arrayidx1122, align 8
  %arrayidx1123 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 0
  %757 = load i8*, i8** %arrayidx1123, align 8
  %call1124 = call i64 @strlen(i8* %757) #7
  %add1125 = add i64 8, %call1124
  %tobool1126 = icmp ne i64 %add1125, 0
  br i1 %tobool1126, label %cond.true.1127, label %cond.false.1131

cond.true.1127:                                   ; preds = %vaarg.end.1108
  %arrayidx1128 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 0
  %758 = load i8*, i8** %arrayidx1128, align 8
  %call1129 = call i64 @strlen(i8* %758) #7
  %add1130 = add i64 %call1129, 5
  br label %cond.end.1176

cond.false.1131:                                  ; preds = %vaarg.end.1108
  %arrayidx1132 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 1
  %759 = load i8*, i8** %arrayidx1132, align 8
  %call1133 = call i64 @strlen(i8* %759) #7
  %add1134 = add i64 4, %call1133
  %tobool1135 = icmp ne i64 %add1134, 0
  br i1 %tobool1135, label %cond.true.1136, label %cond.false.1140

cond.true.1136:                                   ; preds = %cond.false.1131
  %arrayidx1137 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 1
  %760 = load i8*, i8** %arrayidx1137, align 8
  %call1138 = call i64 @strlen(i8* %760) #7
  %add1139 = add i64 %call1138, 5
  br label %cond.end.1174

cond.false.1140:                                  ; preds = %cond.false.1131
  %arrayidx1141 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 2
  %761 = load i8*, i8** %arrayidx1141, align 8
  %call1142 = call i64 @strlen(i8* %761) #7
  %add1143 = add i64 4, %call1142
  %tobool1144 = icmp ne i64 %add1143, 0
  br i1 %tobool1144, label %cond.true.1145, label %cond.false.1149

cond.true.1145:                                   ; preds = %cond.false.1140
  %arrayidx1146 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 2
  %762 = load i8*, i8** %arrayidx1146, align 8
  %call1147 = call i64 @strlen(i8* %762) #7
  %add1148 = add i64 %call1147, 5
  br label %cond.end.1172

cond.false.1149:                                  ; preds = %cond.false.1140
  %arrayidx1150 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 3
  %763 = load i8*, i8** %arrayidx1150, align 8
  %call1151 = call i64 @strlen(i8* %763) #7
  %add1152 = add i64 4, %call1151
  %tobool1153 = icmp ne i64 %add1152, 0
  br i1 %tobool1153, label %cond.true.1154, label %cond.false.1158

cond.true.1154:                                   ; preds = %cond.false.1149
  %arrayidx1155 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 3
  %764 = load i8*, i8** %arrayidx1155, align 8
  %call1156 = call i64 @strlen(i8* %764) #7
  %add1157 = add i64 %call1156, 5
  br label %cond.end.1170

cond.false.1158:                                  ; preds = %cond.false.1149
  %arrayidx1159 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 4
  %765 = load i8*, i8** %arrayidx1159, align 8
  %call1160 = call i64 @strlen(i8* %765) #7
  %add1161 = add i64 4, %call1160
  %tobool1162 = icmp ne i64 %add1161, 0
  br i1 %tobool1162, label %cond.true.1163, label %cond.false.1167

cond.true.1163:                                   ; preds = %cond.false.1158
  %arrayidx1164 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i64 4
  %766 = load i8*, i8** %arrayidx1164, align 8
  %call1165 = call i64 @strlen(i8* %766) #7
  %add1166 = add i64 %call1165, 5
  br label %cond.end.1168

cond.false.1167:                                  ; preds = %cond.false.1158
  br label %cond.end.1168

cond.end.1168:                                    ; preds = %cond.false.1167, %cond.true.1163
  %cond1169 = phi i64 [ %add1166, %cond.true.1163 ], [ 4, %cond.false.1167 ]
  br label %cond.end.1170

cond.end.1170:                                    ; preds = %cond.end.1168, %cond.true.1154
  %cond1171 = phi i64 [ %add1157, %cond.true.1154 ], [ %cond1169, %cond.end.1168 ]
  br label %cond.end.1172

cond.end.1172:                                    ; preds = %cond.end.1170, %cond.true.1145
  %cond1173 = phi i64 [ %add1148, %cond.true.1145 ], [ %cond1171, %cond.end.1170 ]
  br label %cond.end.1174

cond.end.1174:                                    ; preds = %cond.end.1172, %cond.true.1136
  %cond1175 = phi i64 [ %add1139, %cond.true.1136 ], [ %cond1173, %cond.end.1172 ]
  br label %cond.end.1176

cond.end.1176:                                    ; preds = %cond.end.1174, %cond.true.1127
  %cond1177 = phi i64 [ %add1130, %cond.true.1127 ], [ %cond1175, %cond.end.1174 ]
  %conv1178 = trunc i64 %cond1177 to i32
  store i32 %conv1178, i32* %size, align 4
  br label %do.body.1179

do.body.1179:                                     ; preds = %cond.end.1176
  %767 = load i32, i32* %prop_type.addr, align 4
  store i32 %767, i32* %_prop_int321180, align 4
  br label %do.body.1181

do.body.1181:                                     ; preds = %do.body.1179
  %768 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1182 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %768, i32 0, i32 2
  %769 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1182, align 8
  %call1183 = call i32 @xcf_write_int32(%struct._IO_FILE* %769, i32* %_prop_int321180, i32 1, %struct._GError** %tmp_error)
  %770 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1184 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %770, i32 0, i32 3
  %771 = load i32, i32* %cp1184, align 4
  %add1185 = add i32 %771, %call1183
  store i32 %add1185, i32* %cp1184, align 4
  %772 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1186 = icmp ne %struct._GError* %772, null
  br i1 %tobool1186, label %if.then.1187, label %if.end.1188

if.then.1187:                                     ; preds = %do.body.1181
  %773 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %774 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %773, %struct._GError* %774)
  store i32 0, i32* %retval
  br label %return

if.end.1188:                                      ; preds = %do.body.1181
  br label %do.end.1189

do.end.1189:                                      ; preds = %if.end.1188
  br label %do.end.1190

do.end.1190:                                      ; preds = %do.end.1189
  br label %do.body.1191

do.body.1191:                                     ; preds = %do.end.1190
  %775 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1192 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %775, i32 0, i32 2
  %776 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1192, align 8
  %call1193 = call i32 @xcf_write_int32(%struct._IO_FILE* %776, i32* %size, i32 1, %struct._GError** %tmp_error)
  %777 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1194 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %777, i32 0, i32 3
  %778 = load i32, i32* %cp1194, align 4
  %add1195 = add i32 %778, %call1193
  store i32 %add1195, i32* %cp1194, align 4
  %779 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1196 = icmp ne %struct._GError* %779, null
  br i1 %tobool1196, label %if.then.1197, label %if.end.1198

if.then.1197:                                     ; preds = %do.body.1191
  %780 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %781 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %780, %struct._GError* %781)
  store i32 0, i32* %retval
  br label %return

if.end.1198:                                      ; preds = %do.body.1191
  br label %do.end.1199

do.end.1199:                                      ; preds = %if.end.1198
  br label %do.body.1200

do.body.1200:                                     ; preds = %do.end.1199
  %782 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1201 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %782, i32 0, i32 2
  %783 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1201, align 8
  %call1202 = call i32 @xcf_write_float(%struct._IO_FILE* %783, float* %factor, i32 1, %struct._GError** %tmp_error)
  %784 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1203 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %784, i32 0, i32 3
  %785 = load i32, i32* %cp1203, align 4
  %add1204 = add i32 %785, %call1202
  store i32 %add1204, i32* %cp1203, align 4
  %786 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1205 = icmp ne %struct._GError* %786, null
  br i1 %tobool1205, label %if.then.1206, label %if.end.1207

if.then.1206:                                     ; preds = %do.body.1200
  %787 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %788 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %787, %struct._GError* %788)
  store i32 0, i32* %retval
  br label %return

if.end.1207:                                      ; preds = %do.body.1200
  br label %do.end.1208

do.end.1208:                                      ; preds = %if.end.1207
  br label %do.body.1209

do.body.1209:                                     ; preds = %do.end.1208
  %789 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1210 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %789, i32 0, i32 2
  %790 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1210, align 8
  %call1211 = call i32 @xcf_write_int32(%struct._IO_FILE* %790, i32* %digits, i32 1, %struct._GError** %tmp_error)
  %791 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1212 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %791, i32 0, i32 3
  %792 = load i32, i32* %cp1212, align 4
  %add1213 = add i32 %792, %call1211
  store i32 %add1213, i32* %cp1212, align 4
  %793 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1214 = icmp ne %struct._GError* %793, null
  br i1 %tobool1214, label %if.then.1215, label %if.end.1216

if.then.1215:                                     ; preds = %do.body.1209
  %794 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %795 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %794, %struct._GError* %795)
  store i32 0, i32* %retval
  br label %return

if.end.1216:                                      ; preds = %do.body.1209
  br label %do.end.1217

do.end.1217:                                      ; preds = %if.end.1216
  br label %do.body.1218

do.body.1218:                                     ; preds = %do.end.1217
  %796 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1219 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %796, i32 0, i32 2
  %797 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1219, align 8
  %arraydecay1220 = getelementptr inbounds [5 x i8*], [5 x i8*]* %unit_strings, i32 0, i32 0
  %call1221 = call i32 @xcf_write_string(%struct._IO_FILE* %797, i8** %arraydecay1220, i32 5, %struct._GError** %tmp_error)
  %798 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1222 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %798, i32 0, i32 3
  %799 = load i32, i32* %cp1222, align 4
  %add1223 = add i32 %799, %call1221
  store i32 %add1223, i32* %cp1222, align 4
  %800 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1224 = icmp ne %struct._GError* %800, null
  br i1 %tobool1224, label %if.then.1225, label %if.end.1226

if.then.1225:                                     ; preds = %do.body.1218
  %801 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %802 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %801, %struct._GError* %802)
  store i32 0, i32* %retval
  br label %return

if.end.1226:                                      ; preds = %do.body.1218
  br label %do.end.1227

do.end.1227:                                      ; preds = %if.end.1226
  br label %sw.epilog.1424

sw.bb.1228:                                       ; preds = %entry
  store i32 0, i32* %length1230, align 4
  br label %do.body.1232

do.body.1232:                                     ; preds = %sw.bb.1228
  %803 = load i32, i32* %prop_type.addr, align 4
  store i32 %803, i32* %_prop_int321233, align 4
  br label %do.body.1234

do.body.1234:                                     ; preds = %do.body.1232
  %804 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1235 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %804, i32 0, i32 2
  %805 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1235, align 8
  %call1236 = call i32 @xcf_write_int32(%struct._IO_FILE* %805, i32* %_prop_int321233, i32 1, %struct._GError** %tmp_error)
  %806 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1237 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %806, i32 0, i32 3
  %807 = load i32, i32* %cp1237, align 4
  %add1238 = add i32 %807, %call1236
  store i32 %add1238, i32* %cp1237, align 4
  %808 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1239 = icmp ne %struct._GError* %808, null
  br i1 %tobool1239, label %if.then.1240, label %if.end.1241

if.then.1240:                                     ; preds = %do.body.1234
  %809 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %810 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %809, %struct._GError* %810)
  store i32 0, i32* %retval
  br label %return

if.end.1241:                                      ; preds = %do.body.1234
  br label %do.end.1242

do.end.1242:                                      ; preds = %if.end.1241
  br label %do.end.1243

do.end.1243:                                      ; preds = %do.end.1242
  %811 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1244 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %811, i32 0, i32 3
  %812 = load i32, i32* %cp1244, align 4
  %conv1245 = zext i32 %812 to i64
  store i64 %conv1245, i64* %pos1231, align 8
  br label %do.body.1246

do.body.1246:                                     ; preds = %do.end.1243
  %813 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1247 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %813, i32 0, i32 2
  %814 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1247, align 8
  %call1248 = call i32 @xcf_write_int32(%struct._IO_FILE* %814, i32* %length1230, i32 1, %struct._GError** %tmp_error)
  %815 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1249 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %815, i32 0, i32 3
  %816 = load i32, i32* %cp1249, align 4
  %add1250 = add i32 %816, %call1248
  store i32 %add1250, i32* %cp1249, align 4
  %817 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1251 = icmp ne %struct._GError* %817, null
  br i1 %tobool1251, label %if.then.1252, label %if.end.1253

if.then.1252:                                     ; preds = %do.body.1246
  %818 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %819 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %818, %struct._GError* %819)
  store i32 0, i32* %retval
  br label %return

if.end.1253:                                      ; preds = %do.body.1246
  br label %do.end.1254

do.end.1254:                                      ; preds = %if.end.1253
  %820 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1255 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %820, i32 0, i32 3
  %821 = load i32, i32* %cp1255, align 4
  store i32 %821, i32* %base1229, align 4
  br label %do.body.1256

do.body.1256:                                     ; preds = %do.end.1254
  %822 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %823 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %824 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1257 = call i32 @xcf_save_vectors(%struct._XcfInfo* %822, %struct._GimpImage* %823, %struct._GError** %824)
  %tobool1258 = icmp ne i32 %call1257, 0
  br i1 %tobool1258, label %if.end.1260, label %if.then.1259

if.then.1259:                                     ; preds = %do.body.1256
  store i32 0, i32* %retval
  br label %return

if.end.1260:                                      ; preds = %do.body.1256
  br label %do.end.1261

do.end.1261:                                      ; preds = %if.end.1260
  %825 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1262 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %825, i32 0, i32 3
  %826 = load i32, i32* %cp1262, align 4
  %827 = load i32, i32* %base1229, align 4
  %sub1263 = sub i32 %826, %827
  store i32 %sub1263, i32* %length1230, align 4
  br label %do.body.1264

do.body.1264:                                     ; preds = %do.end.1261
  %828 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %829 = load i64, i64* %pos1231, align 8
  %conv1265 = trunc i64 %829 to i32
  %830 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1266 = call i32 @xcf_seek_pos(%struct._XcfInfo* %828, i32 %conv1265, %struct._GError** %830)
  %tobool1267 = icmp ne i32 %call1266, 0
  br i1 %tobool1267, label %if.end.1269, label %if.then.1268

if.then.1268:                                     ; preds = %do.body.1264
  store i32 0, i32* %retval
  br label %return

if.end.1269:                                      ; preds = %do.body.1264
  br label %do.end.1270

do.end.1270:                                      ; preds = %if.end.1269
  %831 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1271 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %831, i32 0, i32 2
  %832 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1271, align 8
  %call1272 = call i32 @xcf_write_int32(%struct._IO_FILE* %832, i32* %length1230, i32 1, %struct._GError** %tmp_error)
  %833 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1273 = icmp ne %struct._GError* %833, null
  br i1 %tobool1273, label %if.then.1274, label %if.end.1275

if.then.1274:                                     ; preds = %do.end.1270
  %834 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %835 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %834, %struct._GError* %835)
  store i32 0, i32* %retval
  br label %return

if.end.1275:                                      ; preds = %do.end.1270
  br label %do.body.1276

do.body.1276:                                     ; preds = %if.end.1275
  %836 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %837 = load i32, i32* %base1229, align 4
  %838 = load i32, i32* %length1230, align 4
  %add1277 = add i32 %837, %838
  %839 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1278 = call i32 @xcf_seek_pos(%struct._XcfInfo* %836, i32 %add1277, %struct._GError** %839)
  %tobool1279 = icmp ne i32 %call1278, 0
  br i1 %tobool1279, label %if.end.1281, label %if.then.1280

if.then.1280:                                     ; preds = %do.body.1276
  store i32 0, i32* %retval
  br label %return

if.end.1281:                                      ; preds = %do.body.1276
  br label %do.end.1282

do.end.1282:                                      ; preds = %if.end.1281
  br label %sw.epilog.1424

sw.bb.1283:                                       ; preds = %entry
  %arraydecay1284 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p1285 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1284, i32 0, i32 0
  %gp_offset1286 = load i32, i32* %gp_offset_p1285
  %fits_in_gp1287 = icmp ule i32 %gp_offset1286, 40
  br i1 %fits_in_gp1287, label %vaarg.in_reg.1288, label %vaarg.in_mem.1290

vaarg.in_reg.1288:                                ; preds = %sw.bb.1283
  %840 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1284, i32 0, i32 3
  %reg_save_area1289 = load i8*, i8** %840
  %841 = getelementptr i8, i8* %reg_save_area1289, i32 %gp_offset1286
  %842 = bitcast i8* %841 to i32*
  %843 = add i32 %gp_offset1286, 8
  store i32 %843, i32* %gp_offset_p1285
  br label %vaarg.end.1294

vaarg.in_mem.1290:                                ; preds = %sw.bb.1283
  %overflow_arg_area_p1291 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1284, i32 0, i32 2
  %overflow_arg_area1292 = load i8*, i8** %overflow_arg_area_p1291
  %844 = bitcast i8* %overflow_arg_area1292 to i32*
  %overflow_arg_area.next1293 = getelementptr i8, i8* %overflow_arg_area1292, i32 8
  store i8* %overflow_arg_area.next1293, i8** %overflow_arg_area_p1291
  br label %vaarg.end.1294

vaarg.end.1294:                                   ; preds = %vaarg.in_mem.1290, %vaarg.in_reg.1288
  %vaarg.addr1295 = phi i32* [ %842, %vaarg.in_reg.1288 ], [ %844, %vaarg.in_mem.1290 ]
  %845 = load i32, i32* %vaarg.addr1295
  store i32 %845, i32* %flags, align 4
  store i32 4, i32* %size, align 4
  br label %do.body.1296

do.body.1296:                                     ; preds = %vaarg.end.1294
  %846 = load i32, i32* %prop_type.addr, align 4
  store i32 %846, i32* %_prop_int321297, align 4
  br label %do.body.1298

do.body.1298:                                     ; preds = %do.body.1296
  %847 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1299 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %847, i32 0, i32 2
  %848 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1299, align 8
  %call1300 = call i32 @xcf_write_int32(%struct._IO_FILE* %848, i32* %_prop_int321297, i32 1, %struct._GError** %tmp_error)
  %849 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1301 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %849, i32 0, i32 3
  %850 = load i32, i32* %cp1301, align 4
  %add1302 = add i32 %850, %call1300
  store i32 %add1302, i32* %cp1301, align 4
  %851 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1303 = icmp ne %struct._GError* %851, null
  br i1 %tobool1303, label %if.then.1304, label %if.end.1305

if.then.1304:                                     ; preds = %do.body.1298
  %852 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %853 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %852, %struct._GError* %853)
  store i32 0, i32* %retval
  br label %return

if.end.1305:                                      ; preds = %do.body.1298
  br label %do.end.1306

do.end.1306:                                      ; preds = %if.end.1305
  br label %do.end.1307

do.end.1307:                                      ; preds = %do.end.1306
  br label %do.body.1308

do.body.1308:                                     ; preds = %do.end.1307
  %854 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1309 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %854, i32 0, i32 2
  %855 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1309, align 8
  %call1310 = call i32 @xcf_write_int32(%struct._IO_FILE* %855, i32* %size, i32 1, %struct._GError** %tmp_error)
  %856 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1311 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %856, i32 0, i32 3
  %857 = load i32, i32* %cp1311, align 4
  %add1312 = add i32 %857, %call1310
  store i32 %add1312, i32* %cp1311, align 4
  %858 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1313 = icmp ne %struct._GError* %858, null
  br i1 %tobool1313, label %if.then.1314, label %if.end.1315

if.then.1314:                                     ; preds = %do.body.1308
  %859 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %860 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %859, %struct._GError* %860)
  store i32 0, i32* %retval
  br label %return

if.end.1315:                                      ; preds = %do.body.1308
  br label %do.end.1316

do.end.1316:                                      ; preds = %if.end.1315
  br label %do.body.1317

do.body.1317:                                     ; preds = %do.end.1316
  %861 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1318 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %861, i32 0, i32 2
  %862 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1318, align 8
  %call1319 = call i32 @xcf_write_int32(%struct._IO_FILE* %862, i32* %flags, i32 1, %struct._GError** %tmp_error)
  %863 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1320 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %863, i32 0, i32 3
  %864 = load i32, i32* %cp1320, align 4
  %add1321 = add i32 %864, %call1319
  store i32 %add1321, i32* %cp1320, align 4
  %865 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1322 = icmp ne %struct._GError* %865, null
  br i1 %tobool1322, label %if.then.1323, label %if.end.1324

if.then.1323:                                     ; preds = %do.body.1317
  %866 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %867 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %866, %struct._GError* %867)
  store i32 0, i32* %retval
  br label %return

if.end.1324:                                      ; preds = %do.body.1317
  br label %do.end.1325

do.end.1325:                                      ; preds = %if.end.1324
  br label %sw.epilog.1424

sw.bb.1326:                                       ; preds = %entry
  %arraydecay1327 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p1328 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1327, i32 0, i32 0
  %gp_offset1329 = load i32, i32* %gp_offset_p1328
  %fits_in_gp1330 = icmp ule i32 %gp_offset1329, 40
  br i1 %fits_in_gp1330, label %vaarg.in_reg.1331, label %vaarg.in_mem.1333

vaarg.in_reg.1331:                                ; preds = %sw.bb.1326
  %868 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1327, i32 0, i32 3
  %reg_save_area1332 = load i8*, i8** %868
  %869 = getelementptr i8, i8* %reg_save_area1332, i32 %gp_offset1329
  %870 = bitcast i8* %869 to %struct._GList**
  %871 = add i32 %gp_offset1329, 8
  store i32 %871, i32* %gp_offset_p1328
  br label %vaarg.end.1337

vaarg.in_mem.1333:                                ; preds = %sw.bb.1326
  %overflow_arg_area_p1334 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1327, i32 0, i32 2
  %overflow_arg_area1335 = load i8*, i8** %overflow_arg_area_p1334
  %872 = bitcast i8* %overflow_arg_area1335 to %struct._GList**
  %overflow_arg_area.next1336 = getelementptr i8, i8* %overflow_arg_area1335, i32 8
  store i8* %overflow_arg_area.next1336, i8** %overflow_arg_area_p1334
  br label %vaarg.end.1337

vaarg.end.1337:                                   ; preds = %vaarg.in_mem.1333, %vaarg.in_reg.1331
  %vaarg.addr1338 = phi %struct._GList** [ %870, %vaarg.in_reg.1331 ], [ %872, %vaarg.in_mem.1333 ]
  %873 = load %struct._GList*, %struct._GList** %vaarg.addr1338
  store %struct._GList* %873, %struct._GList** %path, align 8
  %874 = load %struct._GList*, %struct._GList** %path, align 8
  %call1339 = call i32 @g_list_length(%struct._GList* %874)
  %mul1340 = mul i32 4, %call1339
  store i32 %mul1340, i32* %size, align 4
  br label %do.body.1341

do.body.1341:                                     ; preds = %vaarg.end.1337
  %875 = load i32, i32* %prop_type.addr, align 4
  store i32 %875, i32* %_prop_int321342, align 4
  br label %do.body.1343

do.body.1343:                                     ; preds = %do.body.1341
  %876 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1344 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %876, i32 0, i32 2
  %877 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1344, align 8
  %call1345 = call i32 @xcf_write_int32(%struct._IO_FILE* %877, i32* %_prop_int321342, i32 1, %struct._GError** %tmp_error)
  %878 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1346 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %878, i32 0, i32 3
  %879 = load i32, i32* %cp1346, align 4
  %add1347 = add i32 %879, %call1345
  store i32 %add1347, i32* %cp1346, align 4
  %880 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1348 = icmp ne %struct._GError* %880, null
  br i1 %tobool1348, label %if.then.1349, label %if.end.1350

if.then.1349:                                     ; preds = %do.body.1343
  %881 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %882 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %881, %struct._GError* %882)
  store i32 0, i32* %retval
  br label %return

if.end.1350:                                      ; preds = %do.body.1343
  br label %do.end.1351

do.end.1351:                                      ; preds = %if.end.1350
  br label %do.end.1352

do.end.1352:                                      ; preds = %do.end.1351
  br label %do.body.1353

do.body.1353:                                     ; preds = %do.end.1352
  %883 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1354 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %883, i32 0, i32 2
  %884 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1354, align 8
  %call1355 = call i32 @xcf_write_int32(%struct._IO_FILE* %884, i32* %size, i32 1, %struct._GError** %tmp_error)
  %885 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1356 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %885, i32 0, i32 3
  %886 = load i32, i32* %cp1356, align 4
  %add1357 = add i32 %886, %call1355
  store i32 %add1357, i32* %cp1356, align 4
  %887 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1358 = icmp ne %struct._GError* %887, null
  br i1 %tobool1358, label %if.then.1359, label %if.end.1360

if.then.1359:                                     ; preds = %do.body.1353
  %888 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %889 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %888, %struct._GError* %889)
  store i32 0, i32* %retval
  br label %return

if.end.1360:                                      ; preds = %do.body.1353
  br label %do.end.1361

do.end.1361:                                      ; preds = %if.end.1360
  br label %while.cond

while.cond:                                       ; preds = %cond.end.1378, %do.end.1361
  %890 = load %struct._GList*, %struct._GList** %path, align 8
  %tobool1362 = icmp ne %struct._GList* %890, null
  br i1 %tobool1362, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %891 = load %struct._GList*, %struct._GList** %path, align 8
  %data1363 = getelementptr inbounds %struct._GList, %struct._GList* %891, i32 0, i32 0
  %892 = load i8*, i8** %data1363, align 8
  %893 = ptrtoint i8* %892 to i64
  %conv1364 = trunc i64 %893 to i32
  store i32 %conv1364, i32* %index, align 4
  br label %do.body.1365

do.body.1365:                                     ; preds = %while.body
  %894 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1366 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %894, i32 0, i32 2
  %895 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1366, align 8
  %call1367 = call i32 @xcf_write_int32(%struct._IO_FILE* %895, i32* %index, i32 1, %struct._GError** %tmp_error)
  %896 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1368 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %896, i32 0, i32 3
  %897 = load i32, i32* %cp1368, align 4
  %add1369 = add i32 %897, %call1367
  store i32 %add1369, i32* %cp1368, align 4
  %898 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1370 = icmp ne %struct._GError* %898, null
  br i1 %tobool1370, label %if.then.1371, label %if.end.1372

if.then.1371:                                     ; preds = %do.body.1365
  %899 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %900 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %899, %struct._GError* %900)
  store i32 0, i32* %retval
  br label %return

if.end.1372:                                      ; preds = %do.body.1365
  br label %do.end.1373

do.end.1373:                                      ; preds = %if.end.1372
  %901 = load %struct._GList*, %struct._GList** %path, align 8
  %tobool1374 = icmp ne %struct._GList* %901, null
  br i1 %tobool1374, label %cond.true.1375, label %cond.false.1377

cond.true.1375:                                   ; preds = %do.end.1373
  %902 = load %struct._GList*, %struct._GList** %path, align 8
  %next1376 = getelementptr inbounds %struct._GList, %struct._GList* %902, i32 0, i32 1
  %903 = load %struct._GList*, %struct._GList** %next1376, align 8
  br label %cond.end.1378

cond.false.1377:                                  ; preds = %do.end.1373
  br label %cond.end.1378

cond.end.1378:                                    ; preds = %cond.false.1377, %cond.true.1375
  %cond1379 = phi %struct._GList* [ %903, %cond.true.1375 ], [ null, %cond.false.1377 ]
  store %struct._GList* %cond1379, %struct._GList** %path, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog.1424

sw.bb.1380:                                       ; preds = %entry
  %arraydecay1382 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p1383 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1382, i32 0, i32 0
  %gp_offset1384 = load i32, i32* %gp_offset_p1383
  %fits_in_gp1385 = icmp ule i32 %gp_offset1384, 40
  br i1 %fits_in_gp1385, label %vaarg.in_reg.1386, label %vaarg.in_mem.1388

vaarg.in_reg.1386:                                ; preds = %sw.bb.1380
  %904 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1382, i32 0, i32 3
  %reg_save_area1387 = load i8*, i8** %904
  %905 = getelementptr i8, i8* %reg_save_area1387, i32 %gp_offset1384
  %906 = bitcast i8* %905 to i32*
  %907 = add i32 %gp_offset1384, 8
  store i32 %907, i32* %gp_offset_p1383
  br label %vaarg.end.1392

vaarg.in_mem.1388:                                ; preds = %sw.bb.1380
  %overflow_arg_area_p1389 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1382, i32 0, i32 2
  %overflow_arg_area1390 = load i8*, i8** %overflow_arg_area_p1389
  %908 = bitcast i8* %overflow_arg_area1390 to i32*
  %overflow_arg_area.next1391 = getelementptr i8, i8* %overflow_arg_area1390, i32 8
  store i8* %overflow_arg_area.next1391, i8** %overflow_arg_area_p1389
  br label %vaarg.end.1392

vaarg.end.1392:                                   ; preds = %vaarg.in_mem.1388, %vaarg.in_reg.1386
  %vaarg.addr1393 = phi i32* [ %906, %vaarg.in_reg.1386 ], [ %908, %vaarg.in_mem.1388 ]
  %909 = load i32, i32* %vaarg.addr1393
  store i32 %909, i32* %flags1381, align 4
  store i32 4, i32* %size, align 4
  br label %do.body.1394

do.body.1394:                                     ; preds = %vaarg.end.1392
  %910 = load i32, i32* %prop_type.addr, align 4
  store i32 %910, i32* %_prop_int321395, align 4
  br label %do.body.1396

do.body.1396:                                     ; preds = %do.body.1394
  %911 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1397 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %911, i32 0, i32 2
  %912 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1397, align 8
  %call1398 = call i32 @xcf_write_int32(%struct._IO_FILE* %912, i32* %_prop_int321395, i32 1, %struct._GError** %tmp_error)
  %913 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1399 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %913, i32 0, i32 3
  %914 = load i32, i32* %cp1399, align 4
  %add1400 = add i32 %914, %call1398
  store i32 %add1400, i32* %cp1399, align 4
  %915 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1401 = icmp ne %struct._GError* %915, null
  br i1 %tobool1401, label %if.then.1402, label %if.end.1403

if.then.1402:                                     ; preds = %do.body.1396
  %916 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %917 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %916, %struct._GError* %917)
  store i32 0, i32* %retval
  br label %return

if.end.1403:                                      ; preds = %do.body.1396
  br label %do.end.1404

do.end.1404:                                      ; preds = %if.end.1403
  br label %do.end.1405

do.end.1405:                                      ; preds = %do.end.1404
  br label %do.body.1406

do.body.1406:                                     ; preds = %do.end.1405
  %918 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1407 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %918, i32 0, i32 2
  %919 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1407, align 8
  %call1408 = call i32 @xcf_write_int32(%struct._IO_FILE* %919, i32* %size, i32 1, %struct._GError** %tmp_error)
  %920 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1409 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %920, i32 0, i32 3
  %921 = load i32, i32* %cp1409, align 4
  %add1410 = add i32 %921, %call1408
  store i32 %add1410, i32* %cp1409, align 4
  %922 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1411 = icmp ne %struct._GError* %922, null
  br i1 %tobool1411, label %if.then.1412, label %if.end.1413

if.then.1412:                                     ; preds = %do.body.1406
  %923 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %924 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %923, %struct._GError* %924)
  store i32 0, i32* %retval
  br label %return

if.end.1413:                                      ; preds = %do.body.1406
  br label %do.end.1414

do.end.1414:                                      ; preds = %if.end.1413
  br label %do.body.1415

do.body.1415:                                     ; preds = %do.end.1414
  %925 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp1416 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %925, i32 0, i32 2
  %926 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1416, align 8
  %call1417 = call i32 @xcf_write_int32(%struct._IO_FILE* %926, i32* %flags1381, i32 1, %struct._GError** %tmp_error)
  %927 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1418 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %927, i32 0, i32 3
  %928 = load i32, i32* %cp1418, align 4
  %add1419 = add i32 %928, %call1417
  store i32 %add1419, i32* %cp1418, align 4
  %929 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool1420 = icmp ne %struct._GError* %929, null
  br i1 %tobool1420, label %if.then.1421, label %if.end.1422

if.then.1421:                                     ; preds = %do.body.1415
  %930 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %931 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %930, %struct._GError* %931)
  store i32 0, i32* %retval
  br label %return

if.end.1422:                                      ; preds = %do.body.1415
  br label %do.end.1423

do.end.1423:                                      ; preds = %if.end.1422
  br label %sw.epilog.1424

sw.epilog.1424:                                   ; preds = %entry, %do.end.1423, %while.end, %do.end.1325, %do.end.1282, %do.end.1227, %do.end.1095, %do.end.1040, %if.end.997, %do.end.930, %do.end.887, %for.end.821, %for.end, %do.end.693, %do.end.649, %do.end.606, %do.end.549, %do.end.506, %do.end.463, %do.end.420, %do.end.377, %do.end.334, %do.end.291, %do.end.248, %do.end.205, %do.end.162, %do.end.121, %do.end.89, %do.end.67, %do.end.12
  %arraydecay1425 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay14251426 = bitcast %struct.__va_list_tag* %arraydecay1425 to i8*
  call void @llvm.va_end(i8* %arraydecay14251426)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.1424, %if.then.1421, %if.then.1412, %if.then.1402, %if.then.1371, %if.then.1359, %if.then.1349, %if.then.1323, %if.then.1314, %if.then.1304, %if.then.1280, %if.then.1274, %if.then.1268, %if.then.1259, %if.then.1252, %if.then.1240, %if.then.1225, %if.then.1215, %if.then.1206, %if.then.1197, %if.then.1187, %if.then.1093, %if.then.1087, %if.then.1081, %if.then.1072, %if.then.1065, %if.then.1053, %if.then.1038, %if.then.1029, %if.then.1019, %if.then.994, %if.then.988, %if.then.982, %if.then.974, %if.then.967, %if.then.955, %if.then.928, %if.then.919, %if.then.909, %if.then.885, %if.then.876, %if.then.867, %if.then.857, %if.then.811, %if.then.802, %if.then.787, %if.then.777, %if.then.750, %if.then.741, %if.then.727, %if.then.717, %if.then.691, %if.then.682, %if.then.672, %if.then.647, %if.then.638, %if.then.628, %if.then.604, %if.then.594, %if.then.584, %if.then.547, %if.then.538, %if.then.528, %if.then.504, %if.then.495, %if.then.485, %if.then.461, %if.then.452, %if.then.442, %if.then.418, %if.then.409, %if.then.399, %if.then.375, %if.then.366, %if.then.356, %if.then.332, %if.then.323, %if.then.313, %if.then.289, %if.then.280, %if.then.270, %if.then.246, %if.then.237, %if.then.227, %if.then.203, %if.then.194, %if.then.184, %if.then.160, %if.then.151, %if.then.141, %if.then.119, %if.then.109, %if.then.99, %if.then.87, %if.then.77, %if.then.65, %if.then.55, %if.then.46, %if.then.36, %if.then.10, %if.then
  %932 = load i32, i32* %retval
  ret i32 %932
}

declare i32 @gimp_image_get_colormap_size(%struct._GimpImage*) #1

declare %struct._GList* @gimp_image_get_guides(%struct._GimpImage*) #1

declare %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage*) #1

declare i32 @gimp_image_get_tattoo_state(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_unit_get_number_of_built_in_units() #2

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #1

declare %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage*) #1

declare i32 @gimp_vectors_compat_is_compatible(%struct._GimpImage*) #1

declare %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage*) #1

declare %struct._GimpParasite* @gimp_grid_to_parasite(%struct._GimpGrid*) #1

declare void @gimp_parasite_list_add(%struct._GimpParasiteList*, %struct._GimpParasite*) #1

declare i32 @gimp_parasite_list_length(%struct._GimpParasiteList*) #1

declare void @gimp_parasite_list_remove(%struct._GimpParasiteList*, i8*) #1

declare i8* @gimp_parasite_name(%struct._GimpParasite*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare i32 @gimp_guide_get_position(%struct._GimpGuide*) #1

declare i32 @gimp_guide_get_orientation(%struct._GimpGuide*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i32 @xcf_write_float(%struct._IO_FILE*, float*, i32, %struct._GError**) #1

declare i32 @gimp_parasite_list_persistent_length(%struct._GimpParasiteList*) #1

; Function Attrs: nounwind uwtable
define internal i32 @xcf_save_parasite_list(%struct._XcfInfo* %info, %struct._GimpParasiteList* %list, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %list.addr = alloca %struct._GimpParasiteList*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %data = alloca %struct.XcfParasiteData, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpParasiteList* %list, %struct._GimpParasiteList** %list.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %info1 = getelementptr inbounds %struct.XcfParasiteData, %struct.XcfParasiteData* %data, i32 0, i32 0
  store %struct._XcfInfo* %0, %struct._XcfInfo** %info1, align 8
  %error2 = getelementptr inbounds %struct.XcfParasiteData, %struct.XcfParasiteData* %data, i32 0, i32 1
  store %struct._GError* null, %struct._GError** %error2, align 8
  %1 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %2 = bitcast %struct.XcfParasiteData* %data to i8*
  call void @gimp_parasite_list_foreach(%struct._GimpParasiteList* %1, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct._GimpParasite*, %struct.XcfParasiteData*)* @xcf_save_parasite_func to void (i8*, i8*, i8*)*), i8* %2)
  %error3 = getelementptr inbounds %struct.XcfParasiteData, %struct.XcfParasiteData* %data, i32 0, i32 1
  %3 = load %struct._GError*, %struct._GError** %error3, align 8
  %tobool = icmp ne %struct._GError* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %error4 = getelementptr inbounds %struct.XcfParasiteData, %struct.XcfParasiteData* %data, i32 0, i32 1
  %5 = load %struct._GError*, %struct._GError** %error4, align 8
  call void @g_propagate_error(%struct._GError** %4, %struct._GError* %5)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_save_old_paths(%struct._XcfInfo* %info, %struct._GimpImage* %image, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %active_vectors = alloca %struct._GimpVectors*, align 8
  %num_paths = alloca i32, align 4
  %active_index = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %tmp_error = alloca %struct._GError*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %name = alloca i8*, align 8
  %linked = alloca i32, align 4
  %state = alloca i8, align 1
  %version = alloca i32, align 4
  %pathtype = alloca i32, align 4
  %tattoo = alloca i32, align 4
  %points = alloca %struct._GimpVectorsCompatPoint*, align 8
  %num_points = alloca i32, align 4
  %closed = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %active_index, align 4
  store %struct._GError* null, %struct._GError** %tmp_error, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage* %0)
  %call1 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %call)
  store i32 %call1, i32* %num_paths, align 4
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call2 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %1)
  store %struct._GimpVectors* %call2, %struct._GimpVectors** %active_vectors, align 8
  %2 = load %struct._GimpVectors*, %struct._GimpVectors** %active_vectors, align 8
  %tobool = icmp ne %struct._GimpVectors* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call3 = call %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage* %3)
  %4 = load %struct._GimpVectors*, %struct._GimpVectors** %active_vectors, align 8
  %5 = bitcast %struct._GimpVectors* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_object_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpObject*
  %call6 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %call3, %struct._GimpObject* %6)
  store i32 %call6, i32* %active_index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %7, i32 0, i32 2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call7 = call i32 @xcf_write_int32(%struct._IO_FILE* %8, i32* %active_index, i32 1, %struct._GError** %tmp_error)
  %9 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %9, i32 0, i32 3
  %10 = load i32, i32* %cp, align 4
  %add = add i32 %10, %call7
  store i32 %add, i32* %cp, align 4
  %11 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool8 = icmp ne %struct._GError* %11, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.body
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %12, %struct._GError* %13)
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %14 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp12 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %14, i32 0, i32 2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp12, align 8
  %call13 = call i32 @xcf_write_int32(%struct._IO_FILE* %15, i32* %num_paths, i32 1, %struct._GError** %tmp_error)
  %16 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp14 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %16, i32 0, i32 3
  %17 = load i32, i32* %cp14, align 4
  %add15 = add i32 %17, %call13
  store i32 %add15, i32* %cp14, align 4
  %18 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool16 = icmp ne %struct._GError* %18, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.body.11
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %20 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %19, %struct._GError* %20)
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %do.body.11
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call20 = call %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage* %21)
  store %struct._GList* %call20, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.19
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool21 = icmp ne %struct._GList* %22, null
  br i1 %tobool21, label %for.body, label %for.end.144

for.body:                                         ; preds = %for.cond
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 0
  %24 = load i8*, i8** %data, align 8
  %25 = bitcast i8* %24 to %struct._GimpVectors*
  store %struct._GimpVectors* %25, %struct._GimpVectors** %vectors, align 8
  %26 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call22 = call %struct._GimpVectorsCompatPoint* @gimp_vectors_compat_get_points(%struct._GimpVectors* %26, i32* %num_points, i32* %closed)
  store %struct._GimpVectorsCompatPoint* %call22, %struct._GimpVectorsCompatPoint** %points, align 8
  %27 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %28 = bitcast %struct._GimpVectors* %27 to i8*
  %call23 = call i8* @gimp_object_get_name(i8* %28)
  store i8* %call23, i8** %name, align 8
  %29 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %30 = bitcast %struct._GimpVectors* %29 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_item_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call24)
  %31 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpItem*
  %call26 = call i32 @gimp_item_get_linked(%struct._GimpItem* %31)
  store i32 %call26, i32* %linked, align 4
  %32 = load i32, i32* %closed, align 4
  %tobool27 = icmp ne i32 %32, 0
  %cond = select i1 %tobool27, i32 4, i32 2
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* %state, align 1
  store i32 3, i32* %version, align 4
  store i32 1, i32* %pathtype, align 4
  %33 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %34 = bitcast %struct._GimpVectors* %33 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call28)
  %35 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpItem*
  %call30 = call i32 @gimp_item_get_tattoo(%struct._GimpItem* %35)
  store i32 %call30, i32* %tattoo, align 4
  br label %do.body.31

do.body.31:                                       ; preds = %for.body
  %36 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp32 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %36, i32 0, i32 2
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp32, align 8
  %call33 = call i32 @xcf_write_string(%struct._IO_FILE* %37, i8** %name, i32 1, %struct._GError** %tmp_error)
  %38 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp34 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %38, i32 0, i32 3
  %39 = load i32, i32* %cp34, align 4
  %add35 = add i32 %39, %call33
  store i32 %add35, i32* %cp34, align 4
  %40 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool36 = icmp ne %struct._GError* %40, null
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %do.body.31
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %42 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %41, %struct._GError* %42)
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %do.body.31
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %43 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp41 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %43, i32 0, i32 2
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp41, align 8
  %call42 = call i32 @xcf_write_int32(%struct._IO_FILE* %44, i32* %linked, i32 1, %struct._GError** %tmp_error)
  %45 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp43 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %45, i32 0, i32 3
  %46 = load i32, i32* %cp43, align 4
  %add44 = add i32 %46, %call42
  store i32 %add44, i32* %cp43, align 4
  %47 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool45 = icmp ne %struct._GError* %47, null
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %do.body.40
  %48 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %49 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %48, %struct._GError* %49)
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %do.body.40
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %50 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp50 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %50, i32 0, i32 2
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fp50, align 8
  %call51 = call i32 @xcf_write_int8(%struct._IO_FILE* %51, i8* %state, i32 1, %struct._GError** %tmp_error)
  %52 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp52 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %52, i32 0, i32 3
  %53 = load i32, i32* %cp52, align 4
  %add53 = add i32 %53, %call51
  store i32 %add53, i32* %cp52, align 4
  %54 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool54 = icmp ne %struct._GError* %54, null
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %do.body.49
  %55 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %56 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %55, %struct._GError* %56)
  store i32 0, i32* %retval
  br label %return

if.end.56:                                        ; preds = %do.body.49
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  br label %do.body.58

do.body.58:                                       ; preds = %do.end.57
  %57 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp59 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %57, i32 0, i32 2
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp59, align 8
  %call60 = call i32 @xcf_write_int32(%struct._IO_FILE* %58, i32* %closed, i32 1, %struct._GError** %tmp_error)
  %59 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp61 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %59, i32 0, i32 3
  %60 = load i32, i32* %cp61, align 4
  %add62 = add i32 %60, %call60
  store i32 %add62, i32* %cp61, align 4
  %61 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool63 = icmp ne %struct._GError* %61, null
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %do.body.58
  %62 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %63 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %62, %struct._GError* %63)
  store i32 0, i32* %retval
  br label %return

if.end.65:                                        ; preds = %do.body.58
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %do.body.67

do.body.67:                                       ; preds = %do.end.66
  %64 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp68 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %64, i32 0, i32 2
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fp68, align 8
  %call69 = call i32 @xcf_write_int32(%struct._IO_FILE* %65, i32* %num_points, i32 1, %struct._GError** %tmp_error)
  %66 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp70 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %66, i32 0, i32 3
  %67 = load i32, i32* %cp70, align 4
  %add71 = add i32 %67, %call69
  store i32 %add71, i32* %cp70, align 4
  %68 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool72 = icmp ne %struct._GError* %68, null
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %do.body.67
  %69 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %70 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %69, %struct._GError* %70)
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %do.body.67
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %71 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp77 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %71, i32 0, i32 2
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %fp77, align 8
  %call78 = call i32 @xcf_write_int32(%struct._IO_FILE* %72, i32* %version, i32 1, %struct._GError** %tmp_error)
  %73 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp79 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %73, i32 0, i32 3
  %74 = load i32, i32* %cp79, align 4
  %add80 = add i32 %74, %call78
  store i32 %add80, i32* %cp79, align 4
  %75 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool81 = icmp ne %struct._GError* %75, null
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %do.body.76
  %76 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %77 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %76, %struct._GError* %77)
  store i32 0, i32* %retval
  br label %return

if.end.83:                                        ; preds = %do.body.76
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  br label %do.body.85

do.body.85:                                       ; preds = %do.end.84
  %78 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp86 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %78, i32 0, i32 2
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %fp86, align 8
  %call87 = call i32 @xcf_write_int32(%struct._IO_FILE* %79, i32* %pathtype, i32 1, %struct._GError** %tmp_error)
  %80 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp88 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %80, i32 0, i32 3
  %81 = load i32, i32* %cp88, align 4
  %add89 = add i32 %81, %call87
  store i32 %add89, i32* %cp88, align 4
  %82 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool90 = icmp ne %struct._GError* %82, null
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %do.body.85
  %83 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %84 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %83, %struct._GError* %84)
  store i32 0, i32* %retval
  br label %return

if.end.92:                                        ; preds = %do.body.85
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.92
  br label %do.body.94

do.body.94:                                       ; preds = %do.end.93
  %85 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp95 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %85, i32 0, i32 2
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %fp95, align 8
  %call96 = call i32 @xcf_write_int32(%struct._IO_FILE* %86, i32* %tattoo, i32 1, %struct._GError** %tmp_error)
  %87 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp97 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %87, i32 0, i32 3
  %88 = load i32, i32* %cp97, align 4
  %add98 = add i32 %88, %call96
  store i32 %add98, i32* %cp97, align 4
  %89 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool99 = icmp ne %struct._GError* %89, null
  br i1 %tobool99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %do.body.94
  %90 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %91 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %90, %struct._GError* %91)
  store i32 0, i32* %retval
  br label %return

if.end.101:                                       ; preds = %do.body.94
  br label %do.end.102

do.end.102:                                       ; preds = %if.end.101
  store i32 0, i32* %i, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc, %do.end.102
  %92 = load i32, i32* %i, align 4
  %93 = load i32, i32* %num_points, align 4
  %cmp = icmp ult i32 %92, %93
  br i1 %cmp, label %for.body.105, label %for.end

for.body.105:                                     ; preds = %for.cond.103
  %94 = load i32, i32* %i, align 4
  %idxprom = sext i32 %94 to i64
  %95 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %95, i64 %idxprom
  %x106 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx, i32 0, i32 1
  %96 = load double, double* %x106, align 8
  %conv107 = fptrunc double %96 to float
  store float %conv107, float* %x, align 4
  %97 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %97 to i64
  %98 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx109 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %98, i64 %idxprom108
  %y110 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx109, i32 0, i32 2
  %99 = load double, double* %y110, align 8
  %conv111 = fptrunc double %99 to float
  store float %conv111, float* %y, align 4
  br label %do.body.112

do.body.112:                                      ; preds = %for.body.105
  %100 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp113 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %100, i32 0, i32 2
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %fp113, align 8
  %102 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %102 to i64
  %103 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %arrayidx115 = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %103, i64 %idxprom114
  %type = getelementptr inbounds %struct._GimpVectorsCompatPoint, %struct._GimpVectorsCompatPoint* %arrayidx115, i32 0, i32 0
  %call116 = call i32 @xcf_write_int32(%struct._IO_FILE* %101, i32* %type, i32 1, %struct._GError** %tmp_error)
  %104 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp117 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %104, i32 0, i32 3
  %105 = load i32, i32* %cp117, align 4
  %add118 = add i32 %105, %call116
  store i32 %add118, i32* %cp117, align 4
  %106 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool119 = icmp ne %struct._GError* %106, null
  br i1 %tobool119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %do.body.112
  %107 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %108 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %107, %struct._GError* %108)
  store i32 0, i32* %retval
  br label %return

if.end.121:                                       ; preds = %do.body.112
  br label %do.end.122

do.end.122:                                       ; preds = %if.end.121
  br label %do.body.123

do.body.123:                                      ; preds = %do.end.122
  %109 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp124 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %109, i32 0, i32 2
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %fp124, align 8
  %call125 = call i32 @xcf_write_float(%struct._IO_FILE* %110, float* %x, i32 1, %struct._GError** %tmp_error)
  %111 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp126 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %111, i32 0, i32 3
  %112 = load i32, i32* %cp126, align 4
  %add127 = add i32 %112, %call125
  store i32 %add127, i32* %cp126, align 4
  %113 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool128 = icmp ne %struct._GError* %113, null
  br i1 %tobool128, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %do.body.123
  %114 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %115 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %114, %struct._GError* %115)
  store i32 0, i32* %retval
  br label %return

if.end.130:                                       ; preds = %do.body.123
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  br label %do.body.132

do.body.132:                                      ; preds = %do.end.131
  %116 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp133 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %116, i32 0, i32 2
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %fp133, align 8
  %call134 = call i32 @xcf_write_float(%struct._IO_FILE* %117, float* %y, i32 1, %struct._GError** %tmp_error)
  %118 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp135 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %118, i32 0, i32 3
  %119 = load i32, i32* %cp135, align 4
  %add136 = add i32 %119, %call134
  store i32 %add136, i32* %cp135, align 4
  %120 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool137 = icmp ne %struct._GError* %120, null
  br i1 %tobool137, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %do.body.132
  %121 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %122 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %121, %struct._GError* %122)
  store i32 0, i32* %retval
  br label %return

if.end.139:                                       ; preds = %do.body.132
  br label %do.end.140

do.end.140:                                       ; preds = %if.end.139
  br label %for.inc

for.inc:                                          ; preds = %do.end.140
  %123 = load i32, i32* %i, align 4
  %inc = add nsw i32 %123, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.103

for.end:                                          ; preds = %for.cond.103
  %124 = load %struct._GimpVectorsCompatPoint*, %struct._GimpVectorsCompatPoint** %points, align 8
  %125 = bitcast %struct._GimpVectorsCompatPoint* %124 to i8*
  call void @g_free(i8* %125)
  br label %for.inc.141

for.inc.141:                                      ; preds = %for.end
  %126 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool142 = icmp ne %struct._GList* %126, null
  br i1 %tobool142, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.141
  %127 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %127, i32 0, i32 1
  %128 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.141
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond143 = phi %struct._GList* [ %128, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond143, %struct._GList** %list, align 8
  br label %for.cond

for.end.144:                                      ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.144, %if.then.138, %if.then.129, %if.then.120, %if.then.100, %if.then.91, %if.then.82, %if.then.73, %if.then.64, %if.then.55, %if.then.46, %if.then.37, %if.then.17, %if.then.9
  %129 = load i32, i32* %retval
  ret i32 %129
}

declare i8* @gimp_unit_get_identifier(i32) #1

declare double @gimp_unit_get_factor(i32) #1

declare i32 @gimp_unit_get_digits(i32) #1

declare i8* @gimp_unit_get_symbol(i32) #1

declare i8* @gimp_unit_get_abbreviation(i32) #1

declare i8* @gimp_unit_get_singular(i32) #1

declare i8* @gimp_unit_get_plural(i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @xcf_write_string(%struct._IO_FILE*, i8**, i32, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal i32 @xcf_save_vectors(%struct._XcfInfo* %info, %struct._GimpImage* %image, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %active_vectors = alloca %struct._GimpVectors*, align 8
  %version = alloca i32, align 4
  %active_index = alloca i32, align 4
  %num_paths = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %stroke_list = alloca %struct._GList*, align 8
  %tmp_error = alloca %struct._GError*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %parasites = alloca %struct._GimpParasiteList*, align 8
  %name = alloca i8*, align 8
  %tattoo = alloca i32, align 4
  %visible = alloca i32, align 4
  %linked = alloca i32, align 4
  %num_parasites = alloca i32, align 4
  %num_strokes = alloca i32, align 4
  %stroke = alloca %struct._GimpStroke*, align 8
  %stroke_type = alloca i32, align 4
  %closed = alloca i32, align 4
  %num_axes = alloca i32, align 4
  %control_points = alloca %struct._GArray*, align 8
  %i = alloca i32, align 4
  %type = alloca i32, align 4
  %coords = alloca [6 x float], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %anchor = alloca %struct._GimpAnchor*, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %version, align 4
  store i32 0, i32* %active_index, align 4
  store %struct._GError* null, %struct._GError** %tmp_error, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %0)
  store %struct._GimpVectors* %call, %struct._GimpVectors** %active_vectors, align 8
  %1 = load %struct._GimpVectors*, %struct._GimpVectors** %active_vectors, align 8
  %tobool = icmp ne %struct._GimpVectors* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call1 = call %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage* %2)
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %active_vectors, align 8
  %4 = bitcast %struct._GimpVectors* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_object_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpObject*
  %call4 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %call1, %struct._GimpObject* %5)
  store i32 %call4, i32* %active_index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call5 = call %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage* %6)
  %call6 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %call5)
  store i32 %call6, i32* %num_paths, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %7, i32 0, i32 2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call7 = call i32 @xcf_write_int32(%struct._IO_FILE* %8, i32* %version, i32 1, %struct._GError** %tmp_error)
  %9 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %9, i32 0, i32 3
  %10 = load i32, i32* %cp, align 4
  %add = add i32 %10, %call7
  store i32 %add, i32* %cp, align 4
  %11 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool8 = icmp ne %struct._GError* %11, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.body
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %12, %struct._GError* %13)
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %14 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp12 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %14, i32 0, i32 2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp12, align 8
  %call13 = call i32 @xcf_write_int32(%struct._IO_FILE* %15, i32* %active_index, i32 1, %struct._GError** %tmp_error)
  %16 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp14 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %16, i32 0, i32 3
  %17 = load i32, i32* %cp14, align 4
  %add15 = add i32 %17, %call13
  store i32 %add15, i32* %cp14, align 4
  %18 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool16 = icmp ne %struct._GError* %18, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.body.11
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %20 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %19, %struct._GError* %20)
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %do.body.11
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %21 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp21 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %21, i32 0, i32 2
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp21, align 8
  %call22 = call i32 @xcf_write_int32(%struct._IO_FILE* %22, i32* %num_paths, i32 1, %struct._GError** %tmp_error)
  %23 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp23 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %23, i32 0, i32 3
  %24 = load i32, i32* %cp23, align 4
  %add24 = add i32 %24, %call22
  store i32 %add24, i32* %cp23, align 4
  %25 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool25 = icmp ne %struct._GError* %25, null
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %do.body.20
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %27 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %26, %struct._GError* %27)
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %do.body.20
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call29 = call %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage* %28)
  store %struct._GList* %call29, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.213, %do.end.28
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool30 = icmp ne %struct._GList* %29, null
  br i1 %tobool30, label %for.body, label %for.end.215

for.body:                                         ; preds = %for.cond
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %30, i32 0, i32 0
  %31 = load i8*, i8** %data, align 8
  %32 = bitcast i8* %31 to %struct._GimpVectors*
  store %struct._GimpVectors* %32, %struct._GimpVectors** %vectors, align 8
  %33 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %34 = bitcast %struct._GimpVectors* %33 to i8*
  %call31 = call i8* @gimp_object_get_name(i8* %34)
  store i8* %call31, i8** %name, align 8
  %35 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %36 = bitcast %struct._GimpVectors* %35 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_item_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call32)
  %37 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpItem*
  %call34 = call i32 @gimp_item_get_visible(%struct._GimpItem* %37)
  store i32 %call34, i32* %visible, align 4
  %38 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %39 = bitcast %struct._GimpVectors* %38 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_item_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call35)
  %40 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpItem*
  %call37 = call i32 @gimp_item_get_linked(%struct._GimpItem* %40)
  store i32 %call37, i32* %linked, align 4
  %41 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %42 = bitcast %struct._GimpVectors* %41 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_item_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call38)
  %43 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpItem*
  %call40 = call i32 @gimp_item_get_tattoo(%struct._GimpItem* %43)
  store i32 %call40, i32* %tattoo, align 4
  %44 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %45 = bitcast %struct._GimpVectors* %44 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_item_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call41)
  %46 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpItem*
  %call43 = call %struct._GimpParasiteList* @gimp_item_get_parasites(%struct._GimpItem* %46)
  store %struct._GimpParasiteList* %call43, %struct._GimpParasiteList** %parasites, align 8
  %47 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %call44 = call i32 @gimp_parasite_list_persistent_length(%struct._GimpParasiteList* %47)
  store i32 %call44, i32* %num_parasites, align 4
  %48 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %48, i32 0, i32 1
  %49 = load %struct._GList*, %struct._GList** %strokes, align 8
  %call45 = call i32 @g_list_length(%struct._GList* %49)
  store i32 %call45, i32* %num_strokes, align 4
  br label %do.body.46

do.body.46:                                       ; preds = %for.body
  %50 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp47 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %50, i32 0, i32 2
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fp47, align 8
  %call48 = call i32 @xcf_write_string(%struct._IO_FILE* %51, i8** %name, i32 1, %struct._GError** %tmp_error)
  %52 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp49 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %52, i32 0, i32 3
  %53 = load i32, i32* %cp49, align 4
  %add50 = add i32 %53, %call48
  store i32 %add50, i32* %cp49, align 4
  %54 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool51 = icmp ne %struct._GError* %54, null
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %do.body.46
  %55 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %56 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %55, %struct._GError* %56)
  store i32 0, i32* %retval
  br label %return

if.end.53:                                        ; preds = %do.body.46
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  %57 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp56 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %57, i32 0, i32 2
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp56, align 8
  %call57 = call i32 @xcf_write_int32(%struct._IO_FILE* %58, i32* %tattoo, i32 1, %struct._GError** %tmp_error)
  %59 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp58 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %59, i32 0, i32 3
  %60 = load i32, i32* %cp58, align 4
  %add59 = add i32 %60, %call57
  store i32 %add59, i32* %cp58, align 4
  %61 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool60 = icmp ne %struct._GError* %61, null
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %do.body.55
  %62 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %63 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %62, %struct._GError* %63)
  store i32 0, i32* %retval
  br label %return

if.end.62:                                        ; preds = %do.body.55
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  br label %do.body.64

do.body.64:                                       ; preds = %do.end.63
  %64 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp65 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %64, i32 0, i32 2
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fp65, align 8
  %call66 = call i32 @xcf_write_int32(%struct._IO_FILE* %65, i32* %visible, i32 1, %struct._GError** %tmp_error)
  %66 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp67 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %66, i32 0, i32 3
  %67 = load i32, i32* %cp67, align 4
  %add68 = add i32 %67, %call66
  store i32 %add68, i32* %cp67, align 4
  %68 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool69 = icmp ne %struct._GError* %68, null
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %do.body.64
  %69 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %70 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %69, %struct._GError* %70)
  store i32 0, i32* %retval
  br label %return

if.end.71:                                        ; preds = %do.body.64
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  br label %do.body.73

do.body.73:                                       ; preds = %do.end.72
  %71 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp74 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %71, i32 0, i32 2
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %fp74, align 8
  %call75 = call i32 @xcf_write_int32(%struct._IO_FILE* %72, i32* %linked, i32 1, %struct._GError** %tmp_error)
  %73 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp76 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %73, i32 0, i32 3
  %74 = load i32, i32* %cp76, align 4
  %add77 = add i32 %74, %call75
  store i32 %add77, i32* %cp76, align 4
  %75 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool78 = icmp ne %struct._GError* %75, null
  br i1 %tobool78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %do.body.73
  %76 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %77 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %76, %struct._GError* %77)
  store i32 0, i32* %retval
  br label %return

if.end.80:                                        ; preds = %do.body.73
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  br label %do.body.82

do.body.82:                                       ; preds = %do.end.81
  %78 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp83 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %78, i32 0, i32 2
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %fp83, align 8
  %call84 = call i32 @xcf_write_int32(%struct._IO_FILE* %79, i32* %num_parasites, i32 1, %struct._GError** %tmp_error)
  %80 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp85 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %80, i32 0, i32 3
  %81 = load i32, i32* %cp85, align 4
  %add86 = add i32 %81, %call84
  store i32 %add86, i32* %cp85, align 4
  %82 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool87 = icmp ne %struct._GError* %82, null
  br i1 %tobool87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %do.body.82
  %83 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %84 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %83, %struct._GError* %84)
  store i32 0, i32* %retval
  br label %return

if.end.89:                                        ; preds = %do.body.82
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  br label %do.body.91

do.body.91:                                       ; preds = %do.end.90
  %85 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp92 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %85, i32 0, i32 2
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %fp92, align 8
  %call93 = call i32 @xcf_write_int32(%struct._IO_FILE* %86, i32* %num_strokes, i32 1, %struct._GError** %tmp_error)
  %87 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp94 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %87, i32 0, i32 3
  %88 = load i32, i32* %cp94, align 4
  %add95 = add i32 %88, %call93
  store i32 %add95, i32* %cp94, align 4
  %89 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool96 = icmp ne %struct._GError* %89, null
  br i1 %tobool96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %do.body.91
  %90 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %91 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %90, %struct._GError* %91)
  store i32 0, i32* %retval
  br label %return

if.end.98:                                        ; preds = %do.body.91
  br label %do.end.99

do.end.99:                                        ; preds = %if.end.98
  br label %do.body.100

do.body.100:                                      ; preds = %do.end.99
  %92 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %93 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %94 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call101 = call i32 @xcf_save_parasite_list(%struct._XcfInfo* %92, %struct._GimpParasiteList* %93, %struct._GError** %94)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.end.104, label %if.then.103

if.then.103:                                      ; preds = %do.body.100
  store i32 0, i32* %retval
  br label %return

if.end.104:                                       ; preds = %do.body.100
  br label %do.end.105

do.end.105:                                       ; preds = %if.end.104
  %95 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %strokes106 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %95, i32 0, i32 1
  %96 = load %struct._GList*, %struct._GList** %strokes106, align 8
  %call107 = call %struct._GList* @g_list_first(%struct._GList* %96)
  store %struct._GList* %call107, %struct._GList** %stroke_list, align 8
  br label %for.cond.108

for.cond.108:                                     ; preds = %cond.end, %do.end.105
  %97 = load %struct._GList*, %struct._GList** %stroke_list, align 8
  %tobool109 = icmp ne %struct._GList* %97, null
  br i1 %tobool109, label %for.body.110, label %for.end.207

for.body.110:                                     ; preds = %for.cond.108
  %98 = load %struct._GList*, %struct._GList** %stroke_list, align 8
  %data111 = getelementptr inbounds %struct._GList, %struct._GList* %98, i32 0, i32 0
  %99 = load i8*, i8** %data111, align 8
  %100 = bitcast i8* %99 to %struct._GimpStroke*
  store %struct._GimpStroke* %100, %struct._GimpStroke** %stroke, align 8
  %101 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %102 = bitcast %struct._GimpStroke* %101 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %102, %struct._GTypeInstance** %__inst, align 8
  %call112 = call i64 @gimp_bezier_stroke_get_type() #6
  store i64 %call112, i64* %__t, align 8
  %103 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool113 = icmp ne %struct._GTypeInstance* %103, null
  br i1 %tobool113, label %if.else, label %if.then.114

if.then.114:                                      ; preds = %for.body.110
  store i32 0, i32* %__r, align 4
  br label %if.end.121

if.else:                                          ; preds = %for.body.110
  %104 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %104, i32 0, i32 0
  %105 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool115 = icmp ne %struct._GTypeClass* %105, null
  br i1 %tobool115, label %land.lhs.true, label %if.else.118

land.lhs.true:                                    ; preds = %if.else
  %106 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class116 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %106, i32 0, i32 0
  %107 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class116, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %107, i32 0, i32 0
  %108 = load i64, i64* %g_type, align 8
  %109 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %108, %109
  br i1 %cmp, label %if.then.117, label %if.else.118

if.then.117:                                      ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.120

if.else.118:                                      ; preds = %land.lhs.true, %if.else
  %110 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %111 = load i64, i64* %__t, align 8
  %call119 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %110, i64 %111) #7
  store i32 %call119, i32* %__r, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.118, %if.then.117
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.114
  %112 = load i32, i32* %__r, align 4
  store i32 %112, i32* %tmp
  %113 = load i32, i32* %tmp
  %tobool122 = icmp ne i32 %113, 0
  br i1 %tobool122, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %if.end.121
  store i32 1, i32* %stroke_type, align 4
  store i32 2, i32* %num_axes, align 4
  br label %if.end.125

if.else.124:                                      ; preds = %if.end.121
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0))
  br label %for.inc.205

if.end.125:                                       ; preds = %if.then.123
  %114 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call126 = call %struct._GArray* @gimp_stroke_control_points_get(%struct._GimpStroke* %114, i32* %closed)
  store %struct._GArray* %call126, %struct._GArray** %control_points, align 8
  br label %do.body.127

do.body.127:                                      ; preds = %if.end.125
  %115 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp128 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %115, i32 0, i32 2
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %fp128, align 8
  %call129 = call i32 @xcf_write_int32(%struct._IO_FILE* %116, i32* %stroke_type, i32 1, %struct._GError** %tmp_error)
  %117 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp130 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %117, i32 0, i32 3
  %118 = load i32, i32* %cp130, align 4
  %add131 = add i32 %118, %call129
  store i32 %add131, i32* %cp130, align 4
  %119 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool132 = icmp ne %struct._GError* %119, null
  br i1 %tobool132, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %do.body.127
  %120 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %121 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %120, %struct._GError* %121)
  store i32 0, i32* %retval
  br label %return

if.end.134:                                       ; preds = %do.body.127
  br label %do.end.135

do.end.135:                                       ; preds = %if.end.134
  br label %do.body.136

do.body.136:                                      ; preds = %do.end.135
  %122 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp137 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %122, i32 0, i32 2
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %fp137, align 8
  %call138 = call i32 @xcf_write_int32(%struct._IO_FILE* %123, i32* %closed, i32 1, %struct._GError** %tmp_error)
  %124 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp139 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %124, i32 0, i32 3
  %125 = load i32, i32* %cp139, align 4
  %add140 = add i32 %125, %call138
  store i32 %add140, i32* %cp139, align 4
  %126 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool141 = icmp ne %struct._GError* %126, null
  br i1 %tobool141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %do.body.136
  %127 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %128 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %127, %struct._GError* %128)
  store i32 0, i32* %retval
  br label %return

if.end.143:                                       ; preds = %do.body.136
  br label %do.end.144

do.end.144:                                       ; preds = %if.end.143
  br label %do.body.145

do.body.145:                                      ; preds = %do.end.144
  %129 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp146 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %129, i32 0, i32 2
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %fp146, align 8
  %call147 = call i32 @xcf_write_int32(%struct._IO_FILE* %130, i32* %num_axes, i32 1, %struct._GError** %tmp_error)
  %131 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp148 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %131, i32 0, i32 3
  %132 = load i32, i32* %cp148, align 4
  %add149 = add i32 %132, %call147
  store i32 %add149, i32* %cp148, align 4
  %133 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool150 = icmp ne %struct._GError* %133, null
  br i1 %tobool150, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %do.body.145
  %134 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %135 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %134, %struct._GError* %135)
  store i32 0, i32* %retval
  br label %return

if.end.152:                                       ; preds = %do.body.145
  br label %do.end.153

do.end.153:                                       ; preds = %if.end.152
  br label %do.body.154

do.body.154:                                      ; preds = %do.end.153
  %136 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp155 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %136, i32 0, i32 2
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %fp155, align 8
  %138 = load %struct._GArray*, %struct._GArray** %control_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %138, i32 0, i32 1
  %call156 = call i32 @xcf_write_int32(%struct._IO_FILE* %137, i32* %len, i32 1, %struct._GError** %tmp_error)
  %139 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp157 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %139, i32 0, i32 3
  %140 = load i32, i32* %cp157, align 4
  %add158 = add i32 %140, %call156
  store i32 %add158, i32* %cp157, align 4
  %141 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool159 = icmp ne %struct._GError* %141, null
  br i1 %tobool159, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %do.body.154
  %142 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %143 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %142, %struct._GError* %143)
  store i32 0, i32* %retval
  br label %return

if.end.161:                                       ; preds = %do.body.154
  br label %do.end.162

do.end.162:                                       ; preds = %if.end.161
  store i32 0, i32* %i, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc, %do.end.162
  %144 = load i32, i32* %i, align 4
  %145 = load %struct._GArray*, %struct._GArray** %control_points, align 8
  %len164 = getelementptr inbounds %struct._GArray, %struct._GArray* %145, i32 0, i32 1
  %146 = load i32, i32* %len164, align 4
  %cmp165 = icmp ult i32 %144, %146
  br i1 %cmp165, label %for.body.166, label %for.end

for.body.166:                                     ; preds = %for.cond.163
  %147 = load i32, i32* %i, align 4
  %idxprom = sext i32 %147 to i64
  %148 = load %struct._GArray*, %struct._GArray** %control_points, align 8
  %data168 = getelementptr inbounds %struct._GArray, %struct._GArray* %148, i32 0, i32 0
  %149 = load i8*, i8** %data168, align 8
  %150 = bitcast i8* %149 to %struct._GimpAnchor*
  %arrayidx = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %150, i64 %idxprom
  store %struct._GimpAnchor* %arrayidx, %struct._GimpAnchor** %anchor, align 8
  %151 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %type169 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %151, i32 0, i32 1
  %152 = load i32, i32* %type169, align 4
  store i32 %152, i32* %type, align 4
  %153 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %153, i32 0, i32 0
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 0
  %154 = load double, double* %x, align 8
  %conv = fptrunc double %154 to float
  %arrayidx170 = getelementptr inbounds [6 x float], [6 x float]* %coords, i32 0, i64 0
  store float %conv, float* %arrayidx170, align 4
  %155 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position171 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %155, i32 0, i32 0
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position171, i32 0, i32 1
  %156 = load double, double* %y, align 8
  %conv172 = fptrunc double %156 to float
  %arrayidx173 = getelementptr inbounds [6 x float], [6 x float]* %coords, i32 0, i64 1
  store float %conv172, float* %arrayidx173, align 4
  %157 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position174 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %157, i32 0, i32 0
  %pressure = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position174, i32 0, i32 2
  %158 = load double, double* %pressure, align 8
  %conv175 = fptrunc double %158 to float
  %arrayidx176 = getelementptr inbounds [6 x float], [6 x float]* %coords, i32 0, i64 2
  store float %conv175, float* %arrayidx176, align 4
  %159 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position177 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %159, i32 0, i32 0
  %xtilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position177, i32 0, i32 3
  %160 = load double, double* %xtilt, align 8
  %conv178 = fptrunc double %160 to float
  %arrayidx179 = getelementptr inbounds [6 x float], [6 x float]* %coords, i32 0, i64 3
  store float %conv178, float* %arrayidx179, align 4
  %161 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position180 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %161, i32 0, i32 0
  %ytilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position180, i32 0, i32 4
  %162 = load double, double* %ytilt, align 8
  %conv181 = fptrunc double %162 to float
  %arrayidx182 = getelementptr inbounds [6 x float], [6 x float]* %coords, i32 0, i64 4
  store float %conv181, float* %arrayidx182, align 4
  %163 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position183 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %163, i32 0, i32 0
  %wheel = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position183, i32 0, i32 5
  %164 = load double, double* %wheel, align 8
  %conv184 = fptrunc double %164 to float
  %arrayidx185 = getelementptr inbounds [6 x float], [6 x float]* %coords, i32 0, i64 5
  store float %conv184, float* %arrayidx185, align 4
  br label %do.body.186

do.body.186:                                      ; preds = %for.body.166
  %165 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp187 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %165, i32 0, i32 2
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %fp187, align 8
  %call188 = call i32 @xcf_write_int32(%struct._IO_FILE* %166, i32* %type, i32 1, %struct._GError** %tmp_error)
  %167 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp189 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %167, i32 0, i32 3
  %168 = load i32, i32* %cp189, align 4
  %add190 = add i32 %168, %call188
  store i32 %add190, i32* %cp189, align 4
  %169 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool191 = icmp ne %struct._GError* %169, null
  br i1 %tobool191, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %do.body.186
  %170 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %171 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %170, %struct._GError* %171)
  store i32 0, i32* %retval
  br label %return

if.end.193:                                       ; preds = %do.body.186
  br label %do.end.194

do.end.194:                                       ; preds = %if.end.193
  br label %do.body.195

do.body.195:                                      ; preds = %do.end.194
  %172 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp196 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %172, i32 0, i32 2
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** %fp196, align 8
  %arraydecay = getelementptr inbounds [6 x float], [6 x float]* %coords, i32 0, i32 0
  %174 = load i32, i32* %num_axes, align 4
  %call197 = call i32 @xcf_write_float(%struct._IO_FILE* %173, float* %arraydecay, i32 %174, %struct._GError** %tmp_error)
  %175 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp198 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %175, i32 0, i32 3
  %176 = load i32, i32* %cp198, align 4
  %add199 = add i32 %176, %call197
  store i32 %add199, i32* %cp198, align 4
  %177 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool200 = icmp ne %struct._GError* %177, null
  br i1 %tobool200, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %do.body.195
  %178 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %179 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %178, %struct._GError* %179)
  store i32 0, i32* %retval
  br label %return

if.end.202:                                       ; preds = %do.body.195
  br label %do.end.203

do.end.203:                                       ; preds = %if.end.202
  br label %for.inc

for.inc:                                          ; preds = %do.end.203
  %180 = load i32, i32* %i, align 4
  %inc = add nsw i32 %180, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.163

for.end:                                          ; preds = %for.cond.163
  %181 = load %struct._GArray*, %struct._GArray** %control_points, align 8
  %call204 = call i8* @g_array_free(%struct._GArray* %181, i32 1)
  br label %for.inc.205

for.inc.205:                                      ; preds = %for.end, %if.else.124
  %182 = load %struct._GList*, %struct._GList** %stroke_list, align 8
  %tobool206 = icmp ne %struct._GList* %182, null
  br i1 %tobool206, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.205
  %183 = load %struct._GList*, %struct._GList** %stroke_list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %183, i32 0, i32 1
  %184 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.205
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %184, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %stroke_list, align 8
  br label %for.cond.108

for.end.207:                                      ; preds = %for.cond.108
  br label %for.inc.208

for.inc.208:                                      ; preds = %for.end.207
  %185 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool209 = icmp ne %struct._GList* %185, null
  br i1 %tobool209, label %cond.true.210, label %cond.false.212

cond.true.210:                                    ; preds = %for.inc.208
  %186 = load %struct._GList*, %struct._GList** %list, align 8
  %next211 = getelementptr inbounds %struct._GList, %struct._GList* %186, i32 0, i32 1
  %187 = load %struct._GList*, %struct._GList** %next211, align 8
  br label %cond.end.213

cond.false.212:                                   ; preds = %for.inc.208
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.false.212, %cond.true.210
  %cond214 = phi %struct._GList* [ %187, %cond.true.210 ], [ null, %cond.false.212 ]
  store %struct._GList* %cond214, %struct._GList** %list, align 8
  br label %for.cond

for.end.215:                                      ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.215, %if.then.201, %if.then.192, %if.then.160, %if.then.151, %if.then.142, %if.then.133, %if.then.103, %if.then.97, %if.then.88, %if.then.79, %if.then.70, %if.then.61, %if.then.52, %if.then.26, %if.then.17, %if.then.9
  %188 = load i32, i32* %retval
  ret i32 %188
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

declare void @gimp_parasite_list_foreach(%struct._GimpParasiteList*, void (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @xcf_save_parasite_func(i8* %key, %struct._GimpParasite* %parasite, %struct.XcfParasiteData* %data) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  %data.addr = alloca %struct.XcfParasiteData*, align 8
  store i8* %key, i8** %key.addr, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  store %struct.XcfParasiteData* %data, %struct.XcfParasiteData** %data.addr, align 8
  %0 = load %struct.XcfParasiteData*, %struct.XcfParasiteData** %data.addr, align 8
  %error = getelementptr inbounds %struct.XcfParasiteData, %struct.XcfParasiteData* %0, i32 0, i32 1
  %1 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.XcfParasiteData*, %struct.XcfParasiteData** %data.addr, align 8
  %info = getelementptr inbounds %struct.XcfParasiteData, %struct.XcfParasiteData* %2, i32 0, i32 0
  %3 = load %struct._XcfInfo*, %struct._XcfInfo** %info, align 8
  %4 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %5 = load %struct.XcfParasiteData*, %struct.XcfParasiteData** %data.addr, align 8
  %error1 = getelementptr inbounds %struct.XcfParasiteData, %struct.XcfParasiteData* %5, i32 0, i32 1
  %call = call i32 @xcf_save_parasite(%struct._XcfInfo* %3, %struct._GimpParasite* %4, %struct._GError** %error1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_save_parasite(%struct._XcfInfo* %info, %struct._GimpParasite* %parasite, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %value = alloca i32, align 4
  %string = alloca i8*, align 8
  %tmp_error = alloca %struct._GError*, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call = call i32 @gimp_parasite_is_persistent(%struct._GimpParasite* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.38

if.then:                                          ; preds = %entry
  store %struct._GError* null, %struct._GError** %tmp_error, align 8
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call1 = call i8* @gimp_parasite_name(%struct._GimpParasite* %1)
  store i8* %call1, i8** %string, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %2 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %2, i32 0, i32 2
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i32 @xcf_write_string(%struct._IO_FILE* %3, i8** %string, i32 1, %struct._GError** %tmp_error)
  %4 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %4, i32 0, i32 3
  %5 = load i32, i32* %cp, align 4
  %add = add i32 %5, %call2
  store i32 %add, i32* %cp, align 4
  %6 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool3 = icmp ne %struct._GError* %6, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %do.body
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %8 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %7, %struct._GError* %8)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call5 = call i64 @gimp_parasite_flags(%struct._GimpParasite* %9)
  %conv = trunc i64 %call5 to i32
  store i32 %conv, i32* %value, align 4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end
  %10 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp7 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %10, i32 0, i32 2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp7, align 8
  %call8 = call i32 @xcf_write_int32(%struct._IO_FILE* %11, i32* %value, i32 1, %struct._GError** %tmp_error)
  %12 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp9 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %12, i32 0, i32 3
  %13 = load i32, i32* %cp9, align 4
  %add10 = add i32 %13, %call8
  store i32 %add10, i32* %cp9, align 4
  %14 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool11 = icmp ne %struct._GError* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.body.6
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %15, %struct._GError* %16)
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %do.body.6
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  %17 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call15 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %17)
  %conv16 = trunc i64 %call15 to i32
  store i32 %conv16, i32* %value, align 4
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.14
  %18 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp18 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %18, i32 0, i32 2
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp18, align 8
  %call19 = call i32 @xcf_write_int32(%struct._IO_FILE* %19, i32* %value, i32 1, %struct._GError** %tmp_error)
  %20 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp20 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %20, i32 0, i32 3
  %21 = load i32, i32* %cp20, align 4
  %add21 = add i32 %21, %call19
  store i32 %add21, i32* %cp20, align 4
  %22 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool22 = icmp ne %struct._GError* %22, null
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %do.body.17
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %24 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %23, %struct._GError* %24)
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %do.body.17
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %25 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp27 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %25, i32 0, i32 2
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp27, align 8
  %27 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call28 = call i8* @gimp_parasite_data(%struct._GimpParasite* %27)
  %28 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call29 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %28)
  %conv30 = trunc i64 %call29 to i32
  %call31 = call i32 @xcf_write_int8(%struct._IO_FILE* %26, i8* %call28, i32 %conv30, %struct._GError** %tmp_error)
  %29 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp32 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %29, i32 0, i32 3
  %30 = load i32, i32* %cp32, align 4
  %add33 = add i32 %30, %call31
  store i32 %add33, i32* %cp32, align 4
  %31 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool34 = icmp ne %struct._GError* %31, null
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %do.body.26
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %33 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %32, %struct._GError* %33)
  store i32 0, i32* %retval
  br label %return

if.end.36:                                        ; preds = %do.body.26
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.then.35, %if.then.23, %if.then.12, %if.then.4
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare i32 @gimp_parasite_is_persistent(%struct._GimpParasite*) #1

declare i64 @gimp_parasite_flags(%struct._GimpParasite*) #1

declare i64 @gimp_parasite_data_size(%struct._GimpParasite*) #1

declare i8* @gimp_parasite_data(%struct._GimpParasite*) #1

declare %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage*) #1

declare i32 @gimp_container_get_child_index(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage*) #1

declare %struct._GimpVectorsCompatPoint* @gimp_vectors_compat_get_points(%struct._GimpVectors*, i32*, i32*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare i32 @gimp_item_get_linked(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_item_get_tattoo(%struct._GimpItem*) #1

declare void @g_free(i8*) #1

declare i32 @gimp_item_get_visible(%struct._GimpItem*) #1

declare %struct._GimpParasiteList* @gimp_item_get_parasites(%struct._GimpItem*) #1

declare %struct._GList* @g_list_first(%struct._GList*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_bezier_stroke_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

declare void @g_printerr(i8*, ...) #1

declare %struct._GArray* @gimp_stroke_control_points_get(%struct._GimpStroke*, i32*) #1

declare i8* @g_array_free(%struct._GArray*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define internal i32 @xcf_save_layer_props(%struct._XcfInfo* %info, %struct._GimpImage* %image, %struct._GimpLayer* %layer, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %parasites = alloca %struct._GimpParasiteList*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %path = alloca %struct._GList*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %text_layer = alloca %struct._GimpTextLayer*, align 8
  %flags = alloca i32, align 4
  %flags190 = alloca i32, align 4
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_viewable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewable*
  %call2 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %2)
  %tobool = icmp ne %struct._GimpContainer* %call2, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %3, %struct._GimpImage* %4, i32 29, %struct._GError** %5)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %do.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_viewable_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpViewable*
  %call9 = call %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable* %8)
  %tobool10 = icmp ne %struct._GimpViewable* %call9, null
  br i1 %tobool10, label %if.then.11, label %if.end.21

if.then.11:                                       ; preds = %if.end.6
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %10 = bitcast %struct._GimpLayer* %9 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call12)
  %11 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call %struct._GList* @gimp_item_get_path(%struct._GimpItem* %11)
  store %struct._GList* %call14, %struct._GList** %path, align 8
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.11
  %12 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GList*, %struct._GList** %path, align 8
  %call16 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %12, %struct._GimpImage* %13, i32 30, %struct._GError** %14, %struct._GList* %15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %do.body.15
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %do.body.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  %16 = load %struct._GList*, %struct._GList** %path, align 8
  call void @g_list_free(%struct._GList* %16)
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %if.end.6
  %17 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call22 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %18)
  %cmp = icmp eq %struct._GimpLayer* %17, %call22
  br i1 %cmp, label %if.then.23, label %if.end.30

if.then.23:                                       ; preds = %if.end.21
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  %19 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call25 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %19, %struct._GimpImage* %20, i32 2, %struct._GError** %21)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %do.body.24
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %do.body.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %if.end.30

if.end.30:                                        ; preds = %do.end.29, %if.end.21
  %22 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call31 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %23)
  %cmp32 = icmp eq %struct._GimpLayer* %22, %call31
  br i1 %cmp32, label %if.then.33, label %if.end.41

if.then.33:                                       ; preds = %if.end.30
  %24 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call34 = call %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer* %24)
  %25 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %floating_sel_drawable = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %25, i32 0, i32 8
  store %struct._GimpDrawable* %call34, %struct._GimpDrawable** %floating_sel_drawable, align 8
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.33
  %26 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call36 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %26, %struct._GimpImage* %27, i32 5, %struct._GError** %28)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %do.body.35
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %do.body.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %if.end.30
  br label %do.body.42

do.body.42:                                       ; preds = %if.end.41
  %29 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %31 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %32 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call43 = call double @gimp_layer_get_opacity(%struct._GimpLayer* %32)
  %call44 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %29, %struct._GimpImage* %30, i32 6, %struct._GError** %31, double %call43)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %do.body.42
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %do.body.42
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %33 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %36 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %37 = bitcast %struct._GimpLayer* %36 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_item_get_type() #6
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call50)
  %38 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpItem*
  %call52 = call i32 @gimp_item_get_visible(%struct._GimpItem* %38)
  %call53 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %33, %struct._GimpImage* %34, i32 8, %struct._GError** %35, i32 %call52)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %do.body.49
  store i32 0, i32* %retval
  br label %return

if.end.56:                                        ; preds = %do.body.49
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  br label %do.body.58

do.body.58:                                       ; preds = %do.end.57
  %39 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %42 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %43 = bitcast %struct._GimpLayer* %42 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_item_get_type() #6
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call59)
  %44 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpItem*
  %call61 = call i32 @gimp_item_get_linked(%struct._GimpItem* %44)
  %call62 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %39, %struct._GimpImage* %40, i32 9, %struct._GError** %41, i32 %call61)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %do.body.58
  store i32 0, i32* %retval
  br label %return

if.end.65:                                        ; preds = %do.body.58
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %do.body.67

do.body.67:                                       ; preds = %do.end.66
  %45 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %47 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %48 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %49 = bitcast %struct._GimpLayer* %48 to %struct._GTypeInstance*
  %call68 = call i64 @gimp_item_get_type() #6
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call68)
  %50 = bitcast %struct._GTypeInstance* %call69 to %struct._GimpItem*
  %call70 = call i32 @gimp_item_get_lock_content(%struct._GimpItem* %50)
  %call71 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %45, %struct._GimpImage* %46, i32 28, %struct._GError** %47, i32 %call70)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.end.74, label %if.then.73

if.then.73:                                       ; preds = %do.body.67
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %do.body.67
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %51 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %53 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %54 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call77 = call i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer* %54)
  %call78 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %51, %struct._GimpImage* %52, i32 10, %struct._GError** %53, i32 %call77)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %do.body.76
  store i32 0, i32* %retval
  br label %return

if.end.81:                                        ; preds = %do.body.76
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  %55 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call83 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %55)
  %tobool84 = icmp ne %struct._GimpLayerMask* %call83, null
  br i1 %tobool84, label %if.then.85, label %if.else

if.then.85:                                       ; preds = %do.end.82
  %56 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call86 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %56)
  store %struct._GimpLayerMask* %call86, %struct._GimpLayerMask** %mask, align 8
  br label %do.body.87

do.body.87:                                       ; preds = %if.then.85
  %57 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %58 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %59 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %60 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call88 = call i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask* %60)
  %call89 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %57, %struct._GimpImage* %58, i32 11, %struct._GError** %59, i32 %call88)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.end.92, label %if.then.91

if.then.91:                                       ; preds = %do.body.87
  store i32 0, i32* %retval
  br label %return

if.end.92:                                        ; preds = %do.body.87
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.92
  br label %do.body.94

do.body.94:                                       ; preds = %do.end.93
  %61 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %62 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %63 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %64 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call95 = call i32 @gimp_layer_mask_get_edit(%struct._GimpLayerMask* %64)
  %call96 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %61, %struct._GimpImage* %62, i32 12, %struct._GError** %63, i32 %call95)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.end.99, label %if.then.98

if.then.98:                                       ; preds = %do.body.94
  store i32 0, i32* %retval
  br label %return

if.end.99:                                        ; preds = %do.body.94
  br label %do.end.100

do.end.100:                                       ; preds = %if.end.99
  br label %do.body.101

do.body.101:                                      ; preds = %do.end.100
  %65 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %66 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %67 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %68 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call102 = call i32 @gimp_layer_mask_get_show(%struct._GimpLayerMask* %68)
  %call103 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %65, %struct._GimpImage* %66, i32 13, %struct._GError** %67, i32 %call102)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.end.106, label %if.then.105

if.then.105:                                      ; preds = %do.body.101
  store i32 0, i32* %retval
  br label %return

if.end.106:                                       ; preds = %do.body.101
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.106
  br label %if.end.126

if.else:                                          ; preds = %do.end.82
  br label %do.body.108

do.body.108:                                      ; preds = %if.else
  %69 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %70 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %71 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call109 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %69, %struct._GimpImage* %70, i32 11, %struct._GError** %71, i32 0)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.end.112, label %if.then.111

if.then.111:                                      ; preds = %do.body.108
  store i32 0, i32* %retval
  br label %return

if.end.112:                                       ; preds = %do.body.108
  br label %do.end.113

do.end.113:                                       ; preds = %if.end.112
  br label %do.body.114

do.body.114:                                      ; preds = %do.end.113
  %72 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %73 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %74 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call115 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %72, %struct._GimpImage* %73, i32 12, %struct._GError** %74, i32 0)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.end.118, label %if.then.117

if.then.117:                                      ; preds = %do.body.114
  store i32 0, i32* %retval
  br label %return

if.end.118:                                       ; preds = %do.body.114
  br label %do.end.119

do.end.119:                                       ; preds = %if.end.118
  br label %do.body.120

do.body.120:                                      ; preds = %do.end.119
  %75 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %76 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %77 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call121 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %75, %struct._GimpImage* %76, i32 13, %struct._GError** %77, i32 0)
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.end.124, label %if.then.123

if.then.123:                                      ; preds = %do.body.120
  store i32 0, i32* %retval
  br label %return

if.end.124:                                       ; preds = %do.body.120
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.124
  br label %if.end.126

if.end.126:                                       ; preds = %do.end.125, %do.end.107
  %78 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %79 = bitcast %struct._GimpLayer* %78 to %struct._GTypeInstance*
  %call127 = call i64 @gimp_item_get_type() #6
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call127)
  %80 = bitcast %struct._GTypeInstance* %call128 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %80, i32* %offset_x, i32* %offset_y)
  br label %do.body.129

do.body.129:                                      ; preds = %if.end.126
  %81 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %82 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %83 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %84 = load i32, i32* %offset_x, align 4
  %85 = load i32, i32* %offset_y, align 4
  %call130 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %81, %struct._GimpImage* %82, i32 15, %struct._GError** %83, i32 %84, i32 %85)
  %tobool131 = icmp ne i32 %call130, 0
  br i1 %tobool131, label %if.end.133, label %if.then.132

if.then.132:                                      ; preds = %do.body.129
  store i32 0, i32* %retval
  br label %return

if.end.133:                                       ; preds = %do.body.129
  br label %do.end.134

do.end.134:                                       ; preds = %if.end.133
  br label %do.body.135

do.body.135:                                      ; preds = %do.end.134
  %86 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %87 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %88 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %89 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call136 = call i32 @gimp_layer_get_mode(%struct._GimpLayer* %89)
  %call137 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %86, %struct._GimpImage* %87, i32 7, %struct._GError** %88, i32 %call136)
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.end.140, label %if.then.139

if.then.139:                                      ; preds = %do.body.135
  store i32 0, i32* %retval
  br label %return

if.end.140:                                       ; preds = %do.body.135
  br label %do.end.141

do.end.141:                                       ; preds = %if.end.140
  br label %do.body.142

do.body.142:                                      ; preds = %do.end.141
  %90 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %91 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %92 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %93 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %94 = bitcast %struct._GimpLayer* %93 to %struct._GTypeInstance*
  %call143 = call i64 @gimp_item_get_type() #6
  %call144 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call143)
  %95 = bitcast %struct._GTypeInstance* %call144 to %struct._GimpItem*
  %call145 = call i32 @gimp_item_get_tattoo(%struct._GimpItem* %95)
  %call146 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %90, %struct._GimpImage* %91, i32 20, %struct._GError** %92, i32 %call145)
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %if.end.149, label %if.then.148

if.then.148:                                      ; preds = %do.body.142
  store i32 0, i32* %retval
  br label %return

if.end.149:                                       ; preds = %do.body.142
  br label %do.end.150

do.end.150:                                       ; preds = %if.end.149
  %96 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %97 = bitcast %struct._GimpLayer* %96 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %97, %struct._GTypeInstance** %__inst, align 8
  %call151 = call i64 @gimp_text_layer_get_type() #6
  store i64 %call151, i64* %__t, align 8
  %98 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool152 = icmp ne %struct._GTypeInstance* %98, null
  br i1 %tobool152, label %if.else.154, label %if.then.153

if.then.153:                                      ; preds = %do.end.150
  store i32 0, i32* %__r, align 4
  br label %if.end.162

if.else.154:                                      ; preds = %do.end.150
  %99 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %99, i32 0, i32 0
  %100 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool155 = icmp ne %struct._GTypeClass* %100, null
  br i1 %tobool155, label %land.lhs.true, label %if.else.159

land.lhs.true:                                    ; preds = %if.else.154
  %101 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class156 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %101, i32 0, i32 0
  %102 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class156, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %102, i32 0, i32 0
  %103 = load i64, i64* %g_type, align 8
  %104 = load i64, i64* %__t, align 8
  %cmp157 = icmp eq i64 %103, %104
  br i1 %cmp157, label %if.then.158, label %if.else.159

if.then.158:                                      ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.161

if.else.159:                                      ; preds = %land.lhs.true, %if.else.154
  %105 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %106 = load i64, i64* %__t, align 8
  %call160 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %105, i64 %106) #7
  store i32 %call160, i32* %__r, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.159, %if.then.158
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.then.153
  %107 = load i32, i32* %__r, align 4
  store i32 %107, i32* %tmp
  %108 = load i32, i32* %tmp
  %tobool163 = icmp ne i32 %108, 0
  br i1 %tobool163, label %land.lhs.true.164, label %if.end.183

land.lhs.true.164:                                ; preds = %if.end.162
  %109 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %110 = bitcast %struct._GimpLayer* %109 to %struct._GTypeInstance*
  %call165 = call i64 @gimp_text_layer_get_type() #6
  %call166 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call165)
  %111 = bitcast %struct._GTypeInstance* %call166 to %struct._GimpTextLayer*
  %text = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %111, i32 0, i32 1
  %112 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool167 = icmp ne %struct._GimpText* %112, null
  br i1 %tobool167, label %if.then.168, label %if.end.183

if.then.168:                                      ; preds = %land.lhs.true.164
  %113 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %114 = bitcast %struct._GimpLayer* %113 to %struct._GTypeInstance*
  %call170 = call i64 @gimp_text_layer_get_type() #6
  %call171 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call170)
  %115 = bitcast %struct._GTypeInstance* %call171 to %struct._GimpTextLayer*
  store %struct._GimpTextLayer* %115, %struct._GimpTextLayer** %text_layer, align 8
  %116 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer, align 8
  %call173 = call i32 @gimp_text_layer_get_xcf_flags(%struct._GimpTextLayer* %116)
  store i32 %call173, i32* %flags, align 4
  %117 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer, align 8
  call void @gimp_text_layer_xcf_save_prepare(%struct._GimpTextLayer* %117)
  %118 = load i32, i32* %flags, align 4
  %tobool174 = icmp ne i32 %118, 0
  br i1 %tobool174, label %if.then.175, label %if.end.182

if.then.175:                                      ; preds = %if.then.168
  br label %do.body.176

do.body.176:                                      ; preds = %if.then.175
  %119 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %120 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %121 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %122 = load i32, i32* %flags, align 4
  %call177 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %119, %struct._GimpImage* %120, i32 26, %struct._GError** %121, i32 %122)
  %tobool178 = icmp ne i32 %call177, 0
  br i1 %tobool178, label %if.end.180, label %if.then.179

if.then.179:                                      ; preds = %do.body.176
  store i32 0, i32* %retval
  br label %return

if.end.180:                                       ; preds = %do.body.176
  br label %do.end.181

do.end.181:                                       ; preds = %if.end.180
  br label %if.end.182

if.end.182:                                       ; preds = %do.end.181, %if.then.168
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %land.lhs.true.164, %if.end.162
  %123 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %124 = bitcast %struct._GimpLayer* %123 to %struct._GTypeInstance*
  %call184 = call i64 @gimp_viewable_get_type() #6
  %call185 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call184)
  %125 = bitcast %struct._GTypeInstance* %call185 to %struct._GimpViewable*
  %call186 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %125)
  %tobool187 = icmp ne %struct._GimpContainer* %call186, null
  br i1 %tobool187, label %if.then.188, label %if.end.203

if.then.188:                                      ; preds = %if.end.183
  store i32 0, i32* %flags190, align 4
  %126 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %127 = bitcast %struct._GimpLayer* %126 to %struct._GTypeInstance*
  %call191 = call i64 @gimp_viewable_get_type() #6
  %call192 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call191)
  %128 = bitcast %struct._GTypeInstance* %call192 to %struct._GimpViewable*
  %call193 = call i32 @gimp_viewable_get_expanded(%struct._GimpViewable* %128)
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %if.then.188
  %129 = load i32, i32* %flags190, align 4
  %or = or i32 %129, 1
  store i32 %or, i32* %flags190, align 4
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.195, %if.then.188
  br label %do.body.197

do.body.197:                                      ; preds = %if.end.196
  %130 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %131 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %132 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %133 = load i32, i32* %flags190, align 4
  %call198 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %130, %struct._GimpImage* %131, i32 31, %struct._GError** %132, i32 %133)
  %tobool199 = icmp ne i32 %call198, 0
  br i1 %tobool199, label %if.end.201, label %if.then.200

if.then.200:                                      ; preds = %do.body.197
  store i32 0, i32* %retval
  br label %return

if.end.201:                                       ; preds = %do.body.197
  br label %do.end.202

do.end.202:                                       ; preds = %if.end.201
  br label %if.end.203

if.end.203:                                       ; preds = %do.end.202, %if.end.183
  %134 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %135 = bitcast %struct._GimpLayer* %134 to %struct._GTypeInstance*
  %call204 = call i64 @gimp_item_get_type() #6
  %call205 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call204)
  %136 = bitcast %struct._GTypeInstance* %call205 to %struct._GimpItem*
  %call206 = call %struct._GimpParasiteList* @gimp_item_get_parasites(%struct._GimpItem* %136)
  store %struct._GimpParasiteList* %call206, %struct._GimpParasiteList** %parasites, align 8
  %137 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %call207 = call i32 @gimp_parasite_list_length(%struct._GimpParasiteList* %137)
  %cmp208 = icmp sgt i32 %call207, 0
  br i1 %cmp208, label %if.then.209, label %if.end.216

if.then.209:                                      ; preds = %if.end.203
  br label %do.body.210

do.body.210:                                      ; preds = %if.then.209
  %138 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %139 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %140 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %141 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %call211 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %138, %struct._GimpImage* %139, i32 21, %struct._GError** %140, %struct._GimpParasiteList* %141)
  %tobool212 = icmp ne i32 %call211, 0
  br i1 %tobool212, label %if.end.214, label %if.then.213

if.then.213:                                      ; preds = %do.body.210
  store i32 0, i32* %retval
  br label %return

if.end.214:                                       ; preds = %do.body.210
  br label %do.end.215

do.end.215:                                       ; preds = %if.end.214
  br label %if.end.216

if.end.216:                                       ; preds = %do.end.215, %if.end.203
  br label %do.body.217

do.body.217:                                      ; preds = %if.end.216
  %142 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %143 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %144 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call218 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %142, %struct._GimpImage* %143, i32 0, %struct._GError** %144)
  %tobool219 = icmp ne i32 %call218, 0
  br i1 %tobool219, label %if.end.221, label %if.then.220

if.then.220:                                      ; preds = %do.body.217
  store i32 0, i32* %retval
  br label %return

if.end.221:                                       ; preds = %do.body.217
  br label %do.end.222

do.end.222:                                       ; preds = %if.end.221
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.222, %if.then.220, %if.then.213, %if.then.200, %if.then.179, %if.then.148, %if.then.139, %if.then.132, %if.then.123, %if.then.117, %if.then.111, %if.then.105, %if.then.98, %if.then.91, %if.then.80, %if.then.73, %if.then.64, %if.then.55, %if.then.46, %if.then.38, %if.then.27, %if.then.18, %if.then.5
  %145 = load i32, i32* %retval
  ret i32 %145
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_save_hierarchy(%struct._XcfInfo* %info, %struct._TileManager* %tiles, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %saved_pos = alloca i32, align 4
  %offset = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %i = alloca i32, align 4
  %nlevels = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp_error = alloca %struct._GError*, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GError* null, %struct._GError** %tmp_error, align 8
  %0 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call = call i32 @tile_manager_width(%struct._TileManager* %0)
  store i32 %call, i32* %width, align 4
  %1 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call1 = call i32 @tile_manager_height(%struct._TileManager* %1)
  store i32 %call1, i32* %height, align 4
  %2 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call2 = call i32 @tile_manager_bpp(%struct._TileManager* %2)
  store i32 %call2, i32* %bpp, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %3, i32 0, i32 2
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call3 = call i32 @xcf_write_int32(%struct._IO_FILE* %4, i32* %width, i32 1, %struct._GError** %tmp_error)
  %5 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %5, i32 0, i32 3
  %6 = load i32, i32* %cp, align 4
  %add = add i32 %6, %call3
  store i32 %add, i32* %cp, align 4
  %7 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool = icmp ne %struct._GError* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %9 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %8, %struct._GError* %9)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.4

do.body.4:                                        ; preds = %do.end
  %10 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp5 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %10, i32 0, i32 2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp5, align 8
  %call6 = call i32 @xcf_write_int32(%struct._IO_FILE* %11, i32* %height, i32 1, %struct._GError** %tmp_error)
  %12 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp7 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %12, i32 0, i32 3
  %13 = load i32, i32* %cp7, align 4
  %add8 = add i32 %13, %call6
  store i32 %add8, i32* %cp7, align 4
  %14 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool9 = icmp ne %struct._GError* %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.body.4
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %15, %struct._GError* %16)
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %do.body.4
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  br label %do.body.13

do.body.13:                                       ; preds = %do.end.12
  %17 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp14 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %17, i32 0, i32 2
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp14, align 8
  %call15 = call i32 @xcf_write_int32(%struct._IO_FILE* %18, i32* %bpp, i32 1, %struct._GError** %tmp_error)
  %19 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp16 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %19, i32 0, i32 3
  %20 = load i32, i32* %cp16, align 4
  %add17 = add i32 %20, %call15
  store i32 %add17, i32* %cp16, align 4
  %21 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool18 = icmp ne %struct._GError* %21, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.body.13
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %23 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %22, %struct._GError* %23)
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %do.body.13
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  %24 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp22 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %24, i32 0, i32 3
  %25 = load i32, i32* %cp22, align 4
  store i32 %25, i32* %saved_pos, align 4
  %26 = load i32, i32* %width, align 4
  %call23 = call i32 @xcf_calc_levels(i32 %26, i32 64)
  store i32 %call23, i32* %tmp1, align 4
  %27 = load i32, i32* %height, align 4
  %call24 = call i32 @xcf_calc_levels(i32 %27, i32 64)
  store i32 %call24, i32* %tmp2, align 4
  %28 = load i32, i32* %tmp1, align 4
  %29 = load i32, i32* %tmp2, align 4
  %cmp = icmp sgt i32 %28, %29
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.21
  %30 = load i32, i32* %tmp1, align 4
  br label %cond.end

cond.false:                                       ; preds = %do.end.21
  %31 = load i32, i32* %tmp2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %30, %cond.true ], [ %31, %cond.false ]
  store i32 %cond, i32* %nlevels, align 4
  %32 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp25 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %32, i32 0, i32 3
  %33 = load i32, i32* %cp25, align 4
  store i32 %33, i32* %saved_pos, align 4
  br label %do.body.26

do.body.26:                                       ; preds = %cond.end
  %34 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp27 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %34, i32 0, i32 2
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp27, align 8
  %36 = load i32, i32* %nlevels, align 4
  %add28 = add nsw i32 %36, 1
  %call29 = call i32 @xcf_write_zero_int32(%struct._IO_FILE* %35, i32 %add28, %struct._GError** %tmp_error)
  %37 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp30 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %37, i32 0, i32 3
  %38 = load i32, i32* %cp30, align 4
  %add31 = add i32 %38, %call29
  store i32 %add31, i32* %cp30, align 4
  %39 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool32 = icmp ne %struct._GError* %39, null
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %do.body.26
  %40 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %41 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %40, %struct._GError* %41)
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %do.body.26
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  %42 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp36 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %42, i32 0, i32 3
  %43 = load i32, i32* %cp36, align 4
  store i32 %43, i32* %offset, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.35
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %nlevels, align 4
  %cmp37 = icmp slt i32 %44, %45
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.38

do.body.38:                                       ; preds = %for.body
  %46 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %47 = load i32, i32* %saved_pos, align 4
  %48 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call39 = call i32 @xcf_seek_pos(%struct._XcfInfo* %46, i32 %47, %struct._GError** %48)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %do.body.38
  store i32 0, i32* %retval
  br label %return

if.end.42:                                        ; preds = %do.body.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %do.body.44

do.body.44:                                       ; preds = %do.end.43
  %49 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp45 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %49, i32 0, i32 2
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %fp45, align 8
  %call46 = call i32 @xcf_write_int32(%struct._IO_FILE* %50, i32* %offset, i32 1, %struct._GError** %tmp_error)
  %51 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp47 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %51, i32 0, i32 3
  %52 = load i32, i32* %cp47, align 4
  %add48 = add i32 %52, %call46
  store i32 %add48, i32* %cp47, align 4
  %53 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool49 = icmp ne %struct._GError* %53, null
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %do.body.44
  %54 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %55 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %54, %struct._GError* %55)
  store i32 0, i32* %retval
  br label %return

if.end.51:                                        ; preds = %do.body.44
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %56 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp53 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %56, i32 0, i32 3
  %57 = load i32, i32* %cp53, align 4
  store i32 %57, i32* %saved_pos, align 4
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.52
  %58 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %59 = load i32, i32* %offset, align 4
  %60 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call55 = call i32 @xcf_seek_pos(%struct._XcfInfo* %58, i32 %59, %struct._GError** %60)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %do.body.54
  store i32 0, i32* %retval
  br label %return

if.end.58:                                        ; preds = %do.body.54
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  %61 = load i32, i32* %i, align 4
  %cmp60 = icmp eq i32 %61, 0
  br i1 %cmp60, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %do.end.59
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.61
  %62 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %63 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %64 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call63 = call i32 @xcf_save_level(%struct._XcfInfo* %62, %struct._TileManager* %63, %struct._GError** %64)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %do.body.62
  store i32 0, i32* %retval
  br label %return

if.end.66:                                        ; preds = %do.body.62
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %if.end.96

if.else:                                          ; preds = %do.end.59
  store i32 0, i32* %tmp1, align 4
  %65 = load i32, i32* %width, align 4
  %div = udiv i32 %65, 2
  store i32 %div, i32* %width, align 4
  %66 = load i32, i32* %height, align 4
  %div68 = udiv i32 %66, 2
  store i32 %div68, i32* %height, align 4
  br label %do.body.69

do.body.69:                                       ; preds = %if.else
  %67 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp70 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %67, i32 0, i32 2
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %fp70, align 8
  %call71 = call i32 @xcf_write_int32(%struct._IO_FILE* %68, i32* %width, i32 1, %struct._GError** %tmp_error)
  %69 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp72 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %69, i32 0, i32 3
  %70 = load i32, i32* %cp72, align 4
  %add73 = add i32 %70, %call71
  store i32 %add73, i32* %cp72, align 4
  %71 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool74 = icmp ne %struct._GError* %71, null
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %do.body.69
  %72 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %73 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %72, %struct._GError* %73)
  store i32 0, i32* %retval
  br label %return

if.end.76:                                        ; preds = %do.body.69
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  br label %do.body.78

do.body.78:                                       ; preds = %do.end.77
  %74 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp79 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %74, i32 0, i32 2
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %fp79, align 8
  %call80 = call i32 @xcf_write_int32(%struct._IO_FILE* %75, i32* %height, i32 1, %struct._GError** %tmp_error)
  %76 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp81 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %76, i32 0, i32 3
  %77 = load i32, i32* %cp81, align 4
  %add82 = add i32 %77, %call80
  store i32 %add82, i32* %cp81, align 4
  %78 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool83 = icmp ne %struct._GError* %78, null
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %do.body.78
  %79 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %80 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %79, %struct._GError* %80)
  store i32 0, i32* %retval
  br label %return

if.end.85:                                        ; preds = %do.body.78
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %do.body.87

do.body.87:                                       ; preds = %do.end.86
  %81 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp88 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %81, i32 0, i32 2
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %fp88, align 8
  %call89 = call i32 @xcf_write_int32(%struct._IO_FILE* %82, i32* %tmp1, i32 1, %struct._GError** %tmp_error)
  %83 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp90 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %83, i32 0, i32 3
  %84 = load i32, i32* %cp90, align 4
  %add91 = add i32 %84, %call89
  store i32 %add91, i32* %cp90, align 4
  %85 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool92 = icmp ne %struct._GError* %85, null
  br i1 %tobool92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %do.body.87
  %86 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %87 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %86, %struct._GError* %87)
  store i32 0, i32* %retval
  br label %return

if.end.94:                                        ; preds = %do.body.87
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  br label %if.end.96

if.end.96:                                        ; preds = %do.end.95, %do.end.67
  %88 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp97 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %88, i32 0, i32 3
  %89 = load i32, i32* %cp97, align 4
  store i32 %89, i32* %offset, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.96
  %90 = load i32, i32* %i, align 4
  %inc = add nsw i32 %90, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.93, %if.then.84, %if.then.75, %if.then.65, %if.then.57, %if.then.50, %if.then.41, %if.then.33, %if.then.19, %if.then.10, %if.then
  %91 = load i32, i32* %retval
  ret i32 %91
}

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

declare %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #2

declare %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable*) #1

declare %struct._GList* @gimp_item_get_path(%struct._GimpItem*) #1

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #1

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #1

declare %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer*) #1

declare double @gimp_layer_get_opacity(%struct._GimpLayer*) #1

declare i32 @gimp_item_get_lock_content(%struct._GimpItem*) #1

declare i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer*) #1

declare i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask*) #1

declare i32 @gimp_layer_mask_get_edit(%struct._GimpLayerMask*) #1

declare i32 @gimp_layer_mask_get_show(%struct._GimpLayerMask*) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_layer_get_type() #2

declare i32 @gimp_text_layer_get_xcf_flags(%struct._GimpTextLayer*) #1

declare void @gimp_text_layer_xcf_save_prepare(%struct._GimpTextLayer*) #1

declare i32 @gimp_viewable_get_expanded(%struct._GimpViewable*) #1

declare i32 @tile_manager_width(%struct._TileManager*) #1

declare i32 @tile_manager_height(%struct._TileManager*) #1

declare i32 @tile_manager_bpp(%struct._TileManager*) #1

; Function Attrs: nounwind uwtable
define internal i32 @xcf_calc_levels(i32 %size, i32 %tile_size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %tile_size.addr = alloca i32, align 4
  %levels = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 %tile_size, i32* %tile_size.addr, align 4
  store i32 1, i32* %levels, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %size.addr, align 4
  %1 = load i32, i32* %tile_size.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %size.addr, align 4
  %div = sdiv i32 %2, 2
  store i32 %div, i32* %size.addr, align 4
  %3 = load i32, i32* %levels, align 4
  %add = add nsw i32 %3, 1
  store i32 %add, i32* %levels, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %levels, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_save_level(%struct._XcfInfo* %info, %struct._TileManager* %level, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %level.addr = alloca %struct._TileManager*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %offset_table = alloca i32*, align 8
  %next_offset = alloca i32*, align 8
  %saved_pos = alloca i32, align 4
  %offset = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %ntiles = alloca i32, align 4
  %i = alloca i32, align 4
  %rlebuf = alloca i8*, align 8
  %tmp_error = alloca %struct._GError*, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._TileManager* %level, %struct._TileManager** %level.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GError* null, %struct._GError** %tmp_error, align 8
  %0 = load %struct._TileManager*, %struct._TileManager** %level.addr, align 8
  %call = call i32 @tile_manager_width(%struct._TileManager* %0)
  store i32 %call, i32* %width, align 4
  %1 = load %struct._TileManager*, %struct._TileManager** %level.addr, align 8
  %call1 = call i32 @tile_manager_height(%struct._TileManager* %1)
  store i32 %call1, i32* %height, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %2, i32 0, i32 2
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i32 @xcf_write_int32(%struct._IO_FILE* %3, i32* %width, i32 1, %struct._GError** %tmp_error)
  %4 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %4, i32 0, i32 3
  %5 = load i32, i32* %cp, align 4
  %add = add i32 %5, %call2
  store i32 %add, i32* %cp, align 4
  %6 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool = icmp ne %struct._GError* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %8 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %7, %struct._GError* %8)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.3

do.body.3:                                        ; preds = %do.end
  %9 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp4 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %9, i32 0, i32 2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp4, align 8
  %call5 = call i32 @xcf_write_int32(%struct._IO_FILE* %10, i32* %height, i32 1, %struct._GError** %tmp_error)
  %11 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp6 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %11, i32 0, i32 3
  %12 = load i32, i32* %cp6, align 4
  %add7 = add i32 %12, %call5
  store i32 %add7, i32* %cp6, align 4
  %13 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool8 = icmp ne %struct._GError* %13, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.body.3
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %14, %struct._GError* %15)
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %do.body.3
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  %16 = load %struct._TileManager*, %struct._TileManager** %level.addr, align 8
  %call12 = call i32 @tile_manager_bpp(%struct._TileManager* %16)
  %mul = mul nsw i32 4096, %call12
  %conv = sitofp i32 %mul to double
  %mul13 = fmul double %conv, 1.500000e+00
  %conv14 = fptoui double %mul13 to i64
  %call15 = call noalias i8* @g_malloc(i64 %conv14)
  store i8* %call15, i8** %rlebuf, align 8
  %17 = load %struct._TileManager*, %struct._TileManager** %level.addr, align 8
  %ntile_rows = getelementptr inbounds %struct._TileManager, %struct._TileManager* %17, i32 0, i32 4
  %18 = load i32, i32* %ntile_rows, align 4
  %19 = load %struct._TileManager*, %struct._TileManager** %level.addr, align 8
  %ntile_cols = getelementptr inbounds %struct._TileManager, %struct._TileManager* %19, i32 0, i32 5
  %20 = load i32, i32* %ntile_cols, align 4
  %mul16 = mul nsw i32 %18, %20
  store i32 %mul16, i32* %ntiles, align 4
  %21 = load i32, i32* %ntiles, align 4
  %add17 = add i32 %21, 1
  %conv18 = zext i32 %add17 to i64
  %mul19 = mul i64 %conv18, 4
  %22 = alloca i8, i64 %mul19
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %offset_table, align 8
  %24 = load i32*, i32** %offset_table, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = load i32, i32* %ntiles, align 4
  %add20 = add i32 %26, 1
  %conv21 = zext i32 %add20 to i64
  %mul22 = mul i64 %conv21, 4
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 %mul22, i32 4, i1 false)
  %27 = load i32*, i32** %offset_table, align 8
  store i32* %27, i32** %next_offset, align 8
  %28 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp23 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %28, i32 0, i32 3
  %29 = load i32, i32* %cp23, align 4
  store i32 %29, i32* %saved_pos, align 4
  br label %do.body.24

do.body.24:                                       ; preds = %do.end.11
  %30 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp25 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %30, i32 0, i32 2
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp25, align 8
  %32 = load i32, i32* %ntiles, align 4
  %add26 = add i32 %32, 1
  %call27 = call i32 @xcf_write_zero_int32(%struct._IO_FILE* %31, i32 %add26, %struct._GError** %tmp_error)
  %33 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp28 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %33, i32 0, i32 3
  %34 = load i32, i32* %cp28, align 4
  %add29 = add i32 %34, %call27
  store i32 %add29, i32* %cp28, align 4
  %35 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool30 = icmp ne %struct._GError* %35, null
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %do.body.24
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %37 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %36, %struct._GError* %37)
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %do.body.24
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %38 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp34 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %38, i32 0, i32 3
  %39 = load i32, i32* %cp34, align 4
  store i32 %39, i32* %offset, align 4
  %40 = load %struct._TileManager*, %struct._TileManager** %level.addr, align 8
  %tiles = getelementptr inbounds %struct._TileManager, %struct._TileManager* %40, i32 0, i32 6
  %41 = load %struct._Tile**, %struct._Tile*** %tiles, align 8
  %tobool35 = icmp ne %struct._Tile** %41, null
  br i1 %tobool35, label %if.then.36, label %if.end.58

if.then.36:                                       ; preds = %do.end.33
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.36
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %ntiles, align 4
  %cmp = icmp ult i32 %42, %43
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %offset, align 4
  %45 = load i32*, i32** %next_offset, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %incdec.ptr, i32** %next_offset, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %compression = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %46, i32 0, i32 13
  %47 = load i32, i32* %compression, align 4
  switch i32 %47, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.45
    i32 2, label %sw.bb.55
    i32 3, label %sw.bb.56
  ]

sw.bb:                                            ; preds = %for.body
  br label %do.body.38

do.body.38:                                       ; preds = %sw.bb
  %48 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom = sext i32 %49 to i64
  %50 = load %struct._TileManager*, %struct._TileManager** %level.addr, align 8
  %tiles39 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %50, i32 0, i32 6
  %51 = load %struct._Tile**, %struct._Tile*** %tiles39, align 8
  %arrayidx = getelementptr inbounds %struct._Tile*, %struct._Tile** %51, i64 %idxprom
  %52 = load %struct._Tile*, %struct._Tile** %arrayidx, align 8
  %53 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call40 = call i32 @xcf_save_tile(%struct._XcfInfo* %48, %struct._Tile* %52, %struct._GError** %53)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %do.body.38
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %do.body.38
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %sw.epilog

sw.bb.45:                                         ; preds = %for.body
  br label %do.body.46

do.body.46:                                       ; preds = %sw.bb.45
  %54 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %55 to i64
  %56 = load %struct._TileManager*, %struct._TileManager** %level.addr, align 8
  %tiles48 = getelementptr inbounds %struct._TileManager, %struct._TileManager* %56, i32 0, i32 6
  %57 = load %struct._Tile**, %struct._Tile*** %tiles48, align 8
  %arrayidx49 = getelementptr inbounds %struct._Tile*, %struct._Tile** %57, i64 %idxprom47
  %58 = load %struct._Tile*, %struct._Tile** %arrayidx49, align 8
  %59 = load i8*, i8** %rlebuf, align 8
  %60 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call50 = call i32 @xcf_save_tile_rle(%struct._XcfInfo* %54, %struct._Tile* %58, i8* %59, %struct._GError** %60)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %do.body.46
  store i32 0, i32* %retval
  br label %return

if.end.53:                                        ; preds = %do.body.46
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %sw.epilog

sw.bb.55:                                         ; preds = %for.body
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0))
  br label %sw.epilog

sw.bb.56:                                         ; preds = %for.body
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.56, %sw.bb.55, %do.end.54, %do.end.44
  %61 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp57 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %61, i32 0, i32 3
  %62 = load i32, i32* %cp57, align 4
  store i32 %62, i32* %offset, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %63 = load i32, i32* %i, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.58

if.end.58:                                        ; preds = %for.end, %do.end.33
  %64 = load i8*, i8** %rlebuf, align 8
  call void @g_free(i8* %64)
  br label %do.body.59

do.body.59:                                       ; preds = %if.end.58
  %65 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %66 = load i32, i32* %saved_pos, align 4
  %67 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call60 = call i32 @xcf_seek_pos(%struct._XcfInfo* %65, i32 %66, %struct._GError** %67)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %do.body.59
  store i32 0, i32* %retval
  br label %return

if.end.63:                                        ; preds = %do.body.59
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  br label %do.body.65

do.body.65:                                       ; preds = %do.end.64
  %68 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp66 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %68, i32 0, i32 2
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %fp66, align 8
  %70 = load i32*, i32** %offset_table, align 8
  %71 = load i32, i32* %ntiles, align 4
  %add67 = add i32 %71, 1
  %call68 = call i32 @xcf_write_int32(%struct._IO_FILE* %69, i32* %70, i32 %add67, %struct._GError** %tmp_error)
  %72 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp69 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %72, i32 0, i32 3
  %73 = load i32, i32* %cp69, align 4
  %add70 = add i32 %73, %call68
  store i32 %add70, i32* %cp69, align 4
  %74 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool71 = icmp ne %struct._GError* %74, null
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %do.body.65
  %75 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %76 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %75, %struct._GError* %76)
  store i32 0, i32* %retval
  br label %return

if.end.73:                                        ; preds = %do.body.65
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  br label %do.body.75

do.body.75:                                       ; preds = %do.end.74
  %77 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %78 = load i32, i32* %offset, align 4
  %79 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call76 = call i32 @xcf_seek_pos(%struct._XcfInfo* %77, i32 %78, %struct._GError** %79)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %do.body.75
  store i32 0, i32* %retval
  br label %return

if.end.79:                                        ; preds = %do.body.75
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.80, %if.then.78, %if.then.72, %if.then.62, %if.then.52, %if.then.42, %if.then.31, %if.then.9, %if.then
  %80 = load i32, i32* %retval
  ret i32 %80
}

declare noalias i8* @g_malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal i32 @xcf_save_tile(%struct._XcfInfo* %info, %struct._Tile* %tile, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %tile.addr = alloca %struct._Tile*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %tmp_error = alloca %struct._GError*, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GError* null, %struct._GError** %tmp_error, align 8
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_lock(%struct._Tile* %0)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %1, i32 0, i32 2
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %3 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call = call i8* @tile_data_pointer(%struct._Tile* %3, i32 0, i32 0)
  %4 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call1 = call i32 @tile_size(%struct._Tile* %4)
  %call2 = call i32 @xcf_write_int8(%struct._IO_FILE* %2, i8* %call, i32 %call1, %struct._GError** %tmp_error)
  %5 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %5, i32 0, i32 3
  %6 = load i32, i32* %cp, align 4
  %add = add i32 %6, %call2
  store i32 %add, i32* %cp, align 4
  %7 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool = icmp ne %struct._GError* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %9 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %8, %struct._GError* %9)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_release(%struct._Tile* %10, i32 0)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_save_tile_rle(%struct._XcfInfo* %info, %struct._Tile* %tile, i8* %rlebuf, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %tile.addr = alloca %struct._Tile*, align 8
  %rlebuf.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %tmp_error = alloca %struct._GError*, align 8
  %len = alloca i32, align 4
  %bpp = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %state = alloca i32, align 4
  %length = alloca i32, align 4
  %count = alloca i32, align 4
  %size = alloca i32, align 4
  %last = alloca i32, align 4
  %t = alloca i8*, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  store i8* %rlebuf, i8** %rlebuf.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GError* null, %struct._GError** %tmp_error, align 8
  store i32 0, i32* %len, align 4
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_lock(%struct._Tile* %0)
  %1 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call = call i32 @tile_bpp(%struct._Tile* %1)
  store i32 %call, i32* %bpp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.126, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %bpp, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.128

for.body:                                         ; preds = %for.cond
  %4 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call1 = call i8* @tile_data_pointer(%struct._Tile* %4, i32 0, i32 0)
  %5 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call1, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8
  store i32 0, i32* %state, align 4
  store i32 0, i32* %length, align 4
  store i32 0, i32* %count, align 4
  %6 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call2 = call i32 @tile_ewidth(%struct._Tile* %6)
  %7 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call3 = call i32 @tile_eheight(%struct._Tile* %7)
  %mul = mul nsw i32 %call2, %call3
  store i32 %mul, i32* %size, align 4
  store i32 -1, i32* %last, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.118, %for.body
  %8 = load i32, i32* %size, align 4
  %cmp4 = icmp sgt i32 %8, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %state, align 4
  switch i32 %9, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.46
  ]

sw.bb:                                            ; preds = %while.body
  %10 = load i32, i32* %length, align 4
  %cmp5 = icmp eq i32 %10, 32768
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %11 = load i32, i32* %size, align 4
  %12 = load i32, i32* %length, align 4
  %sub = sub nsw i32 %11, %12
  %cmp6 = icmp sle i32 %sub, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %13 = load i32, i32* %length, align 4
  %cmp8 = icmp sgt i32 %13, 1
  br i1 %cmp8, label %land.lhs.true, label %if.else.36

land.lhs.true:                                    ; preds = %lor.lhs.false.7
  %14 = load i32, i32* %last, align 4
  %15 = load i8*, i8** %data, align 8
  %16 = load i8, i8* %15, align 1
  %conv = zext i8 %16 to i32
  %cmp9 = icmp ne i32 %14, %conv
  br i1 %cmp9, label %if.then, label %if.else.36

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %sw.bb
  %17 = load i32, i32* %length, align 4
  %18 = load i32, i32* %count, align 4
  %add = add nsw i32 %18, %17
  store i32 %add, i32* %count, align 4
  %19 = load i32, i32* %length, align 4
  %cmp11 = icmp sge i32 %19, 128
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then
  %20 = load i32, i32* %len, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %len, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load i8*, i8** %rlebuf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %idxprom
  store i8 127, i8* %arrayidx, align 1
  %22 = load i32, i32* %length, align 4
  %shr = ashr i32 %22, 8
  %conv14 = trunc i32 %shr to i8
  %23 = load i32, i32* %len, align 4
  %inc15 = add nsw i32 %23, 1
  store i32 %inc15, i32* %len, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load i8*, i8** %rlebuf.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %24, i64 %idxprom16
  store i8 %conv14, i8* %arrayidx17, align 1
  %25 = load i32, i32* %length, align 4
  %and = and i32 %25, 255
  %conv18 = trunc i32 %and to i8
  %26 = load i32, i32* %len, align 4
  %inc19 = add nsw i32 %26, 1
  store i32 %inc19, i32* %len, align 4
  %idxprom20 = sext i32 %26 to i64
  %27 = load i8*, i8** %rlebuf.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %27, i64 %idxprom20
  store i8 %conv18, i8* %arrayidx21, align 1
  %28 = load i32, i32* %last, align 4
  %conv22 = trunc i32 %28 to i8
  %29 = load i32, i32* %len, align 4
  %inc23 = add nsw i32 %29, 1
  store i32 %inc23, i32* %len, align 4
  %idxprom24 = sext i32 %29 to i64
  %30 = load i8*, i8** %rlebuf.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %30, i64 %idxprom24
  store i8 %conv22, i8* %arrayidx25, align 1
  br label %if.end

if.else:                                          ; preds = %if.then
  %31 = load i32, i32* %length, align 4
  %sub26 = sub nsw i32 %31, 1
  %conv27 = trunc i32 %sub26 to i8
  %32 = load i32, i32* %len, align 4
  %inc28 = add nsw i32 %32, 1
  store i32 %inc28, i32* %len, align 4
  %idxprom29 = sext i32 %32 to i64
  %33 = load i8*, i8** %rlebuf.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %33, i64 %idxprom29
  store i8 %conv27, i8* %arrayidx30, align 1
  %34 = load i32, i32* %last, align 4
  %conv31 = trunc i32 %34 to i8
  %35 = load i32, i32* %len, align 4
  %inc32 = add nsw i32 %35, 1
  store i32 %inc32, i32* %len, align 4
  %idxprom33 = sext i32 %35 to i64
  %36 = load i8*, i8** %rlebuf.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %36, i64 %idxprom33
  store i8 %conv31, i8* %arrayidx34, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  %37 = load i32, i32* %length, align 4
  %38 = load i32, i32* %size, align 4
  %sub35 = sub nsw i32 %38, %37
  store i32 %sub35, i32* %size, align 4
  store i32 0, i32* %length, align 4
  br label %if.end.45

if.else.36:                                       ; preds = %land.lhs.true, %lor.lhs.false.7
  %39 = load i32, i32* %length, align 4
  %cmp37 = icmp eq i32 %39, 1
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.44

land.lhs.true.39:                                 ; preds = %if.else.36
  %40 = load i32, i32* %last, align 4
  %41 = load i8*, i8** %data, align 8
  %42 = load i8, i8* %41, align 1
  %conv40 = zext i8 %42 to i32
  %cmp41 = icmp ne i32 %40, %conv40
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %land.lhs.true.39
  store i32 1, i32* %state, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %land.lhs.true.39, %if.else.36
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end
  br label %sw.epilog

sw.bb.46:                                         ; preds = %while.body
  %43 = load i32, i32* %length, align 4
  %cmp47 = icmp eq i32 %43, 32768
  br i1 %cmp47, label %if.then.70, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %sw.bb.46
  %44 = load i32, i32* %size, align 4
  %45 = load i32, i32* %length, align 4
  %sub50 = sub nsw i32 %44, %45
  %cmp51 = icmp eq i32 %sub50, 0
  br i1 %cmp51, label %if.then.70, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false.49
  %46 = load i32, i32* %length, align 4
  %cmp54 = icmp sgt i32 %46, 0
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.110

land.lhs.true.56:                                 ; preds = %lor.lhs.false.53
  %47 = load i32, i32* %last, align 4
  %48 = load i8*, i8** %data, align 8
  %49 = load i8, i8* %48, align 1
  %conv57 = zext i8 %49 to i32
  %cmp58 = icmp eq i32 %47, %conv57
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.110

land.lhs.true.60:                                 ; preds = %land.lhs.true.56
  %50 = load i32, i32* %size, align 4
  %51 = load i32, i32* %length, align 4
  %sub61 = sub nsw i32 %50, %51
  %cmp62 = icmp eq i32 %sub61, 1
  br i1 %cmp62, label %if.then.70, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %land.lhs.true.60
  %52 = load i32, i32* %last, align 4
  %53 = load i32, i32* %bpp, align 4
  %idxprom65 = sext i32 %53 to i64
  %54 = load i8*, i8** %data, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %54, i64 %idxprom65
  %55 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %55 to i32
  %cmp68 = icmp eq i32 %52, %conv67
  br i1 %cmp68, label %if.then.70, label %if.end.110

if.then.70:                                       ; preds = %lor.lhs.false.64, %land.lhs.true.60, %lor.lhs.false.49, %sw.bb.46
  %56 = load i32, i32* %length, align 4
  %57 = load i32, i32* %count, align 4
  %add71 = add nsw i32 %57, %56
  store i32 %add71, i32* %count, align 4
  store i32 0, i32* %state, align 4
  %58 = load i32, i32* %length, align 4
  %cmp72 = icmp sge i32 %58, 128
  br i1 %cmp72, label %if.then.74, label %if.else.88

if.then.74:                                       ; preds = %if.then.70
  %59 = load i32, i32* %len, align 4
  %inc75 = add nsw i32 %59, 1
  store i32 %inc75, i32* %len, align 4
  %idxprom76 = sext i32 %59 to i64
  %60 = load i8*, i8** %rlebuf.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %60, i64 %idxprom76
  store i8 -128, i8* %arrayidx77, align 1
  %61 = load i32, i32* %length, align 4
  %shr78 = ashr i32 %61, 8
  %conv79 = trunc i32 %shr78 to i8
  %62 = load i32, i32* %len, align 4
  %inc80 = add nsw i32 %62, 1
  store i32 %inc80, i32* %len, align 4
  %idxprom81 = sext i32 %62 to i64
  %63 = load i8*, i8** %rlebuf.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %63, i64 %idxprom81
  store i8 %conv79, i8* %arrayidx82, align 1
  %64 = load i32, i32* %length, align 4
  %and83 = and i32 %64, 255
  %conv84 = trunc i32 %and83 to i8
  %65 = load i32, i32* %len, align 4
  %inc85 = add nsw i32 %65, 1
  store i32 %inc85, i32* %len, align 4
  %idxprom86 = sext i32 %65 to i64
  %66 = load i8*, i8** %rlebuf.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %66, i64 %idxprom86
  store i8 %conv84, i8* %arrayidx87, align 1
  br label %if.end.95

if.else.88:                                       ; preds = %if.then.70
  %67 = load i32, i32* %length, align 4
  %sub89 = sub nsw i32 %67, 1
  %sub90 = sub nsw i32 255, %sub89
  %conv91 = trunc i32 %sub90 to i8
  %68 = load i32, i32* %len, align 4
  %inc92 = add nsw i32 %68, 1
  store i32 %inc92, i32* %len, align 4
  %idxprom93 = sext i32 %68 to i64
  %69 = load i8*, i8** %rlebuf.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %69, i64 %idxprom93
  store i8 %conv91, i8* %arrayidx94, align 1
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.88, %if.then.74
  %70 = load i8*, i8** %data, align 8
  %71 = load i32, i32* %length, align 4
  %72 = load i32, i32* %bpp, align 4
  %mul96 = mul nsw i32 %71, %72
  %idx.ext97 = sext i32 %mul96 to i64
  %idx.neg = sub i64 0, %idx.ext97
  %add.ptr98 = getelementptr inbounds i8, i8* %70, i64 %idx.neg
  store i8* %add.ptr98, i8** %t, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc, %if.end.95
  %73 = load i32, i32* %j, align 4
  %74 = load i32, i32* %length, align 4
  %cmp100 = icmp slt i32 %73, %74
  br i1 %cmp100, label %for.body.102, label %for.end

for.body.102:                                     ; preds = %for.cond.99
  %75 = load i8*, i8** %t, align 8
  %76 = load i8, i8* %75, align 1
  %77 = load i32, i32* %len, align 4
  %inc103 = add nsw i32 %77, 1
  store i32 %inc103, i32* %len, align 4
  %idxprom104 = sext i32 %77 to i64
  %78 = load i8*, i8** %rlebuf.addr, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %78, i64 %idxprom104
  store i8 %76, i8* %arrayidx105, align 1
  %79 = load i32, i32* %bpp, align 4
  %80 = load i8*, i8** %t, align 8
  %idx.ext106 = sext i32 %79 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %80, i64 %idx.ext106
  store i8* %add.ptr107, i8** %t, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.102
  %81 = load i32, i32* %j, align 4
  %inc108 = add nsw i32 %81, 1
  store i32 %inc108, i32* %j, align 4
  br label %for.cond.99

for.end:                                          ; preds = %for.cond.99
  %82 = load i32, i32* %length, align 4
  %83 = load i32, i32* %size, align 4
  %sub109 = sub nsw i32 %83, %82
  store i32 %sub109, i32* %size, align 4
  store i32 0, i32* %length, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %for.end, %lor.lhs.false.64, %land.lhs.true.56, %lor.lhs.false.53
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %if.end.110, %if.end.45
  %84 = load i32, i32* %size, align 4
  %cmp111 = icmp sgt i32 %84, 0
  br i1 %cmp111, label %if.then.113, label %if.end.118

if.then.113:                                      ; preds = %sw.epilog
  %85 = load i32, i32* %length, align 4
  %add114 = add nsw i32 %85, 1
  store i32 %add114, i32* %length, align 4
  %86 = load i8*, i8** %data, align 8
  %87 = load i8, i8* %86, align 1
  %conv115 = zext i8 %87 to i32
  store i32 %conv115, i32* %last, align 4
  %88 = load i32, i32* %bpp, align 4
  %89 = load i8*, i8** %data, align 8
  %idx.ext116 = sext i32 %88 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %89, i64 %idx.ext116
  store i8* %add.ptr117, i8** %data, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.113, %sw.epilog
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %90 = load i32, i32* %count, align 4
  %91 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call119 = call i32 @tile_ewidth(%struct._Tile* %91)
  %92 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call120 = call i32 @tile_eheight(%struct._Tile* %92)
  %mul121 = mul nsw i32 %call119, %call120
  %cmp122 = icmp ne i32 %90, %mul121
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %while.end
  %93 = load i32, i32* %count, align 4
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0), i32 %93)
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.124, %while.end
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.125
  %94 = load i32, i32* %i, align 4
  %inc127 = add nsw i32 %94, 1
  store i32 %inc127, i32* %i, align 4
  br label %for.cond

for.end.128:                                      ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end.128
  %95 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %95, i32 0, i32 2
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %97 = load i8*, i8** %rlebuf.addr, align 8
  %98 = load i32, i32* %len, align 4
  %call129 = call i32 @xcf_write_int8(%struct._IO_FILE* %96, i8* %97, i32 %98, %struct._GError** %tmp_error)
  %99 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %99, i32 0, i32 3
  %100 = load i32, i32* %cp, align 4
  %add130 = add i32 %100, %call129
  store i32 %add130, i32* %cp, align 4
  %101 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool = icmp ne %struct._GError* %101, null
  br i1 %tobool, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %do.body
  %102 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %103 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %102, %struct._GError* %103)
  store i32 0, i32* %retval
  br label %return

if.end.132:                                       ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.132
  %104 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  call void @tile_release(%struct._Tile* %104, i32 0)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.131
  %105 = load i32, i32* %retval
  ret i32 %105
}

; Function Attrs: nounwind uwtable
define internal void @g_error(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 4, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond

return:                                           ; No predecessors!
  ret void
}

declare void @tile_lock(%struct._Tile*) #1

declare i8* @tile_data_pointer(%struct._Tile*, i32, i32) #1

declare i32 @tile_size(%struct._Tile*) #1

declare void @tile_release(%struct._Tile*, i32) #1

declare i32 @tile_bpp(%struct._Tile*) #1

declare i32 @tile_ewidth(%struct._Tile*) #1

declare i32 @tile_eheight(%struct._Tile*) #1

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_save_channel_props(%struct._XcfInfo* %info, %struct._GimpImage* %image, %struct._GimpChannel* %channel, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %parasites = alloca %struct._GimpParasiteList*, align 8
  %col = alloca [3 x i8], align 1
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage* %1)
  %cmp = icmp eq %struct._GimpChannel* %0, %call
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %2 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %4 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %2, %struct._GimpImage* %3, i32 3, %struct._GError** %4)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %do.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.3

if.end.3:                                         ; preds = %do.end, %entry
  %5 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call4 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %6)
  %cmp5 = icmp eq %struct._GimpChannel* %5, %call4
  br i1 %cmp5, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %if.end.3
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.6
  %7 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call8 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %7, %struct._GimpImage* %8, i32 4, %struct._GError** %9)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %do.body.7
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %do.body.7
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  br label %if.end.13

if.end.13:                                        ; preds = %do.end.12, %if.end.3
  br label %do.body.14

do.body.14:                                       ; preds = %if.end.13
  %10 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call15 = call double @gimp_channel_get_opacity(%struct._GimpChannel* %13)
  %call16 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %10, %struct._GimpImage* %11, i32 6, %struct._GError** %12, double %call15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %do.body.14
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %do.body.14
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %do.body.21

do.body.21:                                       ; preds = %do.end.20
  %14 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %17 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %18 = bitcast %struct._GimpChannel* %17 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call22)
  %19 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %call24 = call i32 @gimp_item_get_visible(%struct._GimpItem* %19)
  %call25 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %14, %struct._GimpImage* %15, i32 8, %struct._GError** %16, i32 %call24)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %do.body.21
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %do.body.21
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %do.body.30

do.body.30:                                       ; preds = %do.end.29
  %20 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %23 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %24 = bitcast %struct._GimpChannel* %23 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_item_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call31)
  %25 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpItem*
  %call33 = call i32 @gimp_item_get_linked(%struct._GimpItem* %25)
  %call34 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %20, %struct._GimpImage* %21, i32 9, %struct._GError** %22, i32 %call33)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %do.body.30
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %do.body.30
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %29 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %30 = bitcast %struct._GimpChannel* %29 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call40)
  %31 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_get_lock_content(%struct._GimpItem* %31)
  %call43 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %26, %struct._GimpImage* %27, i32 28, %struct._GError** %28, i32 %call42)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %do.body.39
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %do.body.39
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %32 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %34 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %35 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call49 = call i32 @gimp_channel_get_show_masked(%struct._GimpChannel* %35)
  %call50 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %32, %struct._GimpImage* %33, i32 14, %struct._GError** %34, i32 %call49)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %do.body.48
  store i32 0, i32* %retval
  br label %return

if.end.53:                                        ; preds = %do.body.48
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  %36 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %color = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %36, i32 0, i32 1
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %col, i32 0, i64 0
  %arrayidx55 = getelementptr inbounds [3 x i8], [3 x i8]* %col, i32 0, i64 1
  %arrayidx56 = getelementptr inbounds [3 x i8], [3 x i8]* %col, i32 0, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* %arrayidx, i8* %arrayidx55, i8* %arrayidx56)
  br label %do.body.57

do.body.57:                                       ; preds = %do.end.54
  %37 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %38 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %39 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %col, i32 0, i32 0
  %call58 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %37, %struct._GimpImage* %38, i32 16, %struct._GError** %39, i8* %arraydecay)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %do.body.57
  store i32 0, i32* %retval
  br label %return

if.end.61:                                        ; preds = %do.body.57
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %do.body.63

do.body.63:                                       ; preds = %do.end.62
  %40 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %43 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %44 = bitcast %struct._GimpChannel* %43 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_item_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call64)
  %45 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpItem*
  %call66 = call i32 @gimp_item_get_tattoo(%struct._GimpItem* %45)
  %call67 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %40, %struct._GimpImage* %41, i32 20, %struct._GError** %42, i32 %call66)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %do.body.63
  store i32 0, i32* %retval
  br label %return

if.end.70:                                        ; preds = %do.body.63
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  %46 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %47 = bitcast %struct._GimpChannel* %46 to %struct._GTypeInstance*
  %call72 = call i64 @gimp_item_get_type() #6
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call72)
  %48 = bitcast %struct._GTypeInstance* %call73 to %struct._GimpItem*
  %call74 = call %struct._GimpParasiteList* @gimp_item_get_parasites(%struct._GimpItem* %48)
  store %struct._GimpParasiteList* %call74, %struct._GimpParasiteList** %parasites, align 8
  %49 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %call75 = call i32 @gimp_parasite_list_length(%struct._GimpParasiteList* %49)
  %cmp76 = icmp sgt i32 %call75, 0
  br i1 %cmp76, label %if.then.77, label %if.end.84

if.then.77:                                       ; preds = %do.end.71
  br label %do.body.78

do.body.78:                                       ; preds = %if.then.77
  %50 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %52 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %53 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %call79 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %50, %struct._GimpImage* %51, i32 21, %struct._GError** %52, %struct._GimpParasiteList* %53)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.end.82, label %if.then.81

if.then.81:                                       ; preds = %do.body.78
  store i32 0, i32* %retval
  br label %return

if.end.82:                                        ; preds = %do.body.78
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  br label %if.end.84

if.end.84:                                        ; preds = %do.end.83, %do.end.71
  br label %do.body.85

do.body.85:                                       ; preds = %if.end.84
  %54 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %56 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call86 = call i32 (%struct._XcfInfo*, %struct._GimpImage*, i32, %struct._GError**, ...) @xcf_save_prop(%struct._XcfInfo* %54, %struct._GimpImage* %55, i32 0, %struct._GError** %56)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.end.89, label %if.then.88

if.then.88:                                       ; preds = %do.body.85
  store i32 0, i32* %retval
  br label %return

if.end.89:                                        ; preds = %do.body.85
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.90, %if.then.88, %if.then.81, %if.then.69, %if.then.60, %if.then.52, %if.then.45, %if.then.36, %if.then.27, %if.then.18, %if.then.10, %if.then.2
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage*) #1

declare double @gimp_channel_get_opacity(%struct._GimpChannel*) #1

declare i32 @gimp_channel_get_show_masked(%struct._GimpChannel*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
