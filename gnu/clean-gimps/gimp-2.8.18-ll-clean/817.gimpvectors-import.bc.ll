; ModuleID = './app/vectors/gimpvectors-import.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GMarkupParser = type { void (%struct._GMarkupParseContext*, i8*, i8**, i8**, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, %struct._GError*, i8*)* }
%struct._GMarkupParseContext = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._SvgHandler = type { i8*, void (%struct._SvgHandler*, i8**, i8**, %struct.SvgParser*)*, void (%struct._SvgHandler*, %struct.SvgParser*)*, double, double, i8*, %struct._GList*, %struct._GimpMatrix3* }
%struct.SvgParser = type { %struct._GQueue*, %struct._GimpImage*, i32, i32 }
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, i8**, i32, i32, double, double, double, double }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpContainer = type opaque
%struct._GimpXmlParser = type opaque
%struct.SvgPath = type { i8*, %struct._GList* }
%struct._GimpStroke = type { %struct._GimpObject, i32, %struct._GList*, i32 }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GString = type { i8*, i64, i64 }
%struct.ParsePathContext = type { %struct._GList*, %struct._GimpStroke*, double, double, double, double, i8, i32, i32, [7 x double] }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Vectors\00", align 1
@__func__.gimp_vectors_import_file = private unnamed_addr constant [25 x i8] c"gimp_vectors_import_file\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"parent == NULL || parent == GIMP_IMAGE_ACTIVE_PARENT || GIMP_IS_VECTORS (parent)\00", align 1
@.str.4 = private unnamed_addr constant [99 x i8] c"parent == NULL || parent == GIMP_IMAGE_ACTIVE_PARENT || gimp_item_is_attached (GIMP_ITEM (parent))\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"parent == NULL || parent == GIMP_IMAGE_ACTIVE_PARENT || gimp_item_get_image (GIMP_ITEM (parent)) == image\00", align 1
@.str.6 = private unnamed_addr constant [108 x i8] c"parent == NULL || parent == GIMP_IMAGE_ACTIVE_PARENT || gimp_viewable_get_children (GIMP_VIEWABLE (parent))\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"ret_vectors == NULL || *ret_vectors == NULL\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@__func__.gimp_vectors_import_buffer = private unnamed_addr constant [27 x i8] c"gimp_vectors_import_buffer\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"buffer != NULL || len == 0\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@markup_parser = internal constant %struct._GMarkupParser { void (%struct._GMarkupParseContext*, i8*, i8**, i8**, i8*, %struct._GError**)* @svg_parser_start_element, void (%struct._GMarkupParseContext*, i8*, i8*, %struct._GError**)* @svg_parser_end_element, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)* null, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)* null, void (%struct._GMarkupParseContext*, %struct._GError*, i8*)* null }, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"Import Paths\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Imported Path\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"No paths found in '%s'\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"No paths found in the buffer\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Failed to import paths from '%s': %s\00", align 1
@svg_handlers = internal constant [9 x %struct._SvgHandler] [%struct._SvgHandler { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), void (%struct._SvgHandler*, i8**, i8**, %struct.SvgParser*)* @svg_handler_svg_start, void (%struct._SvgHandler*, %struct.SvgParser*)* @svg_handler_svg_end, double 0.000000e+00, double 0.000000e+00, i8* null, %struct._GList* null, %struct._GimpMatrix3* null }, %struct._SvgHandler { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), void (%struct._SvgHandler*, i8**, i8**, %struct.SvgParser*)* @svg_handler_group_start, void (%struct._SvgHandler*, %struct.SvgParser*)* null, double 0.000000e+00, double 0.000000e+00, i8* null, %struct._GList* null, %struct._GimpMatrix3* null }, %struct._SvgHandler { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), void (%struct._SvgHandler*, i8**, i8**, %struct.SvgParser*)* @svg_handler_path_start, void (%struct._SvgHandler*, %struct.SvgParser*)* null, double 0.000000e+00, double 0.000000e+00, i8* null, %struct._GList* null, %struct._GimpMatrix3* null }, %struct._SvgHandler { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), void (%struct._SvgHandler*, i8**, i8**, %struct.SvgParser*)* @svg_handler_rect_start, void (%struct._SvgHandler*, %struct.SvgParser*)* null, double 0.000000e+00, double 0.000000e+00, i8* null, %struct._GList* null, %struct._GimpMatrix3* null }, %struct._SvgHandler { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), void (%struct._SvgHandler*, i8**, i8**, %struct.SvgParser*)* @svg_handler_ellipse_start, void (%struct._SvgHandler*, %struct.SvgParser*)* null, double 0.000000e+00, double 0.000000e+00, i8* null, %struct._GList* null, %struct._GimpMatrix3* null }, %struct._SvgHandler { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), void (%struct._SvgHandler*, i8**, i8**, %struct.SvgParser*)* @svg_handler_ellipse_start, void (%struct._SvgHandler*, %struct.SvgParser*)* null, double 0.000000e+00, double 0.000000e+00, i8* null, %struct._GList* null, %struct._GimpMatrix3* null }, %struct._SvgHandler { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), void (%struct._SvgHandler*, i8**, i8**, %struct.SvgParser*)* @svg_handler_line_start, void (%struct._SvgHandler*, %struct.SvgParser*)* null, double 0.000000e+00, double 0.000000e+00, i8* null, %struct._GList* null, %struct._GimpMatrix3* null }, %struct._SvgHandler { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), void (%struct._SvgHandler*, i8**, i8**, %struct.SvgParser*)* @svg_handler_poly_start, void (%struct._SvgHandler*, %struct.SvgParser*)* null, double 0.000000e+00, double 0.000000e+00, i8* null, %struct._GList* null, %struct._GimpMatrix3* null }, %struct._SvgHandler { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), void (%struct._SvgHandler*, i8**, i8**, %struct.SvgParser*)* @svg_handler_poly_start, void (%struct._SvgHandler*, %struct.SvgParser*)* null, double 0.000000e+00, double 0.000000e+00, i8* null, %struct._GList* null, %struct._GimpMatrix3* null }], align 16
@.str.16 = private unnamed_addr constant [4 x i8] c"svg\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"rect\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"circle\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"ellipse\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"polyline\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"polygon\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"viewBox\00", align 1
@g_ascii_table = external constant i16*, align 8
@.str.30 = private unnamed_addr constant [4 x i8] c", \09\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"SVG import: cannot parse viewBox attribute\0A\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"transform\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"translate\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"skewX\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"skewY\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"ry\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"cx\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"cy\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"y1\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"y2\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"points\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"M \00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"L \00", align 1
@__func__.svg_parser_end_element = private unnamed_addr constant [23 x i8] c"svg_parser_end_element\00", align 1
@.str.53 = private unnamed_addr constant [88 x i8] c"handler != NULL && (handler->name == NULL || strcmp (handler->name, element_name) == 0)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_import_file(%struct._GimpImage* %image, i8* %filename, i32 %merge, i32 %scale, %struct._GimpVectors* %parent, i32 %position, %struct._GList** %ret_vectors, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %filename.addr = alloca i8*, align 8
  %merge.addr = alloca i32, align 4
  %scale.addr = alloca i32, align 4
  %parent.addr = alloca %struct._GimpVectors*, align 8
  %position.addr = alloca i32, align 4
  %ret_vectors.addr = alloca %struct._GList**, align 8
  %error.addr = alloca %struct._GError**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %merge, i32* %merge.addr, align 4
  store i32 %scale, i32* %scale.addr, align 4
  store %struct._GimpVectors* %parent, %struct._GimpVectors** %parent.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  store %struct._GList** %ret_vectors, %struct._GList*** %ret_vectors.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_vectors_import_file, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_vectors_import_file, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %cmp18 = icmp eq %struct._GimpVectors* %14, null
  br i1 %cmp18, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.17
  %15 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %cmp19 = icmp eq %struct._GimpVectors* %15, inttoptr (i64 1 to %struct._GimpVectors*)
  br i1 %cmp19, label %if.then.44, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false
  %16 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %17 = bitcast %struct._GimpVectors* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_vectors_get_type() #7
  store i64 %call25, i64* %__t24, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %lor.lhs.false.20
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %lor.lhs.false.20
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.else.30
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type35, align 8
  %24 = load i64, i64* %__t24, align 8
  %cmp36 = icmp eq i64 %23, %24
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r27, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.33, %if.else.30
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %26 = load i64, i64* %__t24, align 8
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #8
  store i32 %call39, i32* %__r27, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.29
  %27 = load i32, i32* %__r27, align 4
  store i32 %27, i32* %tmp42
  %28 = load i32, i32* %tmp42
  %tobool43 = icmp ne i32 %28, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.41, %lor.lhs.false, %do.body.17
  br label %if.end.46

if.else.45:                                       ; preds = %if.end.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_vectors_import_file, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %cmp49 = icmp eq %struct._GimpVectors* %29, null
  br i1 %cmp49, label %if.then.57, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %do.body.48
  %30 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %cmp51 = icmp eq %struct._GimpVectors* %30, inttoptr (i64 1 to %struct._GimpVectors*)
  br i1 %cmp51, label %if.then.57, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %lor.lhs.false.50
  %31 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %32 = bitcast %struct._GimpVectors* %31 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_item_get_type() #7
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call53)
  %33 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpItem*
  %call55 = call i32 @gimp_item_is_attached(%struct._GimpItem* %33)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %lor.lhs.false.52, %lor.lhs.false.50, %do.body.48
  br label %if.end.59

if.else.58:                                       ; preds = %lor.lhs.false.52
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_vectors_import_file, i32 0, i32 0), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.59:                                        ; preds = %if.then.57
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  br label %do.body.61

do.body.61:                                       ; preds = %do.end.60
  %34 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %cmp62 = icmp eq %struct._GimpVectors* %34, null
  br i1 %cmp62, label %if.then.70, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %do.body.61
  %35 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %cmp64 = icmp eq %struct._GimpVectors* %35, inttoptr (i64 1 to %struct._GimpVectors*)
  br i1 %cmp64, label %if.then.70, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.63
  %36 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %37 = bitcast %struct._GimpVectors* %36 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_item_get_type() #7
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call66)
  %38 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpItem*
  %call68 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %38)
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp69 = icmp eq %struct._GimpImage* %call68, %39
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %lor.lhs.false.65, %lor.lhs.false.63, %do.body.61
  br label %if.end.72

if.else.71:                                       ; preds = %lor.lhs.false.65
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_vectors_import_file, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.then.70
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  br label %do.body.74

do.body.74:                                       ; preds = %do.end.73
  %40 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %cmp75 = icmp eq %struct._GimpVectors* %40, null
  br i1 %cmp75, label %if.then.83, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %do.body.74
  %41 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %cmp77 = icmp eq %struct._GimpVectors* %41, inttoptr (i64 1 to %struct._GimpVectors*)
  br i1 %cmp77, label %if.then.83, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %lor.lhs.false.76
  %42 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %43 = bitcast %struct._GimpVectors* %42 to %struct._GTypeInstance*
  %call79 = call i64 @gimp_viewable_get_type() #7
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call79)
  %44 = bitcast %struct._GTypeInstance* %call80 to %struct._GimpViewable*
  %call81 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %44)
  %tobool82 = icmp ne %struct._GimpContainer* %call81, null
  br i1 %tobool82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %lor.lhs.false.78, %lor.lhs.false.76, %do.body.74
  br label %if.end.85

if.else.84:                                       ; preds = %lor.lhs.false.78
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_vectors_import_file, i32 0, i32 0), i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.85:                                        ; preds = %if.then.83
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %do.body.87

do.body.87:                                       ; preds = %do.end.86
  %45 = load %struct._GList**, %struct._GList*** %ret_vectors.addr, align 8
  %cmp88 = icmp eq %struct._GList** %45, null
  br i1 %cmp88, label %if.then.91, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %do.body.87
  %46 = load %struct._GList**, %struct._GList*** %ret_vectors.addr, align 8
  %47 = load %struct._GList*, %struct._GList** %46, align 8
  %cmp90 = icmp eq %struct._GList* %47, null
  br i1 %cmp90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %lor.lhs.false.89, %do.body.87
  br label %if.end.93

if.else.92:                                       ; preds = %lor.lhs.false.89
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_vectors_import_file, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.93:                                        ; preds = %if.then.91
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  br label %do.body.95

do.body.95:                                       ; preds = %do.end.94
  %48 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp96 = icmp eq %struct._GError** %48, null
  br i1 %cmp96, label %if.then.99, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %do.body.95
  %49 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %50 = load %struct._GError*, %struct._GError** %49, align 8
  %cmp98 = icmp eq %struct._GError* %50, null
  br i1 %cmp98, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %lor.lhs.false.97, %do.body.95
  br label %if.end.101

if.else.100:                                      ; preds = %lor.lhs.false.97
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_vectors_import_file, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.101:                                       ; preds = %if.then.99
  br label %do.end.102

do.end.102:                                       ; preds = %if.end.101
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %52 = load i8*, i8** %filename.addr, align 8
  %53 = load i32, i32* %merge.addr, align 4
  %54 = load i32, i32* %scale.addr, align 4
  %55 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %56 = load i32, i32* %position.addr, align 4
  %57 = load %struct._GList**, %struct._GList*** %ret_vectors.addr, align 8
  %58 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call103 = call i32 @gimp_vectors_import(%struct._GimpImage* %51, i8* %52, i8* null, i64 0, i32 %53, i32 %54, %struct._GimpVectors* %55, i32 %56, %struct._GList** %57, %struct._GError** %58)
  store i32 %call103, i32* %retval
  br label %return

return:                                           ; preds = %do.end.102, %if.else.100, %if.else.92, %if.else.84, %if.else.71, %if.else.58, %if.else.45, %if.else.14, %if.else.9
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #1

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_vectors_import(%struct._GimpImage* %image, i8* %filename, i8* %str, i64 %len, i32 %merge, i32 %scale, %struct._GimpVectors* %parent, i32 %position, %struct._GList** %ret_vectors, %struct._GError** %error) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %filename.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %merge.addr = alloca i32, align 4
  %scale.addr = alloca i32, align 4
  %parent.addr = alloca %struct._GimpVectors*, align 8
  %position.addr = alloca i32, align 4
  %ret_vectors.addr = alloca %struct._GList**, align 8
  %error.addr = alloca %struct._GError**, align 8
  %xml_parser = alloca %struct._GimpXmlParser*, align 8
  %parser = alloca %struct.SvgParser, align 8
  %paths = alloca %struct._GList*, align 8
  %base = alloca %struct._SvgHandler*, align 8
  %success = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %path = alloca %struct.SvgPath*, align 8
  %list = alloca %struct._GList*, align 8
  %msg = alloca i8*, align 8
  %path94 = alloca %struct.SvgPath*, align 8
  %list96 = alloca %struct._GList*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %merge, i32* %merge.addr, align 4
  store i32 %scale, i32* %scale.addr, align 4
  store %struct._GimpVectors* %parent, %struct._GimpVectors** %parent.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  store %struct._GList** %ret_vectors, %struct._GList*** %ret_vectors.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  %call = call %struct._GQueue* @g_queue_new()
  %stack = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %parser, i32 0, i32 0
  store %struct._GQueue* %call, %struct._GQueue** %stack, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %image1 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %parser, i32 0, i32 1
  store %struct._GimpImage* %0, %struct._GimpImage** %image1, align 8
  %1 = load i32, i32* %scale.addr, align 4
  %scale2 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %parser, i32 0, i32 2
  store i32 %1, i32* %scale2, align 4
  %svg_depth = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %parser, i32 0, i32 3
  store i32 0, i32* %svg_depth, align 4
  %call3 = call noalias i8* @g_slice_alloc0(i64 64)
  %2 = bitcast i8* %call3 to %struct._SvgHandler*
  store %struct._SvgHandler* %2, %struct._SvgHandler** %base, align 8
  %3 = load %struct._SvgHandler*, %struct._SvgHandler** %base, align 8
  %name = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8** %name, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call4 = call i32 @gimp_image_get_width(%struct._GimpImage* %4)
  %conv = sitofp i32 %call4 to double
  %5 = load %struct._SvgHandler*, %struct._SvgHandler** %base, align 8
  %width = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %5, i32 0, i32 3
  store double %conv, double* %width, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call5 = call i32 @gimp_image_get_height(%struct._GimpImage* %6)
  %conv6 = sitofp i32 %call5 to double
  %7 = load %struct._SvgHandler*, %struct._SvgHandler** %base, align 8
  %height = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %7, i32 0, i32 4
  store double %conv6, double* %height, align 8
  %stack7 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %parser, i32 0, i32 0
  %8 = load %struct._GQueue*, %struct._GQueue** %stack7, align 8
  %9 = load %struct._SvgHandler*, %struct._SvgHandler** %base, align 8
  %10 = bitcast %struct._SvgHandler* %9 to i8*
  call void @g_queue_push_head(%struct._GQueue* %8, i8* %10)
  %11 = bitcast %struct.SvgParser* %parser to i8*
  %call8 = call %struct._GimpXmlParser* @gimp_xml_parser_new(%struct._GMarkupParser* @markup_parser, i8* %11)
  store %struct._GimpXmlParser* %call8, %struct._GimpXmlParser** %xml_parser, align 8
  %12 = load i8*, i8** %filename.addr, align 8
  %tobool = icmp ne i8* %12, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %xml_parser, align 8
  %14 = load i8*, i8** %filename.addr, align 8
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @gimp_xml_parser_parse_file(%struct._GimpXmlParser* %13, i8* %14, %struct._GError** %15)
  store i32 %call9, i32* %success, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %xml_parser, align 8
  %17 = load i8*, i8** %str.addr, align 8
  %18 = load i64, i64* %len.addr, align 8
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i32 @gimp_xml_parser_parse_buffer(%struct._GimpXmlParser* %16, i8* %17, i64 %18, %struct._GError** %19)
  store i32 %call10, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %xml_parser, align 8
  call void @gimp_xml_parser_free(%struct._GimpXmlParser* %20)
  %21 = load i32, i32* %success, align 4
  %tobool11 = icmp ne i32 %21, 0
  br i1 %tobool11, label %if.then.12, label %if.else.74

if.then.12:                                       ; preds = %if.end
  %22 = load %struct._SvgHandler*, %struct._SvgHandler** %base, align 8
  %paths13 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %22, i32 0, i32 6
  %23 = load %struct._GList*, %struct._GList** %paths13, align 8
  %tobool14 = icmp ne %struct._GList* %23, null
  br i1 %tobool14, label %if.then.15, label %if.else.63

if.then.15:                                       ; preds = %if.then.12
  store %struct._GimpVectors* null, %struct._GimpVectors** %vectors, align 8
  %24 = load %struct._SvgHandler*, %struct._SvgHandler** %base, align 8
  %paths16 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %24, i32 0, i32 6
  %25 = load %struct._GList*, %struct._GList** %paths16, align 8
  %call17 = call %struct._GList* @g_list_reverse(%struct._GList* %25)
  %26 = load %struct._SvgHandler*, %struct._SvgHandler** %base, align 8
  %paths18 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %26, i32 0, i32 6
  store %struct._GList* %call17, %struct._GList** %paths18, align 8
  %27 = load i32, i32* %merge.addr, align 4
  %tobool19 = icmp ne i32 %27, 0
  br i1 %tobool19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.15
  %28 = load %struct._SvgHandler*, %struct._SvgHandler** %base, align 8
  %paths20 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %28, i32 0, i32 6
  %29 = load %struct._GList*, %struct._GList** %paths20, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 1
  %30 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool21 = icmp ne %struct._GList* %30, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.15
  %31 = phi i1 [ false, %if.then.15 ], [ %tobool21, %land.rhs ]
  %land.ext = zext i1 %31 to i32
  store i32 %land.ext, i32* %merge.addr, align 4
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0)) #5
  %call23 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %32, i32 36, i8* %call22)
  %33 = load %struct._SvgHandler*, %struct._SvgHandler** %base, align 8
  %paths24 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %33, i32 0, i32 6
  %34 = load %struct._GList*, %struct._GList** %paths24, align 8
  store %struct._GList* %34, %struct._GList** %paths, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %land.end
  %35 = load %struct._GList*, %struct._GList** %paths, align 8
  %tobool25 = icmp ne %struct._GList* %35, null
  br i1 %tobool25, label %for.body, label %for.end.58

for.body:                                         ; preds = %for.cond
  %36 = load %struct._GList*, %struct._GList** %paths, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 0
  %37 = load i8*, i8** %data, align 8
  %38 = bitcast i8* %37 to %struct.SvgPath*
  store %struct.SvgPath* %38, %struct.SvgPath** %path, align 8
  %39 = load i32, i32* %merge.addr, align 4
  %tobool26 = icmp ne i32 %39, 0
  br i1 %tobool26, label %lor.lhs.false, label %if.then.28

lor.lhs.false:                                    ; preds = %for.body
  %40 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool27 = icmp ne %struct._GimpVectors* %40, null
  br i1 %tobool27, label %if.end.43, label %if.then.28

if.then.28:                                       ; preds = %lor.lhs.false, %for.body
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %42 = load i32, i32* %merge.addr, align 4
  %tobool29 = icmp ne i32 %42, 0
  br i1 %tobool29, label %cond.true, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %if.then.28
  %43 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %id = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %43, i32 0, i32 0
  %44 = load i8*, i8** %id, align 8
  %tobool31 = icmp ne i8* %44, null
  br i1 %tobool31, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false.30, %if.then.28
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0)) #5
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.30
  %45 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %id33 = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %45, i32 0, i32 0
  %46 = load i8*, i8** %id33, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call32, %cond.true ], [ %46, %cond.false ]
  %call34 = call %struct._GimpVectors* @gimp_vectors_new(%struct._GimpImage* %41, i8* %cond)
  store %struct._GimpVectors* %call34, %struct._GimpVectors** %vectors, align 8
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %48 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %49 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %50 = load i32, i32* %position.addr, align 4
  %call35 = call i32 @gimp_image_add_vectors(%struct._GimpImage* %47, %struct._GimpVectors* %48, %struct._GimpVectors* %49, i32 %50, i32 1)
  %51 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %51)
  %52 = load %struct._GList**, %struct._GList*** %ret_vectors.addr, align 8
  %tobool36 = icmp ne %struct._GList** %52, null
  br i1 %tobool36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %cond.end
  %53 = load %struct._GList**, %struct._GList*** %ret_vectors.addr, align 8
  %54 = load %struct._GList*, %struct._GList** %53, align 8
  %55 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %56 = bitcast %struct._GimpVectors* %55 to i8*
  %call38 = call %struct._GList* @g_list_prepend(%struct._GList* %54, i8* %56)
  %57 = load %struct._GList**, %struct._GList*** %ret_vectors.addr, align 8
  store %struct._GList* %call38, %struct._GList** %57, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %cond.end
  %58 = load i32, i32* %position.addr, align 4
  %cmp = icmp ne i32 %58, -1
  br i1 %cmp, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.39
  %59 = load i32, i32* %position.addr, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %position.addr, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.39
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %lor.lhs.false
  %60 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %strokes = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %60, i32 0, i32 1
  %61 = load %struct._GList*, %struct._GList** %strokes, align 8
  store %struct._GList* %61, %struct._GList** %list, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc, %if.end.43
  %62 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool45 = icmp ne %struct._GList* %62, null
  br i1 %tobool45, label %for.body.46, label %for.end

for.body.46:                                      ; preds = %for.cond.44
  %63 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %64 = load %struct._GList*, %struct._GList** %list, align 8
  %data47 = getelementptr inbounds %struct._GList, %struct._GList* %64, i32 0, i32 0
  %65 = load i8*, i8** %data47, align 8
  %66 = bitcast i8* %65 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_stroke_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call48)
  %67 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpStroke*
  call void @gimp_vectors_stroke_add(%struct._GimpVectors* %63, %struct._GimpStroke* %67)
  br label %for.inc

for.inc:                                          ; preds = %for.body.46
  %68 = load %struct._GList*, %struct._GList** %list, align 8
  %next50 = getelementptr inbounds %struct._GList, %struct._GList* %68, i32 0, i32 1
  %69 = load %struct._GList*, %struct._GList** %next50, align 8
  store %struct._GList* %69, %struct._GList** %list, align 8
  br label %for.cond.44

for.end:                                          ; preds = %for.cond.44
  %70 = load i32, i32* %merge.addr, align 4
  %tobool51 = icmp ne i32 %70, 0
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %for.end
  %71 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %71)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %for.end
  %72 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %strokes54 = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %72, i32 0, i32 1
  %73 = load %struct._GList*, %struct._GList** %strokes54, align 8
  call void @g_list_free_full(%struct._GList* %73, void (i8*)* @g_object_unref)
  %74 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %strokes55 = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %74, i32 0, i32 1
  store %struct._GList* null, %struct._GList** %strokes55, align 8
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.53
  %75 = load %struct._GList*, %struct._GList** %paths, align 8
  %next57 = getelementptr inbounds %struct._GList, %struct._GList* %75, i32 0, i32 1
  %76 = load %struct._GList*, %struct._GList** %next57, align 8
  store %struct._GList* %76, %struct._GList** %paths, align 8
  br label %for.cond

for.end.58:                                       ; preds = %for.cond
  %77 = load i32, i32* %merge.addr, align 4
  %tobool59 = icmp ne i32 %77, 0
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %for.end.58
  %78 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %78)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %for.end.58
  %79 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call62 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %79)
  br label %if.end.73

if.else.63:                                       ; preds = %if.then.12
  %80 = load i8*, i8** %filename.addr, align 8
  %tobool64 = icmp ne i8* %80, null
  br i1 %tobool64, label %if.then.65, label %if.else.69

