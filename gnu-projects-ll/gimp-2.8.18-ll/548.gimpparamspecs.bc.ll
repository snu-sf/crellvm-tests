; ModuleID = './app/core/gimpparamspecs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GParamSpecClass = type { %struct._GTypeClass, i64, void (%struct._GParamSpec*)*, void (%struct._GParamSpec*, %struct._GValue*)*, i32 (%struct._GParamSpec*, %struct._GValue*)*, i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)*, [4 x i8*] }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GData = type opaque
%struct._GParamSpecInt = type { %struct._GParamSpec, i32, i32, i32 }
%struct._GimpParamSpecString = type { %struct._GParamSpecString, i8 }
%struct._GParamSpecString = type { %struct._GParamSpec, i8*, i8*, i8*, i8, i8 }
%struct._GimpParamSpecEnum = type { %struct._GParamSpecEnum, %struct._GSList* }
%struct._GParamSpecEnum = type { %struct._GParamSpec, %struct._GEnumClass*, i32 }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpParamSpecImageID = type { %struct._GParamSpecInt, %struct._Gimp*, i32 }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpParamSpecItemID = type { %struct._GParamSpecInt, %struct._Gimp*, i64, i32 }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._BoundSeg = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._GimpSelection = type { %struct._GimpChannel, i32 }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, i8**, i32, i32, double, double, double, double }
%struct._GimpParamSpecDisplayID = type { %struct._GParamSpecInt, %struct._Gimp*, i32 }
%struct._GimpArray = type { i8*, i64, i32 }
%struct._GimpParamSpecArray = type { %struct._GParamSpecBoxed }
%struct._GParamSpecBoxed = type { %struct._GParamSpec }
%struct._GimpParamSpecStringArray = type { %struct._GParamSpecBoxed }
%struct._GimpParamSpecColorArray = type { %struct._GParamSpecBoxed }

@gimp_int32_get_type.type = internal global i64 0, align 8
@gimp_int32_get_type.info = internal constant %struct._GTypeInfo zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"GimpInt32\00", align 1
@gimp_param_int32_get_type.type = internal global i64 0, align 8
@gimp_param_int32_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_int32_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 88, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_int32_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@g_param_spec_types = external global i64*, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"GimpParamInt32\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_param_spec_int32 = private unnamed_addr constant [22 x i8] c"gimp_param_spec_int32\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"minimum >= G_MININT32\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"maximum <= G_MAXINT32\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"default_value >= minimum && default_value <= maximum\00", align 1
@gimp_int16_get_type.type = internal global i64 0, align 8
@gimp_int16_get_type.info = internal constant %struct._GTypeInfo zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"GimpInt16\00", align 1
@gimp_param_int16_get_type.type = internal global i64 0, align 8
@gimp_param_int16_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_int16_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 88, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_int16_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"GimpParamInt16\00", align 1
@__func__.gimp_param_spec_int16 = private unnamed_addr constant [22 x i8] c"gimp_param_spec_int16\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"minimum >= G_MININT16\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"maximum <= G_MAXINT16\00", align 1
@gimp_int8_get_type.type = internal global i64 0, align 8
@gimp_int8_get_type.info = internal constant %struct._GTypeInfo zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"GimpInt8\00", align 1
@gimp_param_int8_get_type.type = internal global i64 0, align 8
@gimp_param_int8_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_int8_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 88, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_int8_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"GimpParamInt8\00", align 1
@__func__.gimp_param_spec_int8 = private unnamed_addr constant [21 x i8] c"gimp_param_spec_int8\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"maximum <= G_MAXUINT8\00", align 1
@gimp_param_string_get_type.type = internal global i64 0, align 8
@gimp_param_string_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_string_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 112, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_string_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"GimpParamString\00", align 1
@__func__.gimp_param_spec_string = private unnamed_addr constant [23 x i8] c"gimp_param_spec_string\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"! (null_ok && non_empty)\00", align 1
@gimp_param_enum_get_type.type = internal global i64 0, align 8
@gimp_param_enum_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_enum_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 96, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_enum_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.15 = private unnamed_addr constant [14 x i8] c"GimpParamEnum\00", align 1
@__func__.gimp_param_spec_enum = private unnamed_addr constant [21 x i8] c"gimp_param_spec_enum\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"G_TYPE_IS_ENUM (enum_type)\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"g_enum_get_value (enum_class, default_value) != NULL\00", align 1
@__func__.gimp_param_spec_enum_exclude_value = private unnamed_addr constant [35 x i8] c"gimp_param_spec_enum_exclude_value\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"GIMP_IS_PARAM_SPEC_ENUM (espec)\00", align 1
@.str.19 = private unnamed_addr constant [72 x i8] c"g_enum_get_value (G_PARAM_SPEC_ENUM (espec)->enum_class, value) != NULL\00", align 1
@gimp_image_id_get_type.type = internal global i64 0, align 8
@gimp_image_id_get_type.info = internal constant %struct._GTypeInfo zeroinitializer, align 8
@.str.20 = private unnamed_addr constant [12 x i8] c"GimpImageID\00", align 1
@gimp_param_image_id_get_type.type = internal global i64 0, align 8
@gimp_param_image_id_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_image_id_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 104, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_image_id_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.21 = private unnamed_addr constant [17 x i8] c"GimpParamImageID\00", align 1
@__func__.gimp_param_spec_image_id = private unnamed_addr constant [25 x i8] c"gimp_param_spec_image_id\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@__func__.gimp_value_get_image = private unnamed_addr constant [21 x i8] c"gimp_value_get_image\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"GIMP_VALUE_HOLDS_IMAGE_ID (value)\00", align 1
@__func__.gimp_value_set_image = private unnamed_addr constant [21 x i8] c"gimp_value_set_image\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"image == NULL || GIMP_IS_IMAGE (image)\00", align 1
@gimp_item_id_get_type.type = internal global i64 0, align 8
@gimp_item_id_get_type.info = internal constant %struct._GTypeInfo zeroinitializer, align 8
@.str.25 = private unnamed_addr constant [11 x i8] c"GimpItemID\00", align 1
@gimp_param_item_id_get_type.type = internal global i64 0, align 8
@gimp_param_item_id_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_item_id_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 112, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_item_id_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.26 = private unnamed_addr constant [16 x i8] c"GimpParamItemID\00", align 1
@__func__.gimp_param_spec_item_id = private unnamed_addr constant [24 x i8] c"gimp_param_spec_item_id\00", align 1
@__func__.gimp_value_get_item = private unnamed_addr constant [20 x i8] c"gimp_value_get_item\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"GIMP_VALUE_HOLDS_ITEM_ID (value)\00", align 1
@__func__.gimp_value_set_item = private unnamed_addr constant [20 x i8] c"gimp_value_set_item\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"item == NULL || GIMP_IS_ITEM (item)\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"gimpparamspecs.c\00", align 1
@gimp_drawable_id_get_type.type = internal global i64 0, align 8
@gimp_drawable_id_get_type.info = internal constant %struct._GTypeInfo zeroinitializer, align 8
@.str.31 = private unnamed_addr constant [15 x i8] c"GimpDrawableID\00", align 1
@gimp_param_drawable_id_get_type.type = internal global i64 0, align 8
@gimp_param_drawable_id_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_drawable_id_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 112, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_drawable_id_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.32 = private unnamed_addr constant [20 x i8] c"GimpParamDrawableID\00", align 1
@__func__.gimp_param_spec_drawable_id = private unnamed_addr constant [28 x i8] c"gimp_param_spec_drawable_id\00", align 1
@__func__.gimp_value_get_drawable = private unnamed_addr constant [24 x i8] c"gimp_value_get_drawable\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"GIMP_VALUE_HOLDS_DRAWABLE_ID (value)\00", align 1
@__func__.gimp_value_set_drawable = private unnamed_addr constant [24 x i8] c"gimp_value_set_drawable\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"drawable == NULL || GIMP_IS_DRAWABLE (drawable)\00", align 1
@gimp_layer_id_get_type.type = internal global i64 0, align 8
@gimp_layer_id_get_type.info = internal constant %struct._GTypeInfo zeroinitializer, align 8
@.str.35 = private unnamed_addr constant [12 x i8] c"GimpLayerID\00", align 1
@gimp_param_layer_id_get_type.type = internal global i64 0, align 8
@gimp_param_layer_id_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_layer_id_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 112, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_layer_id_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.36 = private unnamed_addr constant [17 x i8] c"GimpParamLayerID\00", align 1
@__func__.gimp_param_spec_layer_id = private unnamed_addr constant [25 x i8] c"gimp_param_spec_layer_id\00", align 1
@__func__.gimp_value_get_layer = private unnamed_addr constant [21 x i8] c"gimp_value_get_layer\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"GIMP_VALUE_HOLDS_LAYER_ID (value)\00", align 1
@__func__.gimp_value_set_layer = private unnamed_addr constant [21 x i8] c"gimp_value_set_layer\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"layer == NULL || GIMP_IS_LAYER (layer)\00", align 1
@gimp_channel_id_get_type.type = internal global i64 0, align 8
@gimp_channel_id_get_type.info = internal constant %struct._GTypeInfo zeroinitializer, align 8
@.str.39 = private unnamed_addr constant [14 x i8] c"GimpChannelID\00", align 1
@gimp_param_channel_id_get_type.type = internal global i64 0, align 8
@gimp_param_channel_id_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_channel_id_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 112, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_channel_id_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.40 = private unnamed_addr constant [19 x i8] c"GimpParamChannelID\00", align 1
@__func__.gimp_param_spec_channel_id = private unnamed_addr constant [27 x i8] c"gimp_param_spec_channel_id\00", align 1
@__func__.gimp_value_get_channel = private unnamed_addr constant [23 x i8] c"gimp_value_get_channel\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"GIMP_VALUE_HOLDS_CHANNEL_ID (value)\00", align 1
@__func__.gimp_value_set_channel = private unnamed_addr constant [23 x i8] c"gimp_value_set_channel\00", align 1
@.str.42 = private unnamed_addr constant [45 x i8] c"channel == NULL || GIMP_IS_CHANNEL (channel)\00", align 1
@gimp_layer_mask_id_get_type.type = internal global i64 0, align 8
@gimp_layer_mask_id_get_type.info = internal constant %struct._GTypeInfo zeroinitializer, align 8
@.str.43 = private unnamed_addr constant [16 x i8] c"GimpLayerMaskID\00", align 1
@gimp_param_layer_mask_id_get_type.type = internal global i64 0, align 8
@gimp_param_layer_mask_id_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_layer_mask_id_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 112, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_layer_mask_id_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.44 = private unnamed_addr constant [21 x i8] c"GimpParamLayerMaskID\00", align 1
@__func__.gimp_param_spec_layer_mask_id = private unnamed_addr constant [30 x i8] c"gimp_param_spec_layer_mask_id\00", align 1
@__func__.gimp_value_get_layer_mask = private unnamed_addr constant [26 x i8] c"gimp_value_get_layer_mask\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"GIMP_VALUE_HOLDS_LAYER_MASK_ID (value)\00", align 1
@__func__.gimp_value_set_layer_mask = private unnamed_addr constant [26 x i8] c"gimp_value_set_layer_mask\00", align 1
@.str.46 = private unnamed_addr constant [54 x i8] c"layer_mask == NULL || GIMP_IS_LAYER_MASK (layer_mask)\00", align 1
@gimp_selection_id_get_type.type = internal global i64 0, align 8
@gimp_selection_id_get_type.info = internal constant %struct._GTypeInfo zeroinitializer, align 8
@.str.47 = private unnamed_addr constant [16 x i8] c"GimpSelectionID\00", align 1
@gimp_param_selection_id_get_type.type = internal global i64 0, align 8
@gimp_param_selection_id_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_selection_id_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 112, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_selection_id_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.48 = private unnamed_addr constant [21 x i8] c"GimpParamSelectionID\00", align 1
@__func__.gimp_param_spec_selection_id = private unnamed_addr constant [29 x i8] c"gimp_param_spec_selection_id\00", align 1
@__func__.gimp_value_get_selection = private unnamed_addr constant [25 x i8] c"gimp_value_get_selection\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"GIMP_VALUE_HOLDS_SELECTION_ID (value)\00", align 1
@__func__.gimp_value_set_selection = private unnamed_addr constant [25 x i8] c"gimp_value_set_selection\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"selection == NULL || GIMP_IS_SELECTION (selection)\00", align 1
@gimp_vectors_id_get_type.type = internal global i64 0, align 8
@gimp_vectors_id_get_type.info = internal constant %struct._GTypeInfo zeroinitializer, align 8
@.str.51 = private unnamed_addr constant [14 x i8] c"GimpVectorsID\00", align 1
@gimp_param_vectors_id_get_type.type = internal global i64 0, align 8
@gimp_param_vectors_id_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_vectors_id_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 112, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_vectors_id_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.52 = private unnamed_addr constant [19 x i8] c"GimpParamVectorsID\00", align 1
@__func__.gimp_param_spec_vectors_id = private unnamed_addr constant [27 x i8] c"gimp_param_spec_vectors_id\00", align 1
@__func__.gimp_value_get_vectors = private unnamed_addr constant [23 x i8] c"gimp_value_get_vectors\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"GIMP_VALUE_HOLDS_VECTORS_ID (value)\00", align 1
@__func__.gimp_value_set_vectors = private unnamed_addr constant [23 x i8] c"gimp_value_set_vectors\00", align 1
@.str.54 = private unnamed_addr constant [45 x i8] c"vectors == NULL || GIMP_IS_VECTORS (vectors)\00", align 1
@gimp_display_id_get_type.type = internal global i64 0, align 8
@gimp_display_id_get_type.info = internal constant %struct._GTypeInfo zeroinitializer, align 8
@.str.55 = private unnamed_addr constant [14 x i8] c"GimpDisplayID\00", align 1
@gimp_param_display_id_get_type.type = internal global i64 0, align 8
@gimp_param_display_id_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_display_id_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 104, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_display_id_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.56 = private unnamed_addr constant [19 x i8] c"GimpParamDisplayID\00", align 1
@__func__.gimp_param_spec_display_id = private unnamed_addr constant [27 x i8] c"gimp_param_spec_display_id\00", align 1
@__func__.gimp_value_get_display = private unnamed_addr constant [23 x i8] c"gimp_value_get_display\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"GIMP_VALUE_HOLDS_DISPLAY_ID (value)\00", align 1
@__func__.gimp_value_set_display = private unnamed_addr constant [23 x i8] c"gimp_value_set_display\00", align 1
@.str.58 = private unnamed_addr constant [44 x i8] c"display == NULL || GIMP_IS_OBJECT (display)\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@__func__.gimp_array_new = private unnamed_addr constant [15 x i8] c"gimp_array_new\00", align 1
@.str.60 = private unnamed_addr constant [62 x i8] c"(data == NULL && length == 0) || (data != NULL && length > 0)\00", align 1
@gimp_array_get_type.type = internal global i64 0, align 8
@.str.61 = private unnamed_addr constant [10 x i8] c"GimpArray\00", align 1
@gimp_param_array_get_type.type = internal global i64 0, align 8
@gimp_param_array_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_array_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 72, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_array_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.62 = private unnamed_addr constant [15 x i8] c"GimpParamArray\00", align 1
@gimp_int8_array_get_type.type = internal global i64 0, align 8
@.str.63 = private unnamed_addr constant [14 x i8] c"GimpInt8Array\00", align 1
@gimp_param_int8_array_get_type.type = internal global i64 0, align 8
@gimp_param_int8_array_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_int8_array_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 72, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_int8_array_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.64 = private unnamed_addr constant [19 x i8] c"GimpParamInt8Array\00", align 1
@__func__.gimp_value_get_int8array = private unnamed_addr constant [25 x i8] c"gimp_value_get_int8array\00", align 1
@.str.65 = private unnamed_addr constant [36 x i8] c"GIMP_VALUE_HOLDS_INT8_ARRAY (value)\00", align 1
@__func__.gimp_value_dup_int8array = private unnamed_addr constant [25 x i8] c"gimp_value_dup_int8array\00", align 1
@__func__.gimp_value_set_int8array = private unnamed_addr constant [25 x i8] c"gimp_value_set_int8array\00", align 1
@__func__.gimp_value_set_static_int8array = private unnamed_addr constant [32 x i8] c"gimp_value_set_static_int8array\00", align 1
@__func__.gimp_value_take_int8array = private unnamed_addr constant [26 x i8] c"gimp_value_take_int8array\00", align 1
@gimp_int16_array_get_type.type = internal global i64 0, align 8
@.str.66 = private unnamed_addr constant [15 x i8] c"GimpInt16Array\00", align 1
@gimp_param_int16_array_get_type.type = internal global i64 0, align 8
@gimp_param_int16_array_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_int16_array_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 72, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_int16_array_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.67 = private unnamed_addr constant [20 x i8] c"GimpParamInt16Array\00", align 1
@__func__.gimp_value_get_int16array = private unnamed_addr constant [26 x i8] c"gimp_value_get_int16array\00", align 1
@.str.68 = private unnamed_addr constant [37 x i8] c"GIMP_VALUE_HOLDS_INT16_ARRAY (value)\00", align 1
@__func__.gimp_value_dup_int16array = private unnamed_addr constant [26 x i8] c"gimp_value_dup_int16array\00", align 1
@__func__.gimp_value_set_int16array = private unnamed_addr constant [26 x i8] c"gimp_value_set_int16array\00", align 1
@__func__.gimp_value_set_static_int16array = private unnamed_addr constant [33 x i8] c"gimp_value_set_static_int16array\00", align 1
@__func__.gimp_value_take_int16array = private unnamed_addr constant [27 x i8] c"gimp_value_take_int16array\00", align 1
@gimp_int32_array_get_type.type = internal global i64 0, align 8
@.str.69 = private unnamed_addr constant [15 x i8] c"GimpInt32Array\00", align 1
@gimp_param_int32_array_get_type.type = internal global i64 0, align 8
@gimp_param_int32_array_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_int32_array_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 72, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_int32_array_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.70 = private unnamed_addr constant [20 x i8] c"GimpParamInt32Array\00", align 1
@__func__.gimp_value_get_int32array = private unnamed_addr constant [26 x i8] c"gimp_value_get_int32array\00", align 1
@.str.71 = private unnamed_addr constant [37 x i8] c"GIMP_VALUE_HOLDS_INT32_ARRAY (value)\00", align 1
@__func__.gimp_value_dup_int32array = private unnamed_addr constant [26 x i8] c"gimp_value_dup_int32array\00", align 1
@__func__.gimp_value_set_int32array = private unnamed_addr constant [26 x i8] c"gimp_value_set_int32array\00", align 1
@__func__.gimp_value_set_static_int32array = private unnamed_addr constant [33 x i8] c"gimp_value_set_static_int32array\00", align 1
@__func__.gimp_value_take_int32array = private unnamed_addr constant [27 x i8] c"gimp_value_take_int32array\00", align 1
@gimp_float_array_get_type.type = internal global i64 0, align 8
@.str.72 = private unnamed_addr constant [15 x i8] c"GimpFloatArray\00", align 1
@gimp_param_float_array_get_type.type = internal global i64 0, align 8
@gimp_param_float_array_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_float_array_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 72, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_float_array_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.73 = private unnamed_addr constant [20 x i8] c"GimpParamFloatArray\00", align 1
@__func__.gimp_value_get_floatarray = private unnamed_addr constant [26 x i8] c"gimp_value_get_floatarray\00", align 1
@.str.74 = private unnamed_addr constant [37 x i8] c"GIMP_VALUE_HOLDS_FLOAT_ARRAY (value)\00", align 1
@__func__.gimp_value_dup_floatarray = private unnamed_addr constant [26 x i8] c"gimp_value_dup_floatarray\00", align 1
@__func__.gimp_value_set_floatarray = private unnamed_addr constant [26 x i8] c"gimp_value_set_floatarray\00", align 1
@__func__.gimp_value_set_static_floatarray = private unnamed_addr constant [33 x i8] c"gimp_value_set_static_floatarray\00", align 1
@__func__.gimp_value_take_floatarray = private unnamed_addr constant [27 x i8] c"gimp_value_take_floatarray\00", align 1
@__func__.gimp_string_array_new = private unnamed_addr constant [22 x i8] c"gimp_string_array_new\00", align 1
@gimp_string_array_get_type.type = internal global i64 0, align 8
@.str.75 = private unnamed_addr constant [16 x i8] c"GimpStringArray\00", align 1
@gimp_param_string_array_get_type.type = internal global i64 0, align 8
@gimp_param_string_array_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_string_array_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 72, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_string_array_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.76 = private unnamed_addr constant [21 x i8] c"GimpParamStringArray\00", align 1
@__func__.gimp_value_get_stringarray = private unnamed_addr constant [27 x i8] c"gimp_value_get_stringarray\00", align 1
@.str.77 = private unnamed_addr constant [38 x i8] c"GIMP_VALUE_HOLDS_STRING_ARRAY (value)\00", align 1
@__func__.gimp_value_dup_stringarray = private unnamed_addr constant [27 x i8] c"gimp_value_dup_stringarray\00", align 1
@__func__.gimp_value_set_stringarray = private unnamed_addr constant [27 x i8] c"gimp_value_set_stringarray\00", align 1
@__func__.gimp_value_set_static_stringarray = private unnamed_addr constant [34 x i8] c"gimp_value_set_static_stringarray\00", align 1
@__func__.gimp_value_take_stringarray = private unnamed_addr constant [28 x i8] c"gimp_value_take_stringarray\00", align 1
@gimp_color_array_get_type.type = internal global i64 0, align 8
@.str.78 = private unnamed_addr constant [15 x i8] c"GimpColorArray\00", align 1
@gimp_param_color_array_get_type.type = internal global i64 0, align 8
@gimp_param_color_array_get_type.info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_color_array_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 72, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_color_array_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.79 = private unnamed_addr constant [20 x i8] c"GimpParamColorArray\00", align 1
@__func__.gimp_value_get_colorarray = private unnamed_addr constant [26 x i8] c"gimp_value_get_colorarray\00", align 1
@.str.80 = private unnamed_addr constant [37 x i8] c"GIMP_VALUE_HOLDS_COLOR_ARRAY (value)\00", align 1
@__func__.gimp_value_dup_colorarray = private unnamed_addr constant [26 x i8] c"gimp_value_dup_colorarray\00", align 1
@__func__.gimp_value_set_colorarray = private unnamed_addr constant [26 x i8] c"gimp_value_set_colorarray\00", align 1
@__func__.gimp_value_set_static_colorarray = private unnamed_addr constant [33 x i8] c"gimp_value_set_static_colorarray\00", align 1
@__func__.gimp_value_take_colorarray = private unnamed_addr constant [27 x i8] c"gimp_value_take_colorarray\00", align 1
@gimp_param_string_parent_class = internal global %struct._GParamSpecClass* null, align 8
@.str.81 = private unnamed_addr constant [5 x i8] c"none\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_int32_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_int32_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gimp_int32_get_type.info, i32 0)
  store i64 %call, i64* @gimp_int32_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_int32_get_type.type, align 8
  ret i64 %1
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_int32_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_int32_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 3
  %2 = load i64, i64* %arrayidx, align 8
  %call = call i64 @g_type_register_static(i64 %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_int32_get_type.info, i32 0)
  store i64 %call, i64* @gimp_param_int32_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_param_int32_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_int32_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %call = call i64 @gimp_int32_get_type() #5
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_int32_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_int32(i8* %name, i8* %nick, i8* %blurb, i32 %minimum, i32 %maximum, i32 %default_value, i32 %flags) #2 {
entry:
  %retval = alloca %struct._GParamSpec*, align 8
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %minimum.addr = alloca i32, align 4
  %maximum.addr = alloca i32, align 4
  %default_value.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %ispec = alloca %struct._GParamSpecInt*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i32 %minimum, i32* %minimum.addr, align 4
  store i32 %maximum, i32* %maximum.addr, align 4
  store i32 %default_value, i32* %default_value.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %minimum.addr, align 4
  %cmp = icmp sge i32 %0, -2147483648
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_param_spec_int32, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %maximum.addr, align 4
  %cmp2 = icmp sle i32 %1, 2147483647
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_param_spec_int32, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i32, i32* %default_value.addr, align 4
  %3 = load i32, i32* %minimum.addr, align 4
  %cmp8 = icmp sge i32 %2, %3
  br i1 %cmp8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %do.body.7
  %4 = load i32, i32* %default_value.addr, align 4
  %5 = load i32, i32* %maximum.addr, align 4
  %cmp9 = icmp sle i32 %4, %5
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  br label %if.end.12

if.else.11:                                       ; preds = %land.lhs.true, %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_param_spec_int32, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  %call = call i64 @gimp_param_int32_get_type() #5
  %6 = load i8*, i8** %name.addr, align 8
  %7 = load i8*, i8** %nick.addr, align 8
  %8 = load i8*, i8** %blurb.addr, align 8
  %9 = load i32, i32* %flags.addr, align 4
  %call14 = call i8* @g_param_spec_internal(i64 %call, i8* %6, i8* %7, i8* %8, i32 %9)
  %10 = bitcast i8* %call14 to %struct._GParamSpecInt*
  store %struct._GParamSpecInt* %10, %struct._GParamSpecInt** %ispec, align 8
  %11 = load i32, i32* %minimum.addr, align 4
  %12 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %minimum15 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %12, i32 0, i32 1
  store i32 %11, i32* %minimum15, align 4
  %13 = load i32, i32* %maximum.addr, align 4
  %14 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %maximum16 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %14, i32 0, i32 2
  store i32 %13, i32* %maximum16, align 4
  %15 = load i32, i32* %default_value.addr, align 4
  %16 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %default_value17 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %16, i32 0, i32 3
  store i32 %15, i32* %default_value17, align 4
  %17 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %18 = bitcast %struct._GParamSpecInt* %17 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 76)
  %19 = bitcast %struct._GTypeInstance* %call18 to %struct._GParamSpec*
  store %struct._GParamSpec* %19, %struct._GParamSpec** %retval
  br label %return

return:                                           ; preds = %do.end.13, %if.else.11, %if.else.4, %if.else
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %retval
  ret %struct._GParamSpec* %20
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_param_spec_internal(i64, i8*, i8*, i8*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_int16_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_int16_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._GTypeInfo* @gimp_int16_get_type.info, i32 0)
  store i64 %call, i64* @gimp_int16_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_int16_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_int16_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_int16_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 3
  %2 = load i64, i64* %arrayidx, align 8
  %call = call i64 @g_type_register_static(i64 %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_int16_get_type.info, i32 0)
  store i64 %call, i64* @gimp_param_int16_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_param_int16_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_int16_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %call = call i64 @gimp_int16_get_type() #5
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_int16_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_int16(i8* %name, i8* %nick, i8* %blurb, i32 %minimum, i32 %maximum, i32 %default_value, i32 %flags) #2 {
entry:
  %retval = alloca %struct._GParamSpec*, align 8
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %minimum.addr = alloca i32, align 4
  %maximum.addr = alloca i32, align 4
  %default_value.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %ispec = alloca %struct._GParamSpecInt*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i32 %minimum, i32* %minimum.addr, align 4
  store i32 %maximum, i32* %maximum.addr, align 4
  store i32 %default_value, i32* %default_value.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %minimum.addr, align 4
  %cmp = icmp sge i32 %0, -32768
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_param_spec_int16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %maximum.addr, align 4
  %cmp2 = icmp sle i32 %1, 32767
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_param_spec_int16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i32, i32* %default_value.addr, align 4
  %3 = load i32, i32* %minimum.addr, align 4
  %cmp8 = icmp sge i32 %2, %3
  br i1 %cmp8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %do.body.7
  %4 = load i32, i32* %default_value.addr, align 4
  %5 = load i32, i32* %maximum.addr, align 4
  %cmp9 = icmp sle i32 %4, %5
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  br label %if.end.12

if.else.11:                                       ; preds = %land.lhs.true, %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_param_spec_int16, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  %call = call i64 @gimp_param_int16_get_type() #5
  %6 = load i8*, i8** %name.addr, align 8
  %7 = load i8*, i8** %nick.addr, align 8
  %8 = load i8*, i8** %blurb.addr, align 8
  %9 = load i32, i32* %flags.addr, align 4
  %call14 = call i8* @g_param_spec_internal(i64 %call, i8* %6, i8* %7, i8* %8, i32 %9)
  %10 = bitcast i8* %call14 to %struct._GParamSpecInt*
  store %struct._GParamSpecInt* %10, %struct._GParamSpecInt** %ispec, align 8
  %11 = load i32, i32* %minimum.addr, align 4
  %12 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %minimum15 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %12, i32 0, i32 1
  store i32 %11, i32* %minimum15, align 4
  %13 = load i32, i32* %maximum.addr, align 4
  %14 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %maximum16 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %14, i32 0, i32 2
  store i32 %13, i32* %maximum16, align 4
  %15 = load i32, i32* %default_value.addr, align 4
  %16 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %default_value17 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %16, i32 0, i32 3
  store i32 %15, i32* %default_value17, align 4
  %17 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %18 = bitcast %struct._GParamSpecInt* %17 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 76)
  %19 = bitcast %struct._GTypeInstance* %call18 to %struct._GParamSpec*
  store %struct._GParamSpec* %19, %struct._GParamSpec** %retval
  br label %return

