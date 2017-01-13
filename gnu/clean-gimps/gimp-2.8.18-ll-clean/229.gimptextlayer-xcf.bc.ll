; ModuleID = './app/text/gimptextlayer-xcf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpDrawablePrivate = type { i32, %struct._TileManager*, %struct._TileManager*, %struct._GeglNode*, %struct._GeglNode*, %struct._GimpLayer*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GSList*, i32 }
%struct._TileManager = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpText = type { %struct._GimpObject, i8*, i8*, i8*, i32, double, i32, i32, i32, i8*, i32, %struct._GimpRGB, i32, i32, double, double, double, i32, double, double, i32, %struct._GimpMatrix2, double, double, double }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GError = type { i32, i32, i8* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
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
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpTextLayer = type { %struct._GimpLayer, %struct._GimpText*, i8*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Text\00", align 1
@__func__.gimp_text_layer_xcf_load_hack = private unnamed_addr constant [30 x i8] c"gimp_text_layer_xcf_load_hack\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"layer != NULL\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"GIMP_IS_LAYER (*layer)\00", align 1
@.str.3 = private unnamed_addr constant [166 x i8] c"Problems parsing the text parasite for layer '%s':\0A%s\0A\0ASome text properties may be wrong. Unless you want to edit the text layer, you don't need to worry about this.\00", align 1
@__func__.gimp_text_layer_xcf_save_prepare = private unnamed_addr constant [33 x i8] c"gimp_text_layer_xcf_save_prepare\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"GIMP_IS_TEXT_LAYER (layer)\00", align 1
@__func__.gimp_text_layer_get_xcf_flags = private unnamed_addr constant [30 x i8] c"gimp_text_layer_get_xcf_flags\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"GIMP_IS_TEXT_LAYER (text_layer)\00", align 1
@__func__.gimp_text_layer_set_xcf_flags = private unnamed_addr constant [30 x i8] c"gimp_text_layer_set_xcf_flags\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"auto-rename\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"modified\00", align 1
@__func__.gimp_text_layer_from_layer = private unnamed_addr constant [27 x i8] c"gimp_text_layer_from_layer\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"GIMP_IS_LAYER (layer)\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"GIMP_IS_TEXT (text)\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"image\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_text_layer_xcf_load_hack(%struct._GimpLayer** %layer) #0 {
entry:
  %retval = alloca i32, align 4
  %layer.addr = alloca %struct._GimpLayer**, align 8
  %name = alloca i8*, align 8
  %text = alloca %struct._GimpText*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  store %struct._GimpLayer** %layer, %struct._GimpLayer*** %layer.addr, align 8
  store %struct._GimpText* null, %struct._GimpText** %text, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %cmp = icmp ne %struct._GimpLayer** %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_text_layer_xcf_load_hack, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %2 = load %struct._GimpLayer*, %struct._GimpLayer** %1, align 8
  %3 = bitcast %struct._GimpLayer* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #5
  store i64 %call, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else.3, label %if.then.2

if.then.2:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.3:                                        ; preds = %do.body.1
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.3
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %9, %10
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.3
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #6
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_text_layer_xcf_load_hack, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %call17 = call i8* @gimp_text_parasite_name() #5
  store i8* %call17, i8** %name, align 8
  %15 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %16 = load %struct._GimpLayer*, %struct._GimpLayer** %15, align 8
  %17 = bitcast %struct._GimpLayer* %16 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %19 = load i8*, i8** %name, align 8
  %call20 = call %struct._GimpParasite* @gimp_item_parasite_find(%struct._GimpItem* %18, i8* %19)
  store %struct._GimpParasite* %call20, %struct._GimpParasite** %parasite, align 8
  %20 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool21 = icmp ne %struct._GimpParasite* %20, null
  br i1 %tobool21, label %if.then.22, label %if.else.33

if.then.22:                                       ; preds = %do.end.16
  store %struct._GError* null, %struct._GError** %error, align 8
  %21 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call24 = call %struct._GimpText* @gimp_text_from_parasite(%struct._GimpParasite* %21, %struct._GError** %error)
  store %struct._GimpText* %call24, %struct._GimpText** %text, align 8
  %22 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool25 = icmp ne %struct._GError* %22, null
  br i1 %tobool25, label %if.then.26, label %if.end.32

if.then.26:                                       ; preds = %if.then.22
  %23 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %24 = load %struct._GimpLayer*, %struct._GimpLayer** %23, align 8
  %25 = bitcast %struct._GimpLayer* %24 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_item_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call27)
  %26 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpItem*
  %call29 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %26)
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %call29, i32 0, i32 1
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str.3, i32 0, i32 0)) #7
  %28 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %29 = load %struct._GimpLayer*, %struct._GimpLayer** %28, align 8
  %30 = bitcast %struct._GimpLayer* %29 to i8*
  %call31 = call i8* @gimp_object_get_name(i8* %30)
  %31 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %31, i32 0, i32 2
  %32 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %27, %struct._GObject* null, i32 2, i8* %call30, i8* %call31, i8* %32)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.26, %if.then.22
  br label %if.end.42