if.then.65:                                       ; preds = %if.else.63
  %81 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call66 = call i32 @gimp_error_quark() #7
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0)) #5
  %82 = load i8*, i8** %filename.addr, align 8
  %call68 = call i8* @gimp_filename_to_utf8(i8* %82)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %81, i32 %call66, i32 0, i8* %call67, i8* %call68)
  br label %if.end.72

if.else.69:                                       ; preds = %if.else.63
  %83 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call70 = call i32 @gimp_error_quark() #7
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %83, i32 %call70, i32 0, i8* %call71)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.65
  store i32 0, i32* %success, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.61
  br label %if.end.85

if.else.74:                                       ; preds = %if.end
  %84 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool75 = icmp ne %struct._GError** %84, null
  br i1 %tobool75, label %land.lhs.true, label %if.end.84

land.lhs.true:                                    ; preds = %if.else.74
  %85 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %86 = load %struct._GError*, %struct._GError** %85, align 8
  %tobool76 = icmp ne %struct._GError* %86, null
  br i1 %tobool76, label %land.lhs.true.77, label %if.end.84

land.lhs.true.77:                                 ; preds = %land.lhs.true
  %87 = load i8*, i8** %filename.addr, align 8
  %tobool78 = icmp ne i8* %87, null
  br i1 %tobool78, label %if.then.79, label %if.end.84

if.then.79:                                       ; preds = %land.lhs.true.77
  %88 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %89 = load %struct._GError*, %struct._GError** %88, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %89, i32 0, i32 2
  %90 = load i8*, i8** %message, align 8
  store i8* %90, i8** %msg, align 8
  %call80 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0)) #5
  %91 = load i8*, i8** %filename.addr, align 8
  %call81 = call i8* @gimp_filename_to_utf8(i8* %91)
  %92 = load i8*, i8** %msg, align 8
  %call82 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call80, i8* %call81, i8* %92)
  %93 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %94 = load %struct._GError*, %struct._GError** %93, align 8
  %message83 = getelementptr inbounds %struct._GError, %struct._GError* %94, i32 0, i32 2
  store i8* %call82, i8** %message83, align 8
  %95 = load i8*, i8** %msg, align 8
  call void @g_free(i8* %95)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.79, %land.lhs.true.77, %land.lhs.true, %if.else.74
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.73
  br label %while.cond

while.cond:                                       ; preds = %do.end.114, %if.end.85
  %stack86 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %parser, i32 0, i32 0
  %96 = load %struct._GQueue*, %struct._GQueue** %stack86, align 8
  %call87 = call i8* @g_queue_pop_head(%struct._GQueue* %96)
  %97 = bitcast i8* %call87 to %struct._SvgHandler*
  store %struct._SvgHandler* %97, %struct._SvgHandler** %base, align 8
  %cmp88 = icmp ne %struct._SvgHandler* %97, null
  br i1 %cmp88, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %98 = load %struct._SvgHandler*, %struct._SvgHandler** %base, align 8
  %paths90 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %98, i32 0, i32 6
  %99 = load %struct._GList*, %struct._GList** %paths90, align 8
  store %struct._GList* %99, %struct._GList** %paths, align 8
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.107, %while.body
  %100 = load %struct._GList*, %struct._GList** %paths, align 8
  %tobool92 = icmp ne %struct._GList* %100, null
  br i1 %tobool92, label %for.body.93, label %for.end.109

for.body.93:                                      ; preds = %for.cond.91
  %101 = load %struct._GList*, %struct._GList** %paths, align 8
  %data95 = getelementptr inbounds %struct._GList, %struct._GList* %101, i32 0, i32 0
  %102 = load i8*, i8** %data95, align 8
  %103 = bitcast i8* %102 to %struct.SvgPath*
  store %struct.SvgPath* %103, %struct.SvgPath** %path94, align 8
  %104 = load %struct.SvgPath*, %struct.SvgPath** %path94, align 8
  %id97 = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %104, i32 0, i32 0
  %105 = load i8*, i8** %id97, align 8
  call void @g_free(i8* %105)
  %106 = load %struct.SvgPath*, %struct.SvgPath** %path94, align 8
  %strokes98 = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %106, i32 0, i32 1
  %107 = load %struct._GList*, %struct._GList** %strokes98, align 8
  store %struct._GList* %107, %struct._GList** %list96, align 8
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.103, %for.body.93
  %108 = load %struct._GList*, %struct._GList** %list96, align 8
  %tobool100 = icmp ne %struct._GList* %108, null
  br i1 %tobool100, label %for.body.101, label %for.end.105

for.body.101:                                     ; preds = %for.cond.99
  %109 = load %struct._GList*, %struct._GList** %list96, align 8
  %data102 = getelementptr inbounds %struct._GList, %struct._GList* %109, i32 0, i32 0
  %110 = load i8*, i8** %data102, align 8
  call void @g_object_unref(i8* %110)
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.body.101
  %111 = load %struct._GList*, %struct._GList** %list96, align 8
  %next104 = getelementptr inbounds %struct._GList, %struct._GList* %111, i32 0, i32 1
  %112 = load %struct._GList*, %struct._GList** %next104, align 8
  store %struct._GList* %112, %struct._GList** %list96, align 8
  br label %for.cond.99

for.end.105:                                      ; preds = %for.cond.99
  %113 = load %struct.SvgPath*, %struct.SvgPath** %path94, align 8
  %strokes106 = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %113, i32 0, i32 1
  %114 = load %struct._GList*, %struct._GList** %strokes106, align 8
  call void @g_list_free(%struct._GList* %114)
  br label %do.body

do.body:                                          ; preds = %for.end.105
  %115 = load %struct.SvgPath*, %struct.SvgPath** %path94, align 8
  %116 = bitcast %struct.SvgPath* %115 to i8*
  call void @g_slice_free1(i64 16, i8* %116)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc.107

for.inc.107:                                      ; preds = %do.end
  %117 = load %struct._GList*, %struct._GList** %paths, align 8
  %next108 = getelementptr inbounds %struct._GList, %struct._GList* %117, i32 0, i32 1
  %118 = load %struct._GList*, %struct._GList** %next108, align 8
  store %struct._GList* %118, %struct._GList** %paths, align 8
  br label %for.cond.91

for.end.109:                                      ; preds = %for.cond.91
  %119 = load %struct._SvgHandler*, %struct._SvgHandler** %base, align 8
  %paths110 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %119, i32 0, i32 6
  %120 = load %struct._GList*, %struct._GList** %paths110, align 8
  call void @g_list_free(%struct._GList* %120)
  br label %do.body.111

do.body.111:                                      ; preds = %for.end.109
  %121 = load %struct._SvgHandler*, %struct._SvgHandler** %base, align 8
  %transform = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %121, i32 0, i32 7
  %122 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform, align 8
  %123 = bitcast %struct._GimpMatrix3* %122 to i8*
  call void @g_slice_free1(i64 72, i8* %123)
  br label %do.end.112

do.end.112:                                       ; preds = %do.body.111
  br label %do.body.113

do.body.113:                                      ; preds = %do.end.112
  %124 = load %struct._SvgHandler*, %struct._SvgHandler** %base, align 8
  %125 = bitcast %struct._SvgHandler* %124 to i8*
  call void @g_slice_free1(i64 64, i8* %125)
  br label %do.end.114

do.end.114:                                       ; preds = %do.body.113
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %stack115 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %parser, i32 0, i32 0
  %126 = load %struct._GQueue*, %struct._GQueue** %stack115, align 8
  call void @g_queue_free(%struct._GQueue* %126)
  %127 = load i32, i32* %success, align 4
  ret i32 %127
}

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_import_buffer(%struct._GimpImage* %image, i8* %buffer, i64 %len, i32 %merge, i32 %scale, %struct._GimpVectors* %parent, i32 %position, %struct._GList** %ret_vectors, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %merge.addr = alloca i32, align 4
  %scale.addr = alloca i32, align 4
  %parent.addr = alloca %struct._GimpVectors*, align 8
  %position.addr = alloca i32, align 4
  %ret_vectors.addr = alloca %struct._GList**, align 8
  %error.addr = alloca %struct._GError**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst24 = alloca %struct._GTypeInstance*, align 8
  %__t26 = alloca i64, align 8
  %__r29 = alloca i32, align 4
  %tmp44 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %merge, i32* %merge.addr, align 4
  store i32 %scale, i32* %scale.addr, align 4
  store %struct._GimpVectors* %parent, %struct._GimpVectors** %parent.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  store %struct._GList** %ret_vectors, %struct._GList*** %ret_vectors.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_vectors_import_buffer, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %buffer.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load i64, i64* %len.addr, align 8
  %cmp13 = icmp eq i64 %14, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_vectors_import_buffer, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %15 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %cmp19 = icmp eq %struct._GimpVectors* %15, null
  br i1 %cmp19, label %if.then.46, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %do.body.18
  %16 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %cmp21 = icmp eq %struct._GimpVectors* %16, inttoptr (i64 1 to %struct._GimpVectors*)
  br i1 %cmp21, label %if.then.46, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.20
  %17 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %18 = bitcast %struct._GimpVectors* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst24, align 8
  %call27 = call i64 @gimp_vectors_get_type() #7
  store i64 %call27, i64* %__t26, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst24, align 8
  %tobool30 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool30, label %if.else.32, label %if.then.31

if.then.31:                                       ; preds = %lor.lhs.false.22
  store i32 0, i32* %__r29, align 4
  br label %if.end.43

if.else.32:                                       ; preds = %lor.lhs.false.22
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst24, align 8
  %g_class33 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class33, align 8
  %tobool34 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool34, label %land.lhs.true.35, label %if.else.40

land.lhs.true.35:                                 ; preds = %if.else.32
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst24, align 8
  %g_class36 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class36, align 8
  %g_type37 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type37, align 8
  %25 = load i64, i64* %__t26, align 8
  %cmp38 = icmp eq i64 %24, %25
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %land.lhs.true.35
  store i32 1, i32* %__r29, align 4
  br label %if.end.42

if.else.40:                                       ; preds = %land.lhs.true.35, %if.else.32
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst24, align 8
  %27 = load i64, i64* %__t26, align 8
  %call41 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #8
  store i32 %call41, i32* %__r29, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.40, %if.then.39
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.31
  %28 = load i32, i32* %__r29, align 4
  store i32 %28, i32* %tmp44
  %29 = load i32, i32* %tmp44
  %tobool45 = icmp ne i32 %29, 0
  br i1 %tobool45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.end.43, %lor.lhs.false.20, %do.body.18
  br label %if.end.48

if.else.47:                                       ; preds = %if.end.43
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_vectors_import_buffer, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.then.46
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  br label %do.body.50

do.body.50:                                       ; preds = %do.end.49
  %30 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %cmp51 = icmp eq %struct._GimpVectors* %30, null
  br i1 %cmp51, label %if.then.59, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %do.body.50
  %31 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %cmp53 = icmp eq %struct._GimpVectors* %31, inttoptr (i64 1 to %struct._GimpVectors*)
  br i1 %cmp53, label %if.then.59, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.52
  %32 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %33 = bitcast %struct._GimpVectors* %32 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_item_get_type() #7
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call55)
  %34 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpItem*
  %call57 = call i32 @gimp_item_is_attached(%struct._GimpItem* %34)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %lor.lhs.false.54, %lor.lhs.false.52, %do.body.50
  br label %if.end.61

if.else.60:                                       ; preds = %lor.lhs.false.54
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_vectors_import_buffer, i32 0, i32 0), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.then.59
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %do.body.63

do.body.63:                                       ; preds = %do.end.62
  %35 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %cmp64 = icmp eq %struct._GimpVectors* %35, null
  br i1 %cmp64, label %if.then.72, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %do.body.63
  %36 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %cmp66 = icmp eq %struct._GimpVectors* %36, inttoptr (i64 1 to %struct._GimpVectors*)
  br i1 %cmp66, label %if.then.72, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %lor.lhs.false.65
  %37 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %38 = bitcast %struct._GimpVectors* %37 to %struct._GTypeInstance*
  %call68 = call i64 @gimp_item_get_type() #7
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call68)
  %39 = bitcast %struct._GTypeInstance* %call69 to %struct._GimpItem*
  %call70 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %39)
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp71 = icmp eq %struct._GimpImage* %call70, %40
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %lor.lhs.false.67, %lor.lhs.false.65, %do.body.63
  br label %if.end.74

if.else.73:                                       ; preds = %lor.lhs.false.67
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_vectors_import_buffer, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %41 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %cmp77 = icmp eq %struct._GimpVectors* %41, null
  br i1 %cmp77, label %if.then.85, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %do.body.76
  %42 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %cmp79 = icmp eq %struct._GimpVectors* %42, inttoptr (i64 1 to %struct._GimpVectors*)
  br i1 %cmp79, label %if.then.85, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %lor.lhs.false.78
  %43 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %44 = bitcast %struct._GimpVectors* %43 to %struct._GTypeInstance*
  %call81 = call i64 @gimp_viewable_get_type() #7
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call81)
  %45 = bitcast %struct._GTypeInstance* %call82 to %struct._GimpViewable*
  %call83 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %45)
  %tobool84 = icmp ne %struct._GimpContainer* %call83, null
  br i1 %tobool84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %lor.lhs.false.80, %lor.lhs.false.78, %do.body.76
  br label %if.end.87

if.else.86:                                       ; preds = %lor.lhs.false.80
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_vectors_import_buffer, i32 0, i32 0), i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.87:                                        ; preds = %if.then.85
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  br label %do.body.89

do.body.89:                                       ; preds = %do.end.88
  %46 = load %struct._GList**, %struct._GList*** %ret_vectors.addr, align 8
  %cmp90 = icmp eq %struct._GList** %46, null
  br i1 %cmp90, label %if.then.93, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %do.body.89
  %47 = load %struct._GList**, %struct._GList*** %ret_vectors.addr, align 8
  %48 = load %struct._GList*, %struct._GList** %47, align 8
  %cmp92 = icmp eq %struct._GList* %48, null
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %lor.lhs.false.91, %do.body.89
  br label %if.end.95

if.else.94:                                       ; preds = %lor.lhs.false.91
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_vectors_import_buffer, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.95:                                        ; preds = %if.then.93
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  br label %do.body.97

do.body.97:                                       ; preds = %do.end.96
  %49 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp98 = icmp eq %struct._GError** %49, null
  br i1 %cmp98, label %if.then.101, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %do.body.97
  %50 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %51 = load %struct._GError*, %struct._GError** %50, align 8
  %cmp100 = icmp eq %struct._GError* %51, null
  br i1 %cmp100, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %lor.lhs.false.99, %do.body.97
  br label %if.end.103

if.else.102:                                      ; preds = %lor.lhs.false.99
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_vectors_import_buffer, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.103:                                       ; preds = %if.then.101
  br label %do.end.104

do.end.104:                                       ; preds = %if.end.103
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %53 = load i8*, i8** %buffer.addr, align 8
  %54 = load i64, i64* %len.addr, align 8
  %55 = load i32, i32* %merge.addr, align 4
  %56 = load i32, i32* %scale.addr, align 4
  %57 = load %struct._GimpVectors*, %struct._GimpVectors** %parent.addr, align 8
  %58 = load i32, i32* %position.addr, align 4
  %59 = load %struct._GList**, %struct._GList*** %ret_vectors.addr, align 8
  %60 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call105 = call i32 @gimp_vectors_import(%struct._GimpImage* %52, i8* null, i8* %53, i64 %54, i32 %55, i32 %56, %struct._GimpVectors* %57, i32 %58, %struct._GList** %59, %struct._GError** %60)
  store i32 %call105, i32* %retval
  br label %return

return:                                           ; preds = %do.end.104, %if.else.102, %if.else.94, %if.else.86, %if.else.73, %if.else.60, %if.else.47, %if.else.15, %if.else.9
  %61 = load i32, i32* %retval
  ret i32 %61
}

declare %struct._GQueue* @g_queue_new() #3

declare noalias i8* @g_slice_alloc0(i64) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare void @g_queue_push_head(%struct._GQueue*, i8*) #3

declare %struct._GimpXmlParser* @gimp_xml_parser_new(%struct._GMarkupParser*, i8*) #3

declare i32 @gimp_xml_parser_parse_file(%struct._GimpXmlParser*, i8*, %struct._GError**) #3

declare i32 @gimp_xml_parser_parse_buffer(%struct._GimpXmlParser*, i8*, i64, %struct._GError**) #3

declare void @gimp_xml_parser_free(%struct._GimpXmlParser*) #3

declare %struct._GList* @g_list_reverse(%struct._GList*) #3

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare %struct._GimpVectors* @gimp_vectors_new(%struct._GimpImage*, i8*) #3

declare i32 @gimp_image_add_vectors(%struct._GimpImage*, %struct._GimpVectors*, %struct._GimpVectors*, i32, i32) #3

declare void @gimp_vectors_freeze(%struct._GimpVectors*) #3

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #3

declare void @gimp_vectors_stroke_add(%struct._GimpVectors*, %struct._GimpStroke*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_stroke_get_type() #1

declare void @gimp_vectors_thaw(%struct._GimpVectors*) #3

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #3

declare void @g_object_unref(i8*) #3

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #3

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #1

declare i8* @gimp_filename_to_utf8(i8*) #3

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare void @g_free(i8*) #3

declare i8* @g_queue_pop_head(%struct._GQueue*) #3

declare void @g_list_free(%struct._GList*) #3

declare void @g_slice_free1(i64, i8*) #3

declare void @g_queue_free(%struct._GQueue*) #3

; Function Attrs: nounwind uwtable
define internal void @svg_parser_start_element(%struct._GMarkupParseContext* %context, i8* %element_name, i8** %attribute_names, i8** %attribute_values, i8* %user_data, %struct._GError** %error) #0 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %element_name.addr = alloca i8*, align 8
  %attribute_names.addr = alloca i8**, align 8
  %attribute_values.addr = alloca i8**, align 8
  %user_data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %parser = alloca %struct.SvgParser*, align 8
  %handler = alloca %struct._SvgHandler*, align 8
  %base = alloca %struct._SvgHandler*, align 8
  %i = alloca i32, align 4
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i8* %element_name, i8** %element_name.addr, align 8
  store i8** %attribute_names, i8*** %attribute_names.addr, align 8
  store i8** %attribute_values, i8*** %attribute_values.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.SvgParser*
  store %struct.SvgParser* %1, %struct.SvgParser** %parser, align 8
  store i32 0, i32* %i, align 4
  %call = call noalias i8* @g_slice_alloc0(i64 64)
  %2 = bitcast i8* %call to %struct._SvgHandler*
  store %struct._SvgHandler* %2, %struct._SvgHandler** %handler, align 8
  %3 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %stack = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %3, i32 0, i32 0
  %4 = load %struct._GQueue*, %struct._GQueue** %stack, align 8
  %call1 = call i8* @g_queue_peek_head(%struct._GQueue* %4)
  %5 = bitcast i8* %call1 to %struct._SvgHandler*
  store %struct._SvgHandler* %5, %struct._SvgHandler** %base, align 8
  %6 = load %struct._SvgHandler*, %struct._SvgHandler** %base, align 8
  %width = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %6, i32 0, i32 3
  %7 = load double, double* %width, align 8
  %cmp = fcmp ole double %7, 0.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct._SvgHandler*, %struct._SvgHandler** %base, align 8
  %height = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %8, i32 0, i32 4
  %9 = load double, double* %height, align 8
  %cmp2 = fcmp ole double %9, 0.000000e+00
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 9, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4
  %conv = sext i32 %10 to i64
  %cmp3 = icmp ult i64 %conv, 9
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [9 x %struct._SvgHandler], [9 x %struct._SvgHandler]* @svg_handlers, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %arrayidx, i32 0, i32 0
  %12 = load i8*, i8** %name, align 8
  %13 = load i8*, i8** %element_name.addr, align 8
  %call5 = call i32 @strcmp(i8* %12, i8* %13) #8
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds [9 x %struct._SvgHandler], [9 x %struct._SvgHandler]* @svg_handlers, i32 0, i64 %idxprom9
  %name11 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %arrayidx10, i32 0, i32 0
  %15 = load i8*, i8** %name11, align 8
  %16 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %name12 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %16, i32 0, i32 0
  store i8* %15, i8** %name12, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds [9 x %struct._SvgHandler], [9 x %struct._SvgHandler]* @svg_handlers, i32 0, i64 %idxprom13
  %start = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %arrayidx14, i32 0, i32 1
  %18 = load void (%struct._SvgHandler*, i8**, i8**, %struct.SvgParser*)*, void (%struct._SvgHandler*, i8**, i8**, %struct.SvgParser*)** %start, align 8
  %19 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %start15 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %19, i32 0, i32 1
  store void (%struct._SvgHandler*, i8**, i8**, %struct.SvgParser*)* %18, void (%struct._SvgHandler*, i8**, i8**, %struct.SvgParser*)** %start15, align 8
  br label %for.end

if.end.16:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  %21 = load %struct._SvgHandler*, %struct._SvgHandler** %base, align 8
  %width17 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %21, i32 0, i32 3
  %22 = load double, double* %width17, align 8
  %23 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %width18 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %23, i32 0, i32 3
  store double %22, double* %width18, align 8
  %24 = load %struct._SvgHandler*, %struct._SvgHandler** %base, align 8
  %height19 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %24, i32 0, i32 4
  %25 = load double, double* %height19, align 8
  %26 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %height20 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %26, i32 0, i32 4
  store double %25, double* %height20, align 8
  %27 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %stack21 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %27, i32 0, i32 0
  %28 = load %struct._GQueue*, %struct._GQueue** %stack21, align 8
  %29 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %30 = bitcast %struct._SvgHandler* %29 to i8*
  call void @g_queue_push_head(%struct._GQueue* %28, i8* %30)
  %31 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %start22 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %31, i32 0, i32 1
  %32 = load void (%struct._SvgHandler*, i8**, i8**, %struct.SvgParser*)*, void (%struct._SvgHandler*, i8**, i8**, %struct.SvgParser*)** %start22, align 8
  %tobool = icmp ne void (%struct._SvgHandler*, i8**, i8**, %struct.SvgParser*)* %32, null
  br i1 %tobool, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %for.end
  %33 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %start24 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %33, i32 0, i32 1
  %34 = load void (%struct._SvgHandler*, i8**, i8**, %struct.SvgParser*)*, void (%struct._SvgHandler*, i8**, i8**, %struct.SvgParser*)** %start24, align 8
  %35 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %36 = load i8**, i8*** %attribute_names.addr, align 8
  %37 = load i8**, i8*** %attribute_values.addr, align 8
  %38 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  call void %34(%struct._SvgHandler* %35, i8** %36, i8** %37, %struct.SvgParser* %38)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @svg_parser_end_element(%struct._GMarkupParseContext* %context, i8* %element_name, i8* %user_data, %struct._GError** %error) #0 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %element_name.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %parser = alloca %struct.SvgParser*, align 8
  %handler = alloca %struct._SvgHandler*, align 8
  %base = alloca %struct._SvgHandler*, align 8
  %paths = alloca %struct._GList*, align 8
  %path = alloca %struct.SvgPath*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i8* %element_name, i8** %element_name.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.SvgParser*
  store %struct.SvgParser* %1, %struct.SvgParser** %parser, align 8
  %2 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %stack = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %2, i32 0, i32 0
  %3 = load %struct._GQueue*, %struct._GQueue** %stack, align 8
  %call = call i8* @g_queue_pop_head(%struct._GQueue* %3)
  %4 = bitcast i8* %call to %struct._SvgHandler*
  store %struct._SvgHandler* %4, %struct._SvgHandler** %handler, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %cmp = icmp ne %struct._SvgHandler* %5, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %6 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %name = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %6, i32 0, i32 0
  %7 = load i8*, i8** %name, align 8
  %cmp1 = icmp eq i8* %7, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %name2 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %8, i32 0, i32 0
  %9 = load i8*, i8** %name2, align 8
  %10 = load i8*, i8** %element_name.addr, align 8
  %call3 = call i32 @strcmp(i8* %9, i8* %10) #8
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.svg_parser_end_element, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.53, i32 0, i32 0))
  br label %do.end.37

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %11 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %end = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %11, i32 0, i32 2
  %12 = load void (%struct._SvgHandler*, %struct.SvgParser*)*, void (%struct._SvgHandler*, %struct.SvgParser*)** %end, align 8
  %tobool = icmp ne void (%struct._SvgHandler*, %struct.SvgParser*)* %12, null
  br i1 %tobool, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %do.end
  %13 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %end6 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %13, i32 0, i32 2
  %14 = load void (%struct._SvgHandler*, %struct.SvgParser*)*, void (%struct._SvgHandler*, %struct.SvgParser*)** %end6, align 8
  %15 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %16 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  call void %14(%struct._SvgHandler* %15, %struct.SvgParser* %16)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %do.end
  %17 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %paths8 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %17, i32 0, i32 6
  %18 = load %struct._GList*, %struct._GList** %paths8, align 8
  %tobool9 = icmp ne %struct._GList* %18, null
  br i1 %tobool9, label %if.then.10, label %if.end.35

if.then.10:                                       ; preds = %if.end.7
  %19 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %transform = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %19, i32 0, i32 7
  %20 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform, align 8
  %tobool11 = icmp ne %struct._GimpMatrix3* %20, null
  br i1 %tobool11, label %if.then.12, label %if.end.28