return:                                           ; preds = %do.end.13, %if.else.11, %if.else.4, %if.else
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %retval
  ret %struct._GParamSpec* %20
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_int8_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_int8_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), %struct._GTypeInfo* @gimp_int8_get_type.info, i32 0)
  store i64 %call, i64* @gimp_int8_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_int8_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_int8_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_int8_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 4
  %2 = load i64, i64* %arrayidx, align 8
  %call = call i64 @g_type_register_static(i64 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_int8_get_type.info, i32 0)
  store i64 %call, i64* @gimp_param_int8_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_param_int8_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_int8_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %call = call i64 @gimp_int8_get_type() #5
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_int8_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_int8(i8* %name, i8* %nick, i8* %blurb, i32 %minimum, i32 %maximum, i32 %default_value, i32 %flags) #2 {
entry:
  %retval = alloca %struct._GParamSpec*, align 8
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %minimum.addr = alloca i32, align 4
  %maximum.addr = alloca i32, align 4
  %default_value.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %ispec = alloca %struct._GParamSpecInt*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i32 %minimum, i32* %minimum.addr, align 4
  store i32 %maximum, i32* %maximum.addr, align 4
  store i32 %default_value, i32* %default_value.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %maximum.addr, align 4
  %cmp = icmp ule i32 %0, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_param_spec_int8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %default_value.addr, align 4
  %2 = load i32, i32* %minimum.addr, align 4
  %cmp2 = icmp uge i32 %1, %2
  br i1 %cmp2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %do.body.1
  %3 = load i32, i32* %default_value.addr, align 4
  %4 = load i32, i32* %maximum.addr, align 4
  %cmp3 = icmp ule i32 %3, %4
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  br label %if.end.6

if.else.5:                                        ; preds = %land.lhs.true, %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_param_spec_int8, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %call = call i64 @gimp_param_int8_get_type() #5
  %5 = load i8*, i8** %name.addr, align 8
  %6 = load i8*, i8** %nick.addr, align 8
  %7 = load i8*, i8** %blurb.addr, align 8
  %8 = load i32, i32* %flags.addr, align 4
  %call8 = call i8* @g_param_spec_internal(i64 %call, i8* %5, i8* %6, i8* %7, i32 %8)
  %9 = bitcast i8* %call8 to %struct._GParamSpecInt*
  store %struct._GParamSpecInt* %9, %struct._GParamSpecInt** %ispec, align 8
  %10 = load i32, i32* %minimum.addr, align 4
  %11 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %minimum9 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %11, i32 0, i32 1
  store i32 %10, i32* %minimum9, align 4
  %12 = load i32, i32* %maximum.addr, align 4
  %13 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %maximum10 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %13, i32 0, i32 2
  store i32 %12, i32* %maximum10, align 4
  %14 = load i32, i32* %default_value.addr, align 4
  %15 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %default_value11 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %15, i32 0, i32 3
  store i32 %14, i32* %default_value11, align 4
  %16 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %17 = bitcast %struct._GParamSpecInt* %16 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 76)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GParamSpec*
  store %struct._GParamSpec* %18, %struct._GParamSpec** %retval
  br label %return

return:                                           ; preds = %do.end.7, %if.else.5, %if.else
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %retval
  ret %struct._GParamSpec* %19
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_string_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_string_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 14
  %2 = load i64, i64* %arrayidx, align 8
  %call = call i64 @g_type_register_static(i64 %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_string_get_type.info, i32 0)
  store i64 %call, i64* @gimp_param_string_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_param_string_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_string_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %1 = bitcast %struct._GParamSpecClass* %0 to i8*
  %call = call i8* @g_type_class_peek_parent(i8* %1)
  %2 = bitcast i8* %call to %struct._GParamSpecClass*
  store %struct._GParamSpecClass* %2, %struct._GParamSpecClass** @gimp_param_string_parent_class, align 8
  %3 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %3, i32 0, i32 1
  store i64 64, i64* %value_type, align 8
  %4 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_validate = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %4, i32 0, i32 4
  store i32 (%struct._GParamSpec*, %struct._GValue*)* @gimp_param_string_validate, i32 (%struct._GParamSpec*, %struct._GValue*)** %value_validate, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_string_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %sspec = alloca %struct._GimpParamSpecString*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_string_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecString*
  store %struct._GimpParamSpecString* %2, %struct._GimpParamSpecString** %sspec, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %4 = bitcast %struct._GParamSpec* %3 to %struct._GTypeInstance*
  %5 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 14
  %6 = load i64, i64* %arrayidx, align 8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %6)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GParamSpecString*
  %ensure_non_null = getelementptr inbounds %struct._GParamSpecString, %struct._GParamSpecString* %7, i32 0, i32 5
  %bf.load = load i8, i8* %ensure_non_null, align 1
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %ensure_non_null, align 1
  %8 = load %struct._GimpParamSpecString*, %struct._GimpParamSpecString** %sspec, align 8
  %allow_non_utf8 = getelementptr inbounds %struct._GimpParamSpecString, %struct._GimpParamSpecString* %8, i32 0, i32 1
  %bf.load3 = load i8, i8* %allow_non_utf8, align 8
  %bf.clear4 = and i8 %bf.load3, -2
  store i8 %bf.clear4, i8* %allow_non_utf8, align 8
  %9 = load %struct._GimpParamSpecString*, %struct._GimpParamSpecString** %sspec, align 8
  %non_empty = getelementptr inbounds %struct._GimpParamSpecString, %struct._GimpParamSpecString* %9, i32 0, i32 1
  %bf.load5 = load i8, i8* %non_empty, align 8
  %bf.clear6 = and i8 %bf.load5, -3
  store i8 %bf.clear6, i8* %non_empty, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_string(i8* %name, i8* %nick, i8* %blurb, i32 %allow_non_utf8, i32 %null_ok, i32 %non_empty, i8* %default_value, i32 %flags) #2 {
entry:
  %retval = alloca %struct._GParamSpec*, align 8
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %allow_non_utf8.addr = alloca i32, align 4
  %null_ok.addr = alloca i32, align 4
  %non_empty.addr = alloca i32, align 4
  %default_value.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %sspec = alloca %struct._GimpParamSpecString*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i32 %allow_non_utf8, i32* %allow_non_utf8.addr, align 4
  store i32 %null_ok, i32* %null_ok.addr, align 4
  store i32 %non_empty, i32* %non_empty.addr, align 4
  store i8* %default_value, i8** %default_value.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %null_ok.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %do.body
  %1 = load i32, i32* %non_empty.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true, %do.body
  br label %if.end

if.else:                                          ; preds = %land.lhs.true
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_param_spec_string, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i64 @gimp_param_string_get_type() #5
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i8*, i8** %nick.addr, align 8
  %4 = load i8*, i8** %blurb.addr, align 8
  %5 = load i32, i32* %flags.addr, align 4
  %call2 = call i8* @g_param_spec_internal(i64 %call, i8* %2, i8* %3, i8* %4, i32 %5)
  %6 = bitcast i8* %call2 to %struct._GimpParamSpecString*
  store %struct._GimpParamSpecString* %6, %struct._GimpParamSpecString** %sspec, align 8
  %7 = load %struct._GimpParamSpecString*, %struct._GimpParamSpecString** %sspec, align 8
  %tobool3 = icmp ne %struct._GimpParamSpecString* %7, null
  br i1 %tobool3, label %if.then.4, label %if.end.31

if.then.4:                                        ; preds = %do.end
  %8 = load %struct._GimpParamSpecString*, %struct._GimpParamSpecString** %sspec, align 8
  %9 = bitcast %struct._GimpParamSpecString* %8 to %struct._GTypeInstance*
  %10 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %10, i64 14
  %11 = load i64, i64* %arrayidx, align 8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %11)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GParamSpecString*
  %default_value6 = getelementptr inbounds %struct._GParamSpecString, %struct._GParamSpecString* %12, i32 0, i32 1
  %13 = load i8*, i8** %default_value6, align 8
  call void @g_free(i8* %13)
  %14 = load i8*, i8** %default_value.addr, align 8
  %call7 = call noalias i8* @g_strdup(i8* %14)
  %15 = load %struct._GimpParamSpecString*, %struct._GimpParamSpecString** %sspec, align 8
  %16 = bitcast %struct._GimpParamSpecString* %15 to %struct._GTypeInstance*
  %17 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %17, i64 14
  %18 = load i64, i64* %arrayidx8, align 8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %18)
  %19 = bitcast %struct._GTypeInstance* %call9 to %struct._GParamSpecString*
  %default_value10 = getelementptr inbounds %struct._GParamSpecString, %struct._GParamSpecString* %19, i32 0, i32 1
  store i8* %call7, i8** %default_value10, align 8
  %20 = load i32, i32* %null_ok.addr, align 4
  %tobool11 = icmp ne i32 %20, 0
  %cond = select i1 %tobool11, i32 0, i32 1
  %21 = load %struct._GimpParamSpecString*, %struct._GimpParamSpecString** %sspec, align 8
  %22 = bitcast %struct._GimpParamSpecString* %21 to %struct._GTypeInstance*
  %23 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx12 = getelementptr inbounds i64, i64* %23, i64 14
  %24 = load i64, i64* %arrayidx12, align 8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %24)
  %25 = bitcast %struct._GTypeInstance* %call13 to %struct._GParamSpecString*
  %ensure_non_null = getelementptr inbounds %struct._GParamSpecString, %struct._GParamSpecString* %25, i32 0, i32 5
  %26 = trunc i32 %cond to i8
  %bf.load = load i8, i8* %ensure_non_null, align 1
  %bf.value = and i8 %26, 1
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %ensure_non_null, align 1
  %bf.result.cast = zext i8 %bf.value to i32
  %27 = load i32, i32* %allow_non_utf8.addr, align 4
  %tobool14 = icmp ne i32 %27, 0
  %cond15 = select i1 %tobool14, i32 1, i32 0
  %28 = load %struct._GimpParamSpecString*, %struct._GimpParamSpecString** %sspec, align 8
  %allow_non_utf816 = getelementptr inbounds %struct._GimpParamSpecString, %struct._GimpParamSpecString* %28, i32 0, i32 1
  %29 = trunc i32 %cond15 to i8
  %bf.load17 = load i8, i8* %allow_non_utf816, align 8
  %bf.value18 = and i8 %29, 1
  %bf.clear19 = and i8 %bf.load17, -2
  %bf.set20 = or i8 %bf.clear19, %bf.value18
  store i8 %bf.set20, i8* %allow_non_utf816, align 8
  %bf.result.cast21 = zext i8 %bf.value18 to i32
  %30 = load i32, i32* %non_empty.addr, align 4
  %tobool22 = icmp ne i32 %30, 0
  %cond23 = select i1 %tobool22, i32 1, i32 0
  %31 = load %struct._GimpParamSpecString*, %struct._GimpParamSpecString** %sspec, align 8
  %non_empty24 = getelementptr inbounds %struct._GimpParamSpecString, %struct._GimpParamSpecString* %31, i32 0, i32 1
  %32 = trunc i32 %cond23 to i8
  %bf.load25 = load i8, i8* %non_empty24, align 8
  %bf.value26 = and i8 %32, 1
  %bf.shl27 = shl i8 %bf.value26, 1
  %bf.clear28 = and i8 %bf.load25, -3
  %bf.set29 = or i8 %bf.clear28, %bf.shl27
  store i8 %bf.set29, i8* %non_empty24, align 8
  %bf.result.cast30 = zext i8 %bf.value26 to i32
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.4, %do.end
  %33 = load %struct._GimpParamSpecString*, %struct._GimpParamSpecString** %sspec, align 8
  %34 = bitcast %struct._GimpParamSpecString* %33 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 76)
  %35 = bitcast %struct._GTypeInstance* %call32 to %struct._GParamSpec*
  store %struct._GParamSpec* %35, %struct._GParamSpec** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.else
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %retval
  ret %struct._GParamSpec* %36
}

declare void @g_free(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_enum_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_enum_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 10
  %2 = load i64, i64* %arrayidx, align 8
  %call = call i64 @g_type_register_static(i64 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_enum_get_type.info, i32 0)
  store i64 %call, i64* @gimp_param_enum_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_param_enum_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_enum_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 48, i64* %value_type, align 8
  %1 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %finalize = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %1, i32 0, i32 2
  store void (%struct._GParamSpec*)* @gimp_param_enum_finalize, void (%struct._GParamSpec*)** %finalize, align 8
  %2 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_validate = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %2, i32 0, i32 4
  store i32 (%struct._GParamSpec*, %struct._GValue*)* @gimp_param_enum_validate, i32 (%struct._GParamSpec*, %struct._GValue*)** %value_validate, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_enum_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %espec = alloca %struct._GimpParamSpecEnum*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_enum_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecEnum*
  store %struct._GimpParamSpecEnum* %2, %struct._GimpParamSpecEnum** %espec, align 8
  %3 = load %struct._GimpParamSpecEnum*, %struct._GimpParamSpecEnum** %espec, align 8
  %excluded_values = getelementptr inbounds %struct._GimpParamSpecEnum, %struct._GimpParamSpecEnum* %3, i32 0, i32 1
  store %struct._GSList* null, %struct._GSList** %excluded_values, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_enum(i8* %name, i8* %nick, i8* %blurb, i64 %enum_type, i32 %default_value, i32 %flags) #2 {
entry:
  %retval = alloca %struct._GParamSpec*, align 8
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %enum_type.addr = alloca i64, align 8
  %default_value.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %espec = alloca %struct._GimpParamSpecEnum*, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i64 %enum_type, i64* %enum_type.addr, align 8
  store i32 %default_value, i32* %default_value.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %enum_type.addr, align 8
  %call = call i64 @g_type_fundamental(i64 %0)
  %cmp = icmp eq i64 %call, 48
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_param_spec_enum, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i64, i64* %enum_type.addr, align 8
  %call1 = call i8* @g_type_class_ref(i64 %1)
  %2 = bitcast i8* %call1 to %struct._GEnumClass*
  store %struct._GEnumClass* %2, %struct._GEnumClass** %enum_class, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %3 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %4 = load i32, i32* %default_value.addr, align 4
  %call3 = call %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass* %3, i32 %4)
  %cmp4 = icmp ne %struct._GEnumValue* %call3, null
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %do.body.2
  br label %if.end.7

if.else.6:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_param_spec_enum, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.5
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  %call9 = call i64 @gimp_param_enum_get_type() #5
  %5 = load i8*, i8** %name.addr, align 8
  %6 = load i8*, i8** %nick.addr, align 8
  %7 = load i8*, i8** %blurb.addr, align 8
  %8 = load i32, i32* %flags.addr, align 4
  %call10 = call i8* @g_param_spec_internal(i64 %call9, i8* %5, i8* %6, i8* %7, i32 %8)
  %9 = bitcast i8* %call10 to %struct._GimpParamSpecEnum*
  store %struct._GimpParamSpecEnum* %9, %struct._GimpParamSpecEnum** %espec, align 8
  %10 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %11 = load %struct._GimpParamSpecEnum*, %struct._GimpParamSpecEnum** %espec, align 8
  %12 = bitcast %struct._GimpParamSpecEnum* %11 to %struct._GTypeInstance*
  %13 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %13, i64 10
  %14 = load i64, i64* %arrayidx, align 8
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %14)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GParamSpecEnum*
  %enum_class12 = getelementptr inbounds %struct._GParamSpecEnum, %struct._GParamSpecEnum* %15, i32 0, i32 1
  store %struct._GEnumClass* %10, %struct._GEnumClass** %enum_class12, align 8
  %16 = load i32, i32* %default_value.addr, align 4
  %17 = load %struct._GimpParamSpecEnum*, %struct._GimpParamSpecEnum** %espec, align 8
  %18 = bitcast %struct._GimpParamSpecEnum* %17 to %struct._GTypeInstance*
  %19 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %19, i64 10
  %20 = load i64, i64* %arrayidx13, align 8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %20)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GParamSpecEnum*
  %default_value15 = getelementptr inbounds %struct._GParamSpecEnum, %struct._GParamSpecEnum* %21, i32 0, i32 2
  store i32 %16, i32* %default_value15, align 4
  %22 = load i64, i64* %enum_type.addr, align 8
  %23 = load %struct._GimpParamSpecEnum*, %struct._GimpParamSpecEnum** %espec, align 8
  %24 = bitcast %struct._GimpParamSpecEnum* %23 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 76)
  %25 = bitcast %struct._GTypeInstance* %call16 to %struct._GParamSpec*
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %25, i32 0, i32 3
  store i64 %22, i64* %value_type, align 8
  %26 = load %struct._GimpParamSpecEnum*, %struct._GimpParamSpecEnum** %espec, align 8
  %27 = bitcast %struct._GimpParamSpecEnum* %26 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 76)
  %28 = bitcast %struct._GTypeInstance* %call17 to %struct._GParamSpec*
  store %struct._GParamSpec* %28, %struct._GParamSpec** %retval
  br label %return

return:                                           ; preds = %do.end.8, %if.else.6, %if.else
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %retval
  ret %struct._GParamSpec* %29
}

declare i64 @g_type_fundamental(i64) #1

declare i8* @g_type_class_ref(i64) #1

declare %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_param_spec_enum_exclude_value(%struct._GimpParamSpecEnum* %espec, i32 %value) #2 {
entry:
  %espec.addr = alloca %struct._GimpParamSpecEnum*, align 8
  %value.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpParamSpecEnum* %espec, %struct._GimpParamSpecEnum** %espec.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpParamSpecEnum*, %struct._GimpParamSpecEnum** %espec.addr, align 8
  %1 = bitcast %struct._GimpParamSpecEnum* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_param_enum_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_param_spec_enum_exclude_value, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpParamSpecEnum*, %struct._GimpParamSpecEnum** %espec.addr, align 8
  %14 = bitcast %struct._GimpParamSpecEnum* %13 to %struct._GTypeInstance*
  %15 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %15, i64 10
  %16 = load i64, i64* %arrayidx, align 8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %16)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GParamSpecEnum*
  %enum_class = getelementptr inbounds %struct._GParamSpecEnum, %struct._GParamSpecEnum* %17, i32 0, i32 1
  %18 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %19 = load i32, i32* %value.addr, align 4
  %call13 = call %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass* %18, i32 %19)
  %cmp14 = icmp ne %struct._GEnumValue* %call13, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.11
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_param_spec_enum_exclude_value, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.19, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %20 = load %struct._GimpParamSpecEnum*, %struct._GimpParamSpecEnum** %espec.addr, align 8
  %excluded_values = getelementptr inbounds %struct._GimpParamSpecEnum, %struct._GimpParamSpecEnum* %20, i32 0, i32 1
  %21 = load %struct._GSList*, %struct._GSList** %excluded_values, align 8
  %22 = load i32, i32* %value.addr, align 4
  %conv = sext i32 %22 to i64
  %23 = inttoptr i64 %conv to i8*
  %call19 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %21, i8* %23)
  %24 = load %struct._GimpParamSpecEnum*, %struct._GimpParamSpecEnum** %espec.addr, align 8
  %excluded_values20 = getelementptr inbounds %struct._GimpParamSpecEnum, %struct._GimpParamSpecEnum* %24, i32 0, i32 1
  store %struct._GSList* %call19, %struct._GSList** %excluded_values20, align 8
  br label %return

return:                                           ; preds = %do.end.18, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_image_id_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_image_id_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), %struct._GTypeInfo* @gimp_image_id_get_type.info, i32 0)
  store i64 %call, i64* @gimp_image_id_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_image_id_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_image_id_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_image_id_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 3
  %2 = load i64, i64* %arrayidx, align 8
  %call = call i64 @g_type_register_static(i64 %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_image_id_get_type.info, i32 0)
  store i64 %call, i64* @gimp_param_image_id_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_param_image_id_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_image_id_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %call = call i64 @gimp_image_id_get_type() #5
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  %1 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_set_default = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %1, i32 0, i32 3
  store void (%struct._GParamSpec*, %struct._GValue*)* @gimp_param_image_id_set_default, void (%struct._GParamSpec*, %struct._GValue*)** %value_set_default, align 8
  %2 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_validate = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %2, i32 0, i32 4
  store i32 (%struct._GParamSpec*, %struct._GValue*)* @gimp_param_image_id_validate, i32 (%struct._GParamSpec*, %struct._GValue*)** %value_validate, align 8
  %3 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %values_cmp = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %3, i32 0, i32 5
  store i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)* @gimp_param_image_id_values_cmp, i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)** %values_cmp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_image_id_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %ispec = alloca %struct._GimpParamSpecImageID*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_image_id_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecImageID*
  store %struct._GimpParamSpecImageID* %2, %struct._GimpParamSpecImageID** %ispec, align 8
  %3 = load %struct._GimpParamSpecImageID*, %struct._GimpParamSpecImageID** %ispec, align 8
  %gimp = getelementptr inbounds %struct._GimpParamSpecImageID, %struct._GimpParamSpecImageID* %3, i32 0, i32 1
  store %struct._Gimp* null, %struct._Gimp** %gimp, align 8
  %4 = load %struct._GimpParamSpecImageID*, %struct._GimpParamSpecImageID** %ispec, align 8
  %none_ok = getelementptr inbounds %struct._GimpParamSpecImageID, %struct._GimpParamSpecImageID* %4, i32 0, i32 2
  store i32 0, i32* %none_ok, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_image_id(i8* %name, i8* %nick, i8* %blurb, %struct._Gimp* %gimp, i32 %none_ok, i32 %flags) #2 {
entry:
  %retval = alloca %struct._GParamSpec*, align 8
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %none_ok.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %ispec = alloca %struct._GimpParamSpecImageID*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %none_ok, i32* %none_ok.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_param_spec_image_id, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_param_image_id_get_type() #5
  %13 = load i8*, i8** %name.addr, align 8
  %14 = load i8*, i8** %nick.addr, align 8
  %15 = load i8*, i8** %blurb.addr, align 8
  %16 = load i32, i32* %flags.addr, align 4
  %call12 = call i8* @g_param_spec_internal(i64 %call11, i8* %13, i8* %14, i8* %15, i32 %16)
  %17 = bitcast i8* %call12 to %struct._GimpParamSpecImageID*
  store %struct._GimpParamSpecImageID* %17, %struct._GimpParamSpecImageID** %ispec, align 8
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %19 = load %struct._GimpParamSpecImageID*, %struct._GimpParamSpecImageID** %ispec, align 8
  %gimp13 = getelementptr inbounds %struct._GimpParamSpecImageID, %struct._GimpParamSpecImageID* %19, i32 0, i32 1
  store %struct._Gimp* %18, %struct._Gimp** %gimp13, align 8
  %20 = load i32, i32* %none_ok.addr, align 4
  %tobool14 = icmp ne i32 %20, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %21 = load %struct._GimpParamSpecImageID*, %struct._GimpParamSpecImageID** %ispec, align 8
  %none_ok15 = getelementptr inbounds %struct._GimpParamSpecImageID, %struct._GimpParamSpecImageID* %21, i32 0, i32 2
  store i32 %cond, i32* %none_ok15, align 4
  %22 = load %struct._GimpParamSpecImageID*, %struct._GimpParamSpecImageID** %ispec, align 8
  %23 = bitcast %struct._GimpParamSpecImageID* %22 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 76)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GParamSpec*
  store %struct._GParamSpec* %24, %struct._GParamSpec** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %retval
  ret %struct._GParamSpec* %25
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #4

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @gimp_value_get_image(%struct._GValue* %value, %struct._Gimp* %gimp) #2 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t12 = alloca i64, align 8
  %__r15 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_image_id_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_value_get_image, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %10 = bitcast %struct._Gimp* %9 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %10, %struct._GTypeInstance** %__inst, align 8
  %call13 = call i64 @gimp_get_type() #5
  store i64 %call13, i64* %__t12, align 8
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool16 = icmp ne %struct._GTypeInstance* %11, null
  br i1 %tobool16, label %if.else.18, label %if.then.17

if.then.17:                                       ; preds = %do.body.9
  store i32 0, i32* %__r15, align 4
  br label %if.end.27

if.else.18:                                       ; preds = %do.body.9
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool19 = icmp ne %struct._GTypeClass* %13, null
  br i1 %tobool19, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %if.else.18
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %g_type21 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type21, align 8
  %17 = load i64, i64* %__t12, align 8
  %cmp22 = icmp eq i64 %16, %17
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r15, align 4
  br label %if.end.26

if.else.24:                                       ; preds = %land.lhs.true, %if.else.18
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %19 = load i64, i64* %__t12, align 8
  %call25 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %18, i64 %19) #6
  store i32 %call25, i32* %__r15, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.17
  %20 = load i32, i32* %__r15, align 4
  store i32 %20, i32* %tmp28
  %21 = load i32, i32* %tmp28
  %tobool29 = icmp ne i32 %21, 0
  br i1 %tobool29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end.27
  br label %if.end.32

if.else.31:                                       ; preds = %if.end.27
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_value_get_image, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.32:                                        ; preds = %if.then.30
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  %24 = load i32, i32* %v_int, align 4
  %call34 = call %struct._GimpImage* @gimp_image_get_by_ID(%struct._Gimp* %22, i32 %24)
  store %struct._GimpImage* %call34, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %do.end.33, %if.else.31, %if.else.7
  %25 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %25
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_value_holds(%struct._GValue*, i64) #3

declare %struct._GimpImage* @gimp_image_get_by_ID(%struct._Gimp*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_value_set_image(%struct._GValue* %value, %struct._GimpImage* %image) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t13 = alloca i64, align 8
  %__r16 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_image_id_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_value_set_image, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp10 = icmp eq %struct._GimpImage* %9, null
  br i1 %cmp10, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.9
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %11 = bitcast %struct._GimpImage* %10 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %11, %struct._GTypeInstance** %__inst, align 8
  %call14 = call i64 @gimp_image_get_type() #5
  store i64 %call14, i64* %__t13, align 8
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool17 = icmp ne %struct._GTypeInstance* %12, null
  br i1 %tobool17, label %if.else.19, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r16, align 4
  br label %if.end.28

if.else.19:                                       ; preds = %lor.lhs.false
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool20 = icmp ne %struct._GTypeClass* %14, null
  br i1 %tobool20, label %land.lhs.true, label %if.else.25

land.lhs.true:                                    ; preds = %if.else.19
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %g_type22 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type22, align 8
  %18 = load i64, i64* %__t13, align 8
  %cmp23 = icmp eq i64 %17, %18
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r16, align 4
  br label %if.end.27

if.else.25:                                       ; preds = %land.lhs.true, %if.else.19
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %20 = load i64, i64* %__t13, align 8
  %call26 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %19, i64 %20) #6
  store i32 %call26, i32* %__r16, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.24
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.18
  %21 = load i32, i32* %__r16, align 4
  store i32 %21, i32* %tmp29
  %22 = load i32, i32* %tmp29
  %tobool30 = icmp ne i32 %22, 0
  br i1 %tobool30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.end.28, %do.body.9
  br label %if.end.33

if.else.32:                                       ; preds = %if.end.28
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_value_set_image, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool35 = icmp ne %struct._GimpImage* %23, null
  br i1 %tobool35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.34
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call36 = call i32 @gimp_image_get_ID(%struct._GimpImage* %24)
  br label %cond.end

cond.false:                                       ; preds = %do.end.34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call36, %cond.true ], [ -1, %cond.false ]
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %25, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  store i32 %cond, i32* %v_int, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.else.32, %if.else.7
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #4

declare i32 @gimp_image_get_ID(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_item_id_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_item_id_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), %struct._GTypeInfo* @gimp_item_id_get_type.info, i32 0)
  store i64 %call, i64* @gimp_item_id_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_item_id_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_item_id_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_item_id_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 3
  %2 = load i64, i64* %arrayidx, align 8
  %call = call i64 @g_type_register_static(i64 %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_item_id_get_type.info, i32 0)
  store i64 %call, i64* @gimp_param_item_id_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_param_item_id_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_item_id_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %call = call i64 @gimp_item_id_get_type() #5
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  %1 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_set_default = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %1, i32 0, i32 3
  store void (%struct._GParamSpec*, %struct._GValue*)* @gimp_param_item_id_set_default, void (%struct._GParamSpec*, %struct._GValue*)** %value_set_default, align 8
  %2 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_validate = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %2, i32 0, i32 4
  store i32 (%struct._GParamSpec*, %struct._GValue*)* @gimp_param_item_id_validate, i32 (%struct._GParamSpec*, %struct._GValue*)** %value_validate, align 8
  %3 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %values_cmp = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %3, i32 0, i32 5
  store i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)* @gimp_param_item_id_values_cmp, i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)** %values_cmp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_item_id_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %ispec = alloca %struct._GimpParamSpecItemID*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_item_id_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecItemID*
  store %struct._GimpParamSpecItemID* %2, %struct._GimpParamSpecItemID** %ispec, align 8
  %3 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %gimp = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %3, i32 0, i32 1
  store %struct._Gimp* null, %struct._Gimp** %gimp, align 8
  %call2 = call i64 @gimp_item_get_type() #5
  %4 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %item_type = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %4, i32 0, i32 2
  store i64 %call2, i64* %item_type, align 8
  %5 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %none_ok = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %5, i32 0, i32 3
  store i32 0, i32* %none_ok, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_item_id(i8* %name, i8* %nick, i8* %blurb, %struct._Gimp* %gimp, i32 %none_ok, i32 %flags) #2 {