if.else.33:                                       ; preds = %do.end.16
  %call34 = call i8* @gimp_text_gdyntext_parasite_name() #5
  store i8* %call34, i8** %name, align 8
  %33 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %34 = load %struct._GimpLayer*, %struct._GimpLayer** %33, align 8
  %35 = bitcast %struct._GimpLayer* %34 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_item_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call35)
  %36 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpItem*
  %37 = load i8*, i8** %name, align 8
  %call37 = call %struct._GimpParasite* @gimp_item_parasite_find(%struct._GimpItem* %36, i8* %37)
  store %struct._GimpParasite* %call37, %struct._GimpParasite** %parasite, align 8
  %38 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool38 = icmp ne %struct._GimpParasite* %38, null
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.else.33
  %39 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call40 = call %struct._GimpText* @gimp_text_from_gdyntext_parasite(%struct._GimpParasite* %39)
  store %struct._GimpText* %call40, %struct._GimpText** %text, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.else.33
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.32
  %40 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool43 = icmp ne %struct._GimpText* %40, null
  br i1 %tobool43, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %if.end.42
  %41 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %42 = load %struct._GimpLayer*, %struct._GimpLayer** %41, align 8
  %43 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %call45 = call %struct._GimpLayer* @gimp_text_layer_from_layer(%struct._GimpLayer* %42, %struct._GimpText* %43)
  %44 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  store %struct._GimpLayer* %call45, %struct._GimpLayer** %44, align 8
  %45 = load i8*, i8** %name, align 8
  %46 = load %struct._GimpLayer**, %struct._GimpLayer*** %layer.addr, align 8
  %47 = load %struct._GimpLayer*, %struct._GimpLayer** %46, align 8
  %48 = bitcast %struct._GimpLayer* %47 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_text_layer_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call46)
  %49 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpTextLayer*
  %text_parasite = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %49, i32 0, i32 2
  store i8* %45, i8** %text_parasite, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.44, %if.end.42
  %50 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %cmp49 = icmp ne %struct._GimpText* %50, null
  %conv = zext i1 %cmp49 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.else.14, %if.else
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_text_parasite_name() #2