if.then.12:                                       ; preds = %if.then.10
  %21 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %paths13 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %21, i32 0, i32 6
  %22 = load %struct._GList*, %struct._GList** %paths13, align 8
  store %struct._GList* %22, %struct._GList** %paths, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %if.then.12
  %23 = load %struct._GList*, %struct._GList** %paths, align 8
  %tobool14 = icmp ne %struct._GList* %23, null
  br i1 %tobool14, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %24 = load %struct._GList*, %struct._GList** %paths, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 0
  %25 = load i8*, i8** %data, align 8
  %26 = bitcast i8* %25 to %struct.SvgPath*
  store %struct.SvgPath* %26, %struct.SvgPath** %path, align 8
  %27 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %strokes = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %27, i32 0, i32 1
  %28 = load %struct._GList*, %struct._GList** %strokes, align 8
  store %struct._GList* %28, %struct._GList** %list, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %for.body
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool16 = icmp ne %struct._GList* %29, null
  br i1 %tobool16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %data18 = getelementptr inbounds %struct._GList, %struct._GList* %30, i32 0, i32 0
  %31 = load i8*, i8** %data18, align 8
  %32 = bitcast i8* %31 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_stroke_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call19)
  %33 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpStroke*
  %34 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %transform21 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %34, i32 0, i32 7
  %35 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform21, align 8
  call void @gimp_stroke_transform(%struct._GimpStroke* %33, %struct._GimpMatrix3* %35)
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 1
  %37 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %37, %struct._GList** %list, align 8
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %38 = load %struct._GList*, %struct._GList** %paths, align 8
  %next23 = getelementptr inbounds %struct._GList, %struct._GList* %38, i32 0, i32 1
  %39 = load %struct._GList*, %struct._GList** %next23, align 8
  store %struct._GList* %39, %struct._GList** %paths, align 8
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  br label %do.body.25

do.body.25:                                       ; preds = %for.end.24
  %40 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %transform26 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %40, i32 0, i32 7
  %41 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform26, align 8
  %42 = bitcast %struct._GimpMatrix3* %41 to i8*
  call void @g_slice_free1(i64 72, i8* %42)
  br label %do.end.27

do.end.27:                                        ; preds = %do.body.25
  br label %if.end.28

if.end.28:                                        ; preds = %do.end.27, %if.then.10
  %43 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %stack29 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %43, i32 0, i32 0
  %44 = load %struct._GQueue*, %struct._GQueue** %stack29, align 8
  %call30 = call i8* @g_queue_peek_head(%struct._GQueue* %44)
  %45 = bitcast i8* %call30 to %struct._SvgHandler*
  store %struct._SvgHandler* %45, %struct._SvgHandler** %base, align 8
  %46 = load %struct._SvgHandler*, %struct._SvgHandler** %base, align 8
  %paths31 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %46, i32 0, i32 6
  %47 = load %struct._GList*, %struct._GList** %paths31, align 8
  %48 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %paths32 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %48, i32 0, i32 6
  %49 = load %struct._GList*, %struct._GList** %paths32, align 8
  %call33 = call %struct._GList* @g_list_concat(%struct._GList* %47, %struct._GList* %49)
  %50 = load %struct._SvgHandler*, %struct._SvgHandler** %base, align 8
  %paths34 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %50, i32 0, i32 6
  store %struct._GList* %call33, %struct._GList** %paths34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.28, %if.end.7
  br label %do.body.36

do.body.36:                                       ; preds = %if.end.35
  %51 = load %struct._SvgHandler*, %struct._SvgHandler** %handler, align 8
  %52 = bitcast %struct._SvgHandler* %51 to i8*
  call void @g_slice_free1(i64 64, i8* %52)
  br label %do.end.37

do.end.37:                                        ; preds = %if.else, %do.body.36
  ret void
}

declare i8* @g_queue_peek_head(%struct._GQueue*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @svg_handler_svg_start(%struct._SvgHandler* %handler, i8** %names, i8** %values, %struct.SvgParser* %parser) #0 {
entry:
  %handler.addr = alloca %struct._SvgHandler*, align 8
  %names.addr = alloca i8**, align 8
  %values.addr = alloca i8**, align 8
  %parser.addr = alloca %struct.SvgParser*, align 8
  %matrix = alloca %struct._GimpMatrix3*, align 8
  %box = alloca %struct._GimpMatrix3, align 8
  %viewbox = alloca i8*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %w = alloca double, align 8
  %h = alloca double, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._SvgHandler* %handler, %struct._SvgHandler** %handler.addr, align 8
  store i8** %names, i8*** %names.addr, align 8
  store i8** %values, i8*** %values.addr, align 8
  store %struct.SvgParser* %parser, %struct.SvgParser** %parser.addr, align 8
  store i8* null, i8** %viewbox, align 8
  store double 0.000000e+00, double* %x, align 8
  store double 0.000000e+00, double* %y, align 8
  %0 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %width = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %0, i32 0, i32 3
  %1 = load double, double* %width, align 8
  store double %1, double* %w, align 8
  %2 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %height = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %2, i32 0, i32 4
  %3 = load double, double* %height, align 8
  store double %3, double* %h, align 8
  %call = call noalias i8* @g_slice_alloc(i64 72)
  %4 = bitcast i8* %call to %struct._GimpMatrix3*
  store %struct._GimpMatrix3* %4, %struct._GimpMatrix3** %matrix, align 8
  %5 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix, align 8
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %5)
  %6 = load %struct.SvgParser*, %struct.SvgParser** %parser.addr, align 8
  %image = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %6, i32 0, i32 1
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %7, double* %xres, double* %yres)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %8 = load i8**, i8*** %names.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8**, i8*** %names.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 0
  %11 = load i8*, i8** %arrayidx, align 8
  %12 = load i8, i8* %11, align 1
  %conv = sext i8 %12 to i32
  switch i32 %conv, label %sw.epilog [
    i32 120, label %sw.bb
    i32 121, label %sw.bb.5
    i32 119, label %sw.bb.13
    i32 104, label %sw.bb.21
    i32 118, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %while.body
  %13 = load i8**, i8*** %names.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %call1 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %15 = load i8**, i8*** %values.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %width3 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %17, i32 0, i32 3
  %18 = load double, double* %width3, align 8
  %19 = load double, double* %xres, align 8
  %call4 = call i32 @parse_svg_length(i8* %16, double %18, double %19, double* %x)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.5:                                          ; preds = %while.body
  %20 = load i8**, i8*** %names.addr, align 8
  %21 = load i8*, i8** %20, align 8
  %call6 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)) #8
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %sw.bb.5
  %22 = load i8**, i8*** %values.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %height10 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %24, i32 0, i32 4
  %25 = load double, double* %height10, align 8
  %26 = load double, double* %yres, align 8
  %call11 = call i32 @parse_svg_length(i8* %23, double %25, double %26, double* %y)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %sw.bb.5
  br label %sw.epilog

sw.bb.13:                                         ; preds = %while.body
  %27 = load i8**, i8*** %names.addr, align 8
  %28 = load i8*, i8** %27, align 8
  %call14 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)) #8
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %sw.bb.13
  %29 = load i8**, i8*** %values.addr, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %width18 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %31, i32 0, i32 3
  %32 = load double, double* %width18, align 8
  %33 = load double, double* %xres, align 8
  %call19 = call i32 @parse_svg_length(i8* %30, double %32, double %33, double* %w)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %sw.bb.13
  br label %sw.epilog

sw.bb.21:                                         ; preds = %while.body
  %34 = load i8**, i8*** %names.addr, align 8
  %35 = load i8*, i8** %34, align 8
  %call22 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0)) #8
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %sw.bb.21
  %36 = load i8**, i8*** %values.addr, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %height26 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %38, i32 0, i32 4
  %39 = load double, double* %height26, align 8
  %40 = load double, double* %yres, align 8
  %call27 = call i32 @parse_svg_length(i8* %37, double %39, double %40, double* %h)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %sw.bb.21
  br label %sw.epilog

sw.bb.29:                                         ; preds = %while.body
  %41 = load i8**, i8*** %names.addr, align 8
  %42 = load i8*, i8** %41, align 8
  %call30 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0)) #8
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %sw.bb.29
  %43 = load i8**, i8*** %values.addr, align 8
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %viewbox, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %sw.bb.29
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %if.end.34, %if.end.28, %if.end.20, %if.end.12, %if.end
  %45 = load i8**, i8*** %names.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %incdec.ptr, i8*** %names.addr, align 8
  %46 = load i8**, i8*** %values.addr, align 8
  %incdec.ptr35 = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %incdec.ptr35, i8*** %values.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %47 = load double, double* %x, align 8
  %tobool36 = fcmp une double %47, 0.000000e+00
  br i1 %tobool36, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %48 = load double, double* %y, align 8
  %tobool37 = fcmp une double %48, 0.000000e+00
  br i1 %tobool37, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %lor.lhs.false, %while.end
  %49 = load %struct.SvgParser*, %struct.SvgParser** %parser.addr, align 8
  %svg_depth = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %49, i32 0, i32 3
  %50 = load i32, i32* %svg_depth, align 4
  %cmp39 = icmp sgt i32 %50, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.38
  %51 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix, align 8
  %52 = load double, double* %x, align 8
  %53 = load double, double* %y, align 8
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %51, double %52, double %53)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.then.38
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %lor.lhs.false
  %54 = load i8*, i8** %viewbox, align 8
  %tobool44 = icmp ne i8* %54, null
  br i1 %tobool44, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %if.end.43
  %55 = load i8*, i8** %viewbox, align 8
  %call45 = call i32 @parse_svg_viewbox(i8* %55, double* %w, double* %h, %struct._GimpMatrix3* %box)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %land.lhs.true
  %56 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix, align 8
  call void @gimp_matrix3_mult(%struct._GimpMatrix3* %box, %struct._GimpMatrix3* %56)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %land.lhs.true, %if.end.43
  %57 = load %struct.SvgParser*, %struct.SvgParser** %parser.addr, align 8
  %scale = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %57, i32 0, i32 2
  %58 = load i32, i32* %scale, align 4
  %tobool49 = icmp ne i32 %58, 0
  br i1 %tobool49, label %land.lhs.true.50, label %if.end.69

land.lhs.true.50:                                 ; preds = %if.end.48
  %59 = load %struct.SvgParser*, %struct.SvgParser** %parser.addr, align 8
  %svg_depth51 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %59, i32 0, i32 3
  %60 = load i32, i32* %svg_depth51, align 4
  %cmp52 = icmp eq i32 %60, 0
  br i1 %cmp52, label %if.then.54, label %if.end.69

if.then.54:                                       ; preds = %land.lhs.true.50
  %61 = load double, double* %w, align 8
  %cmp55 = fcmp ogt double %61, 0.000000e+00
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.68

land.lhs.true.57:                                 ; preds = %if.then.54
  %62 = load double, double* %h, align 8
  %cmp58 = fcmp ogt double %62, 0.000000e+00
  br i1 %cmp58, label %if.then.60, label %if.end.68

if.then.60:                                       ; preds = %land.lhs.true.57
  %63 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix, align 8
  %64 = load %struct.SvgParser*, %struct.SvgParser** %parser.addr, align 8
  %image61 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %64, i32 0, i32 1
  %65 = load %struct._GimpImage*, %struct._GimpImage** %image61, align 8
  %call62 = call i32 @gimp_image_get_width(%struct._GimpImage* %65)
  %conv63 = sitofp i32 %call62 to double
  %66 = load double, double* %w, align 8
  %div = fdiv double %conv63, %66
  %67 = load %struct.SvgParser*, %struct.SvgParser** %parser.addr, align 8
  %image64 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %67, i32 0, i32 1
  %68 = load %struct._GimpImage*, %struct._GimpImage** %image64, align 8
  %call65 = call i32 @gimp_image_get_height(%struct._GimpImage* %68)
  %conv66 = sitofp i32 %call65 to double
  %69 = load double, double* %h, align 8
  %div67 = fdiv double %conv66, %69
  call void @gimp_matrix3_scale(%struct._GimpMatrix3* %63, double %div, double %div67)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.60, %land.lhs.true.57, %if.then.54
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %land.lhs.true.50, %if.end.48
  %70 = load double, double* %w, align 8
  %71 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %width70 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %71, i32 0, i32 3
  store double %70, double* %width70, align 8
  %72 = load double, double* %h, align 8
  %73 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %height71 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %73, i32 0, i32 4
  store double %72, double* %height71, align 8
  %74 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix, align 8
  %75 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %transform = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %75, i32 0, i32 7
  store %struct._GimpMatrix3* %74, %struct._GimpMatrix3** %transform, align 8
  %76 = load %struct.SvgParser*, %struct.SvgParser** %parser.addr, align 8
  %svg_depth72 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %76, i32 0, i32 3
  %77 = load i32, i32* %svg_depth72, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %svg_depth72, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @svg_handler_svg_end(%struct._SvgHandler* %handler, %struct.SvgParser* %parser) #0 {
entry:
  %handler.addr = alloca %struct._SvgHandler*, align 8
  %parser.addr = alloca %struct.SvgParser*, align 8
  store %struct._SvgHandler* %handler, %struct._SvgHandler** %handler.addr, align 8
  store %struct.SvgParser* %parser, %struct.SvgParser** %parser.addr, align 8
  %0 = load %struct.SvgParser*, %struct.SvgParser** %parser.addr, align 8
  %svg_depth = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %0, i32 0, i32 3
  %1 = load i32, i32* %svg_depth, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %svg_depth, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @svg_handler_group_start(%struct._SvgHandler* %handler, i8** %names, i8** %values, %struct.SvgParser* %parser) #0 {
entry:
  %handler.addr = alloca %struct._SvgHandler*, align 8
  %names.addr = alloca i8**, align 8
  %values.addr = alloca i8**, align 8
  %parser.addr = alloca %struct.SvgParser*, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  store %struct._SvgHandler* %handler, %struct._SvgHandler** %handler.addr, align 8
  store i8** %names, i8*** %names.addr, align 8
  store i8** %values, i8*** %values.addr, align 8
  store %struct.SvgParser* %parser, %struct.SvgParser** %parser.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %entry
  %0 = load i8**, i8*** %names.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8**, i8*** %names.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %call = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %while.body
  %4 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %transform = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %4, i32 0, i32 7
  %5 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform, align 8
  %tobool1 = icmp ne %struct._GimpMatrix3* %5, null
  br i1 %tobool1, label %if.end.7, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8**, i8*** %values.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %call2 = call i32 @parse_svg_transform(i8* %7, %struct._GimpMatrix3* %matrix)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %8 = bitcast %struct._GimpMatrix3* %matrix to i8*
  %call5 = call noalias i8* @g_slice_copy(i64 72, i8* %8)
  %9 = bitcast i8* %call5 to %struct._GimpMatrix3*
  %10 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %transform6 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %10, i32 0, i32 7
  store %struct._GimpMatrix3* %9, %struct._GimpMatrix3** %transform6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %land.lhs.true, %while.body
  %11 = load i8**, i8*** %names.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %11, i32 1
  store i8** %incdec.ptr, i8*** %names.addr, align 8
  %12 = load i8**, i8*** %values.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %incdec.ptr8, i8*** %values.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @svg_handler_path_start(%struct._SvgHandler* %handler, i8** %names, i8** %values, %struct.SvgParser* %parser) #0 {
entry:
  %handler.addr = alloca %struct._SvgHandler*, align 8
  %names.addr = alloca i8**, align 8
  %values.addr = alloca i8**, align 8
  %parser.addr = alloca %struct.SvgParser*, align 8
  %path = alloca %struct.SvgPath*, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  store %struct._SvgHandler* %handler, %struct._SvgHandler** %handler.addr, align 8
  store i8** %names, i8*** %names.addr, align 8
  store i8** %values, i8*** %values.addr, align 8
  store %struct.SvgParser* %parser, %struct.SvgParser** %parser.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 16)
  %0 = bitcast i8* %call to %struct.SvgPath*
  store %struct.SvgPath* %0, %struct.SvgPath** %path, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %1 = load i8**, i8*** %names.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8**, i8*** %names.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  switch i32 %conv, label %sw.epilog [
    i32 105, label %sw.bb
    i32 100, label %sw.bb.6
    i32 116, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %while.body
  %6 = load i8**, i8*** %names.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %call1 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %8 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %id = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %8, i32 0, i32 0
  %9 = load i8*, i8** %id, align 8
  %tobool3 = icmp ne i8* %9, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %10 = load i8**, i8*** %values.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %call4 = call noalias i8* @g_strdup(i8* %11)
  %12 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %id5 = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %12, i32 0, i32 0
  store i8* %call4, i8** %id5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.6:                                          ; preds = %while.body
  %13 = load i8**, i8*** %names.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %call7 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0)) #8
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.15

land.lhs.true.10:                                 ; preds = %sw.bb.6
  %15 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %strokes = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %15, i32 0, i32 1
  %16 = load %struct._GList*, %struct._GList** %strokes, align 8
  %tobool11 = icmp ne %struct._GList* %16, null
  br i1 %tobool11, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true.10
  %17 = load i8**, i8*** %values.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %call13 = call %struct._GList* @parse_path_data(i8* %18)
  %19 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %strokes14 = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %19, i32 0, i32 1
  store %struct._GList* %call13, %struct._GList** %strokes14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %land.lhs.true.10, %sw.bb.6
  br label %sw.epilog

sw.bb.16:                                         ; preds = %while.body
  %20 = load i8**, i8*** %names.addr, align 8
  %21 = load i8*, i8** %20, align 8
  %call17 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)) #8
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.29

land.lhs.true.20:                                 ; preds = %sw.bb.16
  %22 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %transform = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %22, i32 0, i32 7
  %23 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform, align 8
  %tobool21 = icmp ne %struct._GimpMatrix3* %23, null
  br i1 %tobool21, label %if.end.29, label %if.then.22

if.then.22:                                       ; preds = %land.lhs.true.20
  %24 = load i8**, i8*** %values.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %call23 = call i32 @parse_svg_transform(i8* %25, %struct._GimpMatrix3* %matrix)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.then.22
  %26 = bitcast %struct._GimpMatrix3* %matrix to i8*
  %call26 = call noalias i8* @g_slice_copy(i64 72, i8* %26)
  %27 = bitcast i8* %call26 to %struct._GimpMatrix3*
  %28 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %transform27 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %28, i32 0, i32 7
  store %struct._GimpMatrix3* %27, %struct._GimpMatrix3** %transform27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.then.22
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %land.lhs.true.20, %sw.bb.16
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %if.end.29, %if.end.15, %if.end
  %29 = load i8**, i8*** %names.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %incdec.ptr, i8*** %names.addr, align 8
  %30 = load i8**, i8*** %values.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %incdec.ptr30, i8*** %values.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %paths = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %31, i32 0, i32 6
  %32 = load %struct._GList*, %struct._GList** %paths, align 8
  %33 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %34 = bitcast %struct.SvgPath* %33 to i8*
  %call31 = call %struct._GList* @g_list_prepend(%struct._GList* %32, i8* %34)
  %35 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %paths32 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %35, i32 0, i32 6
  store %struct._GList* %call31, %struct._GList** %paths32, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @svg_handler_rect_start(%struct._SvgHandler* %handler, i8** %names, i8** %values, %struct.SvgParser* %parser) #0 {
entry:
  %handler.addr = alloca %struct._SvgHandler*, align 8
  %names.addr = alloca i8**, align 8
  %values.addr = alloca i8**, align 8
  %parser.addr = alloca %struct.SvgParser*, align 8
  %path = alloca %struct.SvgPath*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %rx = alloca double, align 8
  %ry = alloca double, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %point = alloca %struct._GimpCoords, align 8
  %end = alloca %struct._GimpCoords, align 8
  %end116 = alloca %struct._GimpCoords, align 8
  %end129 = alloca %struct._GimpCoords, align 8
  %end140 = alloca %struct._GimpCoords, align 8
  store %struct._SvgHandler* %handler, %struct._SvgHandler** %handler.addr, align 8
  store i8** %names, i8*** %names.addr, align 8
  store i8** %values, i8*** %values.addr, align 8
  store %struct.SvgParser* %parser, %struct.SvgParser** %parser.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 16)
  %0 = bitcast i8* %call to %struct.SvgPath*
  store %struct.SvgPath* %0, %struct.SvgPath** %path, align 8
  store double 0.000000e+00, double* %x, align 8
  store double 0.000000e+00, double* %y, align 8
  store double 0.000000e+00, double* %width, align 8
  store double 0.000000e+00, double* %height, align 8
  store double 0.000000e+00, double* %rx, align 8
  store double 0.000000e+00, double* %ry, align 8
  %1 = load %struct.SvgParser*, %struct.SvgParser** %parser.addr, align 8
  %image = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %1, i32 0, i32 1
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %2, double* %xres, double* %yres)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %3 = load i8**, i8*** %names.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8**, i8*** %names.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  switch i32 %conv, label %sw.epilog [
    i32 105, label %sw.bb
    i32 120, label %sw.bb.6
    i32 121, label %sw.bb.14
    i32 119, label %sw.bb.22
    i32 104, label %sw.bb.30
    i32 114, label %sw.bb.38
    i32 116, label %sw.bb.53
  ]

sw.bb:                                            ; preds = %while.body
  %8 = load i8**, i8*** %names.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %call1 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %10 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %id = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %10, i32 0, i32 0
  %11 = load i8*, i8** %id, align 8
  %tobool3 = icmp ne i8* %11, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %12 = load i8**, i8*** %values.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %call4 = call noalias i8* @g_strdup(i8* %13)
  %14 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %id5 = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %14, i32 0, i32 0
  store i8* %call4, i8** %id5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.6:                                          ; preds = %while.body
  %15 = load i8**, i8*** %names.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %call7 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0)) #8
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %sw.bb.6
  %17 = load i8**, i8*** %values.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %width11 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %19, i32 0, i32 3
  %20 = load double, double* %width11, align 8
  %21 = load double, double* %xres, align 8
  %call12 = call i32 @parse_svg_length(i8* %18, double %20, double %21, double* %x)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %sw.bb.6
  br label %sw.epilog

sw.bb.14:                                         ; preds = %while.body
  %22 = load i8**, i8*** %names.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %call15 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)) #8
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %sw.bb.14
  %24 = load i8**, i8*** %values.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %height19 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %26, i32 0, i32 4
  %27 = load double, double* %height19, align 8
  %28 = load double, double* %yres, align 8
  %call20 = call i32 @parse_svg_length(i8* %25, double %27, double %28, double* %y)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %sw.bb.14
  br label %sw.epilog

sw.bb.22:                                         ; preds = %while.body
  %29 = load i8**, i8*** %names.addr, align 8
  %30 = load i8*, i8** %29, align 8
  %call23 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)) #8
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %sw.bb.22
  %31 = load i8**, i8*** %values.addr, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %width27 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %33, i32 0, i32 3
  %34 = load double, double* %width27, align 8
  %35 = load double, double* %xres, align 8
  %call28 = call i32 @parse_svg_length(i8* %32, double %34, double %35, double* %width)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %sw.bb.22
  br label %sw.epilog

sw.bb.30:                                         ; preds = %while.body
  %36 = load i8**, i8*** %names.addr, align 8
  %37 = load i8*, i8** %36, align 8
  %call31 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0)) #8
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %sw.bb.30
  %38 = load i8**, i8*** %values.addr, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %height35 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %40, i32 0, i32 4
  %41 = load double, double* %height35, align 8
  %42 = load double, double* %yres, align 8
  %call36 = call i32 @parse_svg_length(i8* %39, double %41, double %42, double* %height)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %sw.bb.30
  br label %sw.epilog

sw.bb.38:                                         ; preds = %while.body
  %43 = load i8**, i8*** %names.addr, align 8
  %44 = load i8*, i8** %43, align 8
  %call39 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0)) #8
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %sw.bb.38
  %45 = load i8**, i8*** %values.addr, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %width43 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %47, i32 0, i32 3
  %48 = load double, double* %width43, align 8
  %49 = load double, double* %xres, align 8
  %call44 = call i32 @parse_svg_length(i8* %46, double %48, double %49, double* %rx)
  br label %if.end.52

if.else:                                          ; preds = %sw.bb.38
  %50 = load i8**, i8*** %names.addr, align 8
  %51 = load i8*, i8** %50, align 8
  %call45 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0)) #8
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.else
  %52 = load i8**, i8*** %values.addr, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %height49 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %54, i32 0, i32 4
  %55 = load double, double* %height49, align 8
  %56 = load double, double* %yres, align 8
  %call50 = call i32 @parse_svg_length(i8* %53, double %55, double %56, double* %ry)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %if.else
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.42
  br label %sw.epilog

sw.bb.53:                                         ; preds = %while.body
  %57 = load i8**, i8*** %names.addr, align 8
  %58 = load i8*, i8** %57, align 8
  %call54 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)) #8
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.66

land.lhs.true.57:                                 ; preds = %sw.bb.53
  %59 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %transform = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %59, i32 0, i32 7
  %60 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform, align 8
  %tobool58 = icmp ne %struct._GimpMatrix3* %60, null
  br i1 %tobool58, label %if.end.66, label %if.then.59

if.then.59:                                       ; preds = %land.lhs.true.57
  %61 = load i8**, i8*** %values.addr, align 8
  %62 = load i8*, i8** %61, align 8
  %call60 = call i32 @parse_svg_transform(i8* %62, %struct._GimpMatrix3* %matrix)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.then.59
  %63 = bitcast %struct._GimpMatrix3* %matrix to i8*
  %call63 = call noalias i8* @g_slice_copy(i64 72, i8* %63)
  %64 = bitcast i8* %call63 to %struct._GimpMatrix3*
  %65 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %transform64 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %65, i32 0, i32 7
  store %struct._GimpMatrix3* %64, %struct._GimpMatrix3** %transform64, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.then.59
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %land.lhs.true.57, %sw.bb.53
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %if.end.66, %if.end.52, %if.end.37, %if.end.29, %if.end.21, %if.end.13, %if.end
  %66 = load i8**, i8*** %names.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %incdec.ptr, i8*** %names.addr, align 8
  %67 = load i8**, i8*** %values.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i8*, i8** %67, i32 1
  store i8** %incdec.ptr67, i8*** %values.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %68 = load double, double* %width, align 8
  %cmp68 = fcmp ogt double %68, 0.000000e+00
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.147