entry:
  %retval = alloca %struct._GParamSpec*, align 8
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %none_ok.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %ispec = alloca %struct._GimpParamSpecItemID*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %none_ok, i32* %none_ok.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_param_spec_item_id, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_param_item_id_get_type() #5
  %13 = load i8*, i8** %name.addr, align 8
  %14 = load i8*, i8** %nick.addr, align 8
  %15 = load i8*, i8** %blurb.addr, align 8
  %16 = load i32, i32* %flags.addr, align 4
  %call12 = call i8* @g_param_spec_internal(i64 %call11, i8* %13, i8* %14, i8* %15, i32 %16)
  %17 = bitcast i8* %call12 to %struct._GimpParamSpecItemID*
  store %struct._GimpParamSpecItemID* %17, %struct._GimpParamSpecItemID** %ispec, align 8
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %19 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %gimp13 = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %19, i32 0, i32 1
  store %struct._Gimp* %18, %struct._Gimp** %gimp13, align 8
  %20 = load i32, i32* %none_ok.addr, align 4
  %21 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %none_ok14 = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %21, i32 0, i32 3
  store i32 %20, i32* %none_ok14, align 4
  %22 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %23 = bitcast %struct._GimpParamSpecItemID* %22 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 76)
  %24 = bitcast %struct._GTypeInstance* %call15 to %struct._GParamSpec*
  store %struct._GParamSpec* %24, %struct._GParamSpec** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %retval
  ret %struct._GParamSpec* %25
}

; Function Attrs: nounwind uwtable
define %struct._GimpItem* @gimp_value_get_item(%struct._GValue* %value, %struct._Gimp* %gimp) #2 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t12 = alloca i64, align 8
  %__r15 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  %__inst38 = alloca %struct._GTypeInstance*, align 8
  %__t40 = alloca i64, align 8
  %__r43 = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_item_id_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_value_get_item, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %10 = bitcast %struct._Gimp* %9 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %10, %struct._GTypeInstance** %__inst, align 8
  %call13 = call i64 @gimp_get_type() #5
  store i64 %call13, i64* %__t12, align 8
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool16 = icmp ne %struct._GTypeInstance* %11, null
  br i1 %tobool16, label %if.else.18, label %if.then.17

if.then.17:                                       ; preds = %do.body.9
  store i32 0, i32* %__r15, align 4
  br label %if.end.27

if.else.18:                                       ; preds = %do.body.9
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool19 = icmp ne %struct._GTypeClass* %13, null
  br i1 %tobool19, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %if.else.18
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %g_type21 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type21, align 8
  %17 = load i64, i64* %__t12, align 8
  %cmp22 = icmp eq i64 %16, %17
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r15, align 4
  br label %if.end.26

if.else.24:                                       ; preds = %land.lhs.true, %if.else.18
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %19 = load i64, i64* %__t12, align 8
  %call25 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %18, i64 %19) #6
  store i32 %call25, i32* %__r15, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.17
  %20 = load i32, i32* %__r15, align 4
  store i32 %20, i32* %tmp28
  %21 = load i32, i32* %tmp28
  %tobool29 = icmp ne i32 %21, 0
  br i1 %tobool29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end.27
  br label %if.end.32

if.else.31:                                       ; preds = %if.end.27
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_value_get_item, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.32:                                        ; preds = %if.then.30
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  %24 = load i32, i32* %v_int, align 4
  %call34 = call %struct._GimpItem* @gimp_item_get_by_ID(%struct._Gimp* %22, i32 %24)
  store %struct._GimpItem* %call34, %struct._GimpItem** %item, align 8
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool35 = icmp ne %struct._GimpItem* %25, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.61

land.lhs.true.36:                                 ; preds = %do.end.33
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %27 = bitcast %struct._GimpItem* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst38, align 8
  %call41 = call i64 @gimp_item_get_type() #5
  store i64 %call41, i64* %__t40, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %tobool44 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool44, label %if.else.46, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true.36
  store i32 0, i32* %__r43, align 4
  br label %if.end.57

if.else.46:                                       ; preds = %land.lhs.true.36
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %g_class47 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class47, align 8
  %tobool48 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool48, label %land.lhs.true.49, label %if.else.54

land.lhs.true.49:                                 ; preds = %if.else.46
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %g_type51 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type51, align 8
  %34 = load i64, i64* %__t40, align 8
  %cmp52 = icmp eq i64 %33, %34
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %land.lhs.true.49
  store i32 1, i32* %__r43, align 4
  br label %if.end.56

if.else.54:                                       ; preds = %land.lhs.true.49, %if.else.46
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %36 = load i64, i64* %__t40, align 8
  %call55 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #6
  store i32 %call55, i32* %__r43, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.54, %if.then.53
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.45
  %37 = load i32, i32* %__r43, align 4
  store i32 %37, i32* %tmp58
  %38 = load i32, i32* %tmp58
  %tobool59 = icmp ne i32 %38, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.end.57
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.61:                                        ; preds = %if.end.57, %do.end.33
  %39 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  store %struct._GimpItem* %39, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.60, %if.else.31, %if.else.7
  %40 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %40
}

declare %struct._GimpItem* @gimp_item_get_by_ID(%struct._Gimp*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #4

; Function Attrs: nounwind uwtable
define void @gimp_value_set_item(%struct._GValue* %value, %struct._GimpItem* %item) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__val = alloca %struct._GValue*, align 8
  %__t14 = alloca i64, align 8
  %__r17 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  %__val35 = alloca %struct._GValue*, align 8
  %__t37 = alloca i64, align 8
  %__r40 = alloca i32, align 4
  %tmp51 = alloca i32, align 4
  %__inst57 = alloca %struct._GTypeInstance*, align 8
  %__t59 = alloca i64, align 8
  %__r62 = alloca i32, align 4
  %tmp77 = alloca i32, align 4
  %__val84 = alloca %struct._GValue*, align 8
  %__t86 = alloca i64, align 8
  %__r89 = alloca i32, align 4
  %tmp100 = alloca i32, align 4
  %__inst106 = alloca %struct._GTypeInstance*, align 8
  %__t108 = alloca i64, align 8
  %__r111 = alloca i32, align 4
  %tmp126 = alloca i32, align 4
  %__val133 = alloca %struct._GValue*, align 8
  %__t135 = alloca i64, align 8
  %__r138 = alloca i32, align 4
  %tmp149 = alloca i32, align 4
  %__inst155 = alloca %struct._GTypeInstance*, align 8
  %__t157 = alloca i64, align 8
  %__r160 = alloca i32, align 4
  %tmp175 = alloca i32, align 4
  %__val182 = alloca %struct._GValue*, align 8
  %__t184 = alloca i64, align 8
  %__r187 = alloca i32, align 4
  %tmp198 = alloca i32, align 4
  %__inst204 = alloca %struct._GTypeInstance*, align 8
  %__t206 = alloca i64, align 8
  %__r209 = alloca i32, align 4
  %tmp224 = alloca i32, align 4
  %__val231 = alloca %struct._GValue*, align 8
  %__t233 = alloca i64, align 8
  %__r236 = alloca i32, align 4
  %tmp247 = alloca i32, align 4
  %__inst253 = alloca %struct._GTypeInstance*, align 8
  %__t255 = alloca i64, align 8
  %__r258 = alloca i32, align 4
  %tmp273 = alloca i32, align 4
  %__val280 = alloca %struct._GValue*, align 8
  %__t282 = alloca i64, align 8
  %__r285 = alloca i32, align 4
  %tmp296 = alloca i32, align 4
  %__inst302 = alloca %struct._GTypeInstance*, align 8
  %__t304 = alloca i64, align 8
  %__r307 = alloca i32, align 4
  %tmp322 = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %cmp = icmp eq %struct._GimpItem* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %2 = bitcast %struct._GimpItem* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_value_set_item, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.336

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %14, %struct._GValue** %__val, align 8
  %call15 = call i64 @gimp_item_id_get_type() #5
  store i64 %call15, i64* %__t14, align 8
  %15 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool18 = icmp ne %struct._GValue* %15, null
  br i1 %tobool18, label %if.else.20, label %if.then.19

if.then.19:                                       ; preds = %do.end
  store i32 0, i32* %__r17, align 4
  br label %if.end.27

if.else.20:                                       ; preds = %do.end
  %16 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type21 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type21, align 8
  %18 = load i64, i64* %__t14, align 8
  %cmp22 = icmp eq i64 %17, %18
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else.20
  store i32 1, i32* %__r17, align 4
  br label %if.end.26

if.else.24:                                       ; preds = %if.else.20
  %19 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %20 = load i64, i64* %__t14, align 8
  %call25 = call i32 @g_type_check_value_holds(%struct._GValue* %19, i64 %20) #6
  store i32 %call25, i32* %__r17, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.19
  %21 = load i32, i32* %__r17, align 4
  store i32 %21, i32* %tmp28
  %22 = load i32, i32* %tmp28
  %tobool29 = icmp ne i32 %22, 0
  br i1 %tobool29, label %if.then.30, label %if.else.33

if.then.30:                                       ; preds = %if.end.27
  %23 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %tobool31 = icmp ne %struct._GimpItem* %23, null
  br i1 %tobool31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.30
  %24 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call32 = call i32 @gimp_item_get_ID(%struct._GimpItem* %24)
  br label %cond.end

cond.false:                                       ; preds = %if.then.30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call32, %cond.true ], [ -1, %cond.false ]
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %25, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  store i32 %cond, i32* %v_int, align 4
  br label %if.end.336

if.else.33:                                       ; preds = %if.end.27
  %26 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %26, %struct._GValue** %__val35, align 8
  %call38 = call i64 @gimp_drawable_id_get_type() #5
  store i64 %call38, i64* %__t37, align 8
  %27 = load %struct._GValue*, %struct._GValue** %__val35, align 8
  %tobool41 = icmp ne %struct._GValue* %27, null
  br i1 %tobool41, label %if.else.43, label %if.then.42

if.then.42:                                       ; preds = %if.else.33
  store i32 0, i32* %__r40, align 4
  br label %if.end.50

if.else.43:                                       ; preds = %if.else.33
  %28 = load %struct._GValue*, %struct._GValue** %__val35, align 8
  %g_type44 = getelementptr inbounds %struct._GValue, %struct._GValue* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type44, align 8
  %30 = load i64, i64* %__t37, align 8
  %cmp45 = icmp eq i64 %29, %30
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.else.43
  store i32 1, i32* %__r40, align 4
  br label %if.end.49

if.else.47:                                       ; preds = %if.else.43
  %31 = load %struct._GValue*, %struct._GValue** %__val35, align 8
  %32 = load i64, i64* %__t37, align 8
  %call48 = call i32 @g_type_check_value_holds(%struct._GValue* %31, i64 %32) #6
  store i32 %call48, i32* %__r40, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.47, %if.then.46
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.42
  %33 = load i32, i32* %__r40, align 4
  store i32 %33, i32* %tmp51
  %34 = load i32, i32* %tmp51
  %tobool52 = icmp ne i32 %34, 0
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.82

land.lhs.true.53:                                 ; preds = %if.end.50
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %cmp54 = icmp eq %struct._GimpItem* %35, null
  br i1 %cmp54, label %if.then.79, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %land.lhs.true.53
  %36 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %37 = bitcast %struct._GimpItem* %36 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %37, %struct._GTypeInstance** %__inst57, align 8
  %call60 = call i64 @gimp_drawable_get_type() #5
  store i64 %call60, i64* %__t59, align 8
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %tobool63 = icmp ne %struct._GTypeInstance* %38, null
  br i1 %tobool63, label %if.else.65, label %if.then.64

if.then.64:                                       ; preds = %lor.lhs.false.55
  store i32 0, i32* %__r62, align 4
  br label %if.end.76

if.else.65:                                       ; preds = %lor.lhs.false.55
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %g_class66 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class66, align 8
  %tobool67 = icmp ne %struct._GTypeClass* %40, null
  br i1 %tobool67, label %land.lhs.true.68, label %if.else.73

land.lhs.true.68:                                 ; preds = %if.else.65
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %g_class69 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class69, align 8
  %g_type70 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %42, i32 0, i32 0
  %43 = load i64, i64* %g_type70, align 8
  %44 = load i64, i64* %__t59, align 8
  %cmp71 = icmp eq i64 %43, %44
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %land.lhs.true.68
  store i32 1, i32* %__r62, align 4
  br label %if.end.75

if.else.73:                                       ; preds = %land.lhs.true.68, %if.else.65
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %46 = load i64, i64* %__t59, align 8
  %call74 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %45, i64 %46) #6
  store i32 %call74, i32* %__r62, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.73, %if.then.72
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.64
  %47 = load i32, i32* %__r62, align 4
  store i32 %47, i32* %tmp77
  %48 = load i32, i32* %tmp77
  %tobool78 = icmp ne i32 %48, 0
  br i1 %tobool78, label %if.then.79, label %if.else.82

if.then.79:                                       ; preds = %if.end.76, %land.lhs.true.53
  %49 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %50 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %51 = bitcast %struct._GimpItem* %50 to %struct._GTypeInstance*
  %call80 = call i64 @gimp_drawable_get_type() #5
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call80)
  %52 = bitcast %struct._GTypeInstance* %call81 to %struct._GimpDrawable*
  call void @gimp_value_set_drawable(%struct._GValue* %49, %struct._GimpDrawable* %52)
  br label %if.end.335

if.else.82:                                       ; preds = %if.end.76, %if.end.50
  %53 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %53, %struct._GValue** %__val84, align 8
  %call87 = call i64 @gimp_layer_id_get_type() #5
  store i64 %call87, i64* %__t86, align 8
  %54 = load %struct._GValue*, %struct._GValue** %__val84, align 8
  %tobool90 = icmp ne %struct._GValue* %54, null
  br i1 %tobool90, label %if.else.92, label %if.then.91

if.then.91:                                       ; preds = %if.else.82
  store i32 0, i32* %__r89, align 4
  br label %if.end.99

if.else.92:                                       ; preds = %if.else.82
  %55 = load %struct._GValue*, %struct._GValue** %__val84, align 8
  %g_type93 = getelementptr inbounds %struct._GValue, %struct._GValue* %55, i32 0, i32 0
  %56 = load i64, i64* %g_type93, align 8
  %57 = load i64, i64* %__t86, align 8
  %cmp94 = icmp eq i64 %56, %57
  br i1 %cmp94, label %if.then.95, label %if.else.96

if.then.95:                                       ; preds = %if.else.92
  store i32 1, i32* %__r89, align 4
  br label %if.end.98

if.else.96:                                       ; preds = %if.else.92
  %58 = load %struct._GValue*, %struct._GValue** %__val84, align 8
  %59 = load i64, i64* %__t86, align 8
  %call97 = call i32 @g_type_check_value_holds(%struct._GValue* %58, i64 %59) #6
  store i32 %call97, i32* %__r89, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.96, %if.then.95
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.91
  %60 = load i32, i32* %__r89, align 4
  store i32 %60, i32* %tmp100
  %61 = load i32, i32* %tmp100
  %tobool101 = icmp ne i32 %61, 0
  br i1 %tobool101, label %land.lhs.true.102, label %if.else.131

land.lhs.true.102:                                ; preds = %if.end.99
  %62 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %cmp103 = icmp eq %struct._GimpItem* %62, null
  br i1 %cmp103, label %if.then.128, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %land.lhs.true.102
  %63 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %64 = bitcast %struct._GimpItem* %63 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %64, %struct._GTypeInstance** %__inst106, align 8
  %call109 = call i64 @gimp_layer_get_type() #5
  store i64 %call109, i64* %__t108, align 8
  %65 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst106, align 8
  %tobool112 = icmp ne %struct._GTypeInstance* %65, null
  br i1 %tobool112, label %if.else.114, label %if.then.113

if.then.113:                                      ; preds = %lor.lhs.false.104
  store i32 0, i32* %__r111, align 4
  br label %if.end.125

if.else.114:                                      ; preds = %lor.lhs.false.104
  %66 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst106, align 8
  %g_class115 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %66, i32 0, i32 0
  %67 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class115, align 8
  %tobool116 = icmp ne %struct._GTypeClass* %67, null
  br i1 %tobool116, label %land.lhs.true.117, label %if.else.122

land.lhs.true.117:                                ; preds = %if.else.114
  %68 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst106, align 8
  %g_class118 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %68, i32 0, i32 0
  %69 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class118, align 8
  %g_type119 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %69, i32 0, i32 0
  %70 = load i64, i64* %g_type119, align 8
  %71 = load i64, i64* %__t108, align 8
  %cmp120 = icmp eq i64 %70, %71
  br i1 %cmp120, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %land.lhs.true.117
  store i32 1, i32* %__r111, align 4
  br label %if.end.124

if.else.122:                                      ; preds = %land.lhs.true.117, %if.else.114
  %72 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst106, align 8
  %73 = load i64, i64* %__t108, align 8
  %call123 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %72, i64 %73) #6
  store i32 %call123, i32* %__r111, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.122, %if.then.121
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.then.113
  %74 = load i32, i32* %__r111, align 4
  store i32 %74, i32* %tmp126
  %75 = load i32, i32* %tmp126
  %tobool127 = icmp ne i32 %75, 0
  br i1 %tobool127, label %if.then.128, label %if.else.131

if.then.128:                                      ; preds = %if.end.125, %land.lhs.true.102
  %76 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %77 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %78 = bitcast %struct._GimpItem* %77 to %struct._GTypeInstance*
  %call129 = call i64 @gimp_layer_get_type() #5
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call129)
  %79 = bitcast %struct._GTypeInstance* %call130 to %struct._GimpLayer*
  call void @gimp_value_set_layer(%struct._GValue* %76, %struct._GimpLayer* %79)
  br label %if.end.334

if.else.131:                                      ; preds = %if.end.125, %if.end.99
  %80 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %80, %struct._GValue** %__val133, align 8
  %call136 = call i64 @gimp_channel_id_get_type() #5
  store i64 %call136, i64* %__t135, align 8
  %81 = load %struct._GValue*, %struct._GValue** %__val133, align 8
  %tobool139 = icmp ne %struct._GValue* %81, null
  br i1 %tobool139, label %if.else.141, label %if.then.140

if.then.140:                                      ; preds = %if.else.131
  store i32 0, i32* %__r138, align 4
  br label %if.end.148

if.else.141:                                      ; preds = %if.else.131
  %82 = load %struct._GValue*, %struct._GValue** %__val133, align 8
  %g_type142 = getelementptr inbounds %struct._GValue, %struct._GValue* %82, i32 0, i32 0
  %83 = load i64, i64* %g_type142, align 8
  %84 = load i64, i64* %__t135, align 8
  %cmp143 = icmp eq i64 %83, %84
  br i1 %cmp143, label %if.then.144, label %if.else.145

if.then.144:                                      ; preds = %if.else.141
  store i32 1, i32* %__r138, align 4
  br label %if.end.147

if.else.145:                                      ; preds = %if.else.141
  %85 = load %struct._GValue*, %struct._GValue** %__val133, align 8
  %86 = load i64, i64* %__t135, align 8
  %call146 = call i32 @g_type_check_value_holds(%struct._GValue* %85, i64 %86) #6
  store i32 %call146, i32* %__r138, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.145, %if.then.144
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.then.140
  %87 = load i32, i32* %__r138, align 4
  store i32 %87, i32* %tmp149
  %88 = load i32, i32* %tmp149
  %tobool150 = icmp ne i32 %88, 0
  br i1 %tobool150, label %land.lhs.true.151, label %if.else.180

land.lhs.true.151:                                ; preds = %if.end.148
  %89 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %cmp152 = icmp eq %struct._GimpItem* %89, null
  br i1 %cmp152, label %if.then.177, label %lor.lhs.false.153

lor.lhs.false.153:                                ; preds = %land.lhs.true.151
  %90 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %91 = bitcast %struct._GimpItem* %90 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %91, %struct._GTypeInstance** %__inst155, align 8
  %call158 = call i64 @gimp_channel_get_type() #5
  store i64 %call158, i64* %__t157, align 8
  %92 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst155, align 8
  %tobool161 = icmp ne %struct._GTypeInstance* %92, null
  br i1 %tobool161, label %if.else.163, label %if.then.162

if.then.162:                                      ; preds = %lor.lhs.false.153
  store i32 0, i32* %__r160, align 4
  br label %if.end.174

if.else.163:                                      ; preds = %lor.lhs.false.153
  %93 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst155, align 8
  %g_class164 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %93, i32 0, i32 0
  %94 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class164, align 8
  %tobool165 = icmp ne %struct._GTypeClass* %94, null
  br i1 %tobool165, label %land.lhs.true.166, label %if.else.171

land.lhs.true.166:                                ; preds = %if.else.163
  %95 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst155, align 8
  %g_class167 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %95, i32 0, i32 0
  %96 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class167, align 8
  %g_type168 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %96, i32 0, i32 0
  %97 = load i64, i64* %g_type168, align 8
  %98 = load i64, i64* %__t157, align 8
  %cmp169 = icmp eq i64 %97, %98
  br i1 %cmp169, label %if.then.170, label %if.else.171

if.then.170:                                      ; preds = %land.lhs.true.166
  store i32 1, i32* %__r160, align 4
  br label %if.end.173

if.else.171:                                      ; preds = %land.lhs.true.166, %if.else.163
  %99 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst155, align 8
  %100 = load i64, i64* %__t157, align 8
  %call172 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %99, i64 %100) #6
  store i32 %call172, i32* %__r160, align 4
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.171, %if.then.170
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.then.162
  %101 = load i32, i32* %__r160, align 4
  store i32 %101, i32* %tmp175
  %102 = load i32, i32* %tmp175
  %tobool176 = icmp ne i32 %102, 0
  br i1 %tobool176, label %if.then.177, label %if.else.180

if.then.177:                                      ; preds = %if.end.174, %land.lhs.true.151
  %103 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %104 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %105 = bitcast %struct._GimpItem* %104 to %struct._GTypeInstance*
  %call178 = call i64 @gimp_channel_get_type() #5
  %call179 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call178)
  %106 = bitcast %struct._GTypeInstance* %call179 to %struct._GimpChannel*
  call void @gimp_value_set_channel(%struct._GValue* %103, %struct._GimpChannel* %106)
  br label %if.end.333

if.else.180:                                      ; preds = %if.end.174, %if.end.148
  %107 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %107, %struct._GValue** %__val182, align 8
  %call185 = call i64 @gimp_layer_mask_id_get_type() #5
  store i64 %call185, i64* %__t184, align 8
  %108 = load %struct._GValue*, %struct._GValue** %__val182, align 8
  %tobool188 = icmp ne %struct._GValue* %108, null
  br i1 %tobool188, label %if.else.190, label %if.then.189

if.then.189:                                      ; preds = %if.else.180
  store i32 0, i32* %__r187, align 4
  br label %if.end.197

if.else.190:                                      ; preds = %if.else.180
  %109 = load %struct._GValue*, %struct._GValue** %__val182, align 8
  %g_type191 = getelementptr inbounds %struct._GValue, %struct._GValue* %109, i32 0, i32 0
  %110 = load i64, i64* %g_type191, align 8
  %111 = load i64, i64* %__t184, align 8
  %cmp192 = icmp eq i64 %110, %111
  br i1 %cmp192, label %if.then.193, label %if.else.194

if.then.193:                                      ; preds = %if.else.190
  store i32 1, i32* %__r187, align 4
  br label %if.end.196

if.else.194:                                      ; preds = %if.else.190
  %112 = load %struct._GValue*, %struct._GValue** %__val182, align 8
  %113 = load i64, i64* %__t184, align 8
  %call195 = call i32 @g_type_check_value_holds(%struct._GValue* %112, i64 %113) #6
  store i32 %call195, i32* %__r187, align 4
  br label %if.end.196

if.end.196:                                       ; preds = %if.else.194, %if.then.193
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.then.189
  %114 = load i32, i32* %__r187, align 4
  store i32 %114, i32* %tmp198
  %115 = load i32, i32* %tmp198
  %tobool199 = icmp ne i32 %115, 0
  br i1 %tobool199, label %land.lhs.true.200, label %if.else.229

land.lhs.true.200:                                ; preds = %if.end.197
  %116 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %cmp201 = icmp eq %struct._GimpItem* %116, null
  br i1 %cmp201, label %if.then.226, label %lor.lhs.false.202

lor.lhs.false.202:                                ; preds = %land.lhs.true.200
  %117 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %118 = bitcast %struct._GimpItem* %117 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %118, %struct._GTypeInstance** %__inst204, align 8
  %call207 = call i64 @gimp_layer_mask_get_type() #5
  store i64 %call207, i64* %__t206, align 8
  %119 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst204, align 8
  %tobool210 = icmp ne %struct._GTypeInstance* %119, null
  br i1 %tobool210, label %if.else.212, label %if.then.211

if.then.211:                                      ; preds = %lor.lhs.false.202
  store i32 0, i32* %__r209, align 4
  br label %if.end.223

if.else.212:                                      ; preds = %lor.lhs.false.202
  %120 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst204, align 8
  %g_class213 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %120, i32 0, i32 0
  %121 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class213, align 8
  %tobool214 = icmp ne %struct._GTypeClass* %121, null
  br i1 %tobool214, label %land.lhs.true.215, label %if.else.220

land.lhs.true.215:                                ; preds = %if.else.212
  %122 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst204, align 8
  %g_class216 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %122, i32 0, i32 0
  %123 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class216, align 8
  %g_type217 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %123, i32 0, i32 0
  %124 = load i64, i64* %g_type217, align 8
  %125 = load i64, i64* %__t206, align 8
  %cmp218 = icmp eq i64 %124, %125
  br i1 %cmp218, label %if.then.219, label %if.else.220

if.then.219:                                      ; preds = %land.lhs.true.215
  store i32 1, i32* %__r209, align 4
  br label %if.end.222

if.else.220:                                      ; preds = %land.lhs.true.215, %if.else.212
  %126 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst204, align 8
  %127 = load i64, i64* %__t206, align 8
  %call221 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %126, i64 %127) #6
  store i32 %call221, i32* %__r209, align 4
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.220, %if.then.219
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %if.then.211
  %128 = load i32, i32* %__r209, align 4
  store i32 %128, i32* %tmp224
  %129 = load i32, i32* %tmp224
  %tobool225 = icmp ne i32 %129, 0
  br i1 %tobool225, label %if.then.226, label %if.else.229

if.then.226:                                      ; preds = %if.end.223, %land.lhs.true.200
  %130 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %131 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %132 = bitcast %struct._GimpItem* %131 to %struct._GTypeInstance*
  %call227 = call i64 @gimp_layer_mask_get_type() #5
  %call228 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call227)
  %133 = bitcast %struct._GTypeInstance* %call228 to %struct._GimpLayerMask*
  call void @gimp_value_set_layer_mask(%struct._GValue* %130, %struct._GimpLayerMask* %133)
  br label %if.end.332

if.else.229:                                      ; preds = %if.end.223, %if.end.197
  %134 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %134, %struct._GValue** %__val231, align 8
  %call234 = call i64 @gimp_selection_id_get_type() #5
  store i64 %call234, i64* %__t233, align 8
  %135 = load %struct._GValue*, %struct._GValue** %__val231, align 8
  %tobool237 = icmp ne %struct._GValue* %135, null
  br i1 %tobool237, label %if.else.239, label %if.then.238

if.then.238:                                      ; preds = %if.else.229
  store i32 0, i32* %__r236, align 4
  br label %if.end.246

if.else.239:                                      ; preds = %if.else.229
  %136 = load %struct._GValue*, %struct._GValue** %__val231, align 8
  %g_type240 = getelementptr inbounds %struct._GValue, %struct._GValue* %136, i32 0, i32 0
  %137 = load i64, i64* %g_type240, align 8
  %138 = load i64, i64* %__t233, align 8
  %cmp241 = icmp eq i64 %137, %138
  br i1 %cmp241, label %if.then.242, label %if.else.243

if.then.242:                                      ; preds = %if.else.239
  store i32 1, i32* %__r236, align 4
  br label %if.end.245

if.else.243:                                      ; preds = %if.else.239
  %139 = load %struct._GValue*, %struct._GValue** %__val231, align 8
  %140 = load i64, i64* %__t233, align 8
  %call244 = call i32 @g_type_check_value_holds(%struct._GValue* %139, i64 %140) #6
  store i32 %call244, i32* %__r236, align 4
  br label %if.end.245