declare %struct._GimpParasite* @gimp_item_parasite_find(%struct._GimpItem*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpText* @gimp_text_from_parasite(%struct._GimpParasite*, %struct._GError**) #1

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @gimp_object_get_name(i8*) #1

declare void @g_clear_error(%struct._GError**) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_text_gdyntext_parasite_name() #2

declare %struct._GimpText* @gimp_text_from_gdyntext_parasite(%struct._GimpParasite*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpLayer* @gimp_text_layer_from_layer(%struct._GimpLayer* %layer, %struct._GimpText* %text) #0 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %text.addr = alloca %struct._GimpText*, align 8
  %text_layer = alloca %struct._GimpTextLayer*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_text_layer_from_layer, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %14 = bitcast %struct._GimpText* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_text_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_text_layer_from_layer, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call i64 @gimp_text_layer_get_type() #5
  %26 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %27 = bitcast %struct._GimpLayer* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %28)
  %call43 = call i8* (i64, i8*, ...) @g_object_new(i64 %call39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), %struct._GimpImage* %call42, i8* null)
  %29 = bitcast i8* %call43 to %struct._GimpTextLayer*
  store %struct._GimpTextLayer* %29, %struct._GimpTextLayer** %text_layer, align 8
  %30 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer, align 8
  %31 = bitcast %struct._GimpTextLayer* %30 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_item_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call44)
  %32 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpItem*
  %33 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %34 = bitcast %struct._GimpLayer* %33 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_item_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call46)
  %35 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpItem*
  call void @gimp_item_replace_item(%struct._GimpItem* %32, %struct._GimpItem* %35)
  %36 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer, align 8
  %37 = bitcast %struct._GimpTextLayer* %36 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_drawable_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call48)
  %38 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %38, %struct._GimpDrawable** %drawable, align 8
  %39 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %40 = bitcast %struct._GimpLayer* %39 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_drawable_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call50)
  %41 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpDrawable*
  %call52 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %41)
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %42, i32 0, i32 1
  %43 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %type = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %43, i32 0, i32 0
  store i32 %call52, i32* %type, align 4
  %44 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %45 = bitcast %struct._GimpLayer* %44 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_drawable_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call53)
  %46 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpDrawable*
  %call55 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %46)
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private56 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %47, i32 0, i32 1
  %48 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private56, align 8
  %tiles = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %48, i32 0, i32 1
  store %struct._TileManager* %call55, %struct._TileManager** %tiles, align 8
  %49 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %50 = bitcast %struct._GimpLayer* %49 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_drawable_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call57)
  %51 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpDrawable*
  %private59 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %51, i32 0, i32 1
  %52 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private59, align 8
  %tiles60 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %52, i32 0, i32 1
  store %struct._TileManager* null, %struct._TileManager** %tiles60, align 8
  %53 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer, align 8
  %54 = bitcast %struct._GimpTextLayer* %53 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_layer_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call61)
  %55 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpLayer*
  %56 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call63 = call double @gimp_layer_get_opacity(%struct._GimpLayer* %56)
  call void @gimp_layer_set_opacity(%struct._GimpLayer* %55, double %call63, i32 0)
  %57 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer, align 8
  %58 = bitcast %struct._GimpTextLayer* %57 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_layer_get_type() #5
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call64)
  %59 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpLayer*
  %60 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call66 = call i32 @gimp_layer_get_mode(%struct._GimpLayer* %60)
  call void @gimp_layer_set_mode(%struct._GimpLayer* %59, i32 %call66, i32 0)
  %61 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer, align 8
  %62 = bitcast %struct._GimpTextLayer* %61 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_layer_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call67)
  %63 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpLayer*
  %64 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call69 = call i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer* %64)
  call void @gimp_layer_set_lock_alpha(%struct._GimpLayer* %63, i32 %call69, i32 0)
  %65 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer, align 8
  %66 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  call void @gimp_text_layer_set_text(%struct._GimpTextLayer* %65, %struct._GimpText* %66)
  %67 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %68 = bitcast %struct._GimpText* %67 to i8*
  call void @g_object_unref(i8* %68)
  %69 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %70 = bitcast %struct._GimpLayer* %69 to i8*
  call void @g_object_unref(i8* %70)
  %71 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer, align 8
  %72 = bitcast %struct._GimpTextLayer* %71 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_layer_get_type() #5
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call70)
  %73 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpLayer*
  store %struct._GimpLayer* %73, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  %74 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %74
}

; Function Attrs: nounwind readnone
declare i64 @gimp_text_layer_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_text_layer_xcf_save_prepare(%struct._GimpTextLayer* %layer) #0 {
entry:
  %layer.addr = alloca %struct._GimpTextLayer*, align 8
  %text = alloca %struct._GimpText*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %parasite = alloca %struct._GimpParasite*, align 8
  store %struct._GimpTextLayer* %layer, %struct._GimpTextLayer** %layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpTextLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_layer_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_text_layer_xcf_save_prepare, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.21

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text_parasite = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %13, i32 0, i32 2
  %14 = load i8*, i8** %text_parasite, align 8
  %tobool11 = icmp ne i8* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  br label %if.end.21