land.lhs.true.70:                                 ; preds = %while.end
  %69 = load double, double* %height, align 8
  %cmp71 = fcmp ogt double %69, 0.000000e+00
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.147

land.lhs.true.73:                                 ; preds = %land.lhs.true.70
  %70 = load double, double* %rx, align 8
  %cmp74 = fcmp oge double %70, 0.000000e+00
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.147

land.lhs.true.76:                                 ; preds = %land.lhs.true.73
  %71 = load double, double* %ry, align 8
  %cmp77 = fcmp oge double %71, 0.000000e+00
  br i1 %cmp77, label %if.then.79, label %if.end.147

if.then.79:                                       ; preds = %land.lhs.true.76
  %72 = bitcast %struct._GimpCoords* %point to i8*
  call void @llvm.memset.p0i8.i64(i8* %72, i8 0, i64 64, i32 8, i1 false)
  %73 = bitcast i8* %72 to %struct._GimpCoords*
  %74 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %73, i32 0, i32 2
  store double 1.000000e+00, double* %74
  %75 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %73, i32 0, i32 3
  store double 5.000000e-01, double* %75
  %76 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %73, i32 0, i32 4
  store double 5.000000e-01, double* %76
  %77 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %73, i32 0, i32 5
  store double 5.000000e-01, double* %77
  %78 = load double, double* %rx, align 8
  %cmp80 = fcmp oeq double %78, 0.000000e+00
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.then.79
  %79 = load double, double* %ry, align 8
  store double %79, double* %rx, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.then.79
  %80 = load double, double* %ry, align 8
  %cmp84 = fcmp oeq double %80, 0.000000e+00
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.83
  %81 = load double, double* %rx, align 8
  store double %81, double* %ry, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %if.end.83
  %82 = load double, double* %rx, align 8
  %83 = load double, double* %width, align 8
  %div = fdiv double %83, 2.000000e+00
  %cmp88 = fcmp olt double %82, %div
  br i1 %cmp88, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.87
  %84 = load double, double* %rx, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.87
  %85 = load double, double* %width, align 8
  %div90 = fdiv double %85, 2.000000e+00
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %84, %cond.true ], [ %div90, %cond.false ]
  store double %cond, double* %rx, align 8
  %86 = load double, double* %ry, align 8
  %87 = load double, double* %height, align 8
  %div91 = fdiv double %87, 2.000000e+00
  %cmp92 = fcmp olt double %86, %div91
  br i1 %cmp92, label %cond.true.94, label %cond.false.95

cond.true.94:                                     ; preds = %cond.end
  %88 = load double, double* %ry, align 8
  br label %cond.end.97

cond.false.95:                                    ; preds = %cond.end
  %89 = load double, double* %height, align 8
  %div96 = fdiv double %89, 2.000000e+00
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.95, %cond.true.94
  %cond98 = phi double [ %88, %cond.true.94 ], [ %div96, %cond.false.95 ]
  store double %cond98, double* %ry, align 8
  %90 = load double, double* %x, align 8
  %91 = load double, double* %width, align 8
  %add = fadd double %90, %91
  %92 = load double, double* %rx, align 8
  %sub = fsub double %add, %92
  %x99 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point, i32 0, i32 0
  store double %sub, double* %x99, align 8
  %93 = load double, double* %y, align 8
  %y100 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point, i32 0, i32 1
  store double %93, double* %y100, align 8
  %call101 = call %struct._GimpStroke* @gimp_bezier_stroke_new_moveto(%struct._GimpCoords* %point)
  store %struct._GimpStroke* %call101, %struct._GimpStroke** %stroke, align 8
  %94 = load double, double* %rx, align 8
  %tobool102 = fcmp une double %94, 0.000000e+00
  br i1 %tobool102, label %if.then.103, label %if.end.108

if.then.103:                                      ; preds = %cond.end.97
  %95 = bitcast %struct._GimpCoords* %end to i8*
  call void @llvm.memset.p0i8.i64(i8* %95, i8 0, i64 64, i32 8, i1 false)
  %96 = bitcast i8* %95 to %struct._GimpCoords*
  %97 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %96, i32 0, i32 2
  store double 1.000000e+00, double* %97
  %98 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %96, i32 0, i32 3
  store double 5.000000e-01, double* %98
  %99 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %96, i32 0, i32 4
  store double 5.000000e-01, double* %99
  %100 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %96, i32 0, i32 5
  store double 5.000000e-01, double* %100
  %101 = load double, double* %x, align 8
  %102 = load double, double* %width, align 8
  %add104 = fadd double %101, %102
  %x105 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %end, i32 0, i32 0
  store double %add104, double* %x105, align 8
  %103 = load double, double* %y, align 8
  %104 = load double, double* %ry, align 8
  %add106 = fadd double %103, %104
  %y107 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %end, i32 0, i32 1
  store double %add106, double* %y107, align 8
  %105 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %106 = load double, double* %rx, align 8
  %107 = load double, double* %ry, align 8
  call void @gimp_bezier_stroke_arcto(%struct._GimpStroke* %105, double %106, double %107, double 0.000000e+00, i32 0, i32 1, %struct._GimpCoords* %end)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.103, %cond.end.97
  %108 = load double, double* %x, align 8
  %109 = load double, double* %width, align 8
  %add109 = fadd double %108, %109
  %x110 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point, i32 0, i32 0
  store double %add109, double* %x110, align 8
  %110 = load double, double* %y, align 8
  %111 = load double, double* %height, align 8
  %add111 = fadd double %110, %111
  %112 = load double, double* %ry, align 8
  %sub112 = fsub double %add111, %112
  %y113 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point, i32 0, i32 1
  store double %sub112, double* %y113, align 8
  %113 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_bezier_stroke_lineto(%struct._GimpStroke* %113, %struct._GimpCoords* %point)
  %114 = load double, double* %rx, align 8
  %tobool114 = fcmp une double %114, 0.000000e+00
  br i1 %tobool114, label %if.then.115, label %if.end.122

if.then.115:                                      ; preds = %if.end.108
  %115 = bitcast %struct._GimpCoords* %end116 to i8*
  call void @llvm.memset.p0i8.i64(i8* %115, i8 0, i64 64, i32 8, i1 false)
  %116 = bitcast i8* %115 to %struct._GimpCoords*
  %117 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %116, i32 0, i32 2
  store double 1.000000e+00, double* %117
  %118 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %116, i32 0, i32 3
  store double 5.000000e-01, double* %118
  %119 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %116, i32 0, i32 4
  store double 5.000000e-01, double* %119
  %120 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %116, i32 0, i32 5
  store double 5.000000e-01, double* %120
  %121 = load double, double* %x, align 8
  %122 = load double, double* %width, align 8
  %add117 = fadd double %121, %122
  %123 = load double, double* %rx, align 8
  %sub118 = fsub double %add117, %123
  %x119 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %end116, i32 0, i32 0
  store double %sub118, double* %x119, align 8
  %124 = load double, double* %y, align 8
  %125 = load double, double* %height, align 8
  %add120 = fadd double %124, %125
  %y121 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %end116, i32 0, i32 1
  store double %add120, double* %y121, align 8
  %126 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %127 = load double, double* %rx, align 8
  %128 = load double, double* %ry, align 8
  call void @gimp_bezier_stroke_arcto(%struct._GimpStroke* %126, double %127, double %128, double 0.000000e+00, i32 0, i32 1, %struct._GimpCoords* %end116)
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.115, %if.end.108
  %129 = load double, double* %x, align 8
  %130 = load double, double* %rx, align 8
  %add123 = fadd double %129, %130
  %x124 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point, i32 0, i32 0
  store double %add123, double* %x124, align 8
  %131 = load double, double* %y, align 8
  %132 = load double, double* %height, align 8
  %add125 = fadd double %131, %132
  %y126 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point, i32 0, i32 1
  store double %add125, double* %y126, align 8
  %133 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_bezier_stroke_lineto(%struct._GimpStroke* %133, %struct._GimpCoords* %point)
  %134 = load double, double* %rx, align 8
  %tobool127 = fcmp une double %134, 0.000000e+00
  br i1 %tobool127, label %if.then.128, label %if.end.134

if.then.128:                                      ; preds = %if.end.122
  %135 = bitcast %struct._GimpCoords* %end129 to i8*
  call void @llvm.memset.p0i8.i64(i8* %135, i8 0, i64 64, i32 8, i1 false)
  %136 = bitcast i8* %135 to %struct._GimpCoords*
  %137 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %136, i32 0, i32 2
  store double 1.000000e+00, double* %137
  %138 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %136, i32 0, i32 3
  store double 5.000000e-01, double* %138
  %139 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %136, i32 0, i32 4
  store double 5.000000e-01, double* %139
  %140 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %136, i32 0, i32 5
  store double 5.000000e-01, double* %140
  %141 = load double, double* %x, align 8
  %x130 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %end129, i32 0, i32 0
  store double %141, double* %x130, align 8
  %142 = load double, double* %y, align 8
  %143 = load double, double* %height, align 8
  %add131 = fadd double %142, %143
  %144 = load double, double* %ry, align 8
  %sub132 = fsub double %add131, %144
  %y133 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %end129, i32 0, i32 1
  store double %sub132, double* %y133, align 8
  %145 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %146 = load double, double* %rx, align 8
  %147 = load double, double* %ry, align 8
  call void @gimp_bezier_stroke_arcto(%struct._GimpStroke* %145, double %146, double %147, double 0.000000e+00, i32 0, i32 1, %struct._GimpCoords* %end129)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.128, %if.end.122
  %148 = load double, double* %x, align 8
  %x135 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point, i32 0, i32 0
  store double %148, double* %x135, align 8
  %149 = load double, double* %y, align 8
  %150 = load double, double* %ry, align 8
  %add136 = fadd double %149, %150
  %y137 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point, i32 0, i32 1
  store double %add136, double* %y137, align 8
  %151 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_bezier_stroke_lineto(%struct._GimpStroke* %151, %struct._GimpCoords* %point)
  %152 = load double, double* %rx, align 8
  %tobool138 = fcmp une double %152, 0.000000e+00
  br i1 %tobool138, label %if.then.139, label %if.end.144

if.then.139:                                      ; preds = %if.end.134
  %153 = bitcast %struct._GimpCoords* %end140 to i8*
  call void @llvm.memset.p0i8.i64(i8* %153, i8 0, i64 64, i32 8, i1 false)
  %154 = bitcast i8* %153 to %struct._GimpCoords*
  %155 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %154, i32 0, i32 2
  store double 1.000000e+00, double* %155
  %156 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %154, i32 0, i32 3
  store double 5.000000e-01, double* %156
  %157 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %154, i32 0, i32 4
  store double 5.000000e-01, double* %157
  %158 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %154, i32 0, i32 5
  store double 5.000000e-01, double* %158
  %159 = load double, double* %x, align 8
  %160 = load double, double* %rx, align 8
  %add141 = fadd double %159, %160
  %x142 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %end140, i32 0, i32 0
  store double %add141, double* %x142, align 8
  %161 = load double, double* %y, align 8
  %y143 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %end140, i32 0, i32 1
  store double %161, double* %y143, align 8
  %162 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %163 = load double, double* %rx, align 8
  %164 = load double, double* %ry, align 8
  call void @gimp_bezier_stroke_arcto(%struct._GimpStroke* %162, double %163, double %164, double 0.000000e+00, i32 0, i32 1, %struct._GimpCoords* %end140)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.139, %if.end.134
  %165 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_stroke_close(%struct._GimpStroke* %165)
  %166 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %strokes = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %166, i32 0, i32 1
  %167 = load %struct._GList*, %struct._GList** %strokes, align 8
  %168 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %169 = bitcast %struct._GimpStroke* %168 to i8*
  %call145 = call %struct._GList* @g_list_prepend(%struct._GList* %167, i8* %169)
  %170 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %strokes146 = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %170, i32 0, i32 1
  store %struct._GList* %call145, %struct._GList** %strokes146, align 8
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.144, %land.lhs.true.76, %land.lhs.true.73, %land.lhs.true.70, %while.end
  %171 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %paths = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %171, i32 0, i32 6
  %172 = load %struct._GList*, %struct._GList** %paths, align 8
  %173 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %174 = bitcast %struct.SvgPath* %173 to i8*
  %call148 = call %struct._GList* @g_list_prepend(%struct._GList* %172, i8* %174)
  %175 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %paths149 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %175, i32 0, i32 6
  store %struct._GList* %call148, %struct._GList** %paths149, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @svg_handler_ellipse_start(%struct._SvgHandler* %handler, i8** %names, i8** %values, %struct.SvgParser* %parser) #0 {
entry:
  %handler.addr = alloca %struct._SvgHandler*, align 8
  %names.addr = alloca i8**, align 8
  %values.addr = alloca i8**, align 8
  %parser.addr = alloca %struct.SvgParser*, align 8
  %path = alloca %struct.SvgPath*, align 8
  %center = alloca %struct._GimpCoords, align 8
  %rx = alloca double, align 8
  %ry = alloca double, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  store %struct._SvgHandler* %handler, %struct._SvgHandler** %handler.addr, align 8
  store i8** %names, i8*** %names.addr, align 8
  store i8** %values, i8*** %values.addr, align 8
  store %struct.SvgParser* %parser, %struct.SvgParser** %parser.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 16)
  %0 = bitcast i8* %call to %struct.SvgPath*
  store %struct.SvgPath* %0, %struct.SvgPath** %path, align 8
  %1 = bitcast %struct._GimpCoords* %center to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 64, i32 8, i1 false)
  %2 = bitcast i8* %1 to %struct._GimpCoords*
  %3 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %2, i32 0, i32 2
  store double 1.000000e+00, double* %3
  %4 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %2, i32 0, i32 3
  store double 5.000000e-01, double* %4
  %5 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %2, i32 0, i32 4
  store double 5.000000e-01, double* %5
  %6 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %2, i32 0, i32 5
  store double 5.000000e-01, double* %6
  store double 0.000000e+00, double* %rx, align 8
  store double 0.000000e+00, double* %ry, align 8
  %7 = load %struct.SvgParser*, %struct.SvgParser** %parser.addr, align 8
  %image = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %7, i32 0, i32 1
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %8, double* %xres, double* %yres)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %9 = load i8**, i8*** %names.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8**, i8*** %names.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 0
  %12 = load i8*, i8** %arrayidx, align 8
  %13 = load i8, i8* %12, align 1
  %conv = sext i8 %13 to i32
  switch i32 %conv, label %sw.epilog [
    i32 105, label %sw.bb
    i32 99, label %sw.bb.6
    i32 114, label %sw.bb.19
    i32 116, label %sw.bb.45
  ]

sw.bb:                                            ; preds = %while.body
  %14 = load i8**, i8*** %names.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %call1 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %16 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %id = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %16, i32 0, i32 0
  %17 = load i8*, i8** %id, align 8
  %tobool3 = icmp ne i8* %17, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %18 = load i8**, i8*** %values.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %call4 = call noalias i8* @g_strdup(i8* %19)
  %20 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %id5 = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %20, i32 0, i32 0
  store i8* %call4, i8** %id5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.6:                                          ; preds = %while.body
  %21 = load i8**, i8*** %names.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %call7 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0)) #8
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %sw.bb.6
  %23 = load i8**, i8*** %values.addr, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %width = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %25, i32 0, i32 3
  %26 = load double, double* %width, align 8
  %27 = load double, double* %xres, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %center, i32 0, i32 0
  %call11 = call i32 @parse_svg_length(i8* %24, double %26, double %27, double* %x)
  br label %if.end.18

if.else:                                          ; preds = %sw.bb.6
  %28 = load i8**, i8*** %names.addr, align 8
  %29 = load i8*, i8** %28, align 8
  %call12 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0)) #8
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.else
  %30 = load i8**, i8*** %values.addr, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %height = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %32, i32 0, i32 4
  %33 = load double, double* %height, align 8
  %34 = load double, double* %yres, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %center, i32 0, i32 1
  %call16 = call i32 @parse_svg_length(i8* %31, double %33, double %34, double* %y)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.10
  br label %sw.epilog

sw.bb.19:                                         ; preds = %while.body
  %35 = load i8**, i8*** %names.addr, align 8
  %36 = load i8*, i8** %35, align 8
  %call20 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0)) #8
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.else.28

if.then.23:                                       ; preds = %sw.bb.19
  %37 = load i8**, i8*** %values.addr, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %width24 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %39, i32 0, i32 3
  %40 = load double, double* %width24, align 8
  %41 = load double, double* %xres, align 8
  %call25 = call i32 @parse_svg_length(i8* %38, double %40, double %41, double* %rx)
  %42 = load i8**, i8*** %values.addr, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %height26 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %44, i32 0, i32 4
  %45 = load double, double* %height26, align 8
  %46 = load double, double* %yres, align 8
  %call27 = call i32 @parse_svg_length(i8* %43, double %45, double %46, double* %ry)
  br label %if.end.44

if.else.28:                                       ; preds = %sw.bb.19
  %47 = load i8**, i8*** %names.addr, align 8
  %48 = load i8*, i8** %47, align 8
  %call29 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0)) #8
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then.32, label %if.else.35

if.then.32:                                       ; preds = %if.else.28
  %49 = load i8**, i8*** %values.addr, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %width33 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %51, i32 0, i32 3
  %52 = load double, double* %width33, align 8
  %53 = load double, double* %xres, align 8
  %call34 = call i32 @parse_svg_length(i8* %50, double %52, double %53, double* %rx)
  br label %if.end.43

if.else.35:                                       ; preds = %if.else.28
  %54 = load i8**, i8*** %names.addr, align 8
  %55 = load i8*, i8** %54, align 8
  %call36 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0)) #8
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.else.35
  %56 = load i8**, i8*** %values.addr, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %height40 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %58, i32 0, i32 4
  %59 = load double, double* %height40, align 8
  %60 = load double, double* %yres, align 8
  %call41 = call i32 @parse_svg_length(i8* %57, double %59, double %60, double* %ry)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.else.35
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.32
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.23
  br label %sw.epilog

sw.bb.45:                                         ; preds = %while.body
  %61 = load i8**, i8*** %names.addr, align 8
  %62 = load i8*, i8** %61, align 8
  %call46 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)) #8
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.58

land.lhs.true.49:                                 ; preds = %sw.bb.45
  %63 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %transform = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %63, i32 0, i32 7
  %64 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform, align 8
  %tobool50 = icmp ne %struct._GimpMatrix3* %64, null
  br i1 %tobool50, label %if.end.58, label %if.then.51

if.then.51:                                       ; preds = %land.lhs.true.49
  %65 = load i8**, i8*** %values.addr, align 8
  %66 = load i8*, i8** %65, align 8
  %call52 = call i32 @parse_svg_transform(i8* %66, %struct._GimpMatrix3* %matrix)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.then.51
  %67 = bitcast %struct._GimpMatrix3* %matrix to i8*
  %call55 = call noalias i8* @g_slice_copy(i64 72, i8* %67)
  %68 = bitcast i8* %call55 to %struct._GimpMatrix3*
  %69 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %transform56 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %69, i32 0, i32 7
  store %struct._GimpMatrix3* %68, %struct._GimpMatrix3** %transform56, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %if.then.51
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %land.lhs.true.49, %sw.bb.45
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %if.end.58, %if.end.44, %if.end.18, %if.end
  %70 = load i8**, i8*** %names.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %70, i32 1
  store i8** %incdec.ptr, i8*** %names.addr, align 8
  %71 = load i8**, i8*** %values.addr, align 8
  %incdec.ptr59 = getelementptr inbounds i8*, i8** %71, i32 1
  store i8** %incdec.ptr59, i8*** %values.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %72 = load double, double* %rx, align 8
  %cmp60 = fcmp oge double %72, 0.000000e+00
  br i1 %cmp60, label %land.lhs.true.62, label %if.end.69

land.lhs.true.62:                                 ; preds = %while.end
  %73 = load double, double* %ry, align 8
  %cmp63 = fcmp oge double %73, 0.000000e+00
  br i1 %cmp63, label %if.then.65, label %if.end.69

if.then.65:                                       ; preds = %land.lhs.true.62
  %74 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %strokes = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %74, i32 0, i32 1
  %75 = load %struct._GList*, %struct._GList** %strokes, align 8
  %76 = load double, double* %rx, align 8
  %77 = load double, double* %ry, align 8
  %call66 = call %struct._GimpStroke* @gimp_bezier_stroke_new_ellipse(%struct._GimpCoords* %center, double %76, double %77, double 0.000000e+00)
  %78 = bitcast %struct._GimpStroke* %call66 to i8*
  %call67 = call %struct._GList* @g_list_prepend(%struct._GList* %75, i8* %78)
  %79 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %strokes68 = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %79, i32 0, i32 1
  store %struct._GList* %call67, %struct._GList** %strokes68, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.65, %land.lhs.true.62, %while.end
  %80 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %paths = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %80, i32 0, i32 6
  %81 = load %struct._GList*, %struct._GList** %paths, align 8
  %82 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %83 = bitcast %struct.SvgPath* %82 to i8*
  %call70 = call %struct._GList* @g_list_prepend(%struct._GList* %81, i8* %83)
  %84 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %paths71 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %84, i32 0, i32 6
  store %struct._GList* %call70, %struct._GList** %paths71, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @svg_handler_line_start(%struct._SvgHandler* %handler, i8** %names, i8** %values, %struct.SvgParser* %parser) #0 {
entry:
  %handler.addr = alloca %struct._SvgHandler*, align 8
  %names.addr = alloca i8**, align 8
  %values.addr = alloca i8**, align 8
  %parser.addr = alloca %struct.SvgParser*, align 8
  %path = alloca %struct.SvgPath*, align 8
  %start = alloca %struct._GimpCoords, align 8
  %end = alloca %struct._GimpCoords, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  store %struct._SvgHandler* %handler, %struct._SvgHandler** %handler.addr, align 8
  store i8** %names, i8*** %names.addr, align 8
  store i8** %values, i8*** %values.addr, align 8
  store %struct.SvgParser* %parser, %struct.SvgParser** %parser.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 16)
  %0 = bitcast i8* %call to %struct.SvgPath*
  store %struct.SvgPath* %0, %struct.SvgPath** %path, align 8
  %1 = bitcast %struct._GimpCoords* %start to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 64, i32 8, i1 false)
  %2 = bitcast i8* %1 to %struct._GimpCoords*
  %3 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %2, i32 0, i32 2
  store double 1.000000e+00, double* %3
  %4 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %2, i32 0, i32 3
  store double 5.000000e-01, double* %4
  %5 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %2, i32 0, i32 4
  store double 5.000000e-01, double* %5
  %6 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %2, i32 0, i32 5
  store double 5.000000e-01, double* %6
  %7 = bitcast %struct._GimpCoords* %end to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 64, i32 8, i1 false)
  %8 = bitcast i8* %7 to %struct._GimpCoords*
  %9 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 2
  store double 1.000000e+00, double* %9
  %10 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 3
  store double 5.000000e-01, double* %10
  %11 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 4
  store double 5.000000e-01, double* %11
  %12 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 5
  store double 5.000000e-01, double* %12
  %13 = load %struct.SvgParser*, %struct.SvgParser** %parser.addr, align 8
  %image = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %13, i32 0, i32 1
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %14, double* %xres, double* %yres)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %15 = load i8**, i8*** %names.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %tobool = icmp ne i8* %16, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i8**, i8*** %names.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 0
  %18 = load i8*, i8** %arrayidx, align 8
  %19 = load i8, i8* %18, align 1
  %conv = sext i8 %19 to i32
  switch i32 %conv, label %sw.epilog [
    i32 105, label %sw.bb
    i32 120, label %sw.bb.6
    i32 121, label %sw.bb.21
    i32 116, label %sw.bb.37
  ]

sw.bb:                                            ; preds = %while.body
  %20 = load i8**, i8*** %names.addr, align 8
  %21 = load i8*, i8** %20, align 8
  %call1 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %22 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %id = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %22, i32 0, i32 0
  %23 = load i8*, i8** %id, align 8
  %tobool3 = icmp ne i8* %23, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %24 = load i8**, i8*** %values.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %call4 = call noalias i8* @g_strdup(i8* %25)
  %26 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %id5 = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %26, i32 0, i32 0
  store i8* %call4, i8** %id5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.6:                                          ; preds = %while.body
  %27 = load i8**, i8*** %names.addr, align 8
  %28 = load i8*, i8** %27, align 8
  %call7 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0)) #8
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %sw.bb.6
  %29 = load i8**, i8*** %values.addr, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %width = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %31, i32 0, i32 3
  %32 = load double, double* %width, align 8
  %33 = load double, double* %xres, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %start, i32 0, i32 0
  %call11 = call i32 @parse_svg_length(i8* %30, double %32, double %33, double* %x)
  br label %if.end.20

if.else:                                          ; preds = %sw.bb.6
  %34 = load i8**, i8*** %names.addr, align 8
  %35 = load i8*, i8** %34, align 8
  %call12 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0)) #8
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.else
  %36 = load i8**, i8*** %values.addr, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %width16 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %38, i32 0, i32 3
  %39 = load double, double* %width16, align 8
  %40 = load double, double* %xres, align 8
  %x17 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %end, i32 0, i32 0
  %call18 = call i32 @parse_svg_length(i8* %37, double %39, double %40, double* %x17)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.10
  br label %sw.epilog