if.end.245:                                       ; preds = %if.else.243, %if.then.242
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %if.then.238
  %141 = load i32, i32* %__r236, align 4
  store i32 %141, i32* %tmp247
  %142 = load i32, i32* %tmp247
  %tobool248 = icmp ne i32 %142, 0
  br i1 %tobool248, label %land.lhs.true.249, label %if.else.278

land.lhs.true.249:                                ; preds = %if.end.246
  %143 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %cmp250 = icmp eq %struct._GimpItem* %143, null
  br i1 %cmp250, label %if.then.275, label %lor.lhs.false.251

lor.lhs.false.251:                                ; preds = %land.lhs.true.249
  %144 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %145 = bitcast %struct._GimpItem* %144 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %145, %struct._GTypeInstance** %__inst253, align 8
  %call256 = call i64 @gimp_selection_get_type() #5
  store i64 %call256, i64* %__t255, align 8
  %146 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst253, align 8
  %tobool259 = icmp ne %struct._GTypeInstance* %146, null
  br i1 %tobool259, label %if.else.261, label %if.then.260

if.then.260:                                      ; preds = %lor.lhs.false.251
  store i32 0, i32* %__r258, align 4
  br label %if.end.272

if.else.261:                                      ; preds = %lor.lhs.false.251
  %147 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst253, align 8
  %g_class262 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %147, i32 0, i32 0
  %148 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class262, align 8
  %tobool263 = icmp ne %struct._GTypeClass* %148, null
  br i1 %tobool263, label %land.lhs.true.264, label %if.else.269

land.lhs.true.264:                                ; preds = %if.else.261
  %149 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst253, align 8
  %g_class265 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %149, i32 0, i32 0
  %150 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class265, align 8
  %g_type266 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %150, i32 0, i32 0
  %151 = load i64, i64* %g_type266, align 8
  %152 = load i64, i64* %__t255, align 8
  %cmp267 = icmp eq i64 %151, %152
  br i1 %cmp267, label %if.then.268, label %if.else.269

if.then.268:                                      ; preds = %land.lhs.true.264
  store i32 1, i32* %__r258, align 4
  br label %if.end.271

if.else.269:                                      ; preds = %land.lhs.true.264, %if.else.261
  %153 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst253, align 8
  %154 = load i64, i64* %__t255, align 8
  %call270 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %153, i64 %154) #6
  store i32 %call270, i32* %__r258, align 4
  br label %if.end.271

if.end.271:                                       ; preds = %if.else.269, %if.then.268
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %if.then.260
  %155 = load i32, i32* %__r258, align 4
  store i32 %155, i32* %tmp273
  %156 = load i32, i32* %tmp273
  %tobool274 = icmp ne i32 %156, 0
  br i1 %tobool274, label %if.then.275, label %if.else.278

if.then.275:                                      ; preds = %if.end.272, %land.lhs.true.249
  %157 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %158 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %159 = bitcast %struct._GimpItem* %158 to %struct._GTypeInstance*
  %call276 = call i64 @gimp_selection_get_type() #5
  %call277 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call276)
  %160 = bitcast %struct._GTypeInstance* %call277 to %struct._GimpSelection*
  call void @gimp_value_set_selection(%struct._GValue* %157, %struct._GimpSelection* %160)
  br label %if.end.331

if.else.278:                                      ; preds = %if.end.272, %if.end.246
  %161 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %161, %struct._GValue** %__val280, align 8
  %call283 = call i64 @gimp_vectors_id_get_type() #5
  store i64 %call283, i64* %__t282, align 8
  %162 = load %struct._GValue*, %struct._GValue** %__val280, align 8
  %tobool286 = icmp ne %struct._GValue* %162, null
  br i1 %tobool286, label %if.else.288, label %if.then.287

if.then.287:                                      ; preds = %if.else.278
  store i32 0, i32* %__r285, align 4
  br label %if.end.295

if.else.288:                                      ; preds = %if.else.278
  %163 = load %struct._GValue*, %struct._GValue** %__val280, align 8
  %g_type289 = getelementptr inbounds %struct._GValue, %struct._GValue* %163, i32 0, i32 0
  %164 = load i64, i64* %g_type289, align 8
  %165 = load i64, i64* %__t282, align 8
  %cmp290 = icmp eq i64 %164, %165
  br i1 %cmp290, label %if.then.291, label %if.else.292

if.then.291:                                      ; preds = %if.else.288
  store i32 1, i32* %__r285, align 4
  br label %if.end.294

if.else.292:                                      ; preds = %if.else.288
  %166 = load %struct._GValue*, %struct._GValue** %__val280, align 8
  %167 = load i64, i64* %__t282, align 8
  %call293 = call i32 @g_type_check_value_holds(%struct._GValue* %166, i64 %167) #6
  store i32 %call293, i32* %__r285, align 4
  br label %if.end.294

if.end.294:                                       ; preds = %if.else.292, %if.then.291
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294, %if.then.287
  %168 = load i32, i32* %__r285, align 4
  store i32 %168, i32* %tmp296
  %169 = load i32, i32* %tmp296
  %tobool297 = icmp ne i32 %169, 0
  br i1 %tobool297, label %land.lhs.true.298, label %if.else.327

land.lhs.true.298:                                ; preds = %if.end.295
  %170 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %cmp299 = icmp eq %struct._GimpItem* %170, null
  br i1 %cmp299, label %if.then.324, label %lor.lhs.false.300

lor.lhs.false.300:                                ; preds = %land.lhs.true.298
  %171 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %172 = bitcast %struct._GimpItem* %171 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %172, %struct._GTypeInstance** %__inst302, align 8
  %call305 = call i64 @gimp_vectors_get_type() #5
  store i64 %call305, i64* %__t304, align 8
  %173 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst302, align 8
  %tobool308 = icmp ne %struct._GTypeInstance* %173, null
  br i1 %tobool308, label %if.else.310, label %if.then.309

if.then.309:                                      ; preds = %lor.lhs.false.300
  store i32 0, i32* %__r307, align 4
  br label %if.end.321

if.else.310:                                      ; preds = %lor.lhs.false.300
  %174 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst302, align 8
  %g_class311 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %174, i32 0, i32 0
  %175 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class311, align 8
  %tobool312 = icmp ne %struct._GTypeClass* %175, null
  br i1 %tobool312, label %land.lhs.true.313, label %if.else.318

land.lhs.true.313:                                ; preds = %if.else.310
  %176 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst302, align 8
  %g_class314 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %176, i32 0, i32 0
  %177 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class314, align 8
  %g_type315 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %177, i32 0, i32 0
  %178 = load i64, i64* %g_type315, align 8
  %179 = load i64, i64* %__t304, align 8
  %cmp316 = icmp eq i64 %178, %179
  br i1 %cmp316, label %if.then.317, label %if.else.318

if.then.317:                                      ; preds = %land.lhs.true.313
  store i32 1, i32* %__r307, align 4
  br label %if.end.320

if.else.318:                                      ; preds = %land.lhs.true.313, %if.else.310
  %180 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst302, align 8
  %181 = load i64, i64* %__t304, align 8
  %call319 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %180, i64 %181) #6
  store i32 %call319, i32* %__r307, align 4
  br label %if.end.320

if.end.320:                                       ; preds = %if.else.318, %if.then.317
  br label %if.end.321

if.end.321:                                       ; preds = %if.end.320, %if.then.309
  %182 = load i32, i32* %__r307, align 4
  store i32 %182, i32* %tmp322
  %183 = load i32, i32* %tmp322
  %tobool323 = icmp ne i32 %183, 0
  br i1 %tobool323, label %if.then.324, label %if.else.327

if.then.324:                                      ; preds = %if.end.321, %land.lhs.true.298
  %184 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %185 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %186 = bitcast %struct._GimpItem* %185 to %struct._GTypeInstance*
  %call325 = call i64 @gimp_vectors_get_type() #5
  %call326 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %186, i64 %call325)
  %187 = bitcast %struct._GTypeInstance* %call326 to %struct._GimpVectors*
  call void @gimp_value_set_vectors(%struct._GValue* %184, %struct._GimpVectors* %187)
  br label %if.end.330

if.else.327:                                      ; preds = %if.end.321, %if.end.295
  br label %do.body.328

do.body.328:                                      ; preds = %if.else.327
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 953, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_value_set_item, i32 0, i32 0))
  br label %if.end.336

do.end.329:                                       ; No predecessors!
  br label %if.end.330

if.end.330:                                       ; preds = %do.end.329, %if.then.324
  br label %if.end.331

if.end.331:                                       ; preds = %if.end.330, %if.then.275
  br label %if.end.332

if.end.332:                                       ; preds = %if.end.331, %if.then.226
  br label %if.end.333

if.end.333:                                       ; preds = %if.end.332, %if.then.177
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.333, %if.then.128
  br label %if.end.335

if.end.335:                                       ; preds = %if.end.334, %if.then.79
  br label %if.end.336

if.end.336:                                       ; preds = %if.else.10, %do.body.328, %if.end.335, %cond.end
  ret void
}

declare i32 @gimp_item_get_ID(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_drawable_id_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_drawable_id_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), %struct._GTypeInfo* @gimp_drawable_id_get_type.info, i32 0)
  store i64 %call, i64* @gimp_drawable_id_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_drawable_id_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #4

; Function Attrs: nounwind uwtable
define void @gimp_value_set_drawable(%struct._GValue* %value, %struct._GimpDrawable* %drawable) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t13 = alloca i64, align 8
  %__r16 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_drawable_id_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_value_set_drawable, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp10 = icmp eq %struct._GimpDrawable* %9, null
  br i1 %cmp10, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.9
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %11 = bitcast %struct._GimpDrawable* %10 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %11, %struct._GTypeInstance** %__inst, align 8
  %call14 = call i64 @gimp_drawable_get_type() #5
  store i64 %call14, i64* %__t13, align 8
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool17 = icmp ne %struct._GTypeInstance* %12, null
  br i1 %tobool17, label %if.else.19, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r16, align 4
  br label %if.end.28

if.else.19:                                       ; preds = %lor.lhs.false
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool20 = icmp ne %struct._GTypeClass* %14, null
  br i1 %tobool20, label %land.lhs.true, label %if.else.25

land.lhs.true:                                    ; preds = %if.else.19
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %g_type22 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type22, align 8
  %18 = load i64, i64* %__t13, align 8
  %cmp23 = icmp eq i64 %17, %18
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r16, align 4
  br label %if.end.27

if.else.25:                                       ; preds = %land.lhs.true, %if.else.19
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %20 = load i64, i64* %__t13, align 8
  %call26 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %19, i64 %20) #6
  store i32 %call26, i32* %__r16, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.24
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.18
  %21 = load i32, i32* %__r16, align 4
  store i32 %21, i32* %tmp29
  %22 = load i32, i32* %tmp29
  %tobool30 = icmp ne i32 %22, 0
  br i1 %tobool30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.end.28, %do.body.9
  br label %if.end.33

if.else.32:                                       ; preds = %if.end.28
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_value_set_drawable, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0))
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %tobool35 = icmp ne %struct._GimpDrawable* %23, null
  br i1 %tobool35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.34
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_item_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call36)
  %26 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpItem*
  %call38 = call i32 @gimp_item_get_ID(%struct._GimpItem* %26)
  br label %cond.end

cond.false:                                       ; preds = %do.end.34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call38, %cond.true ], [ -1, %cond.false ]
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %27, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  store i32 %cond, i32* %v_int, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.else.32, %if.else.7
  ret void
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_layer_id_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_layer_id_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), %struct._GTypeInfo* @gimp_layer_id_get_type.info, i32 0)
  store i64 %call, i64* @gimp_layer_id_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_layer_id_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #4

; Function Attrs: nounwind uwtable
define void @gimp_value_set_layer(%struct._GValue* %value, %struct._GimpLayer* %layer) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t13 = alloca i64, align 8
  %__r16 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_layer_id_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_value_set_layer, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %cmp10 = icmp eq %struct._GimpLayer* %9, null
  br i1 %cmp10, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.9
  %10 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %11 = bitcast %struct._GimpLayer* %10 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %11, %struct._GTypeInstance** %__inst, align 8
  %call14 = call i64 @gimp_layer_get_type() #5
  store i64 %call14, i64* %__t13, align 8
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool17 = icmp ne %struct._GTypeInstance* %12, null
  br i1 %tobool17, label %if.else.19, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r16, align 4
  br label %if.end.28

if.else.19:                                       ; preds = %lor.lhs.false
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool20 = icmp ne %struct._GTypeClass* %14, null
  br i1 %tobool20, label %land.lhs.true, label %if.else.25

land.lhs.true:                                    ; preds = %if.else.19
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %g_type22 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type22, align 8
  %18 = load i64, i64* %__t13, align 8
  %cmp23 = icmp eq i64 %17, %18
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r16, align 4
  br label %if.end.27

if.else.25:                                       ; preds = %land.lhs.true, %if.else.19
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %20 = load i64, i64* %__t13, align 8
  %call26 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %19, i64 %20) #6
  store i32 %call26, i32* %__r16, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.24
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.18
  %21 = load i32, i32* %__r16, align 4
  store i32 %21, i32* %tmp29
  %22 = load i32, i32* %tmp29
  %tobool30 = icmp ne i32 %22, 0
  br i1 %tobool30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.end.28, %do.body.9
  br label %if.end.33

if.else.32:                                       ; preds = %if.end.28
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_value_set_layer, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i32 0, i32 0))
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %23 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %tobool35 = icmp ne %struct._GimpLayer* %23, null
  br i1 %tobool35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.34
  %24 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %25 = bitcast %struct._GimpLayer* %24 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_item_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call36)
  %26 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpItem*
  %call38 = call i32 @gimp_item_get_ID(%struct._GimpItem* %26)
  br label %cond.end

cond.false:                                       ; preds = %do.end.34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call38, %cond.true ], [ -1, %cond.false ]
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %27, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  store i32 %cond, i32* %v_int, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.else.32, %if.else.7
  ret void
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_channel_id_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_channel_id_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), %struct._GTypeInfo* @gimp_channel_id_get_type.info, i32 0)
  store i64 %call, i64* @gimp_channel_id_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_channel_id_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #4

; Function Attrs: nounwind uwtable
define void @gimp_value_set_channel(%struct._GValue* %value, %struct._GimpChannel* %channel) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t13 = alloca i64, align 8
  %__r16 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_channel_id_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_value_set_channel, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %9 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %cmp10 = icmp eq %struct._GimpChannel* %9, null
  br i1 %cmp10, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.9
  %10 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %11 = bitcast %struct._GimpChannel* %10 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %11, %struct._GTypeInstance** %__inst, align 8
  %call14 = call i64 @gimp_channel_get_type() #5
  store i64 %call14, i64* %__t13, align 8
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool17 = icmp ne %struct._GTypeInstance* %12, null
  br i1 %tobool17, label %if.else.19, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r16, align 4
  br label %if.end.28

if.else.19:                                       ; preds = %lor.lhs.false
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool20 = icmp ne %struct._GTypeClass* %14, null
  br i1 %tobool20, label %land.lhs.true, label %if.else.25

land.lhs.true:                                    ; preds = %if.else.19
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %g_type22 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type22, align 8
  %18 = load i64, i64* %__t13, align 8
  %cmp23 = icmp eq i64 %17, %18
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r16, align 4
  br label %if.end.27

if.else.25:                                       ; preds = %land.lhs.true, %if.else.19
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %20 = load i64, i64* %__t13, align 8
  %call26 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %19, i64 %20) #6
  store i32 %call26, i32* %__r16, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.24
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.18
  %21 = load i32, i32* %__r16, align 4
  store i32 %21, i32* %tmp29
  %22 = load i32, i32* %tmp29
  %tobool30 = icmp ne i32 %22, 0
  br i1 %tobool30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.end.28, %do.body.9
  br label %if.end.33

if.else.32:                                       ; preds = %if.end.28
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_value_set_channel, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.42, i32 0, i32 0))
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %23 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %tobool35 = icmp ne %struct._GimpChannel* %23, null
  br i1 %tobool35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.34
  %24 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %25 = bitcast %struct._GimpChannel* %24 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_item_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call36)
  %26 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpItem*
  %call38 = call i32 @gimp_item_get_ID(%struct._GimpItem* %26)
  br label %cond.end

cond.false:                                       ; preds = %do.end.34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call38, %cond.true ], [ -1, %cond.false ]
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %27, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  store i32 %cond, i32* %v_int, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.else.32, %if.else.7
  ret void
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_layer_mask_id_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_layer_mask_id_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0), %struct._GTypeInfo* @gimp_layer_mask_id_get_type.info, i32 0)
  store i64 %call, i64* @gimp_layer_mask_id_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_layer_mask_id_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mask_get_type() #4

; Function Attrs: nounwind uwtable
define void @gimp_value_set_layer_mask(%struct._GValue* %value, %struct._GimpLayerMask* %layer_mask) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %layer_mask.addr = alloca %struct._GimpLayerMask*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t13 = alloca i64, align 8
  %__r16 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GimpLayerMask* %layer_mask, %struct._GimpLayerMask** %layer_mask.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_layer_mask_id_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_value_set_layer_mask, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %9 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %cmp10 = icmp eq %struct._GimpLayerMask* %9, null
  br i1 %cmp10, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.9
  %10 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %11 = bitcast %struct._GimpLayerMask* %10 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %11, %struct._GTypeInstance** %__inst, align 8
  %call14 = call i64 @gimp_layer_mask_get_type() #5
  store i64 %call14, i64* %__t13, align 8
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool17 = icmp ne %struct._GTypeInstance* %12, null
  br i1 %tobool17, label %if.else.19, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r16, align 4
  br label %if.end.28

if.else.19:                                       ; preds = %lor.lhs.false
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool20 = icmp ne %struct._GTypeClass* %14, null
  br i1 %tobool20, label %land.lhs.true, label %if.else.25

land.lhs.true:                                    ; preds = %if.else.19
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %g_type22 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type22, align 8
  %18 = load i64, i64* %__t13, align 8
  %cmp23 = icmp eq i64 %17, %18
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r16, align 4
  br label %if.end.27

if.else.25:                                       ; preds = %land.lhs.true, %if.else.19
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %20 = load i64, i64* %__t13, align 8
  %call26 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %19, i64 %20) #6
  store i32 %call26, i32* %__r16, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.24
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.18
  %21 = load i32, i32* %__r16, align 4
  store i32 %21, i32* %tmp29
  %22 = load i32, i32* %tmp29
  %tobool30 = icmp ne i32 %22, 0
  br i1 %tobool30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.end.28, %do.body.9
  br label %if.end.33

if.else.32:                                       ; preds = %if.end.28
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_value_set_layer_mask, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.46, i32 0, i32 0))
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %23 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %tobool35 = icmp ne %struct._GimpLayerMask* %23, null
  br i1 %tobool35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.34
  %24 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask.addr, align 8
  %25 = bitcast %struct._GimpLayerMask* %24 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_item_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call36)
  %26 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpItem*
  %call38 = call i32 @gimp_item_get_ID(%struct._GimpItem* %26)
  br label %cond.end

cond.false:                                       ; preds = %do.end.34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call38, %cond.true ], [ -1, %cond.false ]
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %27, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  store i32 %cond, i32* %v_int, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.else.32, %if.else.7
  ret void
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_selection_id_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_selection_id_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0), %struct._GTypeInfo* @gimp_selection_id_get_type.info, i32 0)
  store i64 %call, i64* @gimp_selection_id_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_selection_id_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_get_type() #4

; Function Attrs: nounwind uwtable
define void @gimp_value_set_selection(%struct._GValue* %value, %struct._GimpSelection* %selection) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %selection.addr = alloca %struct._GimpSelection*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t13 = alloca i64, align 8
  %__r16 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GimpSelection* %selection, %struct._GimpSelection** %selection.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_selection_id_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_value_set_selection, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.49, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %9 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %cmp10 = icmp eq %struct._GimpSelection* %9, null
  br i1 %cmp10, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.9
  %10 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %11 = bitcast %struct._GimpSelection* %10 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %11, %struct._GTypeInstance** %__inst, align 8
  %call14 = call i64 @gimp_selection_get_type() #5
  store i64 %call14, i64* %__t13, align 8
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool17 = icmp ne %struct._GTypeInstance* %12, null
  br i1 %tobool17, label %if.else.19, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r16, align 4
  br label %if.end.28

if.else.19:                                       ; preds = %lor.lhs.false
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool20 = icmp ne %struct._GTypeClass* %14, null
  br i1 %tobool20, label %land.lhs.true, label %if.else.25

land.lhs.true:                                    ; preds = %if.else.19
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %g_type22 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type22, align 8
  %18 = load i64, i64* %__t13, align 8
  %cmp23 = icmp eq i64 %17, %18
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r16, align 4
  br label %if.end.27

if.else.25:                                       ; preds = %land.lhs.true, %if.else.19
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %20 = load i64, i64* %__t13, align 8
  %call26 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %19, i64 %20) #6
  store i32 %call26, i32* %__r16, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.24
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.18
  %21 = load i32, i32* %__r16, align 4
  store i32 %21, i32* %tmp29
  %22 = load i32, i32* %tmp29
  %tobool30 = icmp ne i32 %22, 0
  br i1 %tobool30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.end.28, %do.body.9
  br label %if.end.33

if.else.32:                                       ; preds = %if.end.28
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_value_set_selection, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i32 0, i32 0))
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %23 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %tobool35 = icmp ne %struct._GimpSelection* %23, null
  br i1 %tobool35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.34
  %24 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %25 = bitcast %struct._GimpSelection* %24 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_item_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call36)
  %26 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpItem*
  %call38 = call i32 @gimp_item_get_ID(%struct._GimpItem* %26)
  br label %cond.end

cond.false:                                       ; preds = %do.end.34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call38, %cond.true ], [ -1, %cond.false ]
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %27, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  store i32 %cond, i32* %v_int, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.else.32, %if.else.7
  ret void
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_vectors_id_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_vectors_id_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), %struct._GTypeInfo* @gimp_vectors_id_get_type.info, i32 0)
  store i64 %call, i64* @gimp_vectors_id_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_vectors_id_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #4

; Function Attrs: nounwind uwtable
define void @gimp_value_set_vectors(%struct._GValue* %value, %struct._GimpVectors* %vectors) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t13 = alloca i64, align 8
  %__r16 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_vectors_id_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_value_set_vectors, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %9 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %cmp10 = icmp eq %struct._GimpVectors* %9, null
  br i1 %cmp10, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.9
  %10 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %11 = bitcast %struct._GimpVectors* %10 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %11, %struct._GTypeInstance** %__inst, align 8
  %call14 = call i64 @gimp_vectors_get_type() #5
  store i64 %call14, i64* %__t13, align 8
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool17 = icmp ne %struct._GTypeInstance* %12, null
  br i1 %tobool17, label %if.else.19, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r16, align 4
  br label %if.end.28

if.else.19:                                       ; preds = %lor.lhs.false
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool20 = icmp ne %struct._GTypeClass* %14, null
  br i1 %tobool20, label %land.lhs.true, label %if.else.25

land.lhs.true:                                    ; preds = %if.else.19
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %g_type22 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type22, align 8
  %18 = load i64, i64* %__t13, align 8
  %cmp23 = icmp eq i64 %17, %18
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r16, align 4
  br label %if.end.27

if.else.25:                                       ; preds = %land.lhs.true, %if.else.19
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %20 = load i64, i64* %__t13, align 8
  %call26 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %19, i64 %20) #6
  store i32 %call26, i32* %__r16, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.24
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.18
  %21 = load i32, i32* %__r16, align 4
  store i32 %21, i32* %tmp29
  %22 = load i32, i32* %tmp29
  %tobool30 = icmp ne i32 %22, 0
  br i1 %tobool30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.end.28, %do.body.9
  br label %if.end.33

if.else.32:                                       ; preds = %if.end.28
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_value_set_vectors, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.54, i32 0, i32 0))
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %23 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %tobool35 = icmp ne %struct._GimpVectors* %23, null
  br i1 %tobool35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.34
  %24 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %25 = bitcast %struct._GimpVectors* %24 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_item_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call36)
  %26 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpItem*
  %call38 = call i32 @gimp_item_get_ID(%struct._GimpItem* %26)
  br label %cond.end

cond.false:                                       ; preds = %do.end.34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call38, %cond.true ], [ -1, %cond.false ]
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %27, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  store i32 %cond, i32* %v_int, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.else.32, %if.else.7
  ret void
}

declare void @g_log(i8*, i32, i8*, ...) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_drawable_id_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_drawable_id_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_param_item_id_get_type() #5
  %call1 = call i64 @g_type_register_static(i64 %call, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_drawable_id_get_type.info, i32 0)
  store i64 %call1, i64* @gimp_param_drawable_id_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_param_drawable_id_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_drawable_id_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %call = call i64 @gimp_drawable_id_get_type() #5
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_drawable_id_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %ispec = alloca %struct._GimpParamSpecItemID*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_item_id_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecItemID*
  store %struct._GimpParamSpecItemID* %2, %struct._GimpParamSpecItemID** %ispec, align 8
  %call2 = call i64 @gimp_drawable_get_type() #5
  %3 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %item_type = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %3, i32 0, i32 2
  store i64 %call2, i64* %item_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_drawable_id(i8* %name, i8* %nick, i8* %blurb, %struct._Gimp* %gimp, i32 %none_ok, i32 %flags) #2 {
entry:
  %retval = alloca %struct._GParamSpec*, align 8
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %none_ok.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %ispec = alloca %struct._GimpParamSpecItemID*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %none_ok, i32* %none_ok.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_param_spec_drawable_id, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_param_drawable_id_get_type() #5
  %13 = load i8*, i8** %name.addr, align 8
  %14 = load i8*, i8** %nick.addr, align 8
  %15 = load i8*, i8** %blurb.addr, align 8
  %16 = load i32, i32* %flags.addr, align 4
  %call12 = call i8* @g_param_spec_internal(i64 %call11, i8* %13, i8* %14, i8* %15, i32 %16)
  %17 = bitcast i8* %call12 to %struct._GimpParamSpecItemID*
  store %struct._GimpParamSpecItemID* %17, %struct._GimpParamSpecItemID** %ispec, align 8
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %19 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %gimp13 = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %19, i32 0, i32 1
  store %struct._Gimp* %18, %struct._Gimp** %gimp13, align 8
  %20 = load i32, i32* %none_ok.addr, align 4
  %tobool14 = icmp ne i32 %20, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %21 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %none_ok15 = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %21, i32 0, i32 3
  store i32 %cond, i32* %none_ok15, align 4
  %22 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %23 = bitcast %struct._GimpParamSpecItemID* %22 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 76)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GParamSpec*
  store %struct._GParamSpec* %24, %struct._GParamSpec** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %retval
  ret %struct._GParamSpec* %25
}

; Function Attrs: nounwind uwtable
define %struct._GimpDrawable* @gimp_value_get_drawable(%struct._GValue* %value, %struct._Gimp* %gimp) #2 {
entry:
  %retval = alloca %struct._GimpDrawable*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t12 = alloca i64, align 8
  %__r15 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  %__inst38 = alloca %struct._GTypeInstance*, align 8
  %__t40 = alloca i64, align 8
  %__r43 = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_drawable_id_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_value_get_drawable, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %10 = bitcast %struct._Gimp* %9 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %10, %struct._GTypeInstance** %__inst, align 8
  %call13 = call i64 @gimp_get_type() #5
  store i64 %call13, i64* %__t12, align 8
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool16 = icmp ne %struct._GTypeInstance* %11, null
  br i1 %tobool16, label %if.else.18, label %if.then.17

if.then.17:                                       ; preds = %do.body.9
  store i32 0, i32* %__r15, align 4
  br label %if.end.27

if.else.18:                                       ; preds = %do.body.9
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool19 = icmp ne %struct._GTypeClass* %13, null
  br i1 %tobool19, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %if.else.18
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %g_type21 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type21, align 8
  %17 = load i64, i64* %__t12, align 8
  %cmp22 = icmp eq i64 %16, %17
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r15, align 4
  br label %if.end.26

if.else.24:                                       ; preds = %land.lhs.true, %if.else.18
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %19 = load i64, i64* %__t12, align 8
  %call25 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %18, i64 %19) #6
  store i32 %call25, i32* %__r15, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.17
  %20 = load i32, i32* %__r15, align 4
  store i32 %20, i32* %tmp28
  %21 = load i32, i32* %tmp28
  %tobool29 = icmp ne i32 %21, 0
  br i1 %tobool29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end.27
  br label %if.end.32

if.else.31:                                       ; preds = %if.end.27
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_value_get_drawable, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.32:                                        ; preds = %if.then.30
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  %24 = load i32, i32* %v_int, align 4
  %call34 = call %struct._GimpItem* @gimp_item_get_by_ID(%struct._Gimp* %22, i32 %24)
  store %struct._GimpItem* %call34, %struct._GimpItem** %item, align 8
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool35 = icmp ne %struct._GimpItem* %25, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.61