if.end.13:                                        ; preds = %do.end
  %15 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %call14 = call %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer* %15)
  store %struct._GimpText* %call14, %struct._GimpText** %text, align 8
  %16 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool15 = icmp ne %struct._GimpText* %16, null
  br i1 %tobool15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.13
  %17 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %call18 = call %struct._GimpParasite* @gimp_text_to_parasite(%struct._GimpText* %17)
  store %struct._GimpParasite* %call18, %struct._GimpParasite** %parasite, align 8
  %18 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %19 = bitcast %struct._GimpTextLayer* %18 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call19)
  %20 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %21 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_item_parasite_attach(%struct._GimpItem* %20, %struct._GimpParasite* %21, i32 0)
  %22 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %22)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.9, %if.then.12, %if.then.16, %if.end.13
  ret void
}

declare %struct._GimpText* @gimp_text_layer_get_text(%struct._GimpTextLayer*) #1

declare %struct._GimpParasite* @gimp_text_to_parasite(%struct._GimpText*) #1

declare void @gimp_item_parasite_attach(%struct._GimpItem*, %struct._GimpParasite*, i32) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_text_layer_get_xcf_flags(%struct._GimpTextLayer* %text_layer) #0 {
entry:
  %retval = alloca i32, align 4
  %text_layer.addr = alloca %struct._GimpTextLayer*, align 8
  %flags = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextLayer* %text_layer, %struct._GimpTextLayer** %text_layer.addr, align 8
  store i32 0, i32* %flags, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer.addr, align 8
  %1 = bitcast %struct._GimpTextLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_layer_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_text_layer_get_xcf_flags, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer.addr, align 8
  %auto_rename = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %13, i32 0, i32 3
  %14 = load i32, i32* %auto_rename, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  %15 = load i32, i32* %flags, align 4
  %or = or i32 %15, 1
  store i32 %or, i32* %flags, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %do.end
  %16 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer.addr, align 8
  %modified = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %16, i32 0, i32 4
  %17 = load i32, i32* %modified, align 4
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.13
  %18 = load i32, i32* %flags, align 4
  %or16 = or i32 %18, 2
  store i32 %or16, i32* %flags, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  %19 = load i32, i32* %flags, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.else.9
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define void @gimp_text_layer_set_xcf_flags(%struct._GimpTextLayer* %text_layer, i32 %flags) #0 {
entry:
  %text_layer.addr = alloca %struct._GimpTextLayer*, align 8
  %flags.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextLayer* %text_layer, %struct._GimpTextLayer** %text_layer.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer.addr, align 8
  %1 = bitcast %struct._GimpTextLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_layer_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_text_layer_set_xcf_flags, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer.addr, align 8
  %14 = bitcast %struct._GimpTextLayer* %13 to i8*
  %15 = load i32, i32* %flags.addr, align 4
  %and = and i32 %15, 1
  %cmp11 = icmp eq i32 %and, 0
  %conv = zext i1 %cmp11 to i32
  %16 = load i32, i32* %flags.addr, align 4
  %and12 = and i32 %16, 2
  %cmp13 = icmp ne i32 %and12, 0
  %conv14 = zext i1 %cmp13 to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 %conv, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 %conv14, i8* null)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @gimp_item_replace_item(%struct._GimpItem*, %struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

declare void @gimp_layer_set_opacity(%struct._GimpLayer*, double, i32) #1

declare double @gimp_layer_get_opacity(%struct._GimpLayer*) #1

declare void @gimp_layer_set_mode(%struct._GimpLayer*, i32, i32) #1

declare i32 @gimp_layer_get_mode(%struct._GimpLayer*) #1

declare void @gimp_layer_set_lock_alpha(%struct._GimpLayer*, i32, i32) #1

declare i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer*) #1

declare void @gimp_text_layer_set_text(%struct._GimpTextLayer*, %struct._GimpText*) #1

declare void @g_object_unref(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