sw.bb.21:                                         ; preds = %while.body
  %41 = load i8**, i8*** %names.addr, align 8
  %42 = load i8*, i8** %41, align 8
  %call22 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0)) #8
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.else.27

if.then.25:                                       ; preds = %sw.bb.21
  %43 = load i8**, i8*** %values.addr, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %height = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %45, i32 0, i32 4
  %46 = load double, double* %height, align 8
  %47 = load double, double* %yres, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %start, i32 0, i32 1
  %call26 = call i32 @parse_svg_length(i8* %44, double %46, double %47, double* %y)
  br label %if.end.36

if.else.27:                                       ; preds = %sw.bb.21
  %48 = load i8**, i8*** %names.addr, align 8
  %49 = load i8*, i8** %48, align 8
  %call28 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0)) #8
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %if.else.27
  %50 = load i8**, i8*** %values.addr, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %height32 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %52, i32 0, i32 4
  %53 = load double, double* %height32, align 8
  %54 = load double, double* %yres, align 8
  %y33 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %end, i32 0, i32 1
  %call34 = call i32 @parse_svg_length(i8* %51, double %53, double %54, double* %y33)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %if.else.27
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.25
  br label %sw.epilog

sw.bb.37:                                         ; preds = %while.body
  %55 = load i8**, i8*** %names.addr, align 8
  %56 = load i8*, i8** %55, align 8
  %call38 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)) #8
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.50

land.lhs.true.41:                                 ; preds = %sw.bb.37
  %57 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %transform = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %57, i32 0, i32 7
  %58 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform, align 8
  %tobool42 = icmp ne %struct._GimpMatrix3* %58, null
  br i1 %tobool42, label %if.end.50, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.41
  %59 = load i8**, i8*** %values.addr, align 8
  %60 = load i8*, i8** %59, align 8
  %call44 = call i32 @parse_svg_transform(i8* %60, %struct._GimpMatrix3* %matrix)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.then.43
  %61 = bitcast %struct._GimpMatrix3* %matrix to i8*
  %call47 = call noalias i8* @g_slice_copy(i64 72, i8* %61)
  %62 = bitcast i8* %call47 to %struct._GimpMatrix3*
  %63 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %transform48 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %63, i32 0, i32 7
  store %struct._GimpMatrix3* %62, %struct._GimpMatrix3** %transform48, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.then.43
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %land.lhs.true.41, %sw.bb.37
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %if.end.50, %if.end.36, %if.end.20, %if.end
  %64 = load i8**, i8*** %names.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %64, i32 1
  store i8** %incdec.ptr, i8*** %names.addr, align 8
  %65 = load i8**, i8*** %values.addr, align 8
  %incdec.ptr51 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %incdec.ptr51, i8*** %values.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call52 = call %struct._GimpStroke* @gimp_bezier_stroke_new_moveto(%struct._GimpCoords* %start)
  store %struct._GimpStroke* %call52, %struct._GimpStroke** %stroke, align 8
  %66 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_bezier_stroke_lineto(%struct._GimpStroke* %66, %struct._GimpCoords* %end)
  %67 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %strokes = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %67, i32 0, i32 1
  %68 = load %struct._GList*, %struct._GList** %strokes, align 8
  %69 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %70 = bitcast %struct._GimpStroke* %69 to i8*
  %call53 = call %struct._GList* @g_list_prepend(%struct._GList* %68, i8* %70)
  %71 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %strokes54 = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %71, i32 0, i32 1
  store %struct._GList* %call53, %struct._GList** %strokes54, align 8
  %72 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %paths = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %72, i32 0, i32 6
  %73 = load %struct._GList*, %struct._GList** %paths, align 8
  %74 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %75 = bitcast %struct.SvgPath* %74 to i8*
  %call55 = call %struct._GList* @g_list_prepend(%struct._GList* %73, i8* %75)
  %76 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %paths56 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %76, i32 0, i32 6
  store %struct._GList* %call55, %struct._GList** %paths56, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @svg_handler_poly_start(%struct._SvgHandler* %handler, i8** %names, i8** %values, %struct.SvgParser* %parser) #0 {
entry:
  %handler.addr = alloca %struct._SvgHandler*, align 8
  %names.addr = alloca i8**, align 8
  %values.addr = alloca i8**, align 8
  %parser.addr = alloca %struct.SvgParser*, align 8
  %path = alloca %struct.SvgPath*, align 8
  %points = alloca %struct._GString*, align 8
  %p = alloca i8*, align 8
  %m = alloca i8*, align 8
  %l = alloca i8*, align 8
  %n = alloca i32, align 4
  %matrix = alloca %struct._GimpMatrix3, align 8
  store %struct._SvgHandler* %handler, %struct._SvgHandler** %handler.addr, align 8
  store i8** %names, i8*** %names.addr, align 8
  store i8** %values, i8*** %values.addr, align 8
  store %struct.SvgParser* %parser, %struct.SvgParser** %parser.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 16)
  %0 = bitcast i8* %call to %struct.SvgPath*
  store %struct.SvgPath* %0, %struct.SvgPath** %path, align 8
  store %struct._GString* null, %struct._GString** %points, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.86, %entry
  %1 = load i8**, i8*** %names.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %while.body, label %while.end.89

while.body:                                       ; preds = %while.cond
  %3 = load i8**, i8*** %names.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  switch i32 %conv, label %sw.epilog.86 [
    i32 105, label %sw.bb
    i32 112, label %sw.bb.6
    i32 116, label %sw.bb.72
  ]

sw.bb:                                            ; preds = %while.body
  %6 = load i8**, i8*** %names.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %call1 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %8 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %id = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %8, i32 0, i32 0
  %9 = load i8*, i8** %id, align 8
  %tobool3 = icmp ne i8* %9, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %10 = load i8**, i8*** %values.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %call4 = call noalias i8* @g_strdup(i8* %11)
  %12 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %id5 = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %12, i32 0, i32 0
  store i8* %call4, i8** %id5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog.86

sw.bb.6:                                          ; preds = %while.body
  %13 = load i8**, i8*** %names.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %call7 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0)) #8
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.71

land.lhs.true.10:                                 ; preds = %sw.bb.6
  %15 = load %struct._GString*, %struct._GString** %points, align 8
  %tobool11 = icmp ne %struct._GString* %15, null
  br i1 %tobool11, label %if.end.71, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true.10
  %16 = load i8**, i8*** %values.addr, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %p, align 8
  store i8* null, i8** %m, align 8
  store i8* null, i8** %l, align 8
  store i32 0, i32* %n, align 4
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.end.45, %if.then.12
  %18 = load i8*, i8** %p, align 8
  %19 = load i8, i8* %18, align 1
  %tobool14 = icmp ne i8 %19, 0
  br i1 %tobool14, label %while.body.15, label %while.end.46

while.body.15:                                    ; preds = %while.cond.13
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.body.24, %while.body.15
  %20 = load i8*, i8** %p, align 8
  %21 = load i8, i8* %20, align 1
  %idxprom = zext i8 %21 to i64
  %22 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %22, i64 %idxprom
  %23 = load i16, i16* %arrayidx17, align 2
  %conv18 = zext i16 %23 to i32
  %and = and i32 %conv18, 256
  %cmp19 = icmp ne i32 %and, 0
  br i1 %cmp19, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.16
  %24 = load i8*, i8** %p, align 8
  %25 = load i8, i8* %24, align 1
  %conv21 = sext i8 %25 to i32
  %cmp22 = icmp eq i32 %conv21, 44
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.16
  %26 = phi i1 [ true, %while.cond.16 ], [ %cmp22, %lor.rhs ]
  br i1 %26, label %while.body.24, label %while.end

while.body.24:                                    ; preds = %lor.end
  %27 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond.16

while.end:                                        ; preds = %lor.end
  %28 = load i32, i32* %n, align 4
  switch i32 %28, label %sw.epilog [
    i32 0, label %sw.bb.25
    i32 2, label %sw.bb.26
  ]

sw.bb.25:                                         ; preds = %while.end
  %29 = load i8*, i8** %p, align 8
  store i8* %29, i8** %m, align 8
  br label %sw.epilog

sw.bb.26:                                         ; preds = %while.end
  %30 = load i8*, i8** %p, align 8
  store i8* %30, i8** %l, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end, %sw.bb.26, %sw.bb.25
  %31 = load i8*, i8** %p, align 8
  %32 = load i8, i8* %31, align 1
  %tobool27 = icmp ne i8 %32, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %sw.epilog
  %33 = load i32, i32* %n, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %n, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %sw.epilog
  br label %while.cond.30

while.cond.30:                                    ; preds = %while.body.43, %if.end.29
  %34 = load i8*, i8** %p, align 8
  %35 = load i8, i8* %34, align 1
  %conv31 = sext i8 %35 to i32
  %tobool32 = icmp ne i32 %conv31, 0
  br i1 %tobool32, label %land.lhs.true.33, label %land.end

land.lhs.true.33:                                 ; preds = %while.cond.30
  %36 = load i8*, i8** %p, align 8
  %37 = load i8, i8* %36, align 1
  %idxprom34 = zext i8 %37 to i64
  %38 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx35 = getelementptr inbounds i16, i16* %38, i64 %idxprom34
  %39 = load i16, i16* %arrayidx35, align 2
  %conv36 = zext i16 %39 to i32
  %and37 = and i32 %conv36, 256
  %cmp38 = icmp ne i32 %and37, 0
  br i1 %cmp38, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.33
  %40 = load i8*, i8** %p, align 8
  %41 = load i8, i8* %40, align 1
  %conv40 = sext i8 %41 to i32
  %cmp41 = icmp ne i32 %conv40, 44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.33, %while.cond.30
  %42 = phi i1 [ false, %land.lhs.true.33 ], [ false, %while.cond.30 ], [ %cmp41, %land.rhs ]
  br i1 %42, label %while.body.43, label %while.end.45

while.body.43:                                    ; preds = %land.end
  %43 = load i8*, i8** %p, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr44, i8** %p, align 8
  br label %while.cond.30

while.end.45:                                     ; preds = %land.end
  br label %while.cond.13

while.end.46:                                     ; preds = %while.cond.13
  %44 = load i32, i32* %n, align 4
  %cmp47 = icmp sgt i32 %44, 3
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.70

land.lhs.true.49:                                 ; preds = %while.end.46
  %45 = load i32, i32* %n, align 4
  %rem = srem i32 %45, 2
  %cmp50 = icmp eq i32 %rem, 0
  br i1 %cmp50, label %if.then.52, label %if.end.70

if.then.52:                                       ; preds = %land.lhs.true.49
  %46 = load i8*, i8** %p, align 8
  %47 = load i8**, i8*** %values.addr, align 8
  %48 = load i8*, i8** %47, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %46 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 8
  %call53 = call %struct._GString* @g_string_sized_new(i64 %add)
  store %struct._GString* %call53, %struct._GString** %points, align 8
  %49 = load %struct._GString*, %struct._GString** %points, align 8
  %call54 = call %struct._GString* @g_string_append_len(%struct._GString* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i64 2)
  %50 = load %struct._GString*, %struct._GString** %points, align 8
  %51 = load i8*, i8** %m, align 8
  %52 = load i8*, i8** %l, align 8
  %53 = load i8*, i8** %m, align 8
  %sub.ptr.lhs.cast55 = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast56 = ptrtoint i8* %53 to i64
  %sub.ptr.sub57 = sub i64 %sub.ptr.lhs.cast55, %sub.ptr.rhs.cast56
  %call58 = call %struct._GString* @g_string_append_len(%struct._GString* %50, i8* %51, i64 %sub.ptr.sub57)
  %54 = load %struct._GString*, %struct._GString** %points, align 8
  %call59 = call %struct._GString* @g_string_append_len(%struct._GString* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i64 2)
  %55 = load %struct._GString*, %struct._GString** %points, align 8
  %56 = load i8*, i8** %l, align 8
  %57 = load i8*, i8** %p, align 8
  %58 = load i8*, i8** %l, align 8
  %sub.ptr.lhs.cast60 = ptrtoint i8* %57 to i64
  %sub.ptr.rhs.cast61 = ptrtoint i8* %58 to i64
  %sub.ptr.sub62 = sub i64 %sub.ptr.lhs.cast60, %sub.ptr.rhs.cast61
  %call63 = call %struct._GString* @g_string_append_len(%struct._GString* %55, i8* %56, i64 %sub.ptr.sub62)
  %59 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %name = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %59, i32 0, i32 0
  %60 = load i8*, i8** %name, align 8
  %call64 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0)) #8
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.then.52
  %61 = load %struct._GString*, %struct._GString** %points, align 8
  %call68 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %61, i8 signext 90)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.then.52
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %land.lhs.true.49, %while.end.46
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %land.lhs.true.10, %sw.bb.6
  br label %sw.epilog.86

sw.bb.72:                                         ; preds = %while.body
  %62 = load i8**, i8*** %names.addr, align 8
  %63 = load i8*, i8** %62, align 8
  %call73 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)) #8
  %cmp74 = icmp eq i32 %call73, 0
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.85

land.lhs.true.76:                                 ; preds = %sw.bb.72
  %64 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %transform = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %64, i32 0, i32 7
  %65 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform, align 8
  %tobool77 = icmp ne %struct._GimpMatrix3* %65, null
  br i1 %tobool77, label %if.end.85, label %if.then.78

if.then.78:                                       ; preds = %land.lhs.true.76
  %66 = load i8**, i8*** %values.addr, align 8
  %67 = load i8*, i8** %66, align 8
  %call79 = call i32 @parse_svg_transform(i8* %67, %struct._GimpMatrix3* %matrix)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %if.then.78
  %68 = bitcast %struct._GimpMatrix3* %matrix to i8*
  %call82 = call noalias i8* @g_slice_copy(i64 72, i8* %68)
  %69 = bitcast i8* %call82 to %struct._GimpMatrix3*
  %70 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %transform83 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %70, i32 0, i32 7
  store %struct._GimpMatrix3* %69, %struct._GimpMatrix3** %transform83, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.81, %if.then.78
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %land.lhs.true.76, %sw.bb.72
  br label %sw.epilog.86

sw.epilog.86:                                     ; preds = %while.body, %if.end.85, %if.end.71, %if.end
  %71 = load i8**, i8*** %names.addr, align 8
  %incdec.ptr87 = getelementptr inbounds i8*, i8** %71, i32 1
  store i8** %incdec.ptr87, i8*** %names.addr, align 8
  %72 = load i8**, i8*** %values.addr, align 8
  %incdec.ptr88 = getelementptr inbounds i8*, i8** %72, i32 1
  store i8** %incdec.ptr88, i8*** %values.addr, align 8
  br label %while.cond

while.end.89:                                     ; preds = %while.cond
  %73 = load %struct._GString*, %struct._GString** %points, align 8
  %tobool90 = icmp ne %struct._GString* %73, null
  br i1 %tobool90, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %while.end.89
  %74 = load %struct._GString*, %struct._GString** %points, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %74, i32 0, i32 0
  %75 = load i8*, i8** %str, align 8
  %call92 = call %struct._GList* @parse_path_data(i8* %75)
  %76 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %strokes = getelementptr inbounds %struct.SvgPath, %struct.SvgPath* %76, i32 0, i32 1
  store %struct._GList* %call92, %struct._GList** %strokes, align 8
  %77 = load %struct._GString*, %struct._GString** %points, align 8
  %call93 = call i8* @g_string_free(%struct._GString* %77, i32 1)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %while.end.89
  %78 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %paths = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %78, i32 0, i32 6
  %79 = load %struct._GList*, %struct._GList** %paths, align 8
  %80 = load %struct.SvgPath*, %struct.SvgPath** %path, align 8
  %81 = bitcast %struct.SvgPath* %80 to i8*
  %call95 = call %struct._GList* @g_list_prepend(%struct._GList* %79, i8* %81)
  %82 = load %struct._SvgHandler*, %struct._SvgHandler** %handler.addr, align 8
  %paths96 = getelementptr inbounds %struct._SvgHandler, %struct._SvgHandler* %82, i32 0, i32 6
  store %struct._GList* %call95, %struct._GList** %paths96, align 8
  ret void
}

declare noalias i8* @g_slice_alloc(i64) #3

declare void @gimp_matrix3_identity(%struct._GimpMatrix3*) #3

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #3

; Function Attrs: nounwind uwtable
define internal i32 @parse_svg_length(i8* %value, double %reference, double %resolution, double* %length) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  %reference.addr = alloca double, align 8
  %resolution.addr = alloca double, align 8
  %length.addr = alloca double*, align 8
  %unit = alloca i32, align 4
  %len = alloca double, align 8
  %ptr = alloca i8*, align 8
  store i8* %value, i8** %value.addr, align 8
  store double %reference, double* %reference.addr, align 8
  store double %resolution, double* %resolution.addr, align 8
  store double* %length, double** %length.addr, align 8
  store i32 0, i32* %unit, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %call = call double @g_ascii_strtod(i8* %0, i8** %ptr)
  store double %call, double* %len, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %ptr, align 8
  %2 = load i8, i8* %1, align 1
  %idxprom = zext i8 %2 to i64
  %3 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 256
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %ptr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %7 to i32
  switch i32 %conv3, label %sw.default.36 [
    i32 0, label %sw.bb
    i32 112, label %sw.bb.4
    i32 99, label %sw.bb.10
    i32 109, label %sw.bb.16
    i32 105, label %sw.bb.25
    i32 37, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %while.end
  br label %sw.epilog.37

sw.bb.4:                                          ; preds = %while.end
  %8 = load i8*, i8** %ptr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %9 to i32
  switch i32 %conv6, label %sw.default [
    i32 120, label %sw.bb.7
    i32 116, label %sw.bb.8
    i32 99, label %sw.bb.9
  ]

sw.bb.7:                                          ; preds = %sw.bb.4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %sw.bb.4
  store i32 3, i32* %unit, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %sw.bb.4
  store i32 4, i32* %unit, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.4
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.9, %sw.bb.8, %sw.bb.7
  %10 = load i8*, i8** %ptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 2
  store i8* %add.ptr, i8** %ptr, align 8
  br label %sw.epilog.37

sw.bb.10:                                         ; preds = %while.end
  %11 = load i8*, i8** %ptr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %12 to i32
  %cmp13 = icmp eq i32 %conv12, 109
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.10
  %13 = load double, double* %len, align 8
  %mul = fmul double %13, 1.000000e+01
  store double %mul, double* %len, align 8
  store i32 2, i32* %unit, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb.10
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %14 = load i8*, i8** %ptr, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr15, i8** %ptr, align 8
  br label %sw.epilog.37

sw.bb.16:                                         ; preds = %while.end
  %15 = load i8*, i8** %ptr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %16 to i32
  %cmp19 = icmp eq i32 %conv18, 109
  br i1 %cmp19, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %sw.bb.16
  store i32 2, i32* %unit, align 4
  br label %if.end.23

if.else.22:                                       ; preds = %sw.bb.16
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.then.21
  %17 = load i8*, i8** %ptr, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %17, i64 2
  store i8* %add.ptr24, i8** %ptr, align 8
  br label %sw.epilog.37

sw.bb.25:                                         ; preds = %while.end
  %18 = load i8*, i8** %ptr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %19 to i32
  %cmp28 = icmp eq i32 %conv27, 110
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %sw.bb.25
  store i32 1, i32* %unit, align 4
  br label %if.end.32

if.else.31:                                       ; preds = %sw.bb.25
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.then.30
  %20 = load i8*, i8** %ptr, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %20, i64 2
  store i8* %add.ptr33, i8** %ptr, align 8
  br label %sw.epilog.37

sw.bb.34:                                         ; preds = %while.end
  store i32 65536, i32* %unit, align 4
  %21 = load i8*, i8** %ptr, align 8
  %add.ptr35 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %add.ptr35, i8** %ptr, align 8
  br label %sw.epilog.37

sw.default.36:                                    ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

sw.epilog.37:                                     ; preds = %sw.bb.34, %if.end.32, %if.end.23, %if.end, %sw.epilog, %sw.bb
  br label %while.cond.38

while.cond.38:                                    ; preds = %while.body.45, %sw.epilog.37
  %22 = load i8*, i8** %ptr, align 8
  %23 = load i8, i8* %22, align 1
  %idxprom39 = zext i8 %23 to i64
  %24 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx40 = getelementptr inbounds i16, i16* %24, i64 %idxprom39
  %25 = load i16, i16* %arrayidx40, align 2
  %conv41 = zext i16 %25 to i32
  %and42 = and i32 %conv41, 256
  %cmp43 = icmp ne i32 %and42, 0
  br i1 %cmp43, label %while.body.45, label %while.end.47

while.body.45:                                    ; preds = %while.cond.38
  %26 = load i8*, i8** %ptr, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr46, i8** %ptr, align 8
  br label %while.cond.38

while.end.47:                                     ; preds = %while.cond.38
  %27 = load i8*, i8** %ptr, align 8
  %28 = load i8, i8* %27, align 1
  %tobool = icmp ne i8 %28, 0
  br i1 %tobool, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %while.end.47
  store i32 0, i32* %retval
  br label %return

if.end.49:                                        ; preds = %while.end.47
  %29 = load i32, i32* %unit, align 4
  switch i32 %29, label %sw.default.53 [
    i32 65536, label %sw.bb.50
    i32 0, label %sw.bb.52
  ]

sw.bb.50:                                         ; preds = %if.end.49
  %30 = load double, double* %len, align 8
  %31 = load double, double* %reference.addr, align 8
  %mul51 = fmul double %30, %31
  %div = fdiv double %mul51, 1.000000e+02
  %32 = load double*, double** %length.addr, align 8
  store double %div, double* %32, align 8
  br label %sw.epilog.57

sw.bb.52:                                         ; preds = %if.end.49
  %33 = load double, double* %len, align 8
  %34 = load double*, double** %length.addr, align 8
  store double %33, double* %34, align 8
  br label %sw.epilog.57

sw.default.53:                                    ; preds = %if.end.49
  %35 = load double, double* %len, align 8
  %36 = load double, double* %resolution.addr, align 8
  %mul54 = fmul double %35, %36
  %37 = load i32, i32* %unit, align 4
  %call55 = call double @gimp_unit_get_factor(i32 %37)
  %div56 = fdiv double %mul54, %call55
  %38 = load double*, double** %length.addr, align 8
  store double %div56, double* %38, align 8
  br label %sw.epilog.57

sw.epilog.57:                                     ; preds = %sw.default.53, %sw.bb.52, %sw.bb.50
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.57, %if.then.48, %sw.default.36, %if.else.31, %if.else.22, %if.else, %sw.default
  %39 = load i32, i32* %retval
  ret i32 %39
}

declare void @gimp_matrix3_translate(%struct._GimpMatrix3*, double, double) #3

; Function Attrs: nounwind uwtable
define internal i32 @parse_svg_viewbox(i8* %value, double* %width, double* %height, %struct._GimpMatrix3* %matrix) #0 {
entry:
  %value.addr = alloca i8*, align 8
  %width.addr = alloca double*, align 8
  %height.addr = alloca double*, align 8
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %w = alloca double, align 8
  %h = alloca double, align 8
  %tok = alloca i8*, align 8
  %str = alloca i8*, align 8
  %success = alloca i32, align 4
  store i8* %value, i8** %value.addr, align 8
  store double* %width, double** %width.addr, align 8
  store double* %height, double** %height.addr, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %0)
  store i8* %call, i8** %str, align 8
  store i32 0, i32* %success, align 4
  store double 0.000000e+00, double* %h, align 8
  store double 0.000000e+00, double* %w, align 8
  store double 0.000000e+00, double* %y, align 8
  store double 0.000000e+00, double* %x, align 8
  %1 = load i8*, i8** %str, align 8
  %call1 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0)) #5
  store i8* %call1, i8** %tok, align 8
  %2 = load i8*, i8** %tok, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %tok, align 8
  %call2 = call double @g_ascii_strtod(i8* %3, i8** null)
  store double %call2, double* %x, align 8
  %call3 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0)) #5
  store i8* %call3, i8** %tok, align 8
  %4 = load i8*, i8** %tok, align 8
  %tobool4 = icmp ne i8* %4, null
  br i1 %tobool4, label %if.then.5, label %if.end.15

if.then.5:                                        ; preds = %if.then
  %5 = load i8*, i8** %tok, align 8
  %call6 = call double @g_ascii_strtod(i8* %5, i8** null)
  store double %call6, double* %y, align 8
  %call7 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0)) #5
  store i8* %call7, i8** %tok, align 8
  %6 = load i8*, i8** %tok, align 8
  %cmp = icmp ne i8* %6, null
  br i1 %cmp, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.then.5
  %7 = load i8*, i8** %tok, align 8
  %call9 = call double @g_ascii_strtod(i8* %7, i8** null)
  store double %call9, double* %w, align 8
  %call10 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0)) #5
  store i8* %call10, i8** %tok, align 8
  %8 = load i8*, i8** %tok, align 8
  %tobool11 = icmp ne i8* %8, null
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.8
  %9 = load i8*, i8** %tok, align 8
  %call13 = call double @g_ascii_strtod(i8* %9, i8** null)
  store double %call13, double* %h, align 8
  store i32 1, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.5
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  %10 = load i8*, i8** %str, align 8
  call void @g_free(i8* %10)
  %11 = load i32, i32* %success, align 4
  %tobool17 = icmp ne i32 %11, 0
  br i1 %tobool17, label %if.then.18, label %if.else.25