land.lhs.true.36:                                 ; preds = %do.end.33
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %27 = bitcast %struct._GimpItem* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst38, align 8
  %call41 = call i64 @gimp_drawable_get_type() #5
  store i64 %call41, i64* %__t40, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %tobool44 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool44, label %if.else.46, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true.36
  store i32 0, i32* %__r43, align 4
  br label %if.end.57

if.else.46:                                       ; preds = %land.lhs.true.36
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %g_class47 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class47, align 8
  %tobool48 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool48, label %land.lhs.true.49, label %if.else.54

land.lhs.true.49:                                 ; preds = %if.else.46
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %g_type51 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type51, align 8
  %34 = load i64, i64* %__t40, align 8
  %cmp52 = icmp eq i64 %33, %34
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %land.lhs.true.49
  store i32 1, i32* %__r43, align 4
  br label %if.end.56

if.else.54:                                       ; preds = %land.lhs.true.49, %if.else.46
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %36 = load i64, i64* %__t40, align 8
  %call55 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #6
  store i32 %call55, i32* %__r43, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.54, %if.then.53
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.45
  %37 = load i32, i32* %__r43, align 4
  store i32 %37, i32* %tmp58
  %38 = load i32, i32* %tmp58
  %tobool59 = icmp ne i32 %38, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.end.57
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.61:                                        ; preds = %if.end.57, %do.end.33
  %39 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %40 = bitcast %struct._GimpItem* %39 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_drawable_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call62)
  %41 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %41, %struct._GimpDrawable** %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.60, %if.else.31, %if.else.7
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %retval
  ret %struct._GimpDrawable* %42
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_layer_id_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_layer_id_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_param_drawable_id_get_type() #5
  %call1 = call i64 @g_type_register_static(i64 %call, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_layer_id_get_type.info, i32 0)
  store i64 %call1, i64* @gimp_param_layer_id_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_param_layer_id_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_layer_id_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %call = call i64 @gimp_layer_id_get_type() #5
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_layer_id_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %ispec = alloca %struct._GimpParamSpecItemID*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_item_id_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecItemID*
  store %struct._GimpParamSpecItemID* %2, %struct._GimpParamSpecItemID** %ispec, align 8
  %call2 = call i64 @gimp_layer_get_type() #5
  %3 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %item_type = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %3, i32 0, i32 2
  store i64 %call2, i64* %item_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_layer_id(i8* %name, i8* %nick, i8* %blurb, %struct._Gimp* %gimp, i32 %none_ok, i32 %flags) #2 {
entry:
  %retval = alloca %struct._GParamSpec*, align 8
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %none_ok.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %ispec = alloca %struct._GimpParamSpecItemID*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %none_ok, i32* %none_ok.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_param_spec_layer_id, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_param_layer_id_get_type() #5
  %13 = load i8*, i8** %name.addr, align 8
  %14 = load i8*, i8** %nick.addr, align 8
  %15 = load i8*, i8** %blurb.addr, align 8
  %16 = load i32, i32* %flags.addr, align 4
  %call12 = call i8* @g_param_spec_internal(i64 %call11, i8* %13, i8* %14, i8* %15, i32 %16)
  %17 = bitcast i8* %call12 to %struct._GimpParamSpecItemID*
  store %struct._GimpParamSpecItemID* %17, %struct._GimpParamSpecItemID** %ispec, align 8
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %19 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %gimp13 = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %19, i32 0, i32 1
  store %struct._Gimp* %18, %struct._Gimp** %gimp13, align 8
  %20 = load i32, i32* %none_ok.addr, align 4
  %tobool14 = icmp ne i32 %20, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %21 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %none_ok15 = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %21, i32 0, i32 3
  store i32 %cond, i32* %none_ok15, align 4
  %22 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %23 = bitcast %struct._GimpParamSpecItemID* %22 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 76)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GParamSpec*
  store %struct._GParamSpec* %24, %struct._GParamSpec** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %retval
  ret %struct._GParamSpec* %25
}

; Function Attrs: nounwind uwtable
define %struct._GimpLayer* @gimp_value_get_layer(%struct._GValue* %value, %struct._Gimp* %gimp) #2 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t12 = alloca i64, align 8
  %__r15 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  %__inst38 = alloca %struct._GTypeInstance*, align 8
  %__t40 = alloca i64, align 8
  %__r43 = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_layer_id_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_value_get_layer, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %10 = bitcast %struct._Gimp* %9 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %10, %struct._GTypeInstance** %__inst, align 8
  %call13 = call i64 @gimp_get_type() #5
  store i64 %call13, i64* %__t12, align 8
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool16 = icmp ne %struct._GTypeInstance* %11, null
  br i1 %tobool16, label %if.else.18, label %if.then.17

if.then.17:                                       ; preds = %do.body.9
  store i32 0, i32* %__r15, align 4
  br label %if.end.27

if.else.18:                                       ; preds = %do.body.9
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool19 = icmp ne %struct._GTypeClass* %13, null
  br i1 %tobool19, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %if.else.18
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %g_type21 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type21, align 8
  %17 = load i64, i64* %__t12, align 8
  %cmp22 = icmp eq i64 %16, %17
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r15, align 4
  br label %if.end.26

if.else.24:                                       ; preds = %land.lhs.true, %if.else.18
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %19 = load i64, i64* %__t12, align 8
  %call25 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %18, i64 %19) #6
  store i32 %call25, i32* %__r15, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.17
  %20 = load i32, i32* %__r15, align 4
  store i32 %20, i32* %tmp28
  %21 = load i32, i32* %tmp28
  %tobool29 = icmp ne i32 %21, 0
  br i1 %tobool29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end.27
  br label %if.end.32

if.else.31:                                       ; preds = %if.end.27
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_value_get_layer, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.32:                                        ; preds = %if.then.30
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  %24 = load i32, i32* %v_int, align 4
  %call34 = call %struct._GimpItem* @gimp_item_get_by_ID(%struct._Gimp* %22, i32 %24)
  store %struct._GimpItem* %call34, %struct._GimpItem** %item, align 8
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool35 = icmp ne %struct._GimpItem* %25, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.61

land.lhs.true.36:                                 ; preds = %do.end.33
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %27 = bitcast %struct._GimpItem* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst38, align 8
  %call41 = call i64 @gimp_layer_get_type() #5
  store i64 %call41, i64* %__t40, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %tobool44 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool44, label %if.else.46, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true.36
  store i32 0, i32* %__r43, align 4
  br label %if.end.57

if.else.46:                                       ; preds = %land.lhs.true.36
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %g_class47 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class47, align 8
  %tobool48 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool48, label %land.lhs.true.49, label %if.else.54

land.lhs.true.49:                                 ; preds = %if.else.46
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %g_type51 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type51, align 8
  %34 = load i64, i64* %__t40, align 8
  %cmp52 = icmp eq i64 %33, %34
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %land.lhs.true.49
  store i32 1, i32* %__r43, align 4
  br label %if.end.56

if.else.54:                                       ; preds = %land.lhs.true.49, %if.else.46
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %36 = load i64, i64* %__t40, align 8
  %call55 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #6
  store i32 %call55, i32* %__r43, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.54, %if.then.53
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.45
  %37 = load i32, i32* %__r43, align 4
  store i32 %37, i32* %tmp58
  %38 = load i32, i32* %tmp58
  %tobool59 = icmp ne i32 %38, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.end.57
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.61:                                        ; preds = %if.end.57, %do.end.33
  %39 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %40 = bitcast %struct._GimpItem* %39 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_layer_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call62)
  %41 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpLayer*
  store %struct._GimpLayer* %41, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.60, %if.else.31, %if.else.7
  %42 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %42
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_channel_id_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_channel_id_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_param_drawable_id_get_type() #5
  %call1 = call i64 @g_type_register_static(i64 %call, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_channel_id_get_type.info, i32 0)
  store i64 %call1, i64* @gimp_param_channel_id_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_param_channel_id_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_channel_id_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %call = call i64 @gimp_channel_id_get_type() #5
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_channel_id_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %ispec = alloca %struct._GimpParamSpecItemID*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_item_id_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecItemID*
  store %struct._GimpParamSpecItemID* %2, %struct._GimpParamSpecItemID** %ispec, align 8
  %call2 = call i64 @gimp_channel_get_type() #5
  %3 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %item_type = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %3, i32 0, i32 2
  store i64 %call2, i64* %item_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_channel_id(i8* %name, i8* %nick, i8* %blurb, %struct._Gimp* %gimp, i32 %none_ok, i32 %flags) #2 {
entry:
  %retval = alloca %struct._GParamSpec*, align 8
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %none_ok.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %ispec = alloca %struct._GimpParamSpecItemID*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %none_ok, i32* %none_ok.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_param_spec_channel_id, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_param_channel_id_get_type() #5
  %13 = load i8*, i8** %name.addr, align 8
  %14 = load i8*, i8** %nick.addr, align 8
  %15 = load i8*, i8** %blurb.addr, align 8
  %16 = load i32, i32* %flags.addr, align 4
  %call12 = call i8* @g_param_spec_internal(i64 %call11, i8* %13, i8* %14, i8* %15, i32 %16)
  %17 = bitcast i8* %call12 to %struct._GimpParamSpecItemID*
  store %struct._GimpParamSpecItemID* %17, %struct._GimpParamSpecItemID** %ispec, align 8
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %19 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %gimp13 = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %19, i32 0, i32 1
  store %struct._Gimp* %18, %struct._Gimp** %gimp13, align 8
  %20 = load i32, i32* %none_ok.addr, align 4
  %tobool14 = icmp ne i32 %20, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %21 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %none_ok15 = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %21, i32 0, i32 3
  store i32 %cond, i32* %none_ok15, align 4
  %22 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %23 = bitcast %struct._GimpParamSpecItemID* %22 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 76)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GParamSpec*
  store %struct._GParamSpec* %24, %struct._GParamSpec** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %retval
  ret %struct._GParamSpec* %25
}

; Function Attrs: nounwind uwtable
define %struct._GimpChannel* @gimp_value_get_channel(%struct._GValue* %value, %struct._Gimp* %gimp) #2 {
entry:
  %retval = alloca %struct._GimpChannel*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t12 = alloca i64, align 8
  %__r15 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  %__inst38 = alloca %struct._GTypeInstance*, align 8
  %__t40 = alloca i64, align 8
  %__r43 = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_channel_id_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_value_get_channel, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i32 0, i32 0))
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %10 = bitcast %struct._Gimp* %9 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %10, %struct._GTypeInstance** %__inst, align 8
  %call13 = call i64 @gimp_get_type() #5
  store i64 %call13, i64* %__t12, align 8
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool16 = icmp ne %struct._GTypeInstance* %11, null
  br i1 %tobool16, label %if.else.18, label %if.then.17

if.then.17:                                       ; preds = %do.body.9
  store i32 0, i32* %__r15, align 4
  br label %if.end.27

if.else.18:                                       ; preds = %do.body.9
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool19 = icmp ne %struct._GTypeClass* %13, null
  br i1 %tobool19, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %if.else.18
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %g_type21 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type21, align 8
  %17 = load i64, i64* %__t12, align 8
  %cmp22 = icmp eq i64 %16, %17
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r15, align 4
  br label %if.end.26

if.else.24:                                       ; preds = %land.lhs.true, %if.else.18
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %19 = load i64, i64* %__t12, align 8
  %call25 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %18, i64 %19) #6
  store i32 %call25, i32* %__r15, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.17
  %20 = load i32, i32* %__r15, align 4
  store i32 %20, i32* %tmp28
  %21 = load i32, i32* %tmp28
  %tobool29 = icmp ne i32 %21, 0
  br i1 %tobool29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end.27
  br label %if.end.32

if.else.31:                                       ; preds = %if.end.27
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_value_get_channel, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.32:                                        ; preds = %if.then.30
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  %24 = load i32, i32* %v_int, align 4
  %call34 = call %struct._GimpItem* @gimp_item_get_by_ID(%struct._Gimp* %22, i32 %24)
  store %struct._GimpItem* %call34, %struct._GimpItem** %item, align 8
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool35 = icmp ne %struct._GimpItem* %25, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.61

land.lhs.true.36:                                 ; preds = %do.end.33
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %27 = bitcast %struct._GimpItem* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst38, align 8
  %call41 = call i64 @gimp_channel_get_type() #5
  store i64 %call41, i64* %__t40, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %tobool44 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool44, label %if.else.46, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true.36
  store i32 0, i32* %__r43, align 4
  br label %if.end.57

if.else.46:                                       ; preds = %land.lhs.true.36
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %g_class47 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class47, align 8
  %tobool48 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool48, label %land.lhs.true.49, label %if.else.54

land.lhs.true.49:                                 ; preds = %if.else.46
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %g_type51 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type51, align 8
  %34 = load i64, i64* %__t40, align 8
  %cmp52 = icmp eq i64 %33, %34
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %land.lhs.true.49
  store i32 1, i32* %__r43, align 4
  br label %if.end.56

if.else.54:                                       ; preds = %land.lhs.true.49, %if.else.46
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %36 = load i64, i64* %__t40, align 8
  %call55 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #6
  store i32 %call55, i32* %__r43, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.54, %if.then.53
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.45
  %37 = load i32, i32* %__r43, align 4
  store i32 %37, i32* %tmp58
  %38 = load i32, i32* %tmp58
  %tobool59 = icmp ne i32 %38, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.end.57
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.61:                                        ; preds = %if.end.57, %do.end.33
  %39 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %40 = bitcast %struct._GimpItem* %39 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_channel_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call62)
  %41 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpChannel*
  store %struct._GimpChannel* %41, %struct._GimpChannel** %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.60, %if.else.31, %if.else.7
  %42 = load %struct._GimpChannel*, %struct._GimpChannel** %retval
  ret %struct._GimpChannel* %42
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_layer_mask_id_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_layer_mask_id_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_param_channel_id_get_type() #5
  %call1 = call i64 @g_type_register_static(i64 %call, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_layer_mask_id_get_type.info, i32 0)
  store i64 %call1, i64* @gimp_param_layer_mask_id_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_param_layer_mask_id_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_layer_mask_id_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %call = call i64 @gimp_layer_mask_id_get_type() #5
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_layer_mask_id_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %ispec = alloca %struct._GimpParamSpecItemID*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_item_id_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecItemID*
  store %struct._GimpParamSpecItemID* %2, %struct._GimpParamSpecItemID** %ispec, align 8
  %call2 = call i64 @gimp_layer_mask_get_type() #5
  %3 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %item_type = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %3, i32 0, i32 2
  store i64 %call2, i64* %item_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_layer_mask_id(i8* %name, i8* %nick, i8* %blurb, %struct._Gimp* %gimp, i32 %none_ok, i32 %flags) #2 {
entry:
  %retval = alloca %struct._GParamSpec*, align 8
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %none_ok.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %ispec = alloca %struct._GimpParamSpecItemID*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %none_ok, i32* %none_ok.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_param_spec_layer_mask_id, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_param_layer_mask_id_get_type() #5
  %13 = load i8*, i8** %name.addr, align 8
  %14 = load i8*, i8** %nick.addr, align 8
  %15 = load i8*, i8** %blurb.addr, align 8
  %16 = load i32, i32* %flags.addr, align 4
  %call12 = call i8* @g_param_spec_internal(i64 %call11, i8* %13, i8* %14, i8* %15, i32 %16)
  %17 = bitcast i8* %call12 to %struct._GimpParamSpecItemID*
  store %struct._GimpParamSpecItemID* %17, %struct._GimpParamSpecItemID** %ispec, align 8
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %19 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %gimp13 = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %19, i32 0, i32 1
  store %struct._Gimp* %18, %struct._Gimp** %gimp13, align 8
  %20 = load i32, i32* %none_ok.addr, align 4
  %tobool14 = icmp ne i32 %20, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %21 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %none_ok15 = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %21, i32 0, i32 3
  store i32 %cond, i32* %none_ok15, align 4
  %22 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %23 = bitcast %struct._GimpParamSpecItemID* %22 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 76)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GParamSpec*
  store %struct._GParamSpec* %24, %struct._GParamSpec** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %retval
  ret %struct._GParamSpec* %25
}

; Function Attrs: nounwind uwtable
define %struct._GimpLayerMask* @gimp_value_get_layer_mask(%struct._GValue* %value, %struct._Gimp* %gimp) #2 {
entry:
  %retval = alloca %struct._GimpLayerMask*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t12 = alloca i64, align 8
  %__r15 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  %__inst38 = alloca %struct._GTypeInstance*, align 8
  %__t40 = alloca i64, align 8
  %__r43 = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_layer_mask_id_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_value_get_layer_mask, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i32 0, i32 0))
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %10 = bitcast %struct._Gimp* %9 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %10, %struct._GTypeInstance** %__inst, align 8
  %call13 = call i64 @gimp_get_type() #5
  store i64 %call13, i64* %__t12, align 8
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool16 = icmp ne %struct._GTypeInstance* %11, null
  br i1 %tobool16, label %if.else.18, label %if.then.17

if.then.17:                                       ; preds = %do.body.9
  store i32 0, i32* %__r15, align 4
  br label %if.end.27

if.else.18:                                       ; preds = %do.body.9
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool19 = icmp ne %struct._GTypeClass* %13, null
  br i1 %tobool19, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %if.else.18
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %g_type21 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type21, align 8
  %17 = load i64, i64* %__t12, align 8
  %cmp22 = icmp eq i64 %16, %17
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r15, align 4
  br label %if.end.26

if.else.24:                                       ; preds = %land.lhs.true, %if.else.18
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %19 = load i64, i64* %__t12, align 8
  %call25 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %18, i64 %19) #6
  store i32 %call25, i32* %__r15, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.17
  %20 = load i32, i32* %__r15, align 4
  store i32 %20, i32* %tmp28
  %21 = load i32, i32* %tmp28
  %tobool29 = icmp ne i32 %21, 0
  br i1 %tobool29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end.27
  br label %if.end.32

if.else.31:                                       ; preds = %if.end.27
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_value_get_layer_mask, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %retval
  br label %return

if.end.32:                                        ; preds = %if.then.30
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  %24 = load i32, i32* %v_int, align 4
  %call34 = call %struct._GimpItem* @gimp_item_get_by_ID(%struct._Gimp* %22, i32 %24)
  store %struct._GimpItem* %call34, %struct._GimpItem** %item, align 8
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool35 = icmp ne %struct._GimpItem* %25, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.61

land.lhs.true.36:                                 ; preds = %do.end.33
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %27 = bitcast %struct._GimpItem* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst38, align 8
  %call41 = call i64 @gimp_layer_mask_get_type() #5
  store i64 %call41, i64* %__t40, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %tobool44 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool44, label %if.else.46, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true.36
  store i32 0, i32* %__r43, align 4
  br label %if.end.57

if.else.46:                                       ; preds = %land.lhs.true.36
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %g_class47 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class47, align 8
  %tobool48 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool48, label %land.lhs.true.49, label %if.else.54

land.lhs.true.49:                                 ; preds = %if.else.46
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %g_type51 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type51, align 8
  %34 = load i64, i64* %__t40, align 8
  %cmp52 = icmp eq i64 %33, %34
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %land.lhs.true.49
  store i32 1, i32* %__r43, align 4
  br label %if.end.56

if.else.54:                                       ; preds = %land.lhs.true.49, %if.else.46
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %36 = load i64, i64* %__t40, align 8
  %call55 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #6
  store i32 %call55, i32* %__r43, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.54, %if.then.53
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.45
  %37 = load i32, i32* %__r43, align 4
  store i32 %37, i32* %tmp58
  %38 = load i32, i32* %tmp58
  %tobool59 = icmp ne i32 %38, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.end.57
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %retval
  br label %return

if.end.61:                                        ; preds = %if.end.57, %do.end.33
  %39 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %40 = bitcast %struct._GimpItem* %39 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_layer_mask_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call62)
  %41 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpLayerMask*
  store %struct._GimpLayerMask* %41, %struct._GimpLayerMask** %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.60, %if.else.31, %if.else.7
  %42 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %retval
  ret %struct._GimpLayerMask* %42
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_selection_id_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_selection_id_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_param_channel_id_get_type() #5
  %call1 = call i64 @g_type_register_static(i64 %call, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_selection_id_get_type.info, i32 0)
  store i64 %call1, i64* @gimp_param_selection_id_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_param_selection_id_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_selection_id_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %call = call i64 @gimp_selection_id_get_type() #5
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_selection_id_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %ispec = alloca %struct._GimpParamSpecItemID*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_item_id_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecItemID*
  store %struct._GimpParamSpecItemID* %2, %struct._GimpParamSpecItemID** %ispec, align 8
  %call2 = call i64 @gimp_selection_get_type() #5
  %3 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %item_type = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %3, i32 0, i32 2
  store i64 %call2, i64* %item_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_selection_id(i8* %name, i8* %nick, i8* %blurb, %struct._Gimp* %gimp, i32 %none_ok, i32 %flags) #2 {
entry:
  %retval = alloca %struct._GParamSpec*, align 8
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %none_ok.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %ispec = alloca %struct._GimpParamSpecItemID*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %none_ok, i32* %none_ok.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_param_spec_selection_id, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_param_selection_id_get_type() #5
  %13 = load i8*, i8** %name.addr, align 8
  %14 = load i8*, i8** %nick.addr, align 8
  %15 = load i8*, i8** %blurb.addr, align 8
  %16 = load i32, i32* %flags.addr, align 4
  %call12 = call i8* @g_param_spec_internal(i64 %call11, i8* %13, i8* %14, i8* %15, i32 %16)
  %17 = bitcast i8* %call12 to %struct._GimpParamSpecItemID*
  store %struct._GimpParamSpecItemID* %17, %struct._GimpParamSpecItemID** %ispec, align 8
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %19 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %gimp13 = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %19, i32 0, i32 1
  store %struct._Gimp* %18, %struct._Gimp** %gimp13, align 8
  %20 = load i32, i32* %none_ok.addr, align 4
  %tobool14 = icmp ne i32 %20, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %21 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %none_ok15 = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %21, i32 0, i32 3
  store i32 %cond, i32* %none_ok15, align 4
  %22 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %23 = bitcast %struct._GimpParamSpecItemID* %22 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 76)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GParamSpec*
  store %struct._GParamSpec* %24, %struct._GParamSpec** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %retval
  ret %struct._GParamSpec* %25
}

; Function Attrs: nounwind uwtable
define %struct._GimpSelection* @gimp_value_get_selection(%struct._GValue* %value, %struct._Gimp* %gimp) #2 {
entry:
  %retval = alloca %struct._GimpSelection*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t12 = alloca i64, align 8
  %__r15 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  %__inst38 = alloca %struct._GTypeInstance*, align 8
  %__t40 = alloca i64, align 8
  %__r43 = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_selection_id_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_value_get_selection, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.49, i32 0, i32 0))
  store %struct._GimpSelection* null, %struct._GimpSelection** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %10 = bitcast %struct._Gimp* %9 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %10, %struct._GTypeInstance** %__inst, align 8
  %call13 = call i64 @gimp_get_type() #5
  store i64 %call13, i64* %__t12, align 8
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool16 = icmp ne %struct._GTypeInstance* %11, null
  br i1 %tobool16, label %if.else.18, label %if.then.17

if.then.17:                                       ; preds = %do.body.9
  store i32 0, i32* %__r15, align 4
  br label %if.end.27

if.else.18:                                       ; preds = %do.body.9
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool19 = icmp ne %struct._GTypeClass* %13, null
  br i1 %tobool19, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %if.else.18
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %g_type21 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type21, align 8
  %17 = load i64, i64* %__t12, align 8
  %cmp22 = icmp eq i64 %16, %17
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r15, align 4
  br label %if.end.26

if.else.24:                                       ; preds = %land.lhs.true, %if.else.18
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %19 = load i64, i64* %__t12, align 8
  %call25 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %18, i64 %19) #6
  store i32 %call25, i32* %__r15, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.17
  %20 = load i32, i32* %__r15, align 4
  store i32 %20, i32* %tmp28
  %21 = load i32, i32* %tmp28
  %tobool29 = icmp ne i32 %21, 0
  br i1 %tobool29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end.27
  br label %if.end.32

if.else.31:                                       ; preds = %if.end.27
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_value_get_selection, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GimpSelection* null, %struct._GimpSelection** %retval
  br label %return

if.end.32:                                        ; preds = %if.then.30
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  %24 = load i32, i32* %v_int, align 4
  %call34 = call %struct._GimpItem* @gimp_item_get_by_ID(%struct._Gimp* %22, i32 %24)
  store %struct._GimpItem* %call34, %struct._GimpItem** %item, align 8
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool35 = icmp ne %struct._GimpItem* %25, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.61

land.lhs.true.36:                                 ; preds = %do.end.33
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %27 = bitcast %struct._GimpItem* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst38, align 8
  %call41 = call i64 @gimp_selection_get_type() #5
  store i64 %call41, i64* %__t40, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %tobool44 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool44, label %if.else.46, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true.36
  store i32 0, i32* %__r43, align 4
  br label %if.end.57

if.else.46:                                       ; preds = %land.lhs.true.36
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %g_class47 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class47, align 8
  %tobool48 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool48, label %land.lhs.true.49, label %if.else.54

land.lhs.true.49:                                 ; preds = %if.else.46
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %g_type51 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type51, align 8
  %34 = load i64, i64* %__t40, align 8
  %cmp52 = icmp eq i64 %33, %34
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %land.lhs.true.49
  store i32 1, i32* %__r43, align 4
  br label %if.end.56

if.else.54:                                       ; preds = %land.lhs.true.49, %if.else.46
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %36 = load i64, i64* %__t40, align 8
  %call55 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #6
  store i32 %call55, i32* %__r43, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.54, %if.then.53
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.45
  %37 = load i32, i32* %__r43, align 4
  store i32 %37, i32* %tmp58
  %38 = load i32, i32* %tmp58
  %tobool59 = icmp ne i32 %38, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.end.57
  store %struct._GimpSelection* null, %struct._GimpSelection** %retval
  br label %return

if.end.61:                                        ; preds = %if.end.57, %do.end.33
  %39 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %40 = bitcast %struct._GimpItem* %39 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_selection_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call62)
  %41 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpSelection*
  store %struct._GimpSelection* %41, %struct._GimpSelection** %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.60, %if.else.31, %if.else.7
  %42 = load %struct._GimpSelection*, %struct._GimpSelection** %retval
  ret %struct._GimpSelection* %42
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_vectors_id_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_vectors_id_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_param_item_id_get_type() #5
  %call1 = call i64 @g_type_register_static(i64 %call, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_vectors_id_get_type.info, i32 0)
  store i64 %call1, i64* @gimp_param_vectors_id_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_param_vectors_id_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_vectors_id_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %call = call i64 @gimp_vectors_id_get_type() #5
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_vectors_id_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %ispec = alloca %struct._GimpParamSpecItemID*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_item_id_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecItemID*
  store %struct._GimpParamSpecItemID* %2, %struct._GimpParamSpecItemID** %ispec, align 8
  %call2 = call i64 @gimp_vectors_get_type() #5
  %3 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %item_type = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %3, i32 0, i32 2
  store i64 %call2, i64* %item_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_vectors_id(i8* %name, i8* %nick, i8* %blurb, %struct._Gimp* %gimp, i32 %none_ok, i32 %flags) #2 {
entry:
  %retval = alloca %struct._GParamSpec*, align 8
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %none_ok.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %ispec = alloca %struct._GimpParamSpecItemID*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %none_ok, i32* %none_ok.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_param_spec_vectors_id, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_param_vectors_id_get_type() #5
  %13 = load i8*, i8** %name.addr, align 8
  %14 = load i8*, i8** %nick.addr, align 8
  %15 = load i8*, i8** %blurb.addr, align 8
  %16 = load i32, i32* %flags.addr, align 4
  %call12 = call i8* @g_param_spec_internal(i64 %call11, i8* %13, i8* %14, i8* %15, i32 %16)
  %17 = bitcast i8* %call12 to %struct._GimpParamSpecItemID*
  store %struct._GimpParamSpecItemID* %17, %struct._GimpParamSpecItemID** %ispec, align 8
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %19 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %gimp13 = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %19, i32 0, i32 1
  store %struct._Gimp* %18, %struct._Gimp** %gimp13, align 8
  %20 = load i32, i32* %none_ok.addr, align 4
  %tobool14 = icmp ne i32 %20, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %21 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %none_ok15 = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %21, i32 0, i32 3
  store i32 %cond, i32* %none_ok15, align 4
  %22 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %23 = bitcast %struct._GimpParamSpecItemID* %22 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 76)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GParamSpec*
  store %struct._GParamSpec* %24, %struct._GParamSpec** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %retval
  ret %struct._GParamSpec* %25
}

; Function Attrs: nounwind uwtable
define %struct._GimpVectors* @gimp_value_get_vectors(%struct._GValue* %value, %struct._Gimp* %gimp) #2 {
entry:
  %retval = alloca %struct._GimpVectors*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t12 = alloca i64, align 8
  %__r15 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  %__inst38 = alloca %struct._GTypeInstance*, align 8
  %__t40 = alloca i64, align 8
  %__r43 = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_vectors_id_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_value_get_vectors, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i32 0, i32 0))
  store %struct._GimpVectors* null, %struct._GimpVectors** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %10 = bitcast %struct._Gimp* %9 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %10, %struct._GTypeInstance** %__inst, align 8
  %call13 = call i64 @gimp_get_type() #5
  store i64 %call13, i64* %__t12, align 8
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool16 = icmp ne %struct._GTypeInstance* %11, null
  br i1 %tobool16, label %if.else.18, label %if.then.17

if.then.17:                                       ; preds = %do.body.9
  store i32 0, i32* %__r15, align 4
  br label %if.end.27

if.else.18:                                       ; preds = %do.body.9
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool19 = icmp ne %struct._GTypeClass* %13, null
  br i1 %tobool19, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %if.else.18
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %g_type21 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type21, align 8
  %17 = load i64, i64* %__t12, align 8
  %cmp22 = icmp eq i64 %16, %17
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r15, align 4
  br label %if.end.26

if.else.24:                                       ; preds = %land.lhs.true, %if.else.18
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %19 = load i64, i64* %__t12, align 8
  %call25 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %18, i64 %19) #6
  store i32 %call25, i32* %__r15, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.17
  %20 = load i32, i32* %__r15, align 4
  store i32 %20, i32* %tmp28
  %21 = load i32, i32* %tmp28
  %tobool29 = icmp ne i32 %21, 0
  br i1 %tobool29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end.27
  br label %if.end.32

if.else.31:                                       ; preds = %if.end.27
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_value_get_vectors, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GimpVectors* null, %struct._GimpVectors** %retval
  br label %return

if.end.32:                                        ; preds = %if.then.30
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  %24 = load i32, i32* %v_int, align 4
  %call34 = call %struct._GimpItem* @gimp_item_get_by_ID(%struct._Gimp* %22, i32 %24)
  store %struct._GimpItem* %call34, %struct._GimpItem** %item, align 8
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool35 = icmp ne %struct._GimpItem* %25, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.61

land.lhs.true.36:                                 ; preds = %do.end.33
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %27 = bitcast %struct._GimpItem* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst38, align 8
  %call41 = call i64 @gimp_vectors_get_type() #5
  store i64 %call41, i64* %__t40, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %tobool44 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool44, label %if.else.46, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true.36
  store i32 0, i32* %__r43, align 4
  br label %if.end.57

if.else.46:                                       ; preds = %land.lhs.true.36
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %g_class47 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class47, align 8
  %tobool48 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool48, label %land.lhs.true.49, label %if.else.54

land.lhs.true.49:                                 ; preds = %if.else.46
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %g_type51 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type51, align 8
  %34 = load i64, i64* %__t40, align 8
  %cmp52 = icmp eq i64 %33, %34
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %land.lhs.true.49
  store i32 1, i32* %__r43, align 4
  br label %if.end.56

if.else.54:                                       ; preds = %land.lhs.true.49, %if.else.46
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst38, align 8
  %36 = load i64, i64* %__t40, align 8
  %call55 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #6
  store i32 %call55, i32* %__r43, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.54, %if.then.53
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.45
  %37 = load i32, i32* %__r43, align 4
  store i32 %37, i32* %tmp58
  %38 = load i32, i32* %tmp58
  %tobool59 = icmp ne i32 %38, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.end.57
  store %struct._GimpVectors* null, %struct._GimpVectors** %retval
  br label %return

if.end.61:                                        ; preds = %if.end.57, %do.end.33
  %39 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %40 = bitcast %struct._GimpItem* %39 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_vectors_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call62)
  %41 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpVectors*
  store %struct._GimpVectors* %41, %struct._GimpVectors** %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.60, %if.else.31, %if.else.7
  %42 = load %struct._GimpVectors*, %struct._GimpVectors** %retval
  ret %struct._GimpVectors* %42
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_display_id_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_display_id_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0), %struct._GTypeInfo* @gimp_display_id_get_type.info, i32 0)
  store i64 %call, i64* @gimp_display_id_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_display_id_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_display_id_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_display_id_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 3
  %2 = load i64, i64* %arrayidx, align 8
  %call = call i64 @g_type_register_static(i64 %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_display_id_get_type.info, i32 0)
  store i64 %call, i64* @gimp_param_display_id_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_param_display_id_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_display_id_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %call = call i64 @gimp_display_id_get_type() #5
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  %1 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_set_default = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %1, i32 0, i32 3
  store void (%struct._GParamSpec*, %struct._GValue*)* @gimp_param_display_id_set_default, void (%struct._GParamSpec*, %struct._GValue*)** %value_set_default, align 8
  %2 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_validate = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %2, i32 0, i32 4
  store i32 (%struct._GParamSpec*, %struct._GValue*)* @gimp_param_display_id_validate, i32 (%struct._GParamSpec*, %struct._GValue*)** %value_validate, align 8
  %3 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %values_cmp = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %3, i32 0, i32 5
  store i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)* @gimp_param_display_id_values_cmp, i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)** %values_cmp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_display_id_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %ispec = alloca %struct._GimpParamSpecDisplayID*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_display_id_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecDisplayID*
  store %struct._GimpParamSpecDisplayID* %2, %struct._GimpParamSpecDisplayID** %ispec, align 8
  %3 = load %struct._GimpParamSpecDisplayID*, %struct._GimpParamSpecDisplayID** %ispec, align 8
  %gimp = getelementptr inbounds %struct._GimpParamSpecDisplayID, %struct._GimpParamSpecDisplayID* %3, i32 0, i32 1
  store %struct._Gimp* null, %struct._Gimp** %gimp, align 8
  %4 = load %struct._GimpParamSpecDisplayID*, %struct._GimpParamSpecDisplayID** %ispec, align 8
  %none_ok = getelementptr inbounds %struct._GimpParamSpecDisplayID, %struct._GimpParamSpecDisplayID* %4, i32 0, i32 2
  store i32 0, i32* %none_ok, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_display_id(i8* %name, i8* %nick, i8* %blurb, %struct._Gimp* %gimp, i32 %none_ok, i32 %flags) #2 {
entry:
  %retval = alloca %struct._GParamSpec*, align 8
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %none_ok.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %ispec = alloca %struct._GimpParamSpecDisplayID*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %none_ok, i32* %none_ok.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_param_spec_display_id, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_param_display_id_get_type() #5
  %13 = load i8*, i8** %name.addr, align 8
  %14 = load i8*, i8** %nick.addr, align 8
  %15 = load i8*, i8** %blurb.addr, align 8
  %16 = load i32, i32* %flags.addr, align 4
  %call12 = call i8* @g_param_spec_internal(i64 %call11, i8* %13, i8* %14, i8* %15, i32 %16)
  %17 = bitcast i8* %call12 to %struct._GimpParamSpecDisplayID*
  store %struct._GimpParamSpecDisplayID* %17, %struct._GimpParamSpecDisplayID** %ispec, align 8
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %19 = load %struct._GimpParamSpecDisplayID*, %struct._GimpParamSpecDisplayID** %ispec, align 8
  %gimp13 = getelementptr inbounds %struct._GimpParamSpecDisplayID, %struct._GimpParamSpecDisplayID* %19, i32 0, i32 1
  store %struct._Gimp* %18, %struct._Gimp** %gimp13, align 8
  %20 = load i32, i32* %none_ok.addr, align 4
  %tobool14 = icmp ne i32 %20, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %21 = load %struct._GimpParamSpecDisplayID*, %struct._GimpParamSpecDisplayID** %ispec, align 8
  %none_ok15 = getelementptr inbounds %struct._GimpParamSpecDisplayID, %struct._GimpParamSpecDisplayID* %21, i32 0, i32 2
  store i32 %cond, i32* %none_ok15, align 4
  %22 = load %struct._GimpParamSpecDisplayID*, %struct._GimpParamSpecDisplayID** %ispec, align 8
  %23 = bitcast %struct._GimpParamSpecDisplayID* %22 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 76)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GParamSpec*
  store %struct._GParamSpec* %24, %struct._GParamSpec** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %retval
  ret %struct._GParamSpec* %25
}

; Function Attrs: nounwind uwtable
define %struct._GimpObject* @gimp_value_get_display(%struct._GValue* %value, %struct._Gimp* %gimp) #2 {
entry:
  %retval = alloca %struct._GimpObject*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t12 = alloca i64, align 8
  %__r15 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_display_id_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_value_get_display, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i32 0, i32 0))
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %10 = bitcast %struct._Gimp* %9 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %10, %struct._GTypeInstance** %__inst, align 8
  %call13 = call i64 @gimp_get_type() #5
  store i64 %call13, i64* %__t12, align 8
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool16 = icmp ne %struct._GTypeInstance* %11, null
  br i1 %tobool16, label %if.else.18, label %if.then.17

if.then.17:                                       ; preds = %do.body.9
  store i32 0, i32* %__r15, align 4
  br label %if.end.27

if.else.18:                                       ; preds = %do.body.9
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool19 = icmp ne %struct._GTypeClass* %13, null
  br i1 %tobool19, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %if.else.18
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %g_type21 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type21, align 8
  %17 = load i64, i64* %__t12, align 8
  %cmp22 = icmp eq i64 %16, %17
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r15, align 4
  br label %if.end.26

if.else.24:                                       ; preds = %land.lhs.true, %if.else.18
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %19 = load i64, i64* %__t12, align 8
  %call25 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %18, i64 %19) #6
  store i32 %call25, i32* %__r15, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.17
  %20 = load i32, i32* %__r15, align 4
  store i32 %20, i32* %tmp28
  %21 = load i32, i32* %tmp28
  %tobool29 = icmp ne i32 %21, 0
  br i1 %tobool29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.end.27
  br label %if.end.32

if.else.31:                                       ; preds = %if.end.27
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_value_get_display, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.32:                                        ; preds = %if.then.30
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %23, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  %24 = load i32, i32* %v_int, align 4
  %call34 = call %struct._GimpObject* @gimp_get_display_by_ID(%struct._Gimp* %22, i32 %24)
  store %struct._GimpObject* %call34, %struct._GimpObject** %retval
  br label %return

return:                                           ; preds = %do.end.33, %if.else.31, %if.else.7
  %25 = load %struct._GimpObject*, %struct._GimpObject** %retval
  ret %struct._GimpObject* %25
}

declare %struct._GimpObject* @gimp_get_display_by_ID(%struct._Gimp*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_value_set_display(%struct._GValue* %value, %struct._GimpObject* %display) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %display.addr = alloca %struct._GimpObject*, align 8
  %id = alloca i32, align 4
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t13 = alloca i64, align 8
  %__r16 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GimpObject* %display, %struct._GimpObject** %display.addr, align 8
  store i32 -1, i32* %id, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_display_id_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_value_set_display, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %9 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %cmp10 = icmp eq %struct._GimpObject* %9, null
  br i1 %cmp10, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.9
  %10 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %11 = bitcast %struct._GimpObject* %10 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %11, %struct._GTypeInstance** %__inst, align 8
  %call14 = call i64 @gimp_object_get_type() #5
  store i64 %call14, i64* %__t13, align 8
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool17 = icmp ne %struct._GTypeInstance* %12, null
  br i1 %tobool17, label %if.else.19, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r16, align 4
  br label %if.end.28

if.else.19:                                       ; preds = %lor.lhs.false
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool20 = icmp ne %struct._GTypeClass* %14, null
  br i1 %tobool20, label %land.lhs.true, label %if.else.25

land.lhs.true:                                    ; preds = %if.else.19
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %g_type22 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type22, align 8
  %18 = load i64, i64* %__t13, align 8
  %cmp23 = icmp eq i64 %17, %18
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r16, align 4
  br label %if.end.27

if.else.25:                                       ; preds = %land.lhs.true, %if.else.19
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %20 = load i64, i64* %__t13, align 8
  %call26 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %19, i64 %20) #6
  store i32 %call26, i32* %__r16, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.24
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.18
  %21 = load i32, i32* %__r16, align 4
  store i32 %21, i32* %tmp29
  %22 = load i32, i32* %tmp29
  %tobool30 = icmp ne i32 %22, 0
  br i1 %tobool30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.end.28, %do.body.9
  br label %if.end.33

if.else.32:                                       ; preds = %if.end.28
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_value_set_display, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.58, i32 0, i32 0))
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %23 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %tobool35 = icmp ne %struct._GimpObject* %23, null
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %do.end.34
  %24 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %25 = bitcast %struct._GimpObject* %24 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i32* %id, i8* null)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %do.end.34
  %26 = load i32, i32* %id, align 4
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %27, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  store i32 %26, i32* %v_int, align 4
  br label %return

return:                                           ; preds = %if.end.37, %if.else.32, %if.else.7
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #4

declare void @g_object_get(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GimpArray* @gimp_array_new(i8* %data, i64 %length, i32 %static_data) #2 {
entry:
  %retval = alloca %struct._GimpArray*, align 8
  %data.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %static_data.addr = alloca i32, align 4
  %array = alloca %struct._GimpArray*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i32 %static_data, i32* %static_data.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %data.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %do.body
  %1 = load i64, i64* %length.addr, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %do.body
  %2 = load i8*, i8** %data.addr, align 8
  %cmp2 = icmp ne i8* %2, null
  br i1 %cmp2, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %3 = load i64, i64* %length.addr, align 8
  %cmp4 = icmp ugt i64 %3, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.3, %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.3, %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_array_new, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.60, i32 0, i32 0))
  store %struct._GimpArray* null, %struct._GimpArray** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call noalias i8* @g_slice_alloc0(i64 24)
  %4 = bitcast i8* %call to %struct._GimpArray*
  store %struct._GimpArray* %4, %struct._GimpArray** %array, align 8
  %5 = load i32, i32* %static_data.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %6 = load i8*, i8** %data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %7 = load i8*, i8** %data.addr, align 8
  %8 = load i64, i64* %length.addr, align 8
  %conv = trunc i64 %8 to i32
  %call5 = call noalias i8* @g_memdup(i8* %7, i32 %conv)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %6, %cond.true ], [ %call5, %cond.false ]
  %9 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %data6 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %9, i32 0, i32 0
  store i8* %cond, i8** %data6, align 8
  %10 = load i64, i64* %length.addr, align 8
  %11 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %length7 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %11, i32 0, i32 1
  store i64 %10, i64* %length7, align 8
  %12 = load i32, i32* %static_data.addr, align 4
  %13 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %static_data8 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %13, i32 0, i32 2
  store i32 %12, i32* %static_data8, align 4
  %14 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  store %struct._GimpArray* %14, %struct._GimpArray** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.else
  %15 = load %struct._GimpArray*, %struct._GimpArray** %retval
  ret %struct._GimpArray* %15
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare noalias i8* @g_memdup(i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpArray* @gimp_array_copy(%struct._GimpArray* %array) #2 {
entry:
  %retval = alloca %struct._GimpArray*, align 8
  %array.addr = alloca %struct._GimpArray*, align 8
  store %struct._GimpArray* %array, %struct._GimpArray** %array.addr, align 8
  %0 = load %struct._GimpArray*, %struct._GimpArray** %array.addr, align 8
  %tobool = icmp ne %struct._GimpArray* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpArray*, %struct._GimpArray** %array.addr, align 8
  %data = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8
  %3 = load %struct._GimpArray*, %struct._GimpArray** %array.addr, align 8
  %length = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %3, i32 0, i32 1
  %4 = load i64, i64* %length, align 8
  %call = call %struct._GimpArray* @gimp_array_new(i8* %2, i64 %4, i32 0)
  store %struct._GimpArray* %call, %struct._GimpArray** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._GimpArray* null, %struct._GimpArray** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._GimpArray*, %struct._GimpArray** %retval
  ret %struct._GimpArray* %5
}

; Function Attrs: nounwind uwtable
define void @gimp_array_free(%struct._GimpArray* %array) #2 {
entry:
  %array.addr = alloca %struct._GimpArray*, align 8
  store %struct._GimpArray* %array, %struct._GimpArray** %array.addr, align 8
  %0 = load %struct._GimpArray*, %struct._GimpArray** %array.addr, align 8
  %tobool = icmp ne %struct._GimpArray* %0, null
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpArray*, %struct._GimpArray** %array.addr, align 8
  %static_data = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %1, i32 0, i32 2
  %2 = load i32, i32* %static_data, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %3 = load %struct._GimpArray*, %struct._GimpArray** %array.addr, align 8
  %data = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  call void @g_free(i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._GimpArray*, %struct._GimpArray** %array.addr, align 8
  %6 = bitcast %struct._GimpArray* %5 to i8*
  call void @g_slice_free1(i64 24, i8* %6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.3

if.end.3:                                         ; preds = %do.end, %entry
  ret void
}

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_array_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_array_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_boxed_type_register_static(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i8* (i8*)* bitcast (%struct._GimpArray* (%struct._GimpArray*)* @gimp_array_copy to i8* (i8*)*), void (i8*)* bitcast (void (%struct._GimpArray*)* @gimp_array_free to void (i8*)*))
  store i64 %call, i64* @gimp_array_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_array_get_type.type, align 8
  ret i64 %1
}

declare i64 @g_boxed_type_register_static(i8*, i8* (i8*)*, void (i8*)*) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_array_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_array_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 16
  %2 = load i64, i64* %arrayidx, align 8
  %call = call i64 @g_type_register_static(i64 %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_array_get_type.info, i32 0)
  store i64 %call, i64* @gimp_param_array_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_param_array_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_array_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %call = call i64 @gimp_array_get_type() #5
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  %1 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_validate = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %1, i32 0, i32 4
  store i32 (%struct._GParamSpec*, %struct._GValue*)* @gimp_param_array_validate, i32 (%struct._GParamSpec*, %struct._GValue*)** %value_validate, align 8
  %2 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %values_cmp = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %2, i32 0, i32 5
  store i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)* @gimp_param_array_values_cmp, i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)** %values_cmp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_array_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_array(i8* %name, i8* %nick, i8* %blurb, i32 %flags) #2 {
entry:
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %array_spec = alloca %struct._GimpParamSpecArray*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %call = call i64 @gimp_param_array_get_type() #5
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %nick.addr, align 8
  %2 = load i8*, i8** %blurb.addr, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %call1 = call i8* @g_param_spec_internal(i64 %call, i8* %0, i8* %1, i8* %2, i32 %3)
  %4 = bitcast i8* %call1 to %struct._GimpParamSpecArray*
  store %struct._GimpParamSpecArray* %4, %struct._GimpParamSpecArray** %array_spec, align 8
  %5 = load %struct._GimpParamSpecArray*, %struct._GimpParamSpecArray** %array_spec, align 8
  %6 = bitcast %struct._GimpParamSpecArray* %5 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 76)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GParamSpec*
  ret %struct._GParamSpec* %7
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_int8_array_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_int8_array_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_boxed_type_register_static(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i32 0, i32 0), i8* (i8*)* bitcast (%struct._GimpArray* (%struct._GimpArray*)* @gimp_array_copy to i8* (i8*)*), void (i8*)* bitcast (void (%struct._GimpArray*)* @gimp_array_free to void (i8*)*))
  store i64 %call, i64* @gimp_int8_array_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_int8_array_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_int8_array_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_int8_array_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_param_array_get_type() #5
  %call1 = call i64 @g_type_register_static(i64 %call, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_int8_array_get_type.info, i32 0)
  store i64 %call1, i64* @gimp_param_int8_array_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_param_int8_array_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_int8_array_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %call = call i64 @gimp_int8_array_get_type() #5
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_int8_array_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_int8_array(i8* %name, i8* %nick, i8* %blurb, i32 %flags) #2 {
entry:
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %array_spec = alloca %struct._GimpParamSpecArray*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %call = call i64 @gimp_param_int8_array_get_type() #5
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %nick.addr, align 8
  %2 = load i8*, i8** %blurb.addr, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %call1 = call i8* @g_param_spec_internal(i64 %call, i8* %0, i8* %1, i8* %2, i32 %3)
  %4 = bitcast i8* %call1 to %struct._GimpParamSpecArray*
  store %struct._GimpParamSpecArray* %4, %struct._GimpParamSpecArray** %array_spec, align 8
  %5 = load %struct._GimpParamSpecArray*, %struct._GimpParamSpecArray** %array_spec, align 8
  %6 = bitcast %struct._GimpParamSpecArray* %5 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 76)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GParamSpec*
  ret %struct._GParamSpec* %7
}

; Function Attrs: nounwind uwtable
define i8* @gimp_value_get_int8array(%struct._GValue* %value) #2 {
entry:
  %retval = alloca i8*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_int8_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_value_get_int8array, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.65, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call9 = call i8* @gimp_value_get_array(%struct._GValue* %9)
  store i8* %call9, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  %10 = load i8*, i8** %retval
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_value_get_array(%struct._GValue* %value) #2 {
entry:
  %retval = alloca i8*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %array = alloca %struct._GimpArray*, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %1 = load i8*, i8** %v_pointer, align 8
  %2 = bitcast i8* %1 to %struct._GimpArray*
  store %struct._GimpArray* %2, %struct._GimpArray** %array, align 8
  %3 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %tobool = icmp ne %struct._GimpArray* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %data1 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %4, i32 0, i32 0
  %5 = load i8*, i8** %data1, align 8
  store i8* %5, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define i8* @gimp_value_dup_int8array(%struct._GValue* %value) #2 {
entry:
  %retval = alloca i8*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_int8_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_value_dup_int8array, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.65, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call9 = call i8* @gimp_value_dup_array(%struct._GValue* %9)
  store i8* %call9, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  %10 = load i8*, i8** %retval
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_value_dup_array(%struct._GValue* %value) #2 {
entry:
  %retval = alloca i8*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %array = alloca %struct._GimpArray*, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %1 = load i8*, i8** %v_pointer, align 8
  %2 = bitcast i8* %1 to %struct._GimpArray*
  store %struct._GimpArray* %2, %struct._GimpArray** %array, align 8
  %3 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %tobool = icmp ne %struct._GimpArray* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %data1 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %4, i32 0, i32 0
  %5 = load i8*, i8** %data1, align 8
  %6 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %length = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %6, i32 0, i32 1
  %7 = load i64, i64* %length, align 8
  %conv = trunc i64 %7 to i32
  %call = call noalias i8* @g_memdup(i8* %5, i32 %conv)
  store i8* %call, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i8*, i8** %retval
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define void @gimp_value_set_int8array(%struct._GValue* %value, i8* %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_int8_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_value_set_int8array, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.65, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load i8*, i8** %data.addr, align 8
  %11 = load i64, i64* %length.addr, align 8
  call void @gimp_value_set_array(%struct._GValue* %9, i8* %10, i64 %11)
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_value_set_array(%struct._GValue* %value, i8* %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %array = alloca %struct._GimpArray*, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i64, i64* %length.addr, align 8
  %call = call %struct._GimpArray* @gimp_array_new(i8* %0, i64 %1, i32 0)
  store %struct._GimpArray* %call, %struct._GimpArray** %array, align 8
  %2 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %3 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %4 = bitcast %struct._GimpArray* %3 to i8*
  call void @g_value_take_boxed(%struct._GValue* %2, i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_value_set_static_int8array(%struct._GValue* %value, i8* %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_int8_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_value_set_static_int8array, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.65, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load i8*, i8** %data.addr, align 8
  %11 = load i64, i64* %length.addr, align 8
  call void @gimp_value_set_static_array(%struct._GValue* %9, i8* %10, i64 %11)
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_value_set_static_array(%struct._GValue* %value, i8* %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %array = alloca %struct._GimpArray*, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i64, i64* %length.addr, align 8
  %call = call %struct._GimpArray* @gimp_array_new(i8* %0, i64 %1, i32 1)
  store %struct._GimpArray* %call, %struct._GimpArray** %array, align 8
  %2 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %3 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %4 = bitcast %struct._GimpArray* %3 to i8*
  call void @g_value_take_boxed(%struct._GValue* %2, i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_value_take_int8array(%struct._GValue* %value, i8* %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_int8_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_value_take_int8array, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.65, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load i8*, i8** %data.addr, align 8
  %11 = load i64, i64* %length.addr, align 8
  call void @gimp_value_take_array(%struct._GValue* %9, i8* %10, i64 %11)
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_value_take_array(%struct._GValue* %value, i8* %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %array = alloca %struct._GimpArray*, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i64, i64* %length.addr, align 8
  %call = call %struct._GimpArray* @gimp_array_new(i8* %0, i64 %1, i32 1)
  store %struct._GimpArray* %call, %struct._GimpArray** %array, align 8
  %2 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %static_data = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %2, i32 0, i32 2
  store i32 0, i32* %static_data, align 4
  %3 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %4 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %5 = bitcast %struct._GimpArray* %4 to i8*
  call void @g_value_take_boxed(%struct._GValue* %3, i8* %5)
  ret void
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_int16_array_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_int16_array_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_boxed_type_register_static(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0), i8* (i8*)* bitcast (%struct._GimpArray* (%struct._GimpArray*)* @gimp_array_copy to i8* (i8*)*), void (i8*)* bitcast (void (%struct._GimpArray*)* @gimp_array_free to void (i8*)*))
  store i64 %call, i64* @gimp_int16_array_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_int16_array_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_int16_array_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_int16_array_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_param_array_get_type() #5
  %call1 = call i64 @g_type_register_static(i64 %call, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_int16_array_get_type.info, i32 0)
  store i64 %call1, i64* @gimp_param_int16_array_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_param_int16_array_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_int16_array_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %call = call i64 @gimp_int16_array_get_type() #5
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_int16_array_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_int16_array(i8* %name, i8* %nick, i8* %blurb, i32 %flags) #2 {
entry:
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %array_spec = alloca %struct._GimpParamSpecArray*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %call = call i64 @gimp_param_int16_array_get_type() #5
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %nick.addr, align 8
  %2 = load i8*, i8** %blurb.addr, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %call1 = call i8* @g_param_spec_internal(i64 %call, i8* %0, i8* %1, i8* %2, i32 %3)
  %4 = bitcast i8* %call1 to %struct._GimpParamSpecArray*
  store %struct._GimpParamSpecArray* %4, %struct._GimpParamSpecArray** %array_spec, align 8
  %5 = load %struct._GimpParamSpecArray*, %struct._GimpParamSpecArray** %array_spec, align 8
  %6 = bitcast %struct._GimpParamSpecArray* %5 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 76)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GParamSpec*
  ret %struct._GParamSpec* %7
}

; Function Attrs: nounwind uwtable
define i16* @gimp_value_get_int16array(%struct._GValue* %value) #2 {
entry:
  %retval = alloca i16*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_int16_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_value_get_int16array, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.68, i32 0, i32 0))
  store i16* null, i16** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call9 = call i8* @gimp_value_get_array(%struct._GValue* %9)
  %10 = bitcast i8* %call9 to i16*
  store i16* %10, i16** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  %11 = load i16*, i16** %retval
  ret i16* %11
}

; Function Attrs: nounwind uwtable
define i16* @gimp_value_dup_int16array(%struct._GValue* %value) #2 {
entry:
  %retval = alloca i16*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_int16_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_value_dup_int16array, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.68, i32 0, i32 0))
  store i16* null, i16** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call9 = call i8* @gimp_value_dup_array(%struct._GValue* %9)
  %10 = bitcast i8* %call9 to i16*
  store i16* %10, i16** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  %11 = load i16*, i16** %retval
  ret i16* %11
}