if.then.18:                                       ; preds = %if.end.16
  %12 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %12)
  %13 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %14 = load double, double* %x, align 8
  %sub = fsub double -0.000000e+00, %14
  %15 = load double, double* %y, align 8
  %sub19 = fsub double -0.000000e+00, %15
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %13, double %sub, double %sub19)
  %16 = load double, double* %w, align 8
  %cmp20 = fcmp ogt double %16, 0.000000e+00
  br i1 %cmp20, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.18
  %17 = load double, double* %h, align 8
  %cmp21 = fcmp ogt double %17, 0.000000e+00
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %land.lhs.true
  %18 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %19 = load double*, double** %width.addr, align 8
  %20 = load double, double* %19, align 8
  %21 = load double, double* %w, align 8
  %div = fdiv double %20, %21
  %22 = load double*, double** %height.addr, align 8
  %23 = load double, double* %22, align 8
  %24 = load double, double* %h, align 8
  %div23 = fdiv double %23, %24
  call void @gimp_matrix3_scale(%struct._GimpMatrix3* %18, double %div, double %div23)
  br label %if.end.24

if.else:                                          ; preds = %land.lhs.true, %if.then.18
  %25 = load double*, double** %height.addr, align 8
  store double 0.000000e+00, double* %25, align 8
  %26 = load double*, double** %width.addr, align 8
  store double 0.000000e+00, double* %26, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.22
  br label %if.end.26

if.else.25:                                       ; preds = %if.end.16
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.end.24
  %27 = load i32, i32* %success, align 4
  ret i32 %27
}

declare void @gimp_matrix3_mult(%struct._GimpMatrix3*, %struct._GimpMatrix3*) #3

declare void @gimp_matrix3_scale(%struct._GimpMatrix3*, double, double) #3

declare double @g_ascii_strtod(i8*, i8**) #3

declare double @gimp_unit_get_factor(i32) #3

declare noalias i8* @g_strdup(i8*) #3

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #4

declare void @g_printerr(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @parse_svg_transform(i8* %value, %struct._GimpMatrix3* %matrix) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %i = alloca i32, align 4
  %trafo = alloca %struct._GimpMatrix3, align 8
  %keyword = alloca [32 x i8], align 16
  %args = alloca [6 x double], align 16
  %n_args = alloca i32, align 4
  %key_len = alloca i32, align 4
  %c = alloca i8, align 1
  %c56 = alloca i8, align 1
  %end_ptr = alloca i8*, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  %0 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.239, %entry
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %value.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %for.body, label %for.end.241

for.body:                                         ; preds = %for.cond
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %trafo)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i8*, i8** %value.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 %idxprom1
  %6 = load i8, i8* %arrayidx2, align 1
  %idxprom3 = zext i8 %6 to i64
  %7 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx4 = getelementptr inbounds i16, i16* %7, i64 %idxprom3
  %8 = load i16, i16* %arrayidx4, align 2
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 256
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %key_len, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %while.end
  %10 = load i32, i32* %key_len, align 4
  %conv7 = sext i32 %10 to i64
  %cmp8 = icmp ult i64 %conv7, 32
  br i1 %cmp8, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.6
  %11 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %11 to i64
  %12 = load i8*, i8** %value.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %12, i64 %idxprom11
  %13 = load i8, i8* %arrayidx12, align 1
  store i8 %13, i8* %c, align 1
  %14 = load i8, i8* %c, align 1
  %idxprom13 = zext i8 %14 to i64
  %15 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %15, i64 %idxprom13
  %16 = load i16, i16* %arrayidx14, align 2
  %conv15 = zext i16 %16 to i32
  %and16 = and i32 %conv15, 2
  %cmp17 = icmp ne i32 %and16, 0
  br i1 %cmp17, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.10
  %17 = load i8, i8* %c, align 1
  %conv19 = sext i8 %17 to i32
  %cmp20 = icmp eq i32 %conv19, 45
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body.10
  %18 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %18, 1
  store i32 %inc22, i32* %i, align 4
  %idxprom23 = sext i32 %18 to i64
  %19 = load i8*, i8** %value.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %19, i64 %idxprom23
  %20 = load i8, i8* %arrayidx24, align 1
  %21 = load i32, i32* %key_len, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [32 x i8], [32 x i8]* %keyword, i32 0, i64 %idxprom25
  store i8 %20, i8* %arrayidx26, align 1
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %key_len, align 4
  %inc27 = add nsw i32 %22, 1
  store i32 %inc27, i32* %key_len, align 4
  br label %for.cond.6

for.end:                                          ; preds = %if.else, %for.cond.6
  %23 = load i32, i32* %key_len, align 4
  %conv28 = sext i32 %23 to i64
  %cmp29 = icmp uge i64 %conv28, 32
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %for.end
  %24 = load i32, i32* %key_len, align 4
  %idxprom33 = sext i32 %24 to i64
  %arrayidx34 = getelementptr inbounds [32 x i8], [32 x i8]* %keyword, i32 0, i64 %idxprom33
  store i8 0, i8* %arrayidx34, align 1
  br label %while.cond.35

while.cond.35:                                    ; preds = %while.body.44, %if.end.32
  %25 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %25 to i64
  %26 = load i8*, i8** %value.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %26, i64 %idxprom36
  %27 = load i8, i8* %arrayidx37, align 1
  %idxprom38 = zext i8 %27 to i64
  %28 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx39 = getelementptr inbounds i16, i16* %28, i64 %idxprom38
  %29 = load i16, i16* %arrayidx39, align 2
  %conv40 = zext i16 %29 to i32
  %and41 = and i32 %conv40, 256
  %cmp42 = icmp ne i32 %and41, 0
  br i1 %cmp42, label %while.body.44, label %while.end.46

while.body.44:                                    ; preds = %while.cond.35
  %30 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %30, 1
  store i32 %inc45, i32* %i, align 4
  br label %while.cond.35

while.end.46:                                     ; preds = %while.cond.35
  %31 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %31 to i64
  %32 = load i8*, i8** %value.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %32, i64 %idxprom47
  %33 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %33 to i32
  %cmp50 = icmp ne i32 %conv49, 40
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %while.end.46
  store i32 0, i32* %retval
  br label %return

if.end.53:                                        ; preds = %while.end.46
  %34 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %34, 1
  store i32 %inc54, i32* %i, align 4
  store i32 0, i32* %n_args, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.125, %if.end.53
  br label %while.cond.57

while.cond.57:                                    ; preds = %while.body.66, %for.cond.55
  %35 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %35 to i64
  %36 = load i8*, i8** %value.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %36, i64 %idxprom58
  %37 = load i8, i8* %arrayidx59, align 1
  %idxprom60 = zext i8 %37 to i64
  %38 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx61 = getelementptr inbounds i16, i16* %38, i64 %idxprom60
  %39 = load i16, i16* %arrayidx61, align 2
  %conv62 = zext i16 %39 to i32
  %and63 = and i32 %conv62, 256
  %cmp64 = icmp ne i32 %and63, 0
  br i1 %cmp64, label %while.body.66, label %while.end.68

while.body.66:                                    ; preds = %while.cond.57
  %40 = load i32, i32* %i, align 4
  %inc67 = add nsw i32 %40, 1
  store i32 %inc67, i32* %i, align 4
  br label %while.cond.57

while.end.68:                                     ; preds = %while.cond.57
  %41 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %41 to i64
  %42 = load i8*, i8** %value.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %42, i64 %idxprom69
  %43 = load i8, i8* %arrayidx70, align 1
  store i8 %43, i8* %c56, align 1
  %44 = load i8, i8* %c56, align 1
  %idxprom71 = zext i8 %44 to i64
  %45 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx72 = getelementptr inbounds i16, i16* %45, i64 %idxprom71
  %46 = load i16, i16* %arrayidx72, align 2
  %conv73 = zext i16 %46 to i32
  %and74 = and i32 %conv73, 8
  %cmp75 = icmp ne i32 %and74, 0
  br i1 %cmp75, label %if.then.89, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %while.end.68
  %47 = load i8, i8* %c56, align 1
  %conv78 = sext i8 %47 to i32
  %cmp79 = icmp eq i32 %conv78, 43
  br i1 %cmp79, label %if.then.89, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %lor.lhs.false.77
  %48 = load i8, i8* %c56, align 1
  %conv82 = sext i8 %48 to i32
  %cmp83 = icmp eq i32 %conv82, 45
  br i1 %cmp83, label %if.then.89, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %lor.lhs.false.81
  %49 = load i8, i8* %c56, align 1
  %conv86 = sext i8 %49 to i32
  %cmp87 = icmp eq i32 %conv86, 46
  br i1 %cmp87, label %if.then.89, label %if.else.118

if.then.89:                                       ; preds = %lor.lhs.false.85, %lor.lhs.false.81, %lor.lhs.false.77, %while.end.68
  %50 = load i32, i32* %n_args, align 4
  %conv90 = sext i32 %50 to i64
  %cmp91 = icmp eq i64 %conv90, 6
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.then.89
  store i32 0, i32* %retval
  br label %return

if.end.94:                                        ; preds = %if.then.89
  %51 = load i8*, i8** %value.addr, align 8
  %52 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %52 to i64
  %add.ptr = getelementptr inbounds i8, i8* %51, i64 %idx.ext
  %call = call double @g_ascii_strtod(i8* %add.ptr, i8** %end_ptr)
  %53 = load i32, i32* %n_args, align 4
  %idxprom95 = sext i32 %53 to i64
  %arrayidx96 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 %idxprom95
  store double %call, double* %arrayidx96, align 8
  %54 = load i8*, i8** %end_ptr, align 8
  %55 = load i8*, i8** %value.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %54 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %55 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv97 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv97, i32* %i, align 4
  br label %while.cond.98

while.cond.98:                                    ; preds = %while.body.107, %if.end.94
  %56 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %56 to i64
  %57 = load i8*, i8** %value.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %57, i64 %idxprom99
  %58 = load i8, i8* %arrayidx100, align 1
  %idxprom101 = zext i8 %58 to i64
  %59 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx102 = getelementptr inbounds i16, i16* %59, i64 %idxprom101
  %60 = load i16, i16* %arrayidx102, align 2
  %conv103 = zext i16 %60 to i32
  %and104 = and i32 %conv103, 256
  %cmp105 = icmp ne i32 %and104, 0
  br i1 %cmp105, label %while.body.107, label %while.end.109

while.body.107:                                   ; preds = %while.cond.98
  %61 = load i32, i32* %i, align 4
  %inc108 = add nsw i32 %61, 1
  store i32 %inc108, i32* %i, align 4
  br label %while.cond.98

while.end.109:                                    ; preds = %while.cond.98
  %62 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %62 to i64
  %63 = load i8*, i8** %value.addr, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %63, i64 %idxprom110
  %64 = load i8, i8* %arrayidx111, align 1
  %conv112 = sext i8 %64 to i32
  %cmp113 = icmp eq i32 %conv112, 44
  br i1 %cmp113, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %while.end.109
  %65 = load i32, i32* %i, align 4
  %inc116 = add nsw i32 %65, 1
  store i32 %inc116, i32* %i, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %while.end.109
  br label %if.end.124

if.else.118:                                      ; preds = %lor.lhs.false.85
  %66 = load i8, i8* %c56, align 1
  %conv119 = sext i8 %66 to i32
  %cmp120 = icmp eq i32 %conv119, 41
  br i1 %cmp120, label %if.then.122, label %if.else.123

if.then.122:                                      ; preds = %if.else.118
  br label %for.end.127

if.else.123:                                      ; preds = %if.else.118
  store i32 0, i32* %retval
  br label %return

if.end.124:                                       ; preds = %if.end.117
  br label %for.inc.125

for.inc.125:                                      ; preds = %if.end.124
  %67 = load i32, i32* %n_args, align 4
  %inc126 = add nsw i32 %67, 1
  store i32 %inc126, i32* %n_args, align 4
  br label %for.cond.55

for.end.127:                                      ; preds = %if.then.122
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %keyword, i32 0, i32 0
  %call128 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0)) #8
  %cmp129 = icmp eq i32 %call128, 0
  br i1 %cmp129, label %if.then.131, label %if.else.142

if.then.131:                                      ; preds = %for.end.127
  %68 = load i32, i32* %n_args, align 4
  %cmp132 = icmp ne i32 %68, 6
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.then.131
  store i32 0, i32* %retval
  br label %return

if.end.135:                                       ; preds = %if.then.131
  %arrayidx136 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 0
  %69 = load double, double* %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 1
  %70 = load double, double* %arrayidx137, align 8
  %arrayidx138 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 2
  %71 = load double, double* %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 3
  %72 = load double, double* %arrayidx139, align 8
  %arrayidx140 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 4
  %73 = load double, double* %arrayidx140, align 8
  %arrayidx141 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 5
  %74 = load double, double* %arrayidx141, align 8
  call void @gimp_matrix3_affine(%struct._GimpMatrix3* %trafo, double %69, double %70, double %71, double %72, double %73, double %74)
  br label %if.end.238

if.else.142:                                      ; preds = %for.end.127
  %arraydecay143 = getelementptr inbounds [32 x i8], [32 x i8]* %keyword, i32 0, i32 0
  %call144 = call i32 @strcmp(i8* %arraydecay143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0)) #8
  %cmp145 = icmp eq i32 %call144, 0
  br i1 %cmp145, label %if.then.147, label %if.else.160

if.then.147:                                      ; preds = %if.else.142
  %75 = load i32, i32* %n_args, align 4
  %cmp148 = icmp eq i32 %75, 1
  br i1 %cmp148, label %if.then.150, label %if.else.152

if.then.150:                                      ; preds = %if.then.147
  %arrayidx151 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx151, align 8
  br label %if.end.157

if.else.152:                                      ; preds = %if.then.147
  %76 = load i32, i32* %n_args, align 4
  %cmp153 = icmp ne i32 %76, 2
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.else.152
  store i32 0, i32* %retval
  br label %return

if.end.156:                                       ; preds = %if.else.152
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %if.then.150
  %arrayidx158 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 0
  %77 = load double, double* %arrayidx158, align 8
  %arrayidx159 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 1
  %78 = load double, double* %arrayidx159, align 8
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %trafo, double %77, double %78)
  br label %if.end.237

if.else.160:                                      ; preds = %if.else.142
  %arraydecay161 = getelementptr inbounds [32 x i8], [32 x i8]* %keyword, i32 0, i32 0
  %call162 = call i32 @strcmp(i8* %arraydecay161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)) #8
  %cmp163 = icmp eq i32 %call162, 0
  br i1 %cmp163, label %if.then.165, label %if.else.179

if.then.165:                                      ; preds = %if.else.160
  %79 = load i32, i32* %n_args, align 4
  %cmp166 = icmp eq i32 %79, 1
  br i1 %cmp166, label %if.then.168, label %if.else.171

if.then.168:                                      ; preds = %if.then.165
  %arrayidx169 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 0
  %80 = load double, double* %arrayidx169, align 8
  %arrayidx170 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 1
  store double %80, double* %arrayidx170, align 8
  br label %if.end.176

if.else.171:                                      ; preds = %if.then.165
  %81 = load i32, i32* %n_args, align 4
  %cmp172 = icmp ne i32 %81, 2
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %if.else.171
  store i32 0, i32* %retval
  br label %return

if.end.175:                                       ; preds = %if.else.171
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.then.168
  %arrayidx177 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 0
  %82 = load double, double* %arrayidx177, align 8
  %arrayidx178 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 1
  %83 = load double, double* %arrayidx178, align 8
  call void @gimp_matrix3_scale(%struct._GimpMatrix3* %trafo, double %82, double %83)
  br label %if.end.236

if.else.179:                                      ; preds = %if.else.160
  %arraydecay180 = getelementptr inbounds [32 x i8], [32 x i8]* %keyword, i32 0, i32 0
  %call181 = call i32 @strcmp(i8* %arraydecay180, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0)) #8
  %cmp182 = icmp eq i32 %call181, 0
  br i1 %cmp182, label %if.then.184, label %if.else.204

if.then.184:                                      ; preds = %if.else.179
  %84 = load i32, i32* %n_args, align 4
  %cmp185 = icmp eq i32 %84, 1
  br i1 %cmp185, label %if.then.187, label %if.else.189

if.then.187:                                      ; preds = %if.then.184
  %arrayidx188 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 0
  %85 = load double, double* %arrayidx188, align 8
  %mul = fmul double %85, 0x401921FB54442D18
  %div = fdiv double %mul, 3.600000e+02
  call void @gimp_matrix3_rotate(%struct._GimpMatrix3* %trafo, double %div)
  br label %if.end.203

if.else.189:                                      ; preds = %if.then.184
  %86 = load i32, i32* %n_args, align 4
  %cmp190 = icmp eq i32 %86, 3
  br i1 %cmp190, label %if.then.192, label %if.else.201

if.then.192:                                      ; preds = %if.else.189
  %arrayidx193 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 1
  %87 = load double, double* %arrayidx193, align 8
  %sub = fsub double -0.000000e+00, %87
  %arrayidx194 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 2
  %88 = load double, double* %arrayidx194, align 8
  %sub195 = fsub double -0.000000e+00, %88
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %trafo, double %sub, double %sub195)
  %arrayidx196 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 0
  %89 = load double, double* %arrayidx196, align 8
  %mul197 = fmul double %89, 0x401921FB54442D18
  %div198 = fdiv double %mul197, 3.600000e+02
  call void @gimp_matrix3_rotate(%struct._GimpMatrix3* %trafo, double %div198)
  %arrayidx199 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 1
  %90 = load double, double* %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 2
  %91 = load double, double* %arrayidx200, align 8
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %trafo, double %90, double %91)
  br label %if.end.202

if.else.201:                                      ; preds = %if.else.189
  store i32 0, i32* %retval
  br label %return

if.end.202:                                       ; preds = %if.then.192
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.then.187
  br label %if.end.235

if.else.204:                                      ; preds = %if.else.179
  %arraydecay205 = getelementptr inbounds [32 x i8], [32 x i8]* %keyword, i32 0, i32 0
  %call206 = call i32 @strcmp(i8* %arraydecay205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)) #8
  %cmp207 = icmp eq i32 %call206, 0
  br i1 %cmp207, label %if.then.209, label %if.else.218

if.then.209:                                      ; preds = %if.else.204
  %92 = load i32, i32* %n_args, align 4
  %cmp210 = icmp ne i32 %92, 1
  br i1 %cmp210, label %if.then.212, label %if.end.213

if.then.212:                                      ; preds = %if.then.209
  store i32 0, i32* %retval
  br label %return

if.end.213:                                       ; preds = %if.then.209
  %arrayidx214 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 0
  %93 = load double, double* %arrayidx214, align 8
  %mul215 = fmul double %93, 0x401921FB54442D18
  %div216 = fdiv double %mul215, 3.600000e+02
  %call217 = call double @tan(double %div216) #5
  call void @gimp_matrix3_xshear(%struct._GimpMatrix3* %trafo, double %call217)
  br label %if.end.234

if.else.218:                                      ; preds = %if.else.204
  %arraydecay219 = getelementptr inbounds [32 x i8], [32 x i8]* %keyword, i32 0, i32 0
  %call220 = call i32 @strcmp(i8* %arraydecay219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0)) #8
  %cmp221 = icmp eq i32 %call220, 0
  br i1 %cmp221, label %if.then.223, label %if.else.232

if.then.223:                                      ; preds = %if.else.218
  %94 = load i32, i32* %n_args, align 4
  %cmp224 = icmp ne i32 %94, 1
  br i1 %cmp224, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %if.then.223
  store i32 0, i32* %retval
  br label %return

if.end.227:                                       ; preds = %if.then.223
  %arrayidx228 = getelementptr inbounds [6 x double], [6 x double]* %args, i32 0, i64 0
  %95 = load double, double* %arrayidx228, align 8
  %mul229 = fmul double %95, 0x401921FB54442D18
  %div230 = fdiv double %mul229, 3.600000e+02
  %call231 = call double @tan(double %div230) #5
  call void @gimp_matrix3_yshear(%struct._GimpMatrix3* %trafo, double %call231)
  br label %if.end.233

if.else.232:                                      ; preds = %if.else.218
  store i32 0, i32* %retval
  br label %return

if.end.233:                                       ; preds = %if.end.227
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %if.end.213
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234, %if.end.203
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.end.176
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.end.157
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.end.135
  call void @gimp_matrix3_invert(%struct._GimpMatrix3* %trafo)
  %96 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  call void @gimp_matrix3_mult(%struct._GimpMatrix3* %trafo, %struct._GimpMatrix3* %96)
  br label %for.inc.239

for.inc.239:                                      ; preds = %if.end.238
  %97 = load i32, i32* %i, align 4
  %inc240 = add nsw i32 %97, 1
  store i32 %inc240, i32* %i, align 4
  br label %for.cond

for.end.241:                                      ; preds = %for.cond
  %98 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  call void @gimp_matrix3_invert(%struct._GimpMatrix3* %98)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.241, %if.else.232, %if.then.226, %if.then.212, %if.else.201, %if.then.174, %if.then.155, %if.then.134, %if.else.123, %if.then.93, %if.then.52, %if.then.31
  %99 = load i32, i32* %retval
  ret i32 %99
}

declare noalias i8* @g_slice_copy(i64, i8*) #3

declare void @gimp_matrix3_affine(%struct._GimpMatrix3*, double, double, double, double, double, double) #3

declare void @gimp_matrix3_rotate(%struct._GimpMatrix3*, double) #3

declare void @gimp_matrix3_xshear(%struct._GimpMatrix3*, double) #3

; Function Attrs: nounwind
declare double @tan(double) #4

declare void @gimp_matrix3_yshear(%struct._GimpMatrix3*, double) #3

declare void @gimp_matrix3_invert(%struct._GimpMatrix3*) #3