; Function Attrs: nounwind uwtable
define void @gimp_value_set_int16array(%struct._GValue* %value, i16* %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca i16*, align 8
  %length.addr = alloca i64, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store i16* %data, i16** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_int16_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_value_set_int16array, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.68, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load i16*, i16** %data.addr, align 8
  %11 = bitcast i16* %10 to i8*
  %12 = load i64, i64* %length.addr, align 8
  %mul = mul i64 %12, 2
  call void @gimp_value_set_array(%struct._GValue* %9, i8* %11, i64 %mul)
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_value_set_static_int16array(%struct._GValue* %value, i16* %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca i16*, align 8
  %length.addr = alloca i64, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store i16* %data, i16** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_int16_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_value_set_static_int16array, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.68, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load i16*, i16** %data.addr, align 8
  %11 = bitcast i16* %10 to i8*
  %12 = load i64, i64* %length.addr, align 8
  %mul = mul i64 %12, 2
  call void @gimp_value_set_static_array(%struct._GValue* %9, i8* %11, i64 %mul)
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_value_take_int16array(%struct._GValue* %value, i16* %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca i16*, align 8
  %length.addr = alloca i64, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store i16* %data, i16** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_int16_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_value_take_int16array, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.68, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load i16*, i16** %data.addr, align 8
  %11 = bitcast i16* %10 to i8*
  %12 = load i64, i64* %length.addr, align 8
  %mul = mul i64 %12, 2
  call void @gimp_value_take_array(%struct._GValue* %9, i8* %11, i64 %mul)
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  ret void
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_int32_array_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_int32_array_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_boxed_type_register_static(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i32 0, i32 0), i8* (i8*)* bitcast (%struct._GimpArray* (%struct._GimpArray*)* @gimp_array_copy to i8* (i8*)*), void (i8*)* bitcast (void (%struct._GimpArray*)* @gimp_array_free to void (i8*)*))
  store i64 %call, i64* @gimp_int32_array_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_int32_array_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_int32_array_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_int32_array_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_param_array_get_type() #5
  %call1 = call i64 @g_type_register_static(i64 %call, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.70, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_int32_array_get_type.info, i32 0)
  store i64 %call1, i64* @gimp_param_int32_array_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_param_int32_array_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_int32_array_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %call = call i64 @gimp_int32_array_get_type() #5
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_int32_array_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_int32_array(i8* %name, i8* %nick, i8* %blurb, i32 %flags) #2 {
entry:
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %array_spec = alloca %struct._GimpParamSpecArray*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %call = call i64 @gimp_param_int32_array_get_type() #5
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %nick.addr, align 8
  %2 = load i8*, i8** %blurb.addr, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %call1 = call i8* @g_param_spec_internal(i64 %call, i8* %0, i8* %1, i8* %2, i32 %3)
  %4 = bitcast i8* %call1 to %struct._GimpParamSpecArray*
  store %struct._GimpParamSpecArray* %4, %struct._GimpParamSpecArray** %array_spec, align 8
  %5 = load %struct._GimpParamSpecArray*, %struct._GimpParamSpecArray** %array_spec, align 8
  %6 = bitcast %struct._GimpParamSpecArray* %5 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 76)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GParamSpec*
  ret %struct._GParamSpec* %7
}

; Function Attrs: nounwind uwtable
define i32* @gimp_value_get_int32array(%struct._GValue* %value) #2 {
entry:
  %retval = alloca i32*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_int32_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_value_get_int32array, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.71, i32 0, i32 0))
  store i32* null, i32** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call9 = call i8* @gimp_value_get_array(%struct._GValue* %9)
  %10 = bitcast i8* %call9 to i32*
  store i32* %10, i32** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  %11 = load i32*, i32** %retval
  ret i32* %11
}

; Function Attrs: nounwind uwtable
define i32* @gimp_value_dup_int32array(%struct._GValue* %value) #2 {
entry:
  %retval = alloca i32*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_int32_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_value_dup_int32array, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.71, i32 0, i32 0))
  store i32* null, i32** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call9 = call i8* @gimp_value_dup_array(%struct._GValue* %9)
  %10 = bitcast i8* %call9 to i32*
  store i32* %10, i32** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  %11 = load i32*, i32** %retval
  ret i32* %11
}

; Function Attrs: nounwind uwtable
define void @gimp_value_set_int32array(%struct._GValue* %value, i32* %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca i32*, align 8
  %length.addr = alloca i64, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store i32* %data, i32** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_int32_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_value_set_int32array, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.71, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load i32*, i32** %data.addr, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = load i64, i64* %length.addr, align 8
  %mul = mul i64 %12, 4
  call void @gimp_value_set_array(%struct._GValue* %9, i8* %11, i64 %mul)
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_value_set_static_int32array(%struct._GValue* %value, i32* %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca i32*, align 8
  %length.addr = alloca i64, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store i32* %data, i32** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_int32_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_value_set_static_int32array, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.71, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load i32*, i32** %data.addr, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = load i64, i64* %length.addr, align 8
  %mul = mul i64 %12, 4
  call void @gimp_value_set_static_array(%struct._GValue* %9, i8* %11, i64 %mul)
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_value_take_int32array(%struct._GValue* %value, i32* %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca i32*, align 8
  %length.addr = alloca i64, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store i32* %data, i32** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_int32_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_value_take_int32array, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.71, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load i32*, i32** %data.addr, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = load i64, i64* %length.addr, align 8
  %mul = mul i64 %12, 4
  call void @gimp_value_take_array(%struct._GValue* %9, i8* %11, i64 %mul)
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  ret void
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_float_array_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_float_array_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_boxed_type_register_static(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0), i8* (i8*)* bitcast (%struct._GimpArray* (%struct._GimpArray*)* @gimp_array_copy to i8* (i8*)*), void (i8*)* bitcast (void (%struct._GimpArray*)* @gimp_array_free to void (i8*)*))
  store i64 %call, i64* @gimp_float_array_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_float_array_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_float_array_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_float_array_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_param_array_get_type() #5
  %call1 = call i64 @g_type_register_static(i64 %call, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.73, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_float_array_get_type.info, i32 0)
  store i64 %call1, i64* @gimp_param_float_array_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_param_float_array_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_float_array_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %call = call i64 @gimp_float_array_get_type() #5
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_float_array_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_float_array(i8* %name, i8* %nick, i8* %blurb, i32 %flags) #2 {
entry:
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %array_spec = alloca %struct._GimpParamSpecArray*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %call = call i64 @gimp_param_float_array_get_type() #5
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %nick.addr, align 8
  %2 = load i8*, i8** %blurb.addr, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %call1 = call i8* @g_param_spec_internal(i64 %call, i8* %0, i8* %1, i8* %2, i32 %3)
  %4 = bitcast i8* %call1 to %struct._GimpParamSpecArray*
  store %struct._GimpParamSpecArray* %4, %struct._GimpParamSpecArray** %array_spec, align 8
  %5 = load %struct._GimpParamSpecArray*, %struct._GimpParamSpecArray** %array_spec, align 8
  %6 = bitcast %struct._GimpParamSpecArray* %5 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 76)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GParamSpec*
  ret %struct._GParamSpec* %7
}

; Function Attrs: nounwind uwtable
define double* @gimp_value_get_floatarray(%struct._GValue* %value) #2 {
entry:
  %retval = alloca double*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_float_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_value_get_floatarray, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i32 0, i32 0))
  store double* null, double** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call9 = call i8* @gimp_value_get_array(%struct._GValue* %9)
  %10 = bitcast i8* %call9 to double*
  store double* %10, double** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  %11 = load double*, double** %retval
  ret double* %11
}

; Function Attrs: nounwind uwtable
define double* @gimp_value_dup_floatarray(%struct._GValue* %value) #2 {
entry:
  %retval = alloca double*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_float_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_value_dup_floatarray, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i32 0, i32 0))
  store double* null, double** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call9 = call i8* @gimp_value_dup_array(%struct._GValue* %9)
  %10 = bitcast i8* %call9 to double*
  store double* %10, double** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  %11 = load double*, double** %retval
  ret double* %11
}

; Function Attrs: nounwind uwtable
define void @gimp_value_set_floatarray(%struct._GValue* %value, double* %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca double*, align 8
  %length.addr = alloca i64, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store double* %data, double** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_float_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_value_set_floatarray, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load double*, double** %data.addr, align 8
  %11 = bitcast double* %10 to i8*
  %12 = load i64, i64* %length.addr, align 8
  %mul = mul i64 %12, 8
  call void @gimp_value_set_array(%struct._GValue* %9, i8* %11, i64 %mul)
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_value_set_static_floatarray(%struct._GValue* %value, double* %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca double*, align 8
  %length.addr = alloca i64, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store double* %data, double** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_float_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_value_set_static_floatarray, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load double*, double** %data.addr, align 8
  %11 = bitcast double* %10 to i8*
  %12 = load i64, i64* %length.addr, align 8
  %mul = mul i64 %12, 8
  call void @gimp_value_set_static_array(%struct._GValue* %9, i8* %11, i64 %mul)
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_value_take_floatarray(%struct._GValue* %value, double* %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca double*, align 8
  %length.addr = alloca i64, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store double* %data, double** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_float_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_value_take_floatarray, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load double*, double** %data.addr, align 8
  %11 = bitcast double* %10 to i8*
  %12 = load i64, i64* %length.addr, align 8
  %mul = mul i64 %12, 8
  call void @gimp_value_take_array(%struct._GValue* %9, i8* %11, i64 %mul)
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpArray* @gimp_string_array_new(i8** %data, i64 %length, i32 %static_data) #2 {
entry:
  %retval = alloca %struct._GimpArray*, align 8
  %data.addr = alloca i8**, align 8
  %length.addr = alloca i64, align 8
  %static_data.addr = alloca i32, align 4
  %array = alloca %struct._GimpArray*, align 8
  %tmp = alloca i8**, align 8
  %i = alloca i32, align 4
  store i8** %data, i8*** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i32 %static_data, i32* %static_data.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8**, i8*** %data.addr, align 8
  %cmp = icmp eq i8** %0, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %do.body
  %1 = load i64, i64* %length.addr, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %do.body
  %2 = load i8**, i8*** %data.addr, align 8
  %cmp2 = icmp ne i8** %2, null
  br i1 %cmp2, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %3 = load i64, i64* %length.addr, align 8
  %cmp4 = icmp ugt i64 %3, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.3, %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.3, %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_string_array_new, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.60, i32 0, i32 0))
  store %struct._GimpArray* null, %struct._GimpArray** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call noalias i8* @g_slice_alloc0(i64 24)
  %4 = bitcast i8* %call to %struct._GimpArray*
  store %struct._GimpArray* %4, %struct._GimpArray** %array, align 8
  %5 = load i32, i32* %static_data.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.else.14, label %if.then.5

if.then.5:                                        ; preds = %do.end
  %6 = load i64, i64* %length.addr, align 8
  %call6 = call noalias i8* @g_malloc_n(i64 %6, i64 8)
  %7 = bitcast i8* %call6 to i8**
  store i8** %7, i8*** %tmp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %8 = load i32, i32* %i, align 4
  %conv = sext i32 %8 to i64
  %9 = load i64, i64* %length.addr, align 8
  %cmp8 = icmp ult i64 %conv, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i8**, i8*** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8
  %call10 = call noalias i8* @g_strdup(i8* %12)
  %13 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load i8**, i8*** %tmp, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %14, i64 %idxprom11
  store i8* %call10, i8** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i8**, i8*** %tmp, align 8
  %17 = bitcast i8** %16 to i8*
  %18 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %data13 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %18, i32 0, i32 0
  store i8* %17, i8** %data13, align 8
  br label %if.end.16

if.else.14:                                       ; preds = %do.end
  %19 = load i8**, i8*** %data.addr, align 8
  %20 = bitcast i8** %19 to i8*
  %21 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %data15 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %21, i32 0, i32 0
  store i8* %20, i8** %data15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %for.end
  %22 = load i64, i64* %length.addr, align 8
  %23 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %length17 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %23, i32 0, i32 1
  store i64 %22, i64* %length17, align 8
  %24 = load i32, i32* %static_data.addr, align 4
  %25 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %static_data18 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %25, i32 0, i32 2
  store i32 %24, i32* %static_data18, align 4
  %26 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  store %struct._GimpArray* %26, %struct._GimpArray** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.else
  %27 = load %struct._GimpArray*, %struct._GimpArray** %retval
  ret %struct._GimpArray* %27
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpArray* @gimp_string_array_copy(%struct._GimpArray* %array) #2 {
entry:
  %retval = alloca %struct._GimpArray*, align 8
  %array.addr = alloca %struct._GimpArray*, align 8
  store %struct._GimpArray* %array, %struct._GimpArray** %array.addr, align 8
  %0 = load %struct._GimpArray*, %struct._GimpArray** %array.addr, align 8
  %tobool = icmp ne %struct._GimpArray* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpArray*, %struct._GimpArray** %array.addr, align 8
  %data = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8
  %3 = bitcast i8* %2 to i8**
  %4 = load %struct._GimpArray*, %struct._GimpArray** %array.addr, align 8
  %length = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %4, i32 0, i32 1
  %5 = load i64, i64* %length, align 8
  %call = call %struct._GimpArray* @gimp_string_array_new(i8** %3, i64 %5, i32 0)
  store %struct._GimpArray* %call, %struct._GimpArray** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._GimpArray* null, %struct._GimpArray** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._GimpArray*, %struct._GimpArray** %retval
  ret %struct._GimpArray* %6
}

; Function Attrs: nounwind uwtable
define void @gimp_string_array_free(%struct._GimpArray* %array) #2 {
entry:
  %array.addr = alloca %struct._GimpArray*, align 8
  %tmp = alloca i8**, align 8
  %i = alloca i32, align 4
  store %struct._GimpArray* %array, %struct._GimpArray** %array.addr, align 8
  %0 = load %struct._GimpArray*, %struct._GimpArray** %array.addr, align 8
  %tobool = icmp ne %struct._GimpArray* %0, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpArray*, %struct._GimpArray** %array.addr, align 8
  %static_data = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %1, i32 0, i32 2
  %2 = load i32, i32* %static_data, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %3 = load %struct._GimpArray*, %struct._GimpArray** %array.addr, align 8
  %data = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to i8**
  store i8** %5, i8*** %tmp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %6 = load i32, i32* %i, align 4
  %conv = sext i32 %6 to i64
  %7 = load %struct._GimpArray*, %struct._GimpArray** %array.addr, align 8
  %length = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %7, i32 0, i32 1
  %8 = load i64, i64* %length, align 8
  %cmp = icmp ult i64 %conv, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8**, i8*** %tmp, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8
  call void @g_free(i8* %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct._GimpArray*, %struct._GimpArray** %array.addr, align 8
  %data5 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %13, i32 0, i32 0
  %14 = load i8*, i8** %data5, align 8
  call void @g_free(i8* %14)
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %15 = load %struct._GimpArray*, %struct._GimpArray** %array.addr, align 8
  %16 = bitcast %struct._GimpArray* %15 to i8*
  call void @g_slice_free1(i64 24, i8* %16)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_string_array_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_string_array_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_boxed_type_register_static(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i32 0, i32 0), i8* (i8*)* bitcast (%struct._GimpArray* (%struct._GimpArray*)* @gimp_string_array_copy to i8* (i8*)*), void (i8*)* bitcast (void (%struct._GimpArray*)* @gimp_string_array_free to void (i8*)*))
  store i64 %call, i64* @gimp_string_array_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_string_array_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_string_array_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_string_array_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 16
  %2 = load i64, i64* %arrayidx, align 8
  %call = call i64 @g_type_register_static(i64 %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.76, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_string_array_get_type.info, i32 0)
  store i64 %call, i64* @gimp_param_string_array_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_param_string_array_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_string_array_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %call = call i64 @gimp_string_array_get_type() #5
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  %1 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_validate = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %1, i32 0, i32 4
  store i32 (%struct._GParamSpec*, %struct._GValue*)* @gimp_param_string_array_validate, i32 (%struct._GParamSpec*, %struct._GValue*)** %value_validate, align 8
  %2 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %values_cmp = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %2, i32 0, i32 5
  store i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)* @gimp_param_string_array_values_cmp, i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)** %values_cmp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_string_array_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_string_array(i8* %name, i8* %nick, i8* %blurb, i32 %flags) #2 {
entry:
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %array_spec = alloca %struct._GimpParamSpecStringArray*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %call = call i64 @gimp_param_string_array_get_type() #5
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %nick.addr, align 8
  %2 = load i8*, i8** %blurb.addr, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %call1 = call i8* @g_param_spec_internal(i64 %call, i8* %0, i8* %1, i8* %2, i32 %3)
  %4 = bitcast i8* %call1 to %struct._GimpParamSpecStringArray*
  store %struct._GimpParamSpecStringArray* %4, %struct._GimpParamSpecStringArray** %array_spec, align 8
  %5 = load %struct._GimpParamSpecStringArray*, %struct._GimpParamSpecStringArray** %array_spec, align 8
  %6 = bitcast %struct._GimpParamSpecStringArray* %5 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 76)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GParamSpec*
  ret %struct._GParamSpec* %7
}

; Function Attrs: nounwind uwtable
define i8** @gimp_value_get_stringarray(%struct._GValue* %value) #2 {
entry:
  %retval = alloca i8**, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %array = alloca %struct._GimpArray*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_string_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_value_get_stringarray, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.77, i32 0, i32 0))
  store i8** null, i8*** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %10 = load i8*, i8** %v_pointer, align 8
  %11 = bitcast i8* %10 to %struct._GimpArray*
  store %struct._GimpArray* %11, %struct._GimpArray** %array, align 8
  %12 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %tobool9 = icmp ne %struct._GimpArray* %12, null
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %do.end
  %13 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %data11 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %13, i32 0, i32 0
  %14 = load i8*, i8** %data11, align 8
  %15 = bitcast i8* %14 to i8**
  store i8** %15, i8*** %retval
  br label %return

if.end.12:                                        ; preds = %do.end
  store i8** null, i8*** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.10, %if.else.7
  %16 = load i8**, i8*** %retval
  ret i8** %16
}

; Function Attrs: nounwind uwtable
define i8** @gimp_value_dup_stringarray(%struct._GValue* %value) #2 {
entry:
  %retval = alloca i8**, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %array = alloca %struct._GimpArray*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %ret = alloca i8**, align 8
  %i = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_string_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_value_dup_stringarray, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.77, i32 0, i32 0))
  store i8** null, i8*** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %10 = load i8*, i8** %v_pointer, align 8
  %11 = bitcast i8* %10 to %struct._GimpArray*
  store %struct._GimpArray* %11, %struct._GimpArray** %array, align 8
  %12 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %tobool9 = icmp ne %struct._GimpArray* %12, null
  br i1 %tobool9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.end
  %13 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %data12 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %13, i32 0, i32 0
  %14 = load i8*, i8** %data12, align 8
  %15 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %length = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %15, i32 0, i32 1
  %16 = load i64, i64* %length, align 8
  %mul = mul i64 %16, 8
  %conv = trunc i64 %mul to i32
  %call13 = call noalias i8* @g_memdup(i8* %14, i32 %conv)
  %17 = bitcast i8* %call13 to i8**
  store i8** %17, i8*** %ret, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.10
  %18 = load i32, i32* %i, align 4
  %conv15 = sext i32 %18 to i64
  %19 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %length16 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %19, i32 0, i32 1
  %20 = load i64, i64* %length16, align 8
  %cmp17 = icmp ult i64 %conv15, %20
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load i8**, i8*** %ret, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %22, i64 %idxprom
  %23 = load i8*, i8** %arrayidx19, align 8
  %call20 = call noalias i8* @g_strdup(i8* %23)
  %24 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %24 to i64
  %25 = load i8**, i8*** %ret, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %25, i64 %idxprom21
  store i8* %call20, i8** %arrayidx22, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i8**, i8*** %ret, align 8
  store i8** %27, i8*** %retval
  br label %return

if.end.23:                                        ; preds = %do.end
  store i8** null, i8*** %retval
  br label %return

return:                                           ; preds = %if.end.23, %for.end, %if.else.7
  %28 = load i8**, i8*** %retval
  ret i8** %28
}

; Function Attrs: nounwind uwtable
define void @gimp_value_set_stringarray(%struct._GValue* %value, i8** %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca i8**, align 8
  %length.addr = alloca i64, align 8
  %array = alloca %struct._GimpArray*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_string_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_value_set_stringarray, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.77, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load i8**, i8*** %data.addr, align 8
  %10 = load i64, i64* %length.addr, align 8
  %call9 = call %struct._GimpArray* @gimp_string_array_new(i8** %9, i64 %10, i32 0)
  store %struct._GimpArray* %call9, %struct._GimpArray** %array, align 8
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %13 = bitcast %struct._GimpArray* %12 to i8*
  call void @g_value_take_boxed(%struct._GValue* %11, i8* %13)
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  ret void
}

declare void @g_value_take_boxed(%struct._GValue*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_value_set_static_stringarray(%struct._GValue* %value, i8** %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca i8**, align 8
  %length.addr = alloca i64, align 8
  %array = alloca %struct._GimpArray*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_string_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_value_set_static_stringarray, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.77, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load i8**, i8*** %data.addr, align 8
  %10 = load i64, i64* %length.addr, align 8
  %call9 = call %struct._GimpArray* @gimp_string_array_new(i8** %9, i64 %10, i32 1)
  store %struct._GimpArray* %call9, %struct._GimpArray** %array, align 8
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %13 = bitcast %struct._GimpArray* %12 to i8*
  call void @g_value_take_boxed(%struct._GValue* %11, i8* %13)
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_value_take_stringarray(%struct._GValue* %value, i8** %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca i8**, align 8
  %length.addr = alloca i64, align 8
  %array = alloca %struct._GimpArray*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_string_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_value_take_stringarray, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.77, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load i8**, i8*** %data.addr, align 8
  %10 = load i64, i64* %length.addr, align 8
  %call9 = call %struct._GimpArray* @gimp_string_array_new(i8** %9, i64 %10, i32 1)
  store %struct._GimpArray* %call9, %struct._GimpArray** %array, align 8
  %11 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %static_data = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %11, i32 0, i32 2
  store i32 0, i32* %static_data, align 4
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %13 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %14 = bitcast %struct._GimpArray* %13 to i8*
  call void @g_value_take_boxed(%struct._GValue* %12, i8* %14)
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  ret void
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_array_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_color_array_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_boxed_type_register_static(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0), i8* (i8*)* bitcast (%struct._GimpArray* (%struct._GimpArray*)* @gimp_array_copy to i8* (i8*)*), void (i8*)* bitcast (void (%struct._GimpArray*)* @gimp_array_free to void (i8*)*))
  store i64 %call, i64* @gimp_color_array_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_color_array_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_color_array_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_color_array_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 16
  %2 = load i64, i64* %arrayidx, align 8
  %call = call i64 @g_type_register_static(i64 %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.79, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_color_array_get_type.info, i32 0)
  store i64 %call, i64* @gimp_param_color_array_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_param_color_array_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_color_array_class_init(%struct._GParamSpecClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %klass, %struct._GParamSpecClass** %klass.addr, align 8
  %call = call i64 @gimp_color_array_get_type() #5
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %klass.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_color_array_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_color_array(i8* %name, i8* %nick, i8* %blurb, i32 %flags) #2 {
entry:
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %array_spec = alloca %struct._GimpParamSpecColorArray*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %call = call i64 @gimp_param_color_array_get_type() #5
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %nick.addr, align 8
  %2 = load i8*, i8** %blurb.addr, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %call1 = call i8* @g_param_spec_internal(i64 %call, i8* %0, i8* %1, i8* %2, i32 %3)
  %4 = bitcast i8* %call1 to %struct._GimpParamSpecColorArray*
  store %struct._GimpParamSpecColorArray* %4, %struct._GimpParamSpecColorArray** %array_spec, align 8
  %5 = load %struct._GimpParamSpecColorArray*, %struct._GimpParamSpecColorArray** %array_spec, align 8
  %6 = bitcast %struct._GimpParamSpecColorArray* %5 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 76)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GParamSpec*
  ret %struct._GParamSpec* %7
}

; Function Attrs: nounwind uwtable
define %struct._GimpRGB* @gimp_value_get_colorarray(%struct._GValue* %value) #2 {
entry:
  %retval = alloca %struct._GimpRGB*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_color_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_value_get_colorarray, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.80, i32 0, i32 0))
  store %struct._GimpRGB* null, %struct._GimpRGB** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call9 = call i8* @gimp_value_get_array(%struct._GValue* %9)
  %10 = bitcast i8* %call9 to %struct._GimpRGB*
  store %struct._GimpRGB* %10, %struct._GimpRGB** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %retval
  ret %struct._GimpRGB* %11
}

; Function Attrs: nounwind uwtable
define %struct._GimpRGB* @gimp_value_dup_colorarray(%struct._GValue* %value) #2 {
entry:
  %retval = alloca %struct._GimpRGB*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_color_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_value_dup_colorarray, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.80, i32 0, i32 0))
  store %struct._GimpRGB* null, %struct._GimpRGB** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call9 = call i8* @gimp_value_dup_array(%struct._GValue* %9)
  %10 = bitcast i8* %call9 to %struct._GimpRGB*
  store %struct._GimpRGB* %10, %struct._GimpRGB** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %retval
  ret %struct._GimpRGB* %11
}

; Function Attrs: nounwind uwtable
define void @gimp_value_set_colorarray(%struct._GValue* %value, %struct._GimpRGB* %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca %struct._GimpRGB*, align 8
  %length.addr = alloca i64, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GimpRGB* %data, %struct._GimpRGB** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_color_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_value_set_colorarray, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.80, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %data.addr, align 8
  %11 = bitcast %struct._GimpRGB* %10 to i8*
  %12 = load i64, i64* %length.addr, align 8
  %mul = mul i64 %12, 32
  call void @gimp_value_set_array(%struct._GValue* %9, i8* %11, i64 %mul)
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_value_set_static_colorarray(%struct._GValue* %value, %struct._GimpRGB* %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca %struct._GimpRGB*, align 8
  %length.addr = alloca i64, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GimpRGB* %data, %struct._GimpRGB** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_color_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_value_set_static_colorarray, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.80, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %data.addr, align 8
  %11 = bitcast %struct._GimpRGB* %10 to i8*
  %12 = load i64, i64* %length.addr, align 8
  %mul = mul i64 %12, 32
  call void @gimp_value_set_static_array(%struct._GValue* %9, i8* %11, i64 %mul)
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_value_take_colorarray(%struct._GValue* %value, %struct._GimpRGB* %data, i64 %length) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %data.addr = alloca %struct._GimpRGB*, align 8
  %length.addr = alloca i64, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GimpRGB* %data, %struct._GimpRGB** %data.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_color_array_get_type() #5
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #6
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_value_take_colorarray, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.80, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %data.addr, align 8
  %11 = bitcast %struct._GimpRGB* %10 to i8*
  %12 = load i64, i64* %length.addr, align 8
  %mul = mul i64 %12, 32
  call void @gimp_value_take_array(%struct._GValue* %9, i8* %11, i64 %mul)
  br label %return

return:                                           ; preds = %do.end, %if.else.7
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_param_string_validate(%struct._GParamSpec* %pspec, %struct._GValue* %value) #2 {
entry:
  %retval = alloca i32, align 4
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %sspec = alloca %struct._GimpParamSpecString*, align 8
  %string = alloca i8*, align 8
  %s = alloca i8*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_string_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecString*
  store %struct._GimpParamSpecString* %2, %struct._GimpParamSpecString** %sspec, align 8
  %3 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %4 = load i8*, i8** %v_pointer, align 8
  store i8* %4, i8** %string, align 8
  %5 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** @gimp_param_string_parent_class, align 8
  %value_validate = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %5, i32 0, i32 4
  %6 = load i32 (%struct._GParamSpec*, %struct._GValue*)*, i32 (%struct._GParamSpec*, %struct._GValue*)** %value_validate, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 %6(%struct._GParamSpec* %7, %struct._GValue* %8)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i8*, i8** %string, align 8
  %tobool3 = icmp ne i8* %9, null
  br i1 %tobool3, label %if.then.4, label %if.else.54

if.then.4:                                        ; preds = %if.end
  %10 = load %struct._GimpParamSpecString*, %struct._GimpParamSpecString** %sspec, align 8
  %non_empty = getelementptr inbounds %struct._GimpParamSpecString, %struct._GimpParamSpecString* %10, i32 0, i32 1
  %bf.load = load i8, i8* %non_empty, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool5 = icmp ne i32 %bf.cast, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.then.4
  %11 = load i8*, i8** %string, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx6, align 1
  %tobool7 = icmp ne i8 %12, 0
  br i1 %tobool7, label %if.end.22, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data9 = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data9, i32 0, i64 1
  %v_uint = bitcast %union.anon* %arrayidx10 to i32*
  %14 = load i32, i32* %v_uint, align 4
  %and = and i32 %14, 134217728
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %if.then.8
  %15 = load i8*, i8** %string, align 8
  call void @g_free(i8* %15)
  br label %if.end.17

if.else:                                          ; preds = %if.then.8
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data13 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data13, i32 0, i64 1
  %v_uint15 = bitcast %union.anon* %arrayidx14 to i32*
  %17 = load i32, i32* %v_uint15, align 4
  %and16 = and i32 %17, -134217729
  store i32 %and16, i32* %v_uint15, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.12
  %call18 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0))
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data19 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data19, i32 0, i64 0
  %v_pointer21 = bitcast %union.anon* %arrayidx20 to i8**
  store i8* %call18, i8** %v_pointer21, align 8
  store i32 1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true, %if.then.4
  %19 = load %struct._GimpParamSpecString*, %struct._GimpParamSpecString** %sspec, align 8
  %allow_non_utf8 = getelementptr inbounds %struct._GimpParamSpecString, %struct._GimpParamSpecString* %19, i32 0, i32 1
  %bf.load23 = load i8, i8* %allow_non_utf8, align 8
  %bf.clear24 = and i8 %bf.load23, 1
  %bf.cast25 = zext i8 %bf.clear24 to i32
  %tobool26 = icmp ne i32 %bf.cast25, 0
  br i1 %tobool26, label %if.end.53, label %land.lhs.true.27

land.lhs.true.27:                                 ; preds = %if.end.22
  %20 = load i8*, i8** %string, align 8
  %call28 = call i32 @g_utf8_validate(i8* %20, i64 -1, i8** %s)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.53, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true.27
  %21 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data31 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data31, i32 0, i64 1
  %v_uint33 = bitcast %union.anon* %arrayidx32 to i32*
  %22 = load i32, i32* %v_uint33, align 4
  %and34 = and i32 %22, 134217728
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.48

if.then.36:                                       ; preds = %if.then.30
  %23 = load i8*, i8** %string, align 8
  %call37 = call noalias i8* @g_strdup(i8* %23)
  %24 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data38 = getelementptr inbounds %struct._GValue, %struct._GValue* %24, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data38, i32 0, i64 0
  %v_pointer40 = bitcast %union.anon* %arrayidx39 to i8**
  store i8* %call37, i8** %v_pointer40, align 8
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data41 = getelementptr inbounds %struct._GValue, %struct._GValue* %25, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data41, i32 0, i64 1
  %v_uint43 = bitcast %union.anon* %arrayidx42 to i32*
  %26 = load i32, i32* %v_uint43, align 4
  %and44 = and i32 %26, -134217729
  store i32 %and44, i32* %v_uint43, align 4
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data45 = getelementptr inbounds %struct._GValue, %struct._GValue* %27, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data45, i32 0, i64 0
  %v_pointer47 = bitcast %union.anon* %arrayidx46 to i8**
  %28 = load i8*, i8** %v_pointer47, align 8
  store i8* %28, i8** %string, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.36, %if.then.30
  %29 = load i8*, i8** %string, align 8
  store i8* %29, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.48
  %30 = load i8*, i8** %s, align 8
  %31 = load i8, i8* %30, align 1
  %tobool49 = icmp ne i8 %31, 0
  br i1 %tobool49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i8*, i8** %s, align 8
  %33 = load i8, i8* %32, align 1
  %conv = sext i8 %33 to i32
  %cmp = icmp slt i32 %conv, 32
  br i1 %cmp, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %for.body
  %34 = load i8*, i8** %s, align 8
  store i8 63, i8* %34, align 1
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %35 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

if.end.53:                                        ; preds = %land.lhs.true.27, %if.end.22
  br label %if.end.71

if.else.54:                                       ; preds = %if.end
  %36 = load %struct._GimpParamSpecString*, %struct._GimpParamSpecString** %sspec, align 8
  %non_empty55 = getelementptr inbounds %struct._GimpParamSpecString, %struct._GimpParamSpecString* %36, i32 0, i32 1
  %bf.load56 = load i8, i8* %non_empty55, align 8
  %bf.lshr57 = lshr i8 %bf.load56, 1
  %bf.clear58 = and i8 %bf.lshr57, 1
  %bf.cast59 = zext i8 %bf.clear58 to i32
  %tobool60 = icmp ne i32 %bf.cast59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.70

if.then.61:                                       ; preds = %if.else.54
  %37 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data62 = getelementptr inbounds %struct._GValue, %struct._GValue* %37, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data62, i32 0, i64 1
  %v_uint64 = bitcast %union.anon* %arrayidx63 to i32*
  %38 = load i32, i32* %v_uint64, align 4
  %and65 = and i32 %38, -134217729
  store i32 %and65, i32* %v_uint64, align 4
  %call66 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0))
  %39 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data67 = getelementptr inbounds %struct._GValue, %struct._GValue* %39, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data67, i32 0, i64 0
  %v_pointer69 = bitcast %union.anon* %arrayidx68 to i8**
  store i8* %call66, i8** %v_pointer69, align 8
  store i32 1, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.else.54
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end.53
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.71, %if.then.61, %for.end, %if.end.17, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i32 @g_utf8_validate(i8*, i64, i8**) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_param_enum_finalize(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %espec = alloca %struct._GimpParamSpecEnum*, align 8
  %parent_class = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_enum_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecEnum*
  store %struct._GimpParamSpecEnum* %2, %struct._GimpParamSpecEnum** %espec, align 8
  %call2 = call i64 @gimp_param_enum_get_type() #5
  %call3 = call i64 @g_type_parent(i64 %call2)
  %call4 = call i8* @g_type_class_peek(i64 %call3)
  %3 = bitcast i8* %call4 to %struct._GParamSpecClass*
  store %struct._GParamSpecClass* %3, %struct._GParamSpecClass** %parent_class, align 8
  %4 = load %struct._GimpParamSpecEnum*, %struct._GimpParamSpecEnum** %espec, align 8
  %excluded_values = getelementptr inbounds %struct._GimpParamSpecEnum, %struct._GimpParamSpecEnum* %4, i32 0, i32 1
  %5 = load %struct._GSList*, %struct._GSList** %excluded_values, align 8
  call void @g_slist_free(%struct._GSList* %5)
  %6 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %parent_class, align 8
  %finalize = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %6, i32 0, i32 2
  %7 = load void (%struct._GParamSpec*)*, void (%struct._GParamSpec*)** %finalize, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  call void %7(%struct._GParamSpec* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_param_enum_validate(%struct._GParamSpec* %pspec, %struct._GValue* %value) #2 {
entry:
  %retval = alloca i32, align 4
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %espec = alloca %struct._GimpParamSpecEnum*, align 8
  %parent_class = alloca %struct._GParamSpecClass*, align 8
  %list = alloca %struct._GSList*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_enum_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecEnum*
  store %struct._GimpParamSpecEnum* %2, %struct._GimpParamSpecEnum** %espec, align 8
  %call2 = call i64 @gimp_param_enum_get_type() #5
  %call3 = call i64 @g_type_parent(i64 %call2)
  %call4 = call i8* @g_type_class_peek(i64 %call3)
  %3 = bitcast i8* %call4 to %struct._GParamSpecClass*
  store %struct._GParamSpecClass* %3, %struct._GParamSpecClass** %parent_class, align 8
  %4 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %parent_class, align 8
  %value_validate = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %4, i32 0, i32 4
  %5 = load i32 (%struct._GParamSpec*, %struct._GValue*)*, i32 (%struct._GParamSpec*, %struct._GValue*)** %value_validate, align 8
  %6 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call5 = call i32 %5(%struct._GParamSpec* %6, %struct._GValue* %7)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._GimpParamSpecEnum*, %struct._GimpParamSpecEnum** %espec, align 8
  %excluded_values = getelementptr inbounds %struct._GimpParamSpecEnum, %struct._GimpParamSpecEnum* %8, i32 0, i32 1
  %9 = load %struct._GSList*, %struct._GSList** %excluded_values, align 8
  store %struct._GSList* %9, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %10 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool6 = icmp ne %struct._GSList* %10, null
  br i1 %tobool6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8
  %13 = ptrtoint i8* %12 to i64
  %conv = trunc i64 %13 to i32
  %conv7 = sext i32 %conv to i64
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data8 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data8, i32 0, i64 0
  %v_long = bitcast %union.anon* %arrayidx to i64*
  %15 = load i64, i64* %v_long, align 8
  %cmp = icmp eq i64 %conv7, %15
  br i1 %cmp, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %for.body
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %17 = bitcast %struct._GParamSpec* %16 to %struct._GTypeInstance*
  %18 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx11 = getelementptr inbounds i64, i64* %18, i64 10
  %19 = load i64, i64* %arrayidx11, align 8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %19)
  %20 = bitcast %struct._GTypeInstance* %call12 to %struct._GParamSpecEnum*
  %default_value = getelementptr inbounds %struct._GParamSpecEnum, %struct._GParamSpecEnum* %20, i32 0, i32 2
  %21 = load i32, i32* %default_value, align 4
  %conv13 = sext i32 %21 to i64
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data14 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data14, i32 0, i64 0
  %v_long16 = bitcast %union.anon* %arrayidx15 to i64*
  store i64 %conv13, i64* %v_long16, align 8
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %23 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool18 = icmp ne %struct._GSList* %23, null
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %24 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 1
  %25 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %25, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.10, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i8* @g_type_class_peek(i64) #1

declare i64 @g_type_parent(i64) #1

declare void @g_slist_free(%struct._GSList*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_param_image_id_set_default(%struct._GParamSpec* %pspec, %struct._GValue* %value) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  store i32 -1, i32* %v_int, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_param_image_id_validate(%struct._GParamSpec* %pspec, %struct._GValue* %value) #2 {
entry:
  %retval = alloca i32, align 4
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %ispec = alloca %struct._GimpParamSpecImageID*, align 8
  %image_id = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_image_id_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecImageID*
  store %struct._GimpParamSpecImageID* %2, %struct._GimpParamSpecImageID** %ispec, align 8
  %3 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  %4 = load i32, i32* %v_int, align 4
  store i32 %4, i32* %image_id, align 4
  %5 = load %struct._GimpParamSpecImageID*, %struct._GimpParamSpecImageID** %ispec, align 8
  %none_ok = getelementptr inbounds %struct._GimpParamSpecImageID, %struct._GimpParamSpecImageID* %5, i32 0, i32 2
  %6 = load i32, i32* %none_ok, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %image_id, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load i32, i32* %image_id, align 4
  %cmp2 = icmp eq i32 %8, -1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %9 = load %struct._GimpParamSpecImageID*, %struct._GimpParamSpecImageID** %ispec, align 8
  %gimp = getelementptr inbounds %struct._GimpParamSpecImageID, %struct._GimpParamSpecImageID* %9, i32 0, i32 1
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %11 = load i32, i32* %image_id, align 4
  %call3 = call %struct._GimpImage* @gimp_image_get_by_ID(%struct._Gimp* %10, i32 %11)
  store %struct._GimpImage* %call3, %struct._GimpImage** %image, align 8
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = bitcast %struct._GimpImage* %12 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %13, %struct._GTypeInstance** %__inst, align 8
  %call4 = call i64 @gimp_image_get_type() #5
  store i64 %call4, i64* %__t, align 8
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool5 = icmp ne %struct._GTypeInstance* %14, null
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool7 = icmp ne %struct._GTypeClass* %16, null
  br i1 %tobool7, label %land.lhs.true.8, label %if.else.12

land.lhs.true.8:                                  ; preds = %if.else
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type, align 8
  %20 = load i64, i64* %__t, align 8
  %cmp10 = icmp eq i64 %19, %20
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true.8
  store i32 1, i32* %__r, align 4
  br label %if.end.14

if.else.12:                                       ; preds = %land.lhs.true.8, %if.else
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %22 = load i64, i64* %__t, align 8
  %call13 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %21, i64 %22) #6
  store i32 %call13, i32* %__r, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.6
  %23 = load i32, i32* %__r, align 4
  store i32 %23, i32* %tmp
  %24 = load i32, i32* %tmp
  %tobool16 = icmp ne i32 %24, 0
  br i1 %tobool16, label %if.end.21, label %if.then.17

if.then.17:                                       ; preds = %if.end.15
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data18 = getelementptr inbounds %struct._GValue, %struct._GValue* %25, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data18, i32 0, i64 0
  %v_int20 = bitcast %union.anon* %arrayidx19 to i32*
  store i32 -1, i32* %v_int20, align 4
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.17, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_param_image_id_values_cmp(%struct._GParamSpec* %pspec, %struct._GValue* %value1, %struct._GValue* %value2) #2 {
entry:
  %retval = alloca i32, align 4
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value1.addr = alloca %struct._GValue*, align 8
  %value2.addr = alloca %struct._GValue*, align 8
  %image_id1 = alloca i32, align 4
  %image_id2 = alloca i32, align 4
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value1, %struct._GValue** %value1.addr, align 8
  store %struct._GValue* %value2, %struct._GValue** %value2.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value1.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  %1 = load i32, i32* %v_int, align 4
  store i32 %1, i32* %image_id1, align 4
  %2 = load %struct._GValue*, %struct._GValue** %value2.addr, align 8
  %data1 = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data1, i32 0, i64 0
  %v_int3 = bitcast %union.anon* %arrayidx2 to i32*
  %3 = load i32, i32* %v_int3, align 4
  store i32 %3, i32* %image_id2, align 4
  %4 = load i32, i32* %image_id1, align 4
  %5 = load i32, i32* %image_id2, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %image_id1, align 4
  %7 = load i32, i32* %image_id2, align 4
  %cmp4 = icmp sgt i32 %6, %7
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.6:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.6, %if.then.5, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_item_id_set_default(%struct._GParamSpec* %pspec, %struct._GValue* %value) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  store i32 -1, i32* %v_int, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_param_item_id_validate(%struct._GParamSpec* %pspec, %struct._GValue* %value) #2 {
entry:
  %retval = alloca i32, align 4
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %ispec = alloca %struct._GimpParamSpecItemID*, align 8
  %item_id = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_item_id_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecItemID*
  store %struct._GimpParamSpecItemID* %2, %struct._GimpParamSpecItemID** %ispec, align 8
  %3 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  %4 = load i32, i32* %v_int, align 4
  store i32 %4, i32* %item_id, align 4
  %5 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %none_ok = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %5, i32 0, i32 3
  %6 = load i32, i32* %none_ok, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %item_id, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load i32, i32* %item_id, align 4
  %cmp2 = icmp eq i32 %8, -1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %9 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %gimp = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %9, i32 0, i32 1
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %11 = load i32, i32* %item_id, align 4
  %call3 = call %struct._GimpItem* @gimp_item_get_by_ID(%struct._Gimp* %10, i32 %11)
  store %struct._GimpItem* %call3, %struct._GimpItem** %item, align 8
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool4 = icmp ne %struct._GimpItem* %12, null
  br i1 %tobool4, label %lor.lhs.false.5, label %if.then.8

lor.lhs.false.5:                                  ; preds = %if.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %17 = load %struct._GimpParamSpecItemID*, %struct._GimpParamSpecItemID** %ispec, align 8
  %item_type = getelementptr inbounds %struct._GimpParamSpecItemID, %struct._GimpParamSpecItemID* %17, i32 0, i32 2
  %18 = load i64, i64* %item_type, align 8
  %call6 = call i32 @g_type_is_a(i64 %16, i64 %18)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %lor.lhs.false.5, %if.end
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data9 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data9, i32 0, i64 0
  %v_int11 = bitcast %union.anon* %arrayidx10 to i32*
  store i32 -1, i32* %v_int11, align 4
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.5
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call12 = call i32 @gimp_item_is_removed(%struct._GimpItem* %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %if.else
  %21 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data15 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data15, i32 0, i64 0
  %v_int17 = bitcast %union.anon* %arrayidx16 to i32*
  store i32 -1, i32* %v_int17, align 4
  store i32 1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.14, %if.then.8, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_param_item_id_values_cmp(%struct._GParamSpec* %pspec, %struct._GValue* %value1, %struct._GValue* %value2) #2 {
entry:
  %retval = alloca i32, align 4
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value1.addr = alloca %struct._GValue*, align 8
  %value2.addr = alloca %struct._GValue*, align 8
  %item_id1 = alloca i32, align 4
  %item_id2 = alloca i32, align 4
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value1, %struct._GValue** %value1.addr, align 8
  store %struct._GValue* %value2, %struct._GValue** %value2.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value1.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  %1 = load i32, i32* %v_int, align 4
  store i32 %1, i32* %item_id1, align 4
  %2 = load %struct._GValue*, %struct._GValue** %value2.addr, align 8
  %data1 = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data1, i32 0, i64 0
  %v_int3 = bitcast %union.anon* %arrayidx2 to i32*
  %3 = load i32, i32* %v_int3, align 4
  store i32 %3, i32* %item_id2, align 4
  %4 = load i32, i32* %item_id1, align 4
  %5 = load i32, i32* %item_id2, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %item_id1, align 4
  %7 = load i32, i32* %item_id2, align 4
  %cmp4 = icmp sgt i32 %6, %7
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.6:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.6, %if.then.5, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @g_type_is_a(i64, i64) #1

declare i32 @gimp_item_is_removed(%struct._GimpItem*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_param_display_id_set_default(%struct._GParamSpec* %pspec, %struct._GValue* %value) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  store i32 -1, i32* %v_int, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_param_display_id_validate(%struct._GParamSpec* %pspec, %struct._GValue* %value) #2 {
entry:
  %retval = alloca i32, align 4
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %ispec = alloca %struct._GimpParamSpecDisplayID*, align 8
  %display_id = alloca i32, align 4
  %display = alloca %struct._GimpObject*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_display_id_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecDisplayID*
  store %struct._GimpParamSpecDisplayID* %2, %struct._GimpParamSpecDisplayID** %ispec, align 8
  %3 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  %4 = load i32, i32* %v_int, align 4
  store i32 %4, i32* %display_id, align 4
  %5 = load %struct._GimpParamSpecDisplayID*, %struct._GimpParamSpecDisplayID** %ispec, align 8
  %none_ok = getelementptr inbounds %struct._GimpParamSpecDisplayID, %struct._GimpParamSpecDisplayID* %5, i32 0, i32 2
  %6 = load i32, i32* %none_ok, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %display_id, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load i32, i32* %display_id, align 4
  %cmp2 = icmp eq i32 %8, -1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %9 = load %struct._GimpParamSpecDisplayID*, %struct._GimpParamSpecDisplayID** %ispec, align 8
  %gimp = getelementptr inbounds %struct._GimpParamSpecDisplayID, %struct._GimpParamSpecDisplayID* %9, i32 0, i32 1
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %11 = load i32, i32* %display_id, align 4
  %call3 = call %struct._GimpObject* @gimp_get_display_by_ID(%struct._Gimp* %10, i32 %11)
  store %struct._GimpObject* %call3, %struct._GimpObject** %display, align 8
  %12 = load %struct._GimpObject*, %struct._GimpObject** %display, align 8
  %13 = bitcast %struct._GimpObject* %12 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %13, %struct._GTypeInstance** %__inst, align 8
  %call4 = call i64 @gimp_object_get_type() #5
  store i64 %call4, i64* %__t, align 8
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool5 = icmp ne %struct._GTypeInstance* %14, null
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool7 = icmp ne %struct._GTypeClass* %16, null
  br i1 %tobool7, label %land.lhs.true.8, label %if.else.12

land.lhs.true.8:                                  ; preds = %if.else
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type, align 8
  %20 = load i64, i64* %__t, align 8
  %cmp10 = icmp eq i64 %19, %20
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true.8
  store i32 1, i32* %__r, align 4
  br label %if.end.14

if.else.12:                                       ; preds = %land.lhs.true.8, %if.else
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %22 = load i64, i64* %__t, align 8
  %call13 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %21, i64 %22) #6
  store i32 %call13, i32* %__r, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.6
  %23 = load i32, i32* %__r, align 4
  store i32 %23, i32* %tmp
  %24 = load i32, i32* %tmp
  %tobool16 = icmp ne i32 %24, 0
  br i1 %tobool16, label %if.end.21, label %if.then.17

if.then.17:                                       ; preds = %if.end.15
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data18 = getelementptr inbounds %struct._GValue, %struct._GValue* %25, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data18, i32 0, i64 0
  %v_int20 = bitcast %union.anon* %arrayidx19 to i32*
  store i32 -1, i32* %v_int20, align 4
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.17, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_param_display_id_values_cmp(%struct._GParamSpec* %pspec, %struct._GValue* %value1, %struct._GValue* %value2) #2 {
entry:
  %retval = alloca i32, align 4
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value1.addr = alloca %struct._GValue*, align 8
  %value2.addr = alloca %struct._GValue*, align 8
  %display_id1 = alloca i32, align 4
  %display_id2 = alloca i32, align 4
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value1, %struct._GValue** %value1.addr, align 8
  store %struct._GValue* %value2, %struct._GValue** %value2.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value1.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx to i32*
  %1 = load i32, i32* %v_int, align 4
  store i32 %1, i32* %display_id1, align 4
  %2 = load %struct._GValue*, %struct._GValue** %value2.addr, align 8
  %data1 = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data1, i32 0, i64 0
  %v_int3 = bitcast %union.anon* %arrayidx2 to i32*
  %3 = load i32, i32* %v_int3, align 4
  store i32 %3, i32* %display_id2, align 4
  %4 = load i32, i32* %display_id1, align 4
  %5 = load i32, i32* %display_id2, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %display_id1, align 4
  %7 = load i32, i32* %display_id2, align 4
  %cmp4 = icmp sgt i32 %6, %7
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.6:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.6, %if.then.5, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_param_array_validate(%struct._GParamSpec* %pspec, %struct._GValue* %value) #2 {
entry:
  %retval = alloca i32, align 4
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %array = alloca %struct._GimpArray*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %1 = load i8*, i8** %v_pointer, align 8
  %2 = bitcast i8* %1 to %struct._GimpArray*
  store %struct._GimpArray* %2, %struct._GimpArray** %array, align 8
  %3 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %tobool = icmp ne %struct._GimpArray* %3, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %data1 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %4, i32 0, i32 0
  %5 = load i8*, i8** %data1, align 8
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %length = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %6, i32 0, i32 1
  %7 = load i64, i64* %length, align 8
  %cmp2 = icmp ne i64 %7, 0
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %8 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %data3 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %8, i32 0, i32 0
  %9 = load i8*, i8** %data3, align 8
  %cmp4 = icmp ne i8* %9, null
  br i1 %cmp4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %lor.lhs.false
  %10 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %length6 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %10, i32 0, i32 1
  %11 = load i64, i64* %length6, align 8
  %cmp7 = icmp eq i64 %11, 0
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true.5, %land.lhs.true
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  call void @g_value_set_boxed(%struct._GValue* %12, i8* null)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.5, %lor.lhs.false
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_param_array_values_cmp(%struct._GParamSpec* %pspec, %struct._GValue* %value1, %struct._GValue* %value2) #2 {
entry:
  %retval = alloca i32, align 4
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value1.addr = alloca %struct._GValue*, align 8
  %value2.addr = alloca %struct._GValue*, align 8
  %array1 = alloca %struct._GimpArray*, align 8
  %array2 = alloca %struct._GimpArray*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value1, %struct._GValue** %value1.addr, align 8
  store %struct._GValue* %value2, %struct._GValue** %value2.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value1.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %1 = load i8*, i8** %v_pointer, align 8
  %2 = bitcast i8* %1 to %struct._GimpArray*
  store %struct._GimpArray* %2, %struct._GimpArray** %array1, align 8
  %3 = load %struct._GValue*, %struct._GValue** %value2.addr, align 8
  %data1 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data1, i32 0, i64 0
  %v_pointer3 = bitcast %union.anon* %arrayidx2 to i8**
  %4 = load i8*, i8** %v_pointer3, align 8
  %5 = bitcast i8* %4 to %struct._GimpArray*
  store %struct._GimpArray* %5, %struct._GimpArray** %array2, align 8
  %6 = load %struct._GimpArray*, %struct._GimpArray** %array1, align 8
  %tobool = icmp ne %struct._GimpArray* %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpArray*, %struct._GimpArray** %array2, align 8
  %cmp = icmp ne %struct._GimpArray* %7, null
  %cond = select i1 %cmp, i32 -1, i32 0
  store i32 %cond, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load %struct._GimpArray*, %struct._GimpArray** %array2, align 8
  %tobool4 = icmp ne %struct._GimpArray* %8, null
  br i1 %tobool4, label %if.else.8, label %if.then.5

if.then.5:                                        ; preds = %if.else
  %9 = load %struct._GimpArray*, %struct._GimpArray** %array1, align 8
  %cmp6 = icmp ne %struct._GimpArray* %9, null
  %cond7 = select i1 %cmp6, i32 1, i32 0
  store i32 %cond7, i32* %retval
  br label %return

if.else.8:                                        ; preds = %if.else
  %10 = load %struct._GimpArray*, %struct._GimpArray** %array1, align 8
  %length = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %10, i32 0, i32 1
  %11 = load i64, i64* %length, align 8
  %12 = load %struct._GimpArray*, %struct._GimpArray** %array2, align 8
  %length9 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %12, i32 0, i32 1
  %13 = load i64, i64* %length9, align 8
  %cmp10 = icmp ult i64 %11, %13
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.8
  store i32 -1, i32* %retval
  br label %return

if.else.12:                                       ; preds = %if.else.8
  %14 = load %struct._GimpArray*, %struct._GimpArray** %array1, align 8
  %length13 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %14, i32 0, i32 1
  %15 = load i64, i64* %length13, align 8
  %16 = load %struct._GimpArray*, %struct._GimpArray** %array2, align 8
  %length14 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %16, i32 0, i32 1
  %17 = load i64, i64* %length14, align 8
  %cmp15 = icmp ugt i64 %15, %17
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.else.12
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.16, %if.then.11, %if.then.5, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_param_string_array_validate(%struct._GParamSpec* %pspec, %struct._GValue* %value) #2 {
entry:
  %retval = alloca i32, align 4
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %array = alloca %struct._GimpArray*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %1 = load i8*, i8** %v_pointer, align 8
  %2 = bitcast i8* %1 to %struct._GimpArray*
  store %struct._GimpArray* %2, %struct._GimpArray** %array, align 8
  %3 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %tobool = icmp ne %struct._GimpArray* %3, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %data1 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %4, i32 0, i32 0
  %5 = load i8*, i8** %data1, align 8
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %length = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %6, i32 0, i32 1
  %7 = load i64, i64* %length, align 8
  %cmp2 = icmp ne i64 %7, 0
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %8 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %data3 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %8, i32 0, i32 0
  %9 = load i8*, i8** %data3, align 8
  %cmp4 = icmp ne i8* %9, null
  br i1 %cmp4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %lor.lhs.false
  %10 = load %struct._GimpArray*, %struct._GimpArray** %array, align 8
  %length6 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %10, i32 0, i32 1
  %11 = load i64, i64* %length6, align 8
  %cmp7 = icmp eq i64 %11, 0
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true.5, %land.lhs.true
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  call void @g_value_set_boxed(%struct._GValue* %12, i8* null)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.5, %lor.lhs.false
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_param_string_array_values_cmp(%struct._GParamSpec* %pspec, %struct._GValue* %value1, %struct._GValue* %value2) #2 {
entry:
  %retval = alloca i32, align 4
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value1.addr = alloca %struct._GValue*, align 8
  %value2.addr = alloca %struct._GValue*, align 8
  %array1 = alloca %struct._GimpArray*, align 8
  %array2 = alloca %struct._GimpArray*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value1, %struct._GValue** %value1.addr, align 8
  store %struct._GValue* %value2, %struct._GValue** %value2.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value1.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %1 = load i8*, i8** %v_pointer, align 8
  %2 = bitcast i8* %1 to %struct._GimpArray*
  store %struct._GimpArray* %2, %struct._GimpArray** %array1, align 8
  %3 = load %struct._GValue*, %struct._GValue** %value2.addr, align 8
  %data1 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data1, i32 0, i64 0
  %v_pointer3 = bitcast %union.anon* %arrayidx2 to i8**
  %4 = load i8*, i8** %v_pointer3, align 8
  %5 = bitcast i8* %4 to %struct._GimpArray*
  store %struct._GimpArray* %5, %struct._GimpArray** %array2, align 8
  %6 = load %struct._GimpArray*, %struct._GimpArray** %array1, align 8
  %tobool = icmp ne %struct._GimpArray* %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpArray*, %struct._GimpArray** %array2, align 8
  %cmp = icmp ne %struct._GimpArray* %7, null
  %cond = select i1 %cmp, i32 -1, i32 0
  store i32 %cond, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load %struct._GimpArray*, %struct._GimpArray** %array2, align 8
  %tobool4 = icmp ne %struct._GimpArray* %8, null
  br i1 %tobool4, label %if.else.8, label %if.then.5

if.then.5:                                        ; preds = %if.else
  %9 = load %struct._GimpArray*, %struct._GimpArray** %array1, align 8
  %cmp6 = icmp ne %struct._GimpArray* %9, null
  %cond7 = select i1 %cmp6, i32 1, i32 0
  store i32 %cond7, i32* %retval
  br label %return

if.else.8:                                        ; preds = %if.else
  %10 = load %struct._GimpArray*, %struct._GimpArray** %array1, align 8
  %length = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %10, i32 0, i32 1
  %11 = load i64, i64* %length, align 8
  %12 = load %struct._GimpArray*, %struct._GimpArray** %array2, align 8
  %length9 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %12, i32 0, i32 1
  %13 = load i64, i64* %length9, align 8
  %cmp10 = icmp ult i64 %11, %13
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.8
  store i32 -1, i32* %retval
  br label %return

if.else.12:                                       ; preds = %if.else.8
  %14 = load %struct._GimpArray*, %struct._GimpArray** %array1, align 8
  %length13 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %14, i32 0, i32 1
  %15 = load i64, i64* %length13, align 8
  %16 = load %struct._GimpArray*, %struct._GimpArray** %array2, align 8
  %length14 = getelementptr inbounds %struct._GimpArray, %struct._GimpArray* %16, i32 0, i32 1
  %17 = load i64, i64* %length14, align 8
  %cmp15 = icmp ugt i64 %15, %17
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.else.12
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.16, %if.then.11, %if.then.5, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