; Function Attrs: nounwind uwtable
define internal %struct._GList* @parse_path_data(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %ctx = alloca %struct.ParsePathContext, align 8
  %in_num = alloca i32, align 4
  %in_frac = alloca i32, align 4
  %in_exp = alloca i32, align 4
  %exp_wait_sign = alloca i32, align 4
  %val = alloca double, align 8
  %c = alloca i8, align 1
  %sign = alloca i32, align 4
  %exp = alloca i32, align 4
  %exp_sign = alloca i32, align 4
  %frac = alloca double, align 8
  %i = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %in_num, align 4
  store i32 0, i32* %in_frac, align 4
  store i32 0, i32* %in_exp, align 4
  store i32 0, i32* %exp_wait_sign, align 4
  store double 0.000000e+00, double* %val, align 8
  store i8 0, i8* %c, align 1
  store i32 0, i32* %sign, align 4
  store i32 0, i32* %exp, align 4
  store i32 0, i32* %exp_sign, align 4
  store double 0.000000e+00, double* %frac, align 8
  %0 = bitcast %struct.ParsePathContext* %ctx to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 120, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  store i8 %3, i8* %c, align 1
  %4 = load i8, i8* %c, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.lhs.true, label %if.else.29

land.lhs.true:                                    ; preds = %for.cond
  %5 = load i8, i8* %c, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp sle i32 %conv2, 57
  br i1 %cmp3, label %if.then, label %if.else.29

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %in_num, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.5, label %if.else.24

if.then.5:                                        ; preds = %if.then
  %7 = load i32, i32* %in_exp, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.5
  %8 = load i32, i32* %exp, align 4
  %mul = mul nsw i32 %8, 10
  %9 = load i8, i8* %c, align 1
  %conv8 = sext i8 %9 to i32
  %add = add nsw i32 %mul, %conv8
  %sub = sub nsw i32 %add, 48
  store i32 %sub, i32* %exp, align 4
  store i32 0, i32* %exp_wait_sign, align 4
  br label %if.end.23

if.else:                                          ; preds = %if.then.5
  %10 = load i32, i32* %in_frac, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.then.10, label %if.else.17

if.then.10:                                       ; preds = %if.else
  %11 = load double, double* %frac, align 8
  %mul11 = fmul double %11, 1.000000e-01
  store double %mul11, double* %frac, align 8
  %12 = load i8, i8* %c, align 1
  %conv12 = sext i8 %12 to i32
  %sub13 = sub nsw i32 %conv12, 48
  %conv14 = sitofp i32 %sub13 to double
  %mul15 = fmul double %mul11, %conv14
  %13 = load double, double* %val, align 8
  %add16 = fadd double %13, %mul15
  store double %add16, double* %val, align 8
  br label %if.end

if.else.17:                                       ; preds = %if.else
  %14 = load double, double* %val, align 8
  %mul18 = fmul double %14, 1.000000e+01
  %15 = load i8, i8* %c, align 1
  %conv19 = sext i8 %15 to i32
  %conv20 = sitofp i32 %conv19 to double
  %add21 = fadd double %mul18, %conv20
  %sub22 = fsub double %add21, 4.800000e+01
  store double %sub22, double* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.17, %if.then.10
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then.7
  br label %if.end.28

if.else.24:                                       ; preds = %if.then
  store i32 1, i32* %in_num, align 4
  store i32 0, i32* %in_frac, align 4
  store i32 0, i32* %in_exp, align 4
  store i32 0, i32* %exp, align 4
  store i32 1, i32* %exp_sign, align 4
  store i32 0, i32* %exp_wait_sign, align 4
  %16 = load i8, i8* %c, align 1
  %conv25 = sext i8 %16 to i32
  %sub26 = sub nsw i32 %conv25, 48
  %conv27 = sitofp i32 %sub26 to double
  store double %conv27, double* %val, align 8
  store i32 1, i32* %sign, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.24, %if.end.23
  br label %if.end.115

if.else.29:                                       ; preds = %land.lhs.true, %for.cond
  %17 = load i8, i8* %c, align 1
  %conv30 = sext i8 %17 to i32
  %cmp31 = icmp eq i32 %conv30, 46
  br i1 %cmp31, label %if.then.33, label %if.else.37

if.then.33:                                       ; preds = %if.else.29
  %18 = load i32, i32* %in_num, align 4
  %tobool34 = icmp ne i32 %18, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.then.33
  store i32 1, i32* %in_num, align 4
  store double 0.000000e+00, double* %val, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.then.33
  store i32 1, i32* %in_frac, align 4
  store double 1.000000e+00, double* %frac, align 8
  br label %if.end.114

if.else.37:                                       ; preds = %if.else.29
  %19 = load i8, i8* %c, align 1
  %conv38 = sext i8 %19 to i32
  %cmp39 = icmp eq i32 %conv38, 69
  br i1 %cmp39, label %land.lhs.true.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.37
  %20 = load i8, i8* %c, align 1
  %conv41 = sext i8 %20 to i32
  %cmp42 = icmp eq i32 %conv41, 101
  br i1 %cmp42, label %land.lhs.true.44, label %if.else.47

land.lhs.true.44:                                 ; preds = %lor.lhs.false, %if.else.37
  %21 = load i32, i32* %in_num, align 4
  %tobool45 = icmp ne i32 %21, 0
  br i1 %tobool45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %land.lhs.true.44
  store i32 1, i32* %in_exp, align 4
  store i32 1, i32* %exp_wait_sign, align 4
  store i32 0, i32* %exp, align 4
  store i32 1, i32* %exp_sign, align 4
  br label %if.end.113

if.else.47:                                       ; preds = %land.lhs.true.44, %lor.lhs.false
  %22 = load i8, i8* %c, align 1
  %conv48 = sext i8 %22 to i32
  %cmp49 = icmp eq i32 %conv48, 43
  br i1 %cmp49, label %land.lhs.true.55, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %if.else.47
  %23 = load i8, i8* %c, align 1
  %conv52 = sext i8 %23 to i32
  %cmp53 = icmp eq i32 %conv52, 45
  br i1 %cmp53, label %land.lhs.true.55, label %if.else.61

land.lhs.true.55:                                 ; preds = %lor.lhs.false.51, %if.else.47
  %24 = load i32, i32* %in_exp, align 4
  %tobool56 = icmp ne i32 %24, 0
  br i1 %tobool56, label %if.then.57, label %if.else.61

if.then.57:                                       ; preds = %land.lhs.true.55
  %25 = load i8, i8* %c, align 1
  %conv58 = sext i8 %25 to i32
  %cmp59 = icmp eq i32 %conv58, 43
  %cond = select i1 %cmp59, i32 1, i32 -1
  store i32 %cond, i32* %exp_sign, align 4
  br label %if.end.112

if.else.61:                                       ; preds = %land.lhs.true.55, %lor.lhs.false.51
  %26 = load i32, i32* %in_num, align 4
  %tobool62 = icmp ne i32 %26, 0
  br i1 %tobool62, label %if.then.63, label %if.end.111

if.then.63:                                       ; preds = %if.else.61
  %27 = load i32, i32* %sign, align 4
  %conv64 = sitofp i32 %27 to double
  %28 = load i32, i32* %exp_sign, align 4
  %29 = load i32, i32* %exp, align 4
  %mul65 = mul nsw i32 %28, %29
  %conv66 = sitofp i32 %mul65 to double
  %call = call double @pow(double 1.000000e+01, double %conv66) #5
  %mul67 = fmul double %conv64, %call
  %30 = load double, double* %val, align 8
  %mul68 = fmul double %30, %mul67
  store double %mul68, double* %val, align 8
  %rel = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 8
  %31 = load i32, i32* %rel, align 4
  %tobool69 = icmp ne i32 %31, 0
  br i1 %tobool69, label %if.then.70, label %if.end.107

if.then.70:                                       ; preds = %if.then.63
  %cmd = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 6
  %32 = load i8, i8* %cmd, align 1
  %conv71 = sext i8 %32 to i32
  switch i32 %conv71, label %sw.epilog [
    i32 108, label %sw.bb
    i32 109, label %sw.bb
    i32 99, label %sw.bb
    i32 115, label %sw.bb
    i32 113, label %sw.bb
    i32 116, label %sw.bb
    i32 97, label %sw.bb.85
    i32 104, label %sw.bb.101
    i32 118, label %sw.bb.104
  ]

sw.bb:                                            ; preds = %if.then.70, %if.then.70, %if.then.70, %if.then.70, %if.then.70, %if.then.70
  %param = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 7
  %33 = load i32, i32* %param, align 4
  %and = and i32 %33, 1
  %cmp72 = icmp eq i32 %and, 0
  br i1 %cmp72, label %if.then.74, label %if.else.76

if.then.74:                                       ; preds = %sw.bb
  %cpx = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 2
  %34 = load double, double* %cpx, align 8
  %35 = load double, double* %val, align 8
  %add75 = fadd double %35, %34
  store double %add75, double* %val, align 8
  br label %if.end.84

if.else.76:                                       ; preds = %sw.bb
  %param77 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 7
  %36 = load i32, i32* %param77, align 4
  %and78 = and i32 %36, 1
  %cmp79 = icmp eq i32 %and78, 1
  br i1 %cmp79, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.else.76
  %cpy = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 3
  %37 = load double, double* %cpy, align 8
  %38 = load double, double* %val, align 8
  %add82 = fadd double %38, %37
  store double %add82, double* %val, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.else.76
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.74
  br label %sw.epilog

sw.bb.85:                                         ; preds = %if.then.70
  %param86 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 7
  %39 = load i32, i32* %param86, align 4
  %cmp87 = icmp eq i32 %39, 5
  br i1 %cmp87, label %if.then.89, label %if.else.92

if.then.89:                                       ; preds = %sw.bb.85
  %cpx90 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 2
  %40 = load double, double* %cpx90, align 8
  %41 = load double, double* %val, align 8
  %add91 = fadd double %41, %40
  store double %add91, double* %val, align 8
  br label %if.end.100

if.else.92:                                       ; preds = %sw.bb.85
  %param93 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 7
  %42 = load i32, i32* %param93, align 4
  %cmp94 = icmp eq i32 %42, 6
  br i1 %cmp94, label %if.then.96, label %if.end.99

if.then.96:                                       ; preds = %if.else.92
  %cpy97 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 3
  %43 = load double, double* %cpy97, align 8
  %44 = load double, double* %val, align 8
  %add98 = fadd double %44, %43
  store double %add98, double* %val, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.96, %if.else.92
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.89
  br label %sw.epilog

sw.bb.101:                                        ; preds = %if.then.70
  %cpx102 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 2
  %45 = load double, double* %cpx102, align 8
  %46 = load double, double* %val, align 8
  %add103 = fadd double %46, %45
  store double %add103, double* %val, align 8
  br label %sw.epilog

sw.bb.104:                                        ; preds = %if.then.70
  %cpy105 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 3
  %47 = load double, double* %cpy105, align 8
  %48 = load double, double* %val, align 8
  %add106 = fadd double %48, %47
  store double %add106, double* %val, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.70, %sw.bb.104, %sw.bb.101, %if.end.100, %if.end.84
  br label %if.end.107

if.end.107:                                       ; preds = %sw.epilog, %if.then.63
  %49 = load double, double* %val, align 8
  %param108 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 7
  %50 = load i32, i32* %param108, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %param108, align 4
  %idxprom109 = sext i32 %50 to i64
  %params = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 9
  %arrayidx110 = getelementptr inbounds [7 x double], [7 x double]* %params, i32 0, i64 %idxprom109
  store double %49, double* %arrayidx110, align 8
  call void @parse_path_do_cmd(%struct.ParsePathContext* %ctx, i32 0)
  store i32 0, i32* %in_num, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.107, %if.else.61
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.57
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.46
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.end.36
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.28
  %51 = load i8, i8* %c, align 1
  %conv116 = sext i8 %51 to i32
  %cmp117 = icmp eq i32 %conv116, 0
  br i1 %cmp117, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %if.end.115
  br label %for.end

if.else.120:                                      ; preds = %if.end.115
  %52 = load i8, i8* %c, align 1
  %conv121 = sext i8 %52 to i32
  %cmp122 = icmp eq i32 %conv121, 43
  br i1 %cmp122, label %land.lhs.true.128, label %lor.lhs.false.124

lor.lhs.false.124:                                ; preds = %if.else.120
  %53 = load i8, i8* %c, align 1
  %conv125 = sext i8 %53 to i32
  %cmp126 = icmp eq i32 %conv125, 45
  br i1 %cmp126, label %land.lhs.true.128, label %if.else.135

land.lhs.true.128:                                ; preds = %lor.lhs.false.124, %if.else.120
  %54 = load i32, i32* %exp_wait_sign, align 4
  %tobool129 = icmp ne i32 %54, 0
  br i1 %tobool129, label %if.else.135, label %if.then.130

if.then.130:                                      ; preds = %land.lhs.true.128
  %55 = load i8, i8* %c, align 1
  %conv131 = sext i8 %55 to i32
  %cmp132 = icmp eq i32 %conv131, 43
  %cond134 = select i1 %cmp132, i32 1, i32 -1
  store i32 %cond134, i32* %sign, align 4
  store double 0.000000e+00, double* %val, align 8
  store i32 1, i32* %in_num, align 4
  store i32 0, i32* %in_frac, align 4
  store i32 0, i32* %in_exp, align 4
  store i32 0, i32* %exp, align 4
  store i32 1, i32* %exp_sign, align 4
  store i32 0, i32* %exp_wait_sign, align 4
  br label %if.end.197

if.else.135:                                      ; preds = %land.lhs.true.128, %lor.lhs.false.124
  %56 = load i8, i8* %c, align 1
  %conv136 = sext i8 %56 to i32
  %cmp137 = icmp eq i32 %conv136, 122
  br i1 %cmp137, label %if.then.143, label %lor.lhs.false.139

lor.lhs.false.139:                                ; preds = %if.else.135
  %57 = load i8, i8* %c, align 1
  %conv140 = sext i8 %57 to i32
  %cmp141 = icmp eq i32 %conv140, 90
  br i1 %cmp141, label %if.then.143, label %if.else.152

if.then.143:                                      ; preds = %lor.lhs.false.139, %if.else.135
  %param144 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 7
  %58 = load i32, i32* %param144, align 4
  %tobool145 = icmp ne i32 %58, 0
  br i1 %tobool145, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.then.143
  call void @parse_path_do_cmd(%struct.ParsePathContext* %ctx, i32 1)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %if.then.143
  %stroke = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 1
  %59 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool148 = icmp ne %struct._GimpStroke* %59, null
  br i1 %tobool148, label %if.then.149, label %if.end.151

if.then.149:                                      ; preds = %if.end.147
  %stroke150 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 1
  %60 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke150, align 8
  call void @gimp_stroke_close(%struct._GimpStroke* %60)
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.149, %if.end.147
  br label %if.end.196

if.else.152:                                      ; preds = %lor.lhs.false.139
  %61 = load i8, i8* %c, align 1
  %conv153 = sext i8 %61 to i32
  %cmp154 = icmp sge i32 %conv153, 65
  br i1 %cmp154, label %land.lhs.true.156, label %if.else.175

land.lhs.true.156:                                ; preds = %if.else.152
  %62 = load i8, i8* %c, align 1
  %conv157 = sext i8 %62 to i32
  %cmp158 = icmp sle i32 %conv157, 90
  br i1 %cmp158, label %land.lhs.true.160, label %if.else.175

land.lhs.true.160:                                ; preds = %land.lhs.true.156
  %63 = load i8, i8* %c, align 1
  %conv161 = sext i8 %63 to i32
  %cmp162 = icmp ne i32 %conv161, 69
  br i1 %cmp162, label %if.then.164, label %if.else.175

if.then.164:                                      ; preds = %land.lhs.true.160
  %param165 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 7
  %64 = load i32, i32* %param165, align 4
  %tobool166 = icmp ne i32 %64, 0
  br i1 %tobool166, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %if.then.164
  call void @parse_path_do_cmd(%struct.ParsePathContext* %ctx, i32 1)
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.167, %if.then.164
  %65 = load i8, i8* %c, align 1
  %conv169 = sext i8 %65 to i32
  %add170 = add nsw i32 %conv169, 97
  %sub171 = sub nsw i32 %add170, 65
  %conv172 = trunc i32 %sub171 to i8
  %cmd173 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 6
  store i8 %conv172, i8* %cmd173, align 1
  %rel174 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 8
  store i32 0, i32* %rel174, align 4
  br label %if.end.195

if.else.175:                                      ; preds = %land.lhs.true.160, %land.lhs.true.156, %if.else.152
  %66 = load i8, i8* %c, align 1
  %conv176 = sext i8 %66 to i32
  %cmp177 = icmp sge i32 %conv176, 97
  br i1 %cmp177, label %land.lhs.true.179, label %if.end.194

land.lhs.true.179:                                ; preds = %if.else.175
  %67 = load i8, i8* %c, align 1
  %conv180 = sext i8 %67 to i32
  %cmp181 = icmp sle i32 %conv180, 122
  br i1 %cmp181, label %land.lhs.true.183, label %if.end.194

land.lhs.true.183:                                ; preds = %land.lhs.true.179
  %68 = load i8, i8* %c, align 1
  %conv184 = sext i8 %68 to i32
  %cmp185 = icmp ne i32 %conv184, 101
  br i1 %cmp185, label %if.then.187, label %if.end.194

if.then.187:                                      ; preds = %land.lhs.true.183
  %param188 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 7
  %69 = load i32, i32* %param188, align 4
  %tobool189 = icmp ne i32 %69, 0
  br i1 %tobool189, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %if.then.187
  call void @parse_path_do_cmd(%struct.ParsePathContext* %ctx, i32 1)
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.190, %if.then.187
  %70 = load i8, i8* %c, align 1
  %cmd192 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 6
  store i8 %70, i8* %cmd192, align 1
  %rel193 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 8
  store i32 1, i32* %rel193, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.191, %land.lhs.true.183, %land.lhs.true.179, %if.else.175
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.end.168
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.end.151
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.then.130
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197
  br label %for.inc

for.inc:                                          ; preds = %if.end.198
  %71 = load i32, i32* %i, align 4
  %inc199 = add nsw i32 %71, 1
  store i32 %inc199, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.119
  %strokes = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 0
  %72 = load %struct._GList*, %struct._GList** %strokes, align 8
  %call200 = call %struct._GList* @g_list_reverse(%struct._GList* %72)
  ret %struct._GList* %call200
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind uwtable
define internal void @parse_path_do_cmd(%struct.ParsePathContext* %ctx, i32 %final) #0 {
entry:
  %ctx.addr = alloca %struct.ParsePathContext*, align 8
  %final.addr = alloca i32, align 4
  %coords = alloca %struct._GimpCoords, align 8
  %ctrl1 = alloca %struct._GimpCoords, align 8
  %ctrl2 = alloca %struct._GimpCoords, align 8
  %ctrl168 = alloca %struct._GimpCoords, align 8
  %ctrl269 = alloca %struct._GimpCoords, align 8
  %ctrl = alloca %struct._GimpCoords, align 8
  %ctrl160 = alloca %struct._GimpCoords, align 8
  %ctrl189 = alloca %struct._GimpCoords, align 8
  store %struct.ParsePathContext* %ctx, %struct.ParsePathContext** %ctx.addr, align 8
  store i32 %final, i32* %final.addr, align 4
  %0 = bitcast %struct._GimpCoords* %coords to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 64, i32 8, i1 false)
  %1 = bitcast i8* %0 to %struct._GimpCoords*
  %2 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %1, i32 0, i32 2
  store double 1.000000e+00, double* %2
  %3 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %1, i32 0, i32 3
  store double 5.000000e-01, double* %3
  %4 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %1, i32 0, i32 4
  store double 5.000000e-01, double* %4
  %5 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %1, i32 0, i32 5
  store double 5.000000e-01, double* %5
  %6 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cmd = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %6, i32 0, i32 6
  %7 = load i8, i8* %cmd, align 1
  %conv = sext i8 %7 to i32
  switch i32 %conv, label %sw.default [
    i32 109, label %sw.bb
    i32 108, label %sw.bb.9
    i32 99, label %sw.bb.29
    i32 115, label %sw.bb.61
    i32 104, label %sw.bb.97
    i32 118, label %sw.bb.112
    i32 113, label %sw.bb.127
    i32 116, label %sw.bb.153
    i32 97, label %sw.bb.223
  ]

sw.bb:                                            ; preds = %entry
  %8 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %8, i32 0, i32 7
  %9 = load i32, i32* %param, align 4
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %10 = load i32, i32* %final.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  %11 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  call void @parse_path_default_xy(%struct.ParsePathContext* %11, i32 2)
  %12 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %12, i32 0, i32 9
  %arrayidx = getelementptr inbounds [7 x double], [7 x double]* %params, i32 0, i64 0
  %13 = load double, double* %arrayidx, align 8
  %14 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %14, i32 0, i32 4
  store double %13, double* %rpx, align 8
  %15 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %15, i32 0, i32 2
  store double %13, double* %cpx, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 0
  store double %13, double* %x, align 8
  %16 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params2 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %16, i32 0, i32 9
  %arrayidx3 = getelementptr inbounds [7 x double], [7 x double]* %params2, i32 0, i64 1
  %17 = load double, double* %arrayidx3, align 8
  %18 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %18, i32 0, i32 5
  store double %17, double* %rpy, align 8
  %19 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %19, i32 0, i32 3
  store double %17, double* %cpy, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 1
  store double %17, double* %y, align 8
  %call = call %struct._GimpStroke* @gimp_bezier_stroke_new_moveto(%struct._GimpCoords* %coords)
  %20 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %stroke = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %20, i32 0, i32 1
  store %struct._GimpStroke* %call, %struct._GimpStroke** %stroke, align 8
  %21 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %strokes = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %21, i32 0, i32 0
  %22 = load %struct._GList*, %struct._GList** %strokes, align 8
  %23 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %stroke4 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %23, i32 0, i32 1
  %24 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke4, align 8
  %25 = bitcast %struct._GimpStroke* %24 to i8*
  %call5 = call %struct._GList* @g_list_prepend(%struct._GList* %22, i8* %25)
  %26 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %strokes6 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %26, i32 0, i32 0
  store %struct._GList* %call5, %struct._GList** %strokes6, align 8
  %27 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param7 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %27, i32 0, i32 7
  store i32 0, i32* %param7, align 4
  %28 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cmd8 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %28, i32 0, i32 6
  store i8 108, i8* %cmd8, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %29 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param10 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %29, i32 0, i32 7
  %30 = load i32, i32* %param10, align 4
  %cmp11 = icmp eq i32 %30, 2
  br i1 %cmp11, label %if.then.15, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %sw.bb.9
  %31 = load i32, i32* %final.addr, align 4
  %tobool14 = icmp ne i32 %31, 0
  br i1 %tobool14, label %if.then.15, label %if.end.28

if.then.15:                                       ; preds = %lor.lhs.false.13, %sw.bb.9
  %32 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  call void @parse_path_default_xy(%struct.ParsePathContext* %32, i32 2)
  %33 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params16 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %33, i32 0, i32 9
  %arrayidx17 = getelementptr inbounds [7 x double], [7 x double]* %params16, i32 0, i64 0
  %34 = load double, double* %arrayidx17, align 8
  %35 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx18 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %35, i32 0, i32 4
  store double %34, double* %rpx18, align 8
  %36 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx19 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %36, i32 0, i32 2
  store double %34, double* %cpx19, align 8
  %x20 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 0
  store double %34, double* %x20, align 8
  %37 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params21 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %37, i32 0, i32 9
  %arrayidx22 = getelementptr inbounds [7 x double], [7 x double]* %params21, i32 0, i64 1
  %38 = load double, double* %arrayidx22, align 8
  %39 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy23 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %39, i32 0, i32 5
  store double %38, double* %rpy23, align 8
  %40 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy24 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %40, i32 0, i32 3
  store double %38, double* %cpy24, align 8
  %y25 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 1
  store double %38, double* %y25, align 8
  %41 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %stroke26 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %41, i32 0, i32 1
  %42 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke26, align 8
  call void @gimp_bezier_stroke_lineto(%struct._GimpStroke* %42, %struct._GimpCoords* %coords)
  %43 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param27 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %43, i32 0, i32 7
  store i32 0, i32* %param27, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.15, %lor.lhs.false.13
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %44 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param30 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %44, i32 0, i32 7
  %45 = load i32, i32* %param30, align 4
  %cmp31 = icmp eq i32 %45, 6
  br i1 %cmp31, label %if.then.35, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %sw.bb.29
  %46 = load i32, i32* %final.addr, align 4
  %tobool34 = icmp ne i32 %46, 0
  br i1 %tobool34, label %if.then.35, label %if.end.60

if.then.35:                                       ; preds = %lor.lhs.false.33, %sw.bb.29
  %47 = bitcast %struct._GimpCoords* %ctrl1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 64, i32 8, i1 false)
  %48 = bitcast i8* %47 to %struct._GimpCoords*
  %49 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %48, i32 0, i32 2
  store double 1.000000e+00, double* %49
  %50 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %48, i32 0, i32 3
  store double 5.000000e-01, double* %50
  %51 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %48, i32 0, i32 4
  store double 5.000000e-01, double* %51
  %52 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %48, i32 0, i32 5
  store double 5.000000e-01, double* %52
  %53 = bitcast %struct._GimpCoords* %ctrl2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %53, i8 0, i64 64, i32 8, i1 false)
  %54 = bitcast i8* %53 to %struct._GimpCoords*
  %55 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %54, i32 0, i32 2
  store double 1.000000e+00, double* %55
  %56 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %54, i32 0, i32 3
  store double 5.000000e-01, double* %56
  %57 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %54, i32 0, i32 4
  store double 5.000000e-01, double* %57
  %58 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %54, i32 0, i32 5
  store double 5.000000e-01, double* %58
  %59 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  call void @parse_path_default_xy(%struct.ParsePathContext* %59, i32 6)
  %60 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params36 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %60, i32 0, i32 9
  %arrayidx37 = getelementptr inbounds [7 x double], [7 x double]* %params36, i32 0, i64 0
  %61 = load double, double* %arrayidx37, align 8
  %x38 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %ctrl1, i32 0, i32 0
  store double %61, double* %x38, align 8
  %62 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params39 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %62, i32 0, i32 9
  %arrayidx40 = getelementptr inbounds [7 x double], [7 x double]* %params39, i32 0, i64 1
  %63 = load double, double* %arrayidx40, align 8
  %y41 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %ctrl1, i32 0, i32 1
  store double %63, double* %y41, align 8
  %64 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params42 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %64, i32 0, i32 9
  %arrayidx43 = getelementptr inbounds [7 x double], [7 x double]* %params42, i32 0, i64 2
  %65 = load double, double* %arrayidx43, align 8
  %66 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx44 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %66, i32 0, i32 4
  store double %65, double* %rpx44, align 8
  %x45 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %ctrl2, i32 0, i32 0
  store double %65, double* %x45, align 8
  %67 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params46 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %67, i32 0, i32 9
  %arrayidx47 = getelementptr inbounds [7 x double], [7 x double]* %params46, i32 0, i64 3
  %68 = load double, double* %arrayidx47, align 8
  %69 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy48 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %69, i32 0, i32 5
  store double %68, double* %rpy48, align 8
  %y49 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %ctrl2, i32 0, i32 1
  store double %68, double* %y49, align 8
  %70 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params50 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %70, i32 0, i32 9
  %arrayidx51 = getelementptr inbounds [7 x double], [7 x double]* %params50, i32 0, i64 4
  %71 = load double, double* %arrayidx51, align 8
  %72 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx52 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %72, i32 0, i32 2
  store double %71, double* %cpx52, align 8
  %x53 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 0
  store double %71, double* %x53, align 8
  %73 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params54 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %73, i32 0, i32 9
  %arrayidx55 = getelementptr inbounds [7 x double], [7 x double]* %params54, i32 0, i64 5
  %74 = load double, double* %arrayidx55, align 8
  %75 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy56 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %75, i32 0, i32 3
  store double %74, double* %cpy56, align 8
  %y57 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 1
  store double %74, double* %y57, align 8
  %76 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %stroke58 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %76, i32 0, i32 1
  %77 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke58, align 8
  call void @gimp_bezier_stroke_cubicto(%struct._GimpStroke* %77, %struct._GimpCoords* %ctrl1, %struct._GimpCoords* %ctrl2, %struct._GimpCoords* %coords)
  %78 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param59 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %78, i32 0, i32 7
  store i32 0, i32* %param59, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.35, %lor.lhs.false.33
  br label %sw.epilog

sw.bb.61:                                         ; preds = %entry
  %79 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param62 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %79, i32 0, i32 7
  %80 = load i32, i32* %param62, align 4
  %cmp63 = icmp eq i32 %80, 4
  br i1 %cmp63, label %if.then.67, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %sw.bb.61
  %81 = load i32, i32* %final.addr, align 4
  %tobool66 = icmp ne i32 %81, 0
  br i1 %tobool66, label %if.then.67, label %if.end.96

if.then.67:                                       ; preds = %lor.lhs.false.65, %sw.bb.61
  %82 = bitcast %struct._GimpCoords* %ctrl168 to i8*
  call void @llvm.memset.p0i8.i64(i8* %82, i8 0, i64 64, i32 8, i1 false)
  %83 = bitcast i8* %82 to %struct._GimpCoords*
  %84 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %83, i32 0, i32 2
  store double 1.000000e+00, double* %84
  %85 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %83, i32 0, i32 3
  store double 5.000000e-01, double* %85
  %86 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %83, i32 0, i32 4
  store double 5.000000e-01, double* %86
  %87 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %83, i32 0, i32 5
  store double 5.000000e-01, double* %87
  %88 = bitcast %struct._GimpCoords* %ctrl269 to i8*
  call void @llvm.memset.p0i8.i64(i8* %88, i8 0, i64 64, i32 8, i1 false)
  %89 = bitcast i8* %88 to %struct._GimpCoords*
  %90 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %89, i32 0, i32 2
  store double 1.000000e+00, double* %90
  %91 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %89, i32 0, i32 3
  store double 5.000000e-01, double* %91
  %92 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %89, i32 0, i32 4
  store double 5.000000e-01, double* %92
  %93 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %89, i32 0, i32 5
  store double 5.000000e-01, double* %93
  %94 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  call void @parse_path_default_xy(%struct.ParsePathContext* %94, i32 4)
  %95 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx70 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %95, i32 0, i32 2
  %96 = load double, double* %cpx70, align 8
  %mul = fmul double 2.000000e+00, %96
  %97 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx71 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %97, i32 0, i32 4
  %98 = load double, double* %rpx71, align 8
  %sub = fsub double %mul, %98
  %x72 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %ctrl168, i32 0, i32 0
  store double %sub, double* %x72, align 8
  %99 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy73 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %99, i32 0, i32 3
  %100 = load double, double* %cpy73, align 8
  %mul74 = fmul double 2.000000e+00, %100
  %101 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy75 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %101, i32 0, i32 5
  %102 = load double, double* %rpy75, align 8
  %sub76 = fsub double %mul74, %102
  %y77 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %ctrl168, i32 0, i32 1
  store double %sub76, double* %y77, align 8
  %103 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params78 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %103, i32 0, i32 9
  %arrayidx79 = getelementptr inbounds [7 x double], [7 x double]* %params78, i32 0, i64 0
  %104 = load double, double* %arrayidx79, align 8
  %105 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx80 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %105, i32 0, i32 4
  store double %104, double* %rpx80, align 8
  %x81 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %ctrl269, i32 0, i32 0
  store double %104, double* %x81, align 8
  %106 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params82 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %106, i32 0, i32 9
  %arrayidx83 = getelementptr inbounds [7 x double], [7 x double]* %params82, i32 0, i64 1
  %107 = load double, double* %arrayidx83, align 8
  %108 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy84 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %108, i32 0, i32 5
  store double %107, double* %rpy84, align 8
  %y85 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %ctrl269, i32 0, i32 1
  store double %107, double* %y85, align 8
  %109 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params86 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %109, i32 0, i32 9
  %arrayidx87 = getelementptr inbounds [7 x double], [7 x double]* %params86, i32 0, i64 2
  %110 = load double, double* %arrayidx87, align 8
  %111 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx88 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %111, i32 0, i32 2
  store double %110, double* %cpx88, align 8
  %x89 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 0
  store double %110, double* %x89, align 8
  %112 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params90 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %112, i32 0, i32 9
  %arrayidx91 = getelementptr inbounds [7 x double], [7 x double]* %params90, i32 0, i64 3
  %113 = load double, double* %arrayidx91, align 8
  %114 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy92 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %114, i32 0, i32 3
  store double %113, double* %cpy92, align 8
  %y93 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 1
  store double %113, double* %y93, align 8
  %115 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %stroke94 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %115, i32 0, i32 1
  %116 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke94, align 8
  call void @gimp_bezier_stroke_cubicto(%struct._GimpStroke* %116, %struct._GimpCoords* %ctrl168, %struct._GimpCoords* %ctrl269, %struct._GimpCoords* %coords)
  %117 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param95 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %117, i32 0, i32 7
  store i32 0, i32* %param95, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.67, %lor.lhs.false.65
  br label %sw.epilog

sw.bb.97:                                         ; preds = %entry
  %118 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param98 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %118, i32 0, i32 7
  %119 = load i32, i32* %param98, align 4
  %cmp99 = icmp eq i32 %119, 1
  br i1 %cmp99, label %if.then.101, label %if.end.111

if.then.101:                                      ; preds = %sw.bb.97
  %120 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params102 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %120, i32 0, i32 9
  %arrayidx103 = getelementptr inbounds [7 x double], [7 x double]* %params102, i32 0, i64 0
  %121 = load double, double* %arrayidx103, align 8
  %122 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx104 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %122, i32 0, i32 4
  store double %121, double* %rpx104, align 8
  %123 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx105 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %123, i32 0, i32 2
  store double %121, double* %cpx105, align 8
  %x106 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 0
  store double %121, double* %x106, align 8
  %124 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy107 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %124, i32 0, i32 3
  %125 = load double, double* %cpy107, align 8
  %y108 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 1
  store double %125, double* %y108, align 8
  %126 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %stroke109 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %126, i32 0, i32 1
  %127 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke109, align 8
  call void @gimp_bezier_stroke_lineto(%struct._GimpStroke* %127, %struct._GimpCoords* %coords)
  %128 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param110 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %128, i32 0, i32 7
  store i32 0, i32* %param110, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.101, %sw.bb.97
  br label %sw.epilog

sw.bb.112:                                        ; preds = %entry
  %129 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param113 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %129, i32 0, i32 7
  %130 = load i32, i32* %param113, align 4
  %cmp114 = icmp eq i32 %130, 1
  br i1 %cmp114, label %if.then.116, label %if.end.126

if.then.116:                                      ; preds = %sw.bb.112
  %131 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx117 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %131, i32 0, i32 2
  %132 = load double, double* %cpx117, align 8
  %x118 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 0
  store double %132, double* %x118, align 8
  %133 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params119 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %133, i32 0, i32 9
  %arrayidx120 = getelementptr inbounds [7 x double], [7 x double]* %params119, i32 0, i64 0
  %134 = load double, double* %arrayidx120, align 8
  %135 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy121 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %135, i32 0, i32 5
  store double %134, double* %rpy121, align 8
  %136 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy122 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %136, i32 0, i32 3
  store double %134, double* %cpy122, align 8
  %y123 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 1
  store double %134, double* %y123, align 8
  %137 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %stroke124 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %137, i32 0, i32 1
  %138 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke124, align 8
  call void @gimp_bezier_stroke_lineto(%struct._GimpStroke* %138, %struct._GimpCoords* %coords)
  %139 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param125 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %139, i32 0, i32 7
  store i32 0, i32* %param125, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.116, %sw.bb.112
  br label %sw.epilog

sw.bb.127:                                        ; preds = %entry
  %140 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param128 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %140, i32 0, i32 7
  %141 = load i32, i32* %param128, align 4
  %cmp129 = icmp eq i32 %141, 4
  br i1 %cmp129, label %if.then.133, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %sw.bb.127
  %142 = load i32, i32* %final.addr, align 4
  %tobool132 = icmp ne i32 %142, 0
  br i1 %tobool132, label %if.then.133, label %if.end.152

if.then.133:                                      ; preds = %lor.lhs.false.131, %sw.bb.127
  %143 = bitcast %struct._GimpCoords* %ctrl to i8*
  call void @llvm.memset.p0i8.i64(i8* %143, i8 0, i64 64, i32 8, i1 false)
  %144 = bitcast i8* %143 to %struct._GimpCoords*
  %145 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %144, i32 0, i32 2
  store double 1.000000e+00, double* %145
  %146 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %144, i32 0, i32 3
  store double 5.000000e-01, double* %146
  %147 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %144, i32 0, i32 4
  store double 5.000000e-01, double* %147
  %148 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %144, i32 0, i32 5
  store double 5.000000e-01, double* %148
  %149 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  call void @parse_path_default_xy(%struct.ParsePathContext* %149, i32 4)
  %150 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params134 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %150, i32 0, i32 9
  %arrayidx135 = getelementptr inbounds [7 x double], [7 x double]* %params134, i32 0, i64 0
  %151 = load double, double* %arrayidx135, align 8
  %152 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx136 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %152, i32 0, i32 4
  store double %151, double* %rpx136, align 8
  %x137 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %ctrl, i32 0, i32 0
  store double %151, double* %x137, align 8
  %153 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params138 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %153, i32 0, i32 9
  %arrayidx139 = getelementptr inbounds [7 x double], [7 x double]* %params138, i32 0, i64 1
  %154 = load double, double* %arrayidx139, align 8
  %155 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy140 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %155, i32 0, i32 5
  store double %154, double* %rpy140, align 8
  %y141 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %ctrl, i32 0, i32 1
  store double %154, double* %y141, align 8
  %156 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params142 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %156, i32 0, i32 9
  %arrayidx143 = getelementptr inbounds [7 x double], [7 x double]* %params142, i32 0, i64 2
  %157 = load double, double* %arrayidx143, align 8
  %158 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx144 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %158, i32 0, i32 2
  store double %157, double* %cpx144, align 8
  %x145 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 0
  store double %157, double* %x145, align 8
  %159 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params146 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %159, i32 0, i32 9
  %arrayidx147 = getelementptr inbounds [7 x double], [7 x double]* %params146, i32 0, i64 3
  %160 = load double, double* %arrayidx147, align 8
  %161 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy148 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %161, i32 0, i32 3
  store double %160, double* %cpy148, align 8
  %y149 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 1
  store double %160, double* %y149, align 8
  %162 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %stroke150 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %162, i32 0, i32 1
  %163 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke150, align 8
  call void @gimp_bezier_stroke_conicto(%struct._GimpStroke* %163, %struct._GimpCoords* %ctrl, %struct._GimpCoords* %coords)
  %164 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param151 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %164, i32 0, i32 7
  store i32 0, i32* %param151, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.133, %lor.lhs.false.131
  br label %sw.epilog

sw.bb.153:                                        ; preds = %entry
  %165 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param154 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %165, i32 0, i32 7
  %166 = load i32, i32* %param154, align 4
  %cmp155 = icmp eq i32 %166, 2
  br i1 %cmp155, label %if.then.159, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %sw.bb.153
  %167 = load i32, i32* %final.addr, align 4
  %tobool158 = icmp ne i32 %167, 0
  br i1 %tobool158, label %if.then.159, label %if.else

if.then.159:                                      ; preds = %lor.lhs.false.157, %sw.bb.153
  %168 = bitcast %struct._GimpCoords* %ctrl160 to i8*
  call void @llvm.memset.p0i8.i64(i8* %168, i8 0, i64 64, i32 8, i1 false)
  %169 = bitcast i8* %168 to %struct._GimpCoords*
  %170 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %169, i32 0, i32 2
  store double 1.000000e+00, double* %170
  %171 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %169, i32 0, i32 3
  store double 5.000000e-01, double* %171
  %172 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %169, i32 0, i32 4
  store double 5.000000e-01, double* %172
  %173 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %169, i32 0, i32 5
  store double 5.000000e-01, double* %173
  %174 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  call void @parse_path_default_xy(%struct.ParsePathContext* %174, i32 2)
  %175 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx161 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %175, i32 0, i32 2
  %176 = load double, double* %cpx161, align 8
  %mul162 = fmul double 2.000000e+00, %176
  %177 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx163 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %177, i32 0, i32 4
  %178 = load double, double* %rpx163, align 8
  %sub164 = fsub double %mul162, %178
  %179 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx165 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %179, i32 0, i32 4
  store double %sub164, double* %rpx165, align 8
  %x166 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %ctrl160, i32 0, i32 0
  store double %sub164, double* %x166, align 8
  %180 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy167 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %180, i32 0, i32 3
  %181 = load double, double* %cpy167, align 8
  %mul168 = fmul double 2.000000e+00, %181
  %182 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy169 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %182, i32 0, i32 5
  %183 = load double, double* %rpy169, align 8
  %sub170 = fsub double %mul168, %183
  %184 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy171 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %184, i32 0, i32 5
  store double %sub170, double* %rpy171, align 8
  %y172 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %ctrl160, i32 0, i32 1
  store double %sub170, double* %y172, align 8
  %185 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params173 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %185, i32 0, i32 9
  %arrayidx174 = getelementptr inbounds [7 x double], [7 x double]* %params173, i32 0, i64 0
  %186 = load double, double* %arrayidx174, align 8
  %187 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx175 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %187, i32 0, i32 2
  store double %186, double* %cpx175, align 8
  %x176 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 0
  store double %186, double* %x176, align 8
  %188 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params177 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %188, i32 0, i32 9
  %arrayidx178 = getelementptr inbounds [7 x double], [7 x double]* %params177, i32 0, i64 1
  %189 = load double, double* %arrayidx178, align 8
  %190 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy179 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %190, i32 0, i32 3
  store double %189, double* %cpy179, align 8
  %y180 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 1
  store double %189, double* %y180, align 8
  %191 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %stroke181 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %191, i32 0, i32 1
  %192 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke181, align 8
  call void @gimp_bezier_stroke_conicto(%struct._GimpStroke* %192, %struct._GimpCoords* %ctrl160, %struct._GimpCoords* %coords)
  %193 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param182 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %193, i32 0, i32 7
  store i32 0, i32* %param182, align 4
  br label %if.end.222

if.else:                                          ; preds = %lor.lhs.false.157
  %194 = load i32, i32* %final.addr, align 4
  %tobool183 = icmp ne i32 %194, 0
  br i1 %tobool183, label %if.then.184, label %if.end.221

if.then.184:                                      ; preds = %if.else
  %195 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param185 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %195, i32 0, i32 7
  %196 = load i32, i32* %param185, align 4
  %cmp186 = icmp sgt i32 %196, 2
  br i1 %cmp186, label %if.then.188, label %if.else.207

if.then.188:                                      ; preds = %if.then.184
  %197 = bitcast %struct._GimpCoords* %ctrl189 to i8*
  call void @llvm.memset.p0i8.i64(i8* %197, i8 0, i64 64, i32 8, i1 false)
  %198 = bitcast i8* %197 to %struct._GimpCoords*
  %199 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %198, i32 0, i32 2
  store double 1.000000e+00, double* %199
  %200 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %198, i32 0, i32 3
  store double 5.000000e-01, double* %200
  %201 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %198, i32 0, i32 4
  store double 5.000000e-01, double* %201
  %202 = getelementptr %struct._GimpCoords, %struct._GimpCoords* %198, i32 0, i32 5
  store double 5.000000e-01, double* %202
  %203 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  call void @parse_path_default_xy(%struct.ParsePathContext* %203, i32 4)
  %204 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params190 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %204, i32 0, i32 9
  %arrayidx191 = getelementptr inbounds [7 x double], [7 x double]* %params190, i32 0, i64 0
  %205 = load double, double* %arrayidx191, align 8
  %206 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx192 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %206, i32 0, i32 4
  store double %205, double* %rpx192, align 8
  %x193 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %ctrl189, i32 0, i32 0
  store double %205, double* %x193, align 8
  %207 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params194 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %207, i32 0, i32 9
  %arrayidx195 = getelementptr inbounds [7 x double], [7 x double]* %params194, i32 0, i64 1
  %208 = load double, double* %arrayidx195, align 8
  %209 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy196 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %209, i32 0, i32 5
  store double %208, double* %rpy196, align 8
  %y197 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %ctrl189, i32 0, i32 1
  store double %208, double* %y197, align 8
  %210 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params198 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %210, i32 0, i32 9
  %arrayidx199 = getelementptr inbounds [7 x double], [7 x double]* %params198, i32 0, i64 2
  %211 = load double, double* %arrayidx199, align 8
  %212 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx200 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %212, i32 0, i32 2
  store double %211, double* %cpx200, align 8
  %x201 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 0
  store double %211, double* %x201, align 8
  %213 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params202 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %213, i32 0, i32 9
  %arrayidx203 = getelementptr inbounds [7 x double], [7 x double]* %params202, i32 0, i64 3
  %214 = load double, double* %arrayidx203, align 8
  %215 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy204 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %215, i32 0, i32 3
  store double %214, double* %cpy204, align 8
  %y205 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 1
  store double %214, double* %y205, align 8
  %216 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %stroke206 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %216, i32 0, i32 1
  %217 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke206, align 8
  call void @gimp_bezier_stroke_conicto(%struct._GimpStroke* %217, %struct._GimpCoords* %ctrl189, %struct._GimpCoords* %coords)
  br label %if.end.219

if.else.207:                                      ; preds = %if.then.184
  %218 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  call void @parse_path_default_xy(%struct.ParsePathContext* %218, i32 2)
  %219 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params208 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %219, i32 0, i32 9
  %arrayidx209 = getelementptr inbounds [7 x double], [7 x double]* %params208, i32 0, i64 0
  %220 = load double, double* %arrayidx209, align 8
  %221 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx210 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %221, i32 0, i32 4
  store double %220, double* %rpx210, align 8
  %222 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx211 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %222, i32 0, i32 2
  store double %220, double* %cpx211, align 8
  %x212 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 0
  store double %220, double* %x212, align 8
  %223 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params213 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %223, i32 0, i32 9
  %arrayidx214 = getelementptr inbounds [7 x double], [7 x double]* %params213, i32 0, i64 1
  %224 = load double, double* %arrayidx214, align 8
  %225 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy215 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %225, i32 0, i32 5
  store double %224, double* %rpy215, align 8
  %226 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy216 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %226, i32 0, i32 3
  store double %224, double* %cpy216, align 8
  %y217 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 1
  store double %224, double* %y217, align 8
  %227 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %stroke218 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %227, i32 0, i32 1
  %228 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke218, align 8
  call void @gimp_bezier_stroke_lineto(%struct._GimpStroke* %228, %struct._GimpCoords* %coords)
  br label %if.end.219

if.end.219:                                       ; preds = %if.else.207, %if.then.188
  %229 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param220 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %229, i32 0, i32 7
  store i32 0, i32* %param220, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.219, %if.else
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %if.then.159
  br label %sw.epilog

sw.bb.223:                                        ; preds = %entry
  %230 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param224 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %230, i32 0, i32 7
  %231 = load i32, i32* %param224, align 4
  %cmp225 = icmp eq i32 %231, 7
  br i1 %cmp225, label %if.then.229, label %lor.lhs.false.227

lor.lhs.false.227:                                ; preds = %sw.bb.223
  %232 = load i32, i32* %final.addr, align 4
  %tobool228 = icmp ne i32 %232, 0
  br i1 %tobool228, label %if.then.229, label %if.end.255

if.then.229:                                      ; preds = %lor.lhs.false.227, %sw.bb.223
  %233 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params230 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %233, i32 0, i32 9
  %arrayidx231 = getelementptr inbounds [7 x double], [7 x double]* %params230, i32 0, i64 5
  %234 = load double, double* %arrayidx231, align 8
  %235 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx232 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %235, i32 0, i32 4
  store double %234, double* %rpx232, align 8
  %236 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx233 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %236, i32 0, i32 2
  store double %234, double* %cpx233, align 8
  %x234 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 0
  store double %234, double* %x234, align 8
  %237 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params235 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %237, i32 0, i32 9
  %arrayidx236 = getelementptr inbounds [7 x double], [7 x double]* %params235, i32 0, i64 6
  %238 = load double, double* %arrayidx236, align 8
  %239 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy237 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %239, i32 0, i32 5
  store double %238, double* %rpy237, align 8
  %240 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy238 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %240, i32 0, i32 3
  store double %238, double* %cpy238, align 8
  %y239 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %coords, i32 0, i32 1
  store double %238, double* %y239, align 8
  %241 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %stroke240 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %241, i32 0, i32 1
  %242 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke240, align 8
  %243 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params241 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %243, i32 0, i32 9
  %arrayidx242 = getelementptr inbounds [7 x double], [7 x double]* %params241, i32 0, i64 0
  %244 = load double, double* %arrayidx242, align 8
  %245 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params243 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %245, i32 0, i32 9
  %arrayidx244 = getelementptr inbounds [7 x double], [7 x double]* %params243, i32 0, i64 1
  %246 = load double, double* %arrayidx244, align 8
  %247 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params245 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %247, i32 0, i32 9
  %arrayidx246 = getelementptr inbounds [7 x double], [7 x double]* %params245, i32 0, i64 2
  %248 = load double, double* %arrayidx246, align 8
  %mul247 = fmul double %248, 0x401921FB54442D18
  %div = fdiv double %mul247, 3.600000e+02
  %249 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params248 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %249, i32 0, i32 9
  %arrayidx249 = getelementptr inbounds [7 x double], [7 x double]* %params248, i32 0, i64 3
  %250 = load double, double* %arrayidx249, align 8
  %conv250 = fptosi double %250 to i32
  %251 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params251 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %251, i32 0, i32 9
  %arrayidx252 = getelementptr inbounds [7 x double], [7 x double]* %params251, i32 0, i64 4
  %252 = load double, double* %arrayidx252, align 8
  %conv253 = fptosi double %252 to i32
  call void @gimp_bezier_stroke_arcto(%struct._GimpStroke* %242, double %244, double %246, double %div, i32 %conv250, i32 %conv253, %struct._GimpCoords* %coords)
  %253 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param254 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %253, i32 0, i32 7
  store i32 0, i32* %param254, align 4
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.229, %lor.lhs.false.227
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %254 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param256 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %254, i32 0, i32 7
  store i32 0, i32* %param256, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.255, %if.end.222, %if.end.152, %if.end.126, %if.end.111, %if.end.96, %if.end.60, %if.end.28, %if.end
  ret void
}

declare void @gimp_stroke_close(%struct._GimpStroke*) #3

; Function Attrs: nounwind uwtable
define internal void @parse_path_default_xy(%struct.ParsePathContext* %ctx, i32 %n_params) #0 {
entry:
  %ctx.addr = alloca %struct.ParsePathContext*, align 8
  %n_params.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.ParsePathContext* %ctx, %struct.ParsePathContext** %ctx.addr, align 8
  store i32 %n_params, i32* %n_params.addr, align 4
  %0 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rel = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %0, i32 0, i32 8
  %1 = load i32, i32* %rel, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else.19

if.then:                                          ; preds = %entry
  %2 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %2, i32 0, i32 7
  %3 = load i32, i32* %param, align 4
  store i32 %3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n_params.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %cmp1 = icmp sgt i32 %6, 2
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %7, 2
  %idxprom = sext i32 %sub to i64
  %8 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %8, i32 0, i32 9
  %arrayidx = getelementptr inbounds [7 x double], [7 x double]* %params, i32 0, i64 %idxprom
  %9 = load double, double* %arrayidx, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params4 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %11, i32 0, i32 9
  %arrayidx5 = getelementptr inbounds [7 x double], [7 x double]* %params4, i32 0, i64 %idxprom3
  store double %9, double* %arrayidx5, align 8
  br label %if.end.18

if.else:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %cmp6 = icmp eq i32 %12, 1
  br i1 %cmp6, label %if.then.7, label %if.else.11

if.then.7:                                        ; preds = %if.else
  %13 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %13, i32 0, i32 3
  %14 = load double, double* %cpy, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params9 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %16, i32 0, i32 9
  %arrayidx10 = getelementptr inbounds [7 x double], [7 x double]* %params9, i32 0, i64 %idxprom8
  store double %14, double* %arrayidx10, align 8
  br label %if.end.17

if.else.11:                                       ; preds = %if.else
  %17 = load i32, i32* %i, align 4
  %cmp12 = icmp eq i32 %17, 0
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else.11
  %18 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %18, i32 0, i32 2
  %19 = load double, double* %cpx, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params15 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %21, i32 0, i32 9
  %arrayidx16 = getelementptr inbounds [7 x double], [7 x double]* %params15, i32 0, i64 %idxprom14
  store double %19, double* %arrayidx16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.else.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.7
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.2
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.30

if.else.19:                                       ; preds = %entry
  %23 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param20 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %23, i32 0, i32 7
  %24 = load i32, i32* %param20, align 4
  store i32 %24, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.27, %if.else.19
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %n_params.addr, align 4
  %cmp22 = icmp slt i32 %25, %26
  br i1 %cmp22, label %for.body.23, label %for.end.29

for.body.23:                                      ; preds = %for.cond.21
  %27 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %27 to i64
  %28 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params25 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %28, i32 0, i32 9
  %arrayidx26 = getelementptr inbounds [7 x double], [7 x double]* %params25, i32 0, i64 %idxprom24
  store double 0.000000e+00, double* %arrayidx26, align 8
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.23
  %29 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %29, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.21

for.end.29:                                       ; preds = %for.cond.21
  br label %if.end.30

if.end.30:                                        ; preds = %for.end.29, %for.end
  ret void
}

declare %struct._GimpStroke* @gimp_bezier_stroke_new_moveto(%struct._GimpCoords*) #3

declare void @gimp_bezier_stroke_lineto(%struct._GimpStroke*, %struct._GimpCoords*) #3

declare void @gimp_bezier_stroke_cubicto(%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, %struct._GimpCoords*) #3

declare void @gimp_bezier_stroke_conicto(%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*) #3

declare void @gimp_bezier_stroke_arcto(%struct._GimpStroke*, double, double, double, i32, i32, %struct._GimpCoords*) #3

declare %struct._GimpStroke* @gimp_bezier_stroke_new_ellipse(%struct._GimpCoords*, double, double, double) #3

declare %struct._GString* @g_string_sized_new(i64) #3

declare %struct._GString* @g_string_append_len(%struct._GString*, i8*, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #6 {
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

declare i8* @g_string_free(%struct._GString*, i32) #3

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #3

declare void @gimp_stroke_transform(%struct._GimpStroke*, %struct._GimpMatrix3*) #3

declare %struct._GList* @g_list_concat(%struct._GList*, %struct._GList*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
