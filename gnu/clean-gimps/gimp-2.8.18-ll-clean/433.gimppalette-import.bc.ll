; ModuleID = './app/core/gimppalette-import.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPalette = type { %struct._GimpData, %struct._GList*, i32, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpPaletteEntry = type { %struct._GimpRGB, i8*, i32 }
%struct._GimpProjection = type opaque
%struct._GHashTable = type opaque
%struct._GimpPickable = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._TileManager = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GError = type { i32, i32, i8* }
%struct._ImgColors = type { i32, i32, i32, i32, i8, i8, i8 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_palette_import_from_gradient = private unnamed_addr constant [34 x i8] c"gimp_palette_import_from_gradient\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GIMP_IS_GRADIENT (gradient)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"palette_name != NULL\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"n_colors > 1\00", align 1
@__func__.gimp_palette_import_from_image = private unnamed_addr constant [31 x i8] c"gimp_palette_import_from_image\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"threshold > 0\00", align 1
@__func__.gimp_palette_import_from_indexed_image = private unnamed_addr constant [39 x i8] c"gimp_palette_import_from_indexed_image\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"gimp_image_base_type (image) == GIMP_INDEXED\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Index %d\00", align 1
@__func__.gimp_palette_import_from_drawable = private unnamed_addr constant [34 x i8] c"gimp_palette_import_from_drawable\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@__func__.gimp_palette_import_from_file = private unnamed_addr constant [30 x i8] c"gimp_palette_import_from_file\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Unknown type of palette file: %s\00", align 1
@count_color_entries = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"import-n-colors\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"%s (occurs %u)\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Untitled\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpPalette* @gimp_palette_import_from_gradient(%struct._GimpGradient* %gradient, %struct._GimpContext* %context, i32 %reverse, i8* %palette_name, i32 %n_colors) #0 {
entry:
  %retval = alloca %struct._GimpPalette*, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %reverse.addr = alloca i32, align 4
  %palette_name.addr = alloca i8*, align 8
  %n_colors.addr = alloca i32, align 4
  %palette = alloca %struct._GimpPalette*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %dx = alloca double, align 8
  %cur_x = alloca double, align 8
  %color = alloca %struct._GimpRGB, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %reverse, i32* %reverse.addr, align 4
  store i8* %palette_name, i8** %palette_name.addr, align 8
  store i32 %n_colors, i32* %n_colors.addr, align 4
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %seg, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_palette_import_from_gradient, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_palette_import_from_gradient, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i8*, i8** %palette_name.addr, align 8
  %cmp40 = icmp ne i8* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_palette_import_from_gradient, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %27 = load i32, i32* %n_colors.addr, align 4
  %cmp46 = icmp sgt i32 %27, 1
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.45
  br label %if.end.49

if.else.48:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_palette_import_from_gradient, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.49:                                        ; preds = %if.then.47
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %29 = load i8*, i8** %palette_name.addr, align 8
  %call51 = call %struct._GimpData* @gimp_palette_new(%struct._GimpContext* %28, i8* %29)
  %30 = bitcast %struct._GimpData* %call51 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_palette_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call52)
  %31 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpPalette*
  store %struct._GimpPalette* %31, %struct._GimpPalette** %palette, align 8
  %32 = load i32, i32* %n_colors.addr, align 4
  %sub = sub nsw i32 %32, 1
  %conv = sitofp i32 %sub to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* %dx, align 8
  store i32 0, i32* %i, align 4
  store double 0.000000e+00, double* %cur_x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.50
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %n_colors.addr, align 4
  %cmp54 = icmp slt i32 %33, %34
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %36 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %37 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %38 = load double, double* %cur_x, align 8
  %39 = load i32, i32* %reverse.addr, align 4
  %call56 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %35, %struct._GimpContext* %36, %struct._GimpGradientSegment* %37, double %38, i32 %39, %struct._GimpRGB* %color)
  store %struct._GimpGradientSegment* %call56, %struct._GimpGradientSegment** %seg, align 8
  %40 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call57 = call %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette* %40, i32 -1, i8* null, %struct._GimpRGB* %color)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  %42 = load double, double* %dx, align 8
  %43 = load double, double* %cur_x, align 8
  %add = fadd double %43, %42
  store double %add, double* %cur_x, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  store %struct._GimpPalette* %44, %struct._GimpPalette** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.48, %if.else.42, %if.else.36, %if.else.9
  %45 = load %struct._GimpPalette*, %struct._GimpPalette** %retval
  ret %struct._GimpPalette* %45
}

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare %struct._GimpData* @gimp_palette_new(%struct._GimpContext*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_get_type() #1

declare %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient*, %struct._GimpContext*, %struct._GimpGradientSegment*, double, i32, %struct._GimpRGB*) #3

declare %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette*, i32, i8*, %struct._GimpRGB*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpPalette* @gimp_palette_import_from_image(%struct._GimpImage* %image, %struct._GimpContext* %context, i8* %palette_name, i32 %n_colors, i32 %threshold, i32 %selection_only) #0 {
entry:
  %retval = alloca %struct._GimpPalette*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %palette_name.addr = alloca i8*, align 8
  %n_colors.addr = alloca i32, align 4
  %threshold.addr = alloca i32, align 4
  %selection_only.addr = alloca i32, align 4
  %projection = alloca %struct._GimpProjection*, align 8
  %colors = alloca %struct._GHashTable*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %palette_name, i8** %palette_name.addr, align 8
  store i32 %n_colors, i32* %n_colors.addr, align 4
  store i32 %threshold, i32* %threshold.addr, align 4
  store i32 %selection_only, i32* %selection_only.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_palette_import_from_image, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_palette_import_from_image, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i8*, i8** %palette_name.addr, align 8
  %cmp40 = icmp ne i8* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_palette_import_from_image, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %27 = load i32, i32* %n_colors.addr, align 4
  %cmp46 = icmp sgt i32 %27, 1
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.45
  br label %if.end.49

if.else.48:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_palette_import_from_image, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.49:                                        ; preds = %if.then.47
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %do.body.51

do.body.51:                                       ; preds = %do.end.50
  %28 = load i32, i32* %threshold.addr, align 4
  %cmp52 = icmp sgt i32 %28, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.51
  br label %if.end.55

if.else.54:                                       ; preds = %do.body.51
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_palette_import_from_image, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.55:                                        ; preds = %if.then.53
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call57 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %29)
  store %struct._GimpProjection* %call57, %struct._GimpProjection** %projection, align 8
  %30 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  %31 = bitcast %struct._GimpProjection* %30 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_pickable_interface_get_type() #6
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call58)
  %32 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpPickable*
  call void @gimp_pickable_flush(%struct._GimpPickable* %32)
  %33 = load i32, i32* %selection_only.addr, align 4
  %tobool60 = icmp ne i32 %33, 0
  br i1 %tobool60, label %if.then.61, label %if.else.65

if.then.61:                                       ; preds = %do.end.56
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call62 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %34)
  %call63 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %call62, i32* %x, i32* %y, i32* %width, i32* %height)
  %35 = load i32, i32* %x, align 4
  %36 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %36, %35
  store i32 %sub, i32* %width, align 4
  %37 = load i32, i32* %y, align 4
  %38 = load i32, i32* %height, align 4
  %sub64 = sub nsw i32 %38, %37
  store i32 %sub64, i32* %height, align 4
  br label %if.end.68

if.else.65:                                       ; preds = %do.end.56
  store i32 0, i32* %x, align 4
  store i32 0, i32* %y, align 4
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call66 = call i32 @gimp_image_get_width(%struct._GimpImage* %39)
  store i32 %call66, i32* %width, align 4
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call67 = call i32 @gimp_image_get_height(%struct._GimpImage* %40)
  store i32 %call67, i32* %height, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.65, %if.then.61
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %42 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  %43 = bitcast %struct._GimpProjection* %42 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_pickable_interface_get_type() #6
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call69)
  %44 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpPickable*
  %45 = load i32, i32* %selection_only.addr, align 4
  %46 = load i32, i32* %x, align 4
  %47 = load i32, i32* %y, align 4
  %48 = load i32, i32* %width, align 4
  %49 = load i32, i32* %height, align 4
  %50 = load i32, i32* %n_colors.addr, align 4
  %51 = load i32, i32* %threshold.addr, align 4
  %call71 = call %struct._GHashTable* @gimp_palette_import_extract(%struct._GimpImage* %41, %struct._GimpPickable* %44, i32 0, i32 0, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  store %struct._GHashTable* %call71, %struct._GHashTable** %colors, align 8
  %52 = load %struct._GHashTable*, %struct._GHashTable** %colors, align 8
  %53 = load i8*, i8** %palette_name.addr, align 8
  %54 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %55 = load i32, i32* %n_colors.addr, align 4
  %call72 = call %struct._GimpPalette* @gimp_palette_import_make_palette(%struct._GHashTable* %52, i8* %53, %struct._GimpContext* %54, i32 %55)
  store %struct._GimpPalette* %call72, %struct._GimpPalette** %retval
  br label %return

return:                                           ; preds = %if.end.68, %if.else.54, %if.else.48, %if.else.42, %if.else.36, %if.else.9
  %56 = load %struct._GimpPalette*, %struct._GimpPalette** %retval
  ret %struct._GimpPalette* %56
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #3

declare void @gimp_pickable_flush(%struct._GimpPickable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #1

declare i32 @gimp_channel_bounds(%struct._GimpChannel*, i32*, i32*, i32*, i32*) #3

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define internal %struct._GHashTable* @gimp_palette_import_extract(%struct._GimpImage* %image, %struct._GimpPickable* %pickable, i32 %pickable_off_x, i32 %pickable_off_y, i32 %selection_only, i32 %x, i32 %y, i32 %width, i32 %height, i32 %n_colors, i32 %threshold) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %pickable_off_x.addr = alloca i32, align 4
  %pickable_off_y.addr = alloca i32, align 4
  %selection_only.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %n_colors.addr = alloca i32, align 4
  %threshold.addr = alloca i32, align 4
  %tiles = alloca %struct._TileManager*, align 8
  %type = alloca i32, align 4
  %region = alloca %struct._PixelRegion, align 8
  %mask_region = alloca %struct._PixelRegion, align 8
  %maskPR = alloca %struct._PixelRegion*, align 8
  %pr = alloca i8*, align 8
  %colors = alloca %struct._GHashTable*, align 8
  %mask = alloca %struct._GimpDrawable*, align 8
  %data = alloca i8*, align 8
  %mask_data = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %idata = alloca i8*, align 8
  %mdata = alloca i8*, align 8
  %rgba = alloca [4 x i8], align 1
  %rgb_real = alloca [4 x i8], align 1
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  store i32 %pickable_off_x, i32* %pickable_off_x.addr, align 4
  store i32 %pickable_off_y, i32* %pickable_off_y.addr, align 4
  store i32 %selection_only, i32* %selection_only.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %n_colors, i32* %n_colors.addr, align 4
  store i32 %threshold, i32* %threshold.addr, align 4
  store %struct._PixelRegion* null, %struct._PixelRegion** %maskPR, align 8
  store %struct._GHashTable* null, %struct._GHashTable** %colors, align 8
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call = call %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable* %0)
  store %struct._TileManager* %call, %struct._TileManager** %tiles, align 8
  %1 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call1 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %1)
  store i32 %call1, i32* %type, align 4
  %2 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %y.addr, align 4
  %5 = load i32, i32* %width.addr, align 4
  %6 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %region, %struct._TileManager* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 0)
  %7 = load i32, i32* %selection_only.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call2 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %8)
  %call3 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call5 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %9)
  %10 = bitcast %struct._GimpChannel* %call5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_drawable_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %11, %struct._GimpDrawable** %mask, align 8
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask, align 8
  %call8 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %12)
  %13 = load i32, i32* %x.addr, align 4
  %14 = load i32, i32* %pickable_off_x.addr, align 4
  %add = add nsw i32 %13, %14
  %15 = load i32, i32* %y.addr, align 4
  %16 = load i32, i32* %pickable_off_y.addr, align 4
  %add9 = add nsw i32 %15, %16
  %17 = load i32, i32* %width.addr, align 4
  %18 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %mask_region, %struct._TileManager* %call8, i32 %add, i32 %add9, i32 %17, i32 %18, i32 0)
  store %struct._PixelRegion* %mask_region, %struct._PixelRegion** %maskPR, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %19 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR, align 8
  %tobool10 = icmp ne %struct._PixelRegion* %19, null
  %cond = select i1 %tobool10, i32 2, i32 1
  %20 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR, align 8
  %call11 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 %cond, %struct._PixelRegion* %region, %struct._PixelRegion* %20)
  %21 = bitcast %struct._PixelRegionIterator* %call11 to i8*
  store i8* %21, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.66, %if.end
  %22 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %22, null
  br i1 %cmp, label %for.body, label %for.end.68

for.body:                                         ; preds = %for.cond
  %data12 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 0
  %23 = load i8*, i8** %data12, align 8
  store i8* %23, i8** %data, align 8
  store i8* null, i8** %mask_data, align 8
  %24 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR, align 8
  %tobool13 = icmp ne %struct._PixelRegion* %24, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %for.body
  %25 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR, align 8
  %data15 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %25, i32 0, i32 0
  %26 = load i8*, i8** %data15, align 8
  store i8* %26, i8** %mask_data, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.63, %if.end.16
  %27 = load i32, i32* %i, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 9
  %28 = load i32, i32* %h, align 4
  %cmp18 = icmp slt i32 %27, %28
  br i1 %cmp18, label %for.body.19, label %for.end.65

for.body.19:                                      ; preds = %for.cond.17
  %29 = load i8*, i8** %data, align 8
  store i8* %29, i8** %idata, align 8
  %30 = load i8*, i8** %mask_data, align 8
  store i8* %30, i8** %mdata, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %for.body.19
  %31 = load i32, i32* %j, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 8
  %32 = load i32, i32* %w, align 4
  %cmp21 = icmp slt i32 %31, %32
  br i1 %cmp21, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.20
  %33 = load i8*, i8** %mdata, align 8
  %tobool23 = icmp ne i8* %33, null
  br i1 %tobool23, label %lor.lhs.false, label %if.then.25

lor.lhs.false:                                    ; preds = %for.body.22
  %34 = load i8*, i8** %mdata, align 8
  %35 = load i8, i8* %34, align 1
  %conv = zext i8 %35 to i32
  %tobool24 = icmp ne i32 %conv, 0
  br i1 %tobool24, label %if.then.25, label %if.end.48

if.then.25:                                       ; preds = %lor.lhs.false, %for.body.22
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %37 = load i32, i32* %type, align 4
  %38 = load i8*, i8** %idata, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %rgba, i32 0, i32 0
  call void @gimp_image_get_color(%struct._GimpImage* %36, i32 %37, i8* %38, i8* %arraydecay)
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %rgba, i32 0, i64 3
  %39 = load i8, i8* %arrayidx, align 1
  %tobool26 = icmp ne i8 %39, 0
  br i1 %tobool26, label %if.then.27, label %if.end.47

if.then.27:                                       ; preds = %if.then.25
  %40 = bitcast [4 x i8]* %rgb_real to i8*
  %41 = bitcast [4 x i8]* %rgba to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 4, i32 1, i1 false)
  %arrayidx28 = getelementptr inbounds [4 x i8], [4 x i8]* %rgba, i32 0, i64 0
  %42 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %42 to i32
  %43 = load i32, i32* %threshold.addr, align 4
  %div = sdiv i32 %conv29, %43
  %44 = load i32, i32* %threshold.addr, align 4
  %mul = mul nsw i32 %div, %44
  %conv30 = trunc i32 %mul to i8
  %arrayidx31 = getelementptr inbounds [4 x i8], [4 x i8]* %rgba, i32 0, i64 0
  store i8 %conv30, i8* %arrayidx31, align 1
  %arrayidx32 = getelementptr inbounds [4 x i8], [4 x i8]* %rgba, i32 0, i64 1
  %45 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %45 to i32
  %46 = load i32, i32* %threshold.addr, align 4
  %div34 = sdiv i32 %conv33, %46
  %47 = load i32, i32* %threshold.addr, align 4
  %mul35 = mul nsw i32 %div34, %47
  %conv36 = trunc i32 %mul35 to i8
  %arrayidx37 = getelementptr inbounds [4 x i8], [4 x i8]* %rgba, i32 0, i64 1
  store i8 %conv36, i8* %arrayidx37, align 1
  %arrayidx38 = getelementptr inbounds [4 x i8], [4 x i8]* %rgba, i32 0, i64 2
  %48 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %48 to i32
  %49 = load i32, i32* %threshold.addr, align 4
  %div40 = sdiv i32 %conv39, %49
  %50 = load i32, i32* %threshold.addr, align 4
  %mul41 = mul nsw i32 %div40, %50
  %conv42 = trunc i32 %mul41 to i8
  %arrayidx43 = getelementptr inbounds [4 x i8], [4 x i8]* %rgba, i32 0, i64 2
  store i8 %conv42, i8* %arrayidx43, align 1
  %51 = load %struct._GHashTable*, %struct._GHashTable** %colors, align 8
  %arraydecay44 = getelementptr inbounds [4 x i8], [4 x i8]* %rgba, i32 0, i32 0
  %arraydecay45 = getelementptr inbounds [4 x i8], [4 x i8]* %rgb_real, i32 0, i32 0
  %52 = load i32, i32* %n_colors.addr, align 4
  %call46 = call %struct._GHashTable* @gimp_palette_import_store_colors(%struct._GHashTable* %51, i8* %arraydecay44, i8* %arraydecay45, i32 %52)
  store %struct._GHashTable* %call46, %struct._GHashTable** %colors, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.27, %if.then.25
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %lor.lhs.false
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 10
  %53 = load i32, i32* %bytes, align 4
  %54 = load i8*, i8** %idata, align 8
  %idx.ext = sext i32 %53 to i64
  %add.ptr = getelementptr inbounds i8, i8* %54, i64 %idx.ext
  store i8* %add.ptr, i8** %idata, align 8
  %55 = load i8*, i8** %mdata, align 8
  %tobool49 = icmp ne i8* %55, null
  br i1 %tobool49, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.end.48
  %56 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR, align 8
  %bytes51 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %56, i32 0, i32 10
  %57 = load i32, i32* %bytes51, align 4
  %58 = load i8*, i8** %mdata, align 8
  %idx.ext52 = sext i32 %57 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %58, i64 %idx.ext52
  store i8* %add.ptr53, i8** %mdata, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %if.end.48
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %59 = load i32, i32* %j, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %region, i32 0, i32 5
  %60 = load i32, i32* %rowstride, align 4
  %61 = load i8*, i8** %data, align 8
  %idx.ext55 = sext i32 %60 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %61, i64 %idx.ext55
  store i8* %add.ptr56, i8** %data, align 8
  %62 = load i8*, i8** %mask_data, align 8
  %tobool57 = icmp ne i8* %62, null
  br i1 %tobool57, label %if.then.58, label %if.end.62

if.then.58:                                       ; preds = %for.end
  %63 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR, align 8
  %rowstride59 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %63, i32 0, i32 5
  %64 = load i32, i32* %rowstride59, align 4
  %65 = load i8*, i8** %mask_data, align 8
  %idx.ext60 = sext i32 %64 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %65, i64 %idx.ext60
  store i8* %add.ptr61, i8** %mask_data, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.58, %for.end
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %66 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %66, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.17

for.end.65:                                       ; preds = %for.cond.17
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %67 = load i8*, i8** %pr, align 8
  %68 = bitcast i8* %67 to %struct._PixelRegionIterator*
  %call67 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %68)
  %69 = bitcast %struct._PixelRegionIterator* %call67 to i8*
  store i8* %69, i8** %pr, align 8
  br label %for.cond

for.end.68:                                       ; preds = %for.cond
  %70 = load %struct._GHashTable*, %struct._GHashTable** %colors, align 8
  ret %struct._GHashTable* %70
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpPalette* @gimp_palette_import_make_palette(%struct._GHashTable* %table, i8* %palette_name, %struct._GimpContext* %context, i32 %n_colors) #0 {
entry:
  %retval = alloca %struct._GimpPalette*, align 8
  %table.addr = alloca %struct._GHashTable*, align 8
  %palette_name.addr = alloca i8*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %n_colors.addr = alloca i32, align 4
  %palette = alloca %struct._GimpPalette*, align 8
  %list = alloca %struct._GSList*, align 8
  %iter = alloca %struct._GSList*, align 8
  store %struct._GHashTable* %table, %struct._GHashTable** %table.addr, align 8
  store i8* %palette_name, i8** %palette_name.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %n_colors, i32* %n_colors.addr, align 4
  store %struct._GSList* null, %struct._GSList** %list, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = load i8*, i8** %palette_name.addr, align 8
  %call = call %struct._GimpData* @gimp_palette_new(%struct._GimpContext* %0, i8* %1)
  %2 = bitcast %struct._GimpData* %call to %struct._GTypeInstance*
  %call1 = call i64 @gimp_palette_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPalette*
  store %struct._GimpPalette* %3, %struct._GimpPalette** %palette, align 8
  %4 = load %struct._GHashTable*, %struct._GHashTable** %table.addr, align 8
  %tobool = icmp ne %struct._GHashTable* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  store %struct._GimpPalette* %5, %struct._GimpPalette** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GHashTable*, %struct._GHashTable** %table.addr, align 8
  %7 = bitcast %struct._GSList** %list to i8*
  call void @g_hash_table_foreach(%struct._GHashTable* %6, void (i8*, i8*, i8*)* @gimp_palette_import_create_list, i8* %7)
  %8 = load %struct._GSList*, %struct._GSList** %list, align 8
  %call3 = call %struct._GSList* @g_slist_sort(%struct._GSList* %8, i32 (i8*, i8*)* @gimp_palette_import_sort_colors)
  store %struct._GSList* %call3, %struct._GSList** %list, align 8
  %9 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %10 = bitcast %struct._GimpPalette* %9 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 80)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %12 = load i32, i32* %n_colors.addr, align 4
  %conv = sext i32 %12 to i64
  %13 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8* %13)
  %14 = load %struct._GSList*, %struct._GSList** %list, align 8
  %15 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %16 = bitcast %struct._GimpPalette* %15 to i8*
  call void @g_slist_foreach(%struct._GSList* %14, void (i8*, i8*)* @gimp_palette_import_create_image_palette, i8* %16)
  %17 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %18 = bitcast %struct._GimpPalette* %17 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 80)
  %19 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %20 = load %struct._GHashTable*, %struct._GHashTable** %table.addr, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %20)
  %21 = load %struct._GSList*, %struct._GSList** %list, align 8
  store %struct._GSList* %21, %struct._GSList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %22 = load %struct._GSList*, %struct._GSList** %iter, align 8
  %tobool6 = icmp ne %struct._GSList* %22, null
  br i1 %tobool6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %23 = load %struct._GSList*, %struct._GSList** %iter, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %23, i32 0, i32 0
  %24 = load i8*, i8** %data, align 8
  call void @g_slice_free1(i64 20, i8* %24)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %25 = load %struct._GSList*, %struct._GSList** %iter, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 1
  %26 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %26, %struct._GSList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct._GSList*, %struct._GSList** %list, align 8
  call void @g_slist_free(%struct._GSList* %27)
  %28 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  store %struct._GimpPalette* %28, %struct._GimpPalette** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %29 = load %struct._GimpPalette*, %struct._GimpPalette** %retval
  ret %struct._GimpPalette* %29
}

; Function Attrs: nounwind uwtable
define %struct._GimpPalette* @gimp_palette_import_from_indexed_image(%struct._GimpImage* %image, %struct._GimpContext* %context, i8* %palette_name) #0 {
entry:
  %retval = alloca %struct._GimpPalette*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %palette_name.addr = alloca i8*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %colormap = alloca i8*, align 8
  %n_colors = alloca i32, align 4
  %count = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %name = alloca [256 x i8], align 16
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %palette_name, i8** %palette_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_palette_import_from_indexed_image, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_palette_import_from_indexed_image, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call40 = call i32 @gimp_image_base_type(%struct._GimpImage* %26)
  %cmp41 = icmp eq i32 %call40, 2
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_palette_import_from_indexed_image, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %27 = load i8*, i8** %palette_name.addr, align 8
  %cmp47 = icmp ne i8* %27, null
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.46
  br label %if.end.50

if.else.49:                                       ; preds = %do.body.46
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_palette_import_from_indexed_image, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.50:                                        ; preds = %if.then.48
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %29 = load i8*, i8** %palette_name.addr, align 8
  %call52 = call %struct._GimpData* @gimp_palette_new(%struct._GimpContext* %28, i8* %29)
  %30 = bitcast %struct._GimpData* %call52 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_palette_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call53)
  %31 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpPalette*
  store %struct._GimpPalette* %31, %struct._GimpPalette** %palette, align 8
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call55 = call i8* @gimp_image_get_colormap(%struct._GimpImage* %32)
  store i8* %call55, i8** %colormap, align 8
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call56 = call i32 @gimp_image_get_colormap_size(%struct._GimpImage* %33)
  store i32 %call56, i32* %n_colors, align 4
  store i32 0, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.51
  %34 = load i32, i32* %count, align 4
  %35 = load i32, i32* %n_colors, align 4
  %cmp57 = icmp ult i32 %34, %35
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0)) #5
  %36 = load i32, i32* %count, align 4
  %call60 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 256, i8* %call59, i32 %36)
  %37 = load i32, i32* %count, align 4
  %mul = mul nsw i32 %37, 3
  %add = add nsw i32 %mul, 0
  %idxprom = sext i32 %add to i64
  %38 = load i8*, i8** %colormap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %38, i64 %idxprom
  %39 = load i8, i8* %arrayidx, align 1
  %40 = load i32, i32* %count, align 4
  %mul61 = mul nsw i32 %40, 3
  %add62 = add nsw i32 %mul61, 1
  %idxprom63 = sext i32 %add62 to i64
  %41 = load i8*, i8** %colormap, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %41, i64 %idxprom63
  %42 = load i8, i8* %arrayidx64, align 1
  %43 = load i32, i32* %count, align 4
  %mul65 = mul nsw i32 %43, 3
  %add66 = add nsw i32 %mul65, 2
  %idxprom67 = sext i32 %add66 to i64
  %44 = load i8*, i8** %colormap, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %44, i64 %idxprom67
  %45 = load i8, i8* %arrayidx68, align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %color, i8 zeroext %39, i8 zeroext %42, i8 zeroext %45, i8 zeroext -1)
  %46 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %arraydecay69 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %call70 = call %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette* %46, i32 -1, i8* %arraydecay69, %struct._GimpRGB* %color)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %count, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %count, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  store %struct._GimpPalette* %48, %struct._GimpPalette** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.49, %if.else.43, %if.else.36, %if.else.9
  %49 = load %struct._GimpPalette*, %struct._GimpPalette** %retval
  ret %struct._GimpPalette* %49
}

declare i32 @gimp_image_base_type(%struct._GimpImage*) #3

declare i8* @gimp_image_get_colormap(%struct._GimpImage*) #3

declare i32 @gimp_image_get_colormap_size(%struct._GimpImage*) #3

declare i32 @g_snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_rgba_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #3

; Function Attrs: nounwind uwtable
define %struct._GimpPalette* @gimp_palette_import_from_drawable(%struct._GimpDrawable* %drawable, %struct._GimpContext* %context, i8* %palette_name, i32 %n_colors, i32 %threshold, i32 %selection_only) #0 {
entry:
  %retval = alloca %struct._GimpPalette*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %palette_name.addr = alloca i8*, align 8
  %n_colors.addr = alloca i32, align 4
  %threshold.addr = alloca i32, align 4
  %selection_only.addr = alloca i32, align 4
  %colors = alloca %struct._GHashTable*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %palette_name, i8** %palette_name.addr, align 8
  store i32 %n_colors, i32* %n_colors.addr, align 4
  store i32 %threshold, i32* %threshold.addr, align 4
  store i32 %selection_only, i32* %selection_only.addr, align 4
  store %struct._GHashTable* null, %struct._GHashTable** %colors, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_palette_import_from_drawable, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_palette_import_from_drawable, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_is_attached(%struct._GimpItem* %28)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_palette_import_from_drawable, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load i8*, i8** %palette_name.addr, align 8
  %cmp49 = icmp ne i8* %29, null
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.48
  br label %if.end.52

if.else.51:                                       ; preds = %do.body.48
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_palette_import_from_drawable, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.52:                                        ; preds = %if.then.50
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.53
  %30 = load i32, i32* %n_colors.addr, align 4
  %cmp55 = icmp sgt i32 %30, 1
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %do.body.54
  br label %if.end.58

if.else.57:                                       ; preds = %do.body.54
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_palette_import_from_drawable, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.58:                                        ; preds = %if.then.56
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %do.body.60

do.body.60:                                       ; preds = %do.end.59
  %31 = load i32, i32* %threshold.addr, align 4
  %cmp61 = icmp sgt i32 %31, 0
  br i1 %cmp61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %do.body.60
  br label %if.end.64

if.else.63:                                       ; preds = %do.body.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_palette_import_from_drawable, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.64:                                        ; preds = %if.then.62
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  %32 = load i32, i32* %selection_only.addr, align 4
  %tobool66 = icmp ne i32 %32, 0
  br i1 %tobool66, label %if.then.67, label %if.else.74

if.then.67:                                       ; preds = %do.end.65
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %34 = bitcast %struct._GimpDrawable* %33 to %struct._GTypeInstance*
  %call68 = call i64 @gimp_item_get_type() #6
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call68)
  %35 = bitcast %struct._GTypeInstance* %call69 to %struct._GimpItem*
  %call70 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %35, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.end.73, label %if.then.72

if.then.72:                                       ; preds = %if.then.67
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.73:                                        ; preds = %if.then.67
  br label %if.end.81

if.else.74:                                       ; preds = %do.end.65
  store i32 0, i32* %x, align 4
  store i32 0, i32* %y, align 4
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %37 = bitcast %struct._GimpDrawable* %36 to %struct._GTypeInstance*
  %call75 = call i64 @gimp_item_get_type() #6
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call75)
  %38 = bitcast %struct._GTypeInstance* %call76 to %struct._GimpItem*
  %call77 = call i32 @gimp_item_get_width(%struct._GimpItem* %38)
  store i32 %call77, i32* %width, align 4
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %40 = bitcast %struct._GimpDrawable* %39 to %struct._GTypeInstance*
  %call78 = call i64 @gimp_item_get_type() #6
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call78)
  %41 = bitcast %struct._GTypeInstance* %call79 to %struct._GimpItem*
  %call80 = call i32 @gimp_item_get_height(%struct._GimpItem* %41)
  store i32 %call80, i32* %height, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.74, %if.end.73
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %43 = bitcast %struct._GimpDrawable* %42 to %struct._GTypeInstance*
  %call82 = call i64 @gimp_item_get_type() #6
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call82)
  %44 = bitcast %struct._GTypeInstance* %call83 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %44, i32* %off_x, i32* %off_y)
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %46 = bitcast %struct._GimpDrawable* %45 to %struct._GTypeInstance*
  %call84 = call i64 @gimp_item_get_type() #6
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call84)
  %47 = bitcast %struct._GTypeInstance* %call85 to %struct._GimpItem*
  %call86 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %47)
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %49 = bitcast %struct._GimpDrawable* %48 to %struct._GTypeInstance*
  %call87 = call i64 @gimp_pickable_interface_get_type() #6
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call87)
  %50 = bitcast %struct._GTypeInstance* %call88 to %struct._GimpPickable*
  %51 = load i32, i32* %off_x, align 4
  %52 = load i32, i32* %off_y, align 4
  %53 = load i32, i32* %selection_only.addr, align 4
  %54 = load i32, i32* %x, align 4
  %55 = load i32, i32* %y, align 4
  %56 = load i32, i32* %width, align 4
  %57 = load i32, i32* %height, align 4
  %58 = load i32, i32* %n_colors.addr, align 4
  %59 = load i32, i32* %threshold.addr, align 4
  %call89 = call %struct._GHashTable* @gimp_palette_import_extract(%struct._GimpImage* %call86, %struct._GimpPickable* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59)
  store %struct._GHashTable* %call89, %struct._GHashTable** %colors, align 8
  %60 = load %struct._GHashTable*, %struct._GHashTable** %colors, align 8
  %61 = load i8*, i8** %palette_name.addr, align 8
  %62 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %63 = load i32, i32* %n_colors.addr, align 4
  %call90 = call %struct._GimpPalette* @gimp_palette_import_make_palette(%struct._GHashTable* %60, i8* %61, %struct._GimpContext* %62, i32 %63)
  store %struct._GimpPalette* %call90, %struct._GimpPalette** %retval
  br label %return

return:                                           ; preds = %if.end.81, %if.then.72, %if.else.63, %if.else.57, %if.else.51, %if.else.45, %if.else.36, %if.else.9
  %64 = load %struct._GimpPalette*, %struct._GimpPalette** %retval
  ret %struct._GimpPalette* %64
}

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare i32 @gimp_item_mask_intersect(%struct._GimpItem*, i32*, i32*, i32*, i32*) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #3

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpPalette* @gimp_palette_import_from_file(%struct._GimpContext* %context, i8* %filename, i8* %palette_name, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpPalette*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %filename.addr = alloca i8*, align 8
  %palette_name.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %palette_list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %palette = alloca %struct._GimpPalette*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %palette_name, i8** %palette_name.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GList* null, %struct._GList** %palette_list, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_palette_import_from_file, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_palette_import_from_file, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %palette_name.addr, align 8
  %cmp18 = icmp ne i8* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_palette_import_from_file, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp24 = icmp eq %struct._GError** %15, null
  br i1 %cmp24, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.23
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %17 = load %struct._GError*, %struct._GError** %16, align 8
  %cmp25 = icmp eq %struct._GError* %17, null
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %lor.lhs.false, %do.body.23
  br label %if.end.28

if.else.27:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_palette_import_from_file, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.28:                                        ; preds = %if.then.26
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  %18 = load i8*, i8** %filename.addr, align 8
  %call30 = call i32 @gimp_palette_load_detect_format(i8* %18)
  switch i32 %call30, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.32
    i32 2, label %sw.bb.34
    i32 4, label %sw.bb.36
    i32 5, label %sw.bb.38
    i32 6, label %sw.bb.40
  ]

sw.bb:                                            ; preds = %do.end.29
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %20 = load i8*, i8** %filename.addr, align 8
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call31 = call %struct._GList* @gimp_palette_load(%struct._GimpContext* %19, i8* %20, %struct._GError** %21)
  store %struct._GList* %call31, %struct._GList** %palette_list, align 8
  br label %sw.epilog

sw.bb.32:                                         ; preds = %do.end.29
  %22 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %23 = load i8*, i8** %filename.addr, align 8
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call33 = call %struct._GList* @gimp_palette_load_act(%struct._GimpContext* %22, i8* %23, %struct._GError** %24)
  store %struct._GList* %call33, %struct._GList** %palette_list, align 8
  br label %sw.epilog

sw.bb.34:                                         ; preds = %do.end.29
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %26 = load i8*, i8** %filename.addr, align 8
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call35 = call %struct._GList* @gimp_palette_load_riff(%struct._GimpContext* %25, i8* %26, %struct._GError** %27)
  store %struct._GList* %call35, %struct._GList** %palette_list, align 8
  br label %sw.epilog

sw.bb.36:                                         ; preds = %do.end.29
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %29 = load i8*, i8** %filename.addr, align 8
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call37 = call %struct._GList* @gimp_palette_load_psp(%struct._GimpContext* %28, i8* %29, %struct._GError** %30)
  store %struct._GList* %call37, %struct._GList** %palette_list, align 8
  br label %sw.epilog

sw.bb.38:                                         ; preds = %do.end.29
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %32 = load i8*, i8** %filename.addr, align 8
  %33 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call39 = call %struct._GList* @gimp_palette_load_aco(%struct._GimpContext* %31, i8* %32, %struct._GError** %33)
  store %struct._GList* %call39, %struct._GList** %palette_list, align 8
  br label %sw.epilog

sw.bb.40:                                         ; preds = %do.end.29
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %35 = load i8*, i8** %filename.addr, align 8
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call41 = call %struct._GList* @gimp_palette_load_css(%struct._GimpContext* %34, i8* %35, %struct._GError** %36)
  store %struct._GList* %call41, %struct._GList** %palette_list, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.29
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call42 = call i32 @gimp_data_error_quark() #6
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0)) #5
  %38 = load i8*, i8** %filename.addr, align 8
  %call44 = call i8* @gimp_filename_to_utf8(i8* %38)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %37, i32 %call42, i32 1, i8* %call43, i8* %call44)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.40, %sw.bb.38, %sw.bb.36, %sw.bb.34, %sw.bb.32, %sw.bb
  %39 = load %struct._GList*, %struct._GList** %palette_list, align 8
  %tobool45 = icmp ne %struct._GList* %39, null
  br i1 %tobool45, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %sw.epilog
  %40 = load %struct._GList*, %struct._GList** %palette_list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %40, i32 0, i32 0
  %41 = load i8*, i8** %data, align 8
  %call48 = call i8* @g_object_ref(i8* %41)
  %42 = bitcast i8* %call48 to %struct._GimpPalette*
  store %struct._GimpPalette* %42, %struct._GimpPalette** %palette, align 8
  %43 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %44 = bitcast %struct._GimpPalette* %43 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_object_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call49)
  %45 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpObject*
  %46 = load i8*, i8** %palette_name.addr, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %45, i8* %46)
  %47 = load %struct._GList*, %struct._GList** %palette_list, align 8
  call void @g_list_free_full(%struct._GList* %47, void (i8*)* @g_object_unref)
  %48 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  store %struct._GimpPalette* %48, %struct._GimpPalette** %retval
  br label %return

if.end.51:                                        ; preds = %sw.epilog
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.then.46, %if.else.27, %if.else.20, %if.else.14, %if.else.9
  %49 = load %struct._GimpPalette*, %struct._GimpPalette** %retval
  ret %struct._GimpPalette* %49
}

declare i32 @gimp_palette_load_detect_format(i8*) #3

declare %struct._GList* @gimp_palette_load(%struct._GimpContext*, i8*, %struct._GError**) #3

declare %struct._GList* @gimp_palette_load_act(%struct._GimpContext*, i8*, %struct._GError**) #3

declare %struct._GList* @gimp_palette_load_riff(%struct._GimpContext*, i8*, %struct._GError**) #3

declare %struct._GList* @gimp_palette_load_psp(%struct._GimpContext*, i8*, %struct._GError**) #3

declare %struct._GList* @gimp_palette_load_aco(%struct._GimpContext*, i8*, %struct._GError**) #3

declare %struct._GList* @gimp_palette_load_css(%struct._GimpContext*, i8*, %struct._GError**) #3

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i32 @gimp_data_error_quark() #1

declare i8* @gimp_filename_to_utf8(i8*) #3

declare i8* @g_object_ref(i8*) #3

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #3

declare void @g_object_unref(i8*) #3

declare %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable*) #3

declare i32 @gimp_pickable_get_image_type(%struct._GimpPickable*) #3

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #3

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #3

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #3

declare %struct._PixelRegionIterator* @pixel_regions_register(i32, ...) #3

declare void @gimp_image_get_color(%struct._GimpImage*, i32, i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal %struct._GHashTable* @gimp_palette_import_store_colors(%struct._GHashTable* %table, i8* %colors, i8* %colors_real, i32 %n_colors) #0 {
entry:
  %retval = alloca %struct._GHashTable*, align 8
  %table.addr = alloca %struct._GHashTable*, align 8
  %colors.addr = alloca i8*, align 8
  %colors_real.addr = alloca i8*, align 8
  %n_colors.addr = alloca i32, align 4
  %found_color = alloca i8*, align 8
  %new_color = alloca %struct._ImgColors*, align 8
  %key_colors = alloca i32, align 4
  store %struct._GHashTable* %table, %struct._GHashTable** %table.addr, align 8
  store i8* %colors, i8** %colors.addr, align 8
  store i8* %colors_real, i8** %colors_real.addr, align 8
  store i32 %n_colors, i32* %n_colors.addr, align 4
  store i8* null, i8** %found_color, align 8
  %0 = load i8*, i8** %colors.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %mul = mul nsw i32 %conv, 256
  %mul1 = mul nsw i32 %mul, 256
  %2 = load i8*, i8** %colors.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %mul4 = mul nsw i32 %conv3, 256
  %add = add nsw i32 %mul1, %mul4
  %4 = load i8*, i8** %colors.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %5 to i32
  %add7 = add nsw i32 %add, %conv6
  store i32 %add7, i32* %key_colors, align 4
  %6 = load %struct._GHashTable*, %struct._GHashTable** %table.addr, align 8
  %cmp = icmp eq %struct._GHashTable* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* @g_direct_equal)
  store %struct._GHashTable* %call, %struct._GHashTable** %table.addr, align 8
  store i32 0, i32* @count_color_entries, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._GHashTable*, %struct._GHashTable** %table.addr, align 8
  %8 = load i32, i32* %key_colors, align 4
  %conv9 = zext i32 %8 to i64
  %9 = inttoptr i64 %conv9 to i8*
  %call10 = call i8* @g_hash_table_lookup(%struct._GHashTable* %7, i8* %9)
  store i8* %call10, i8** %found_color, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i8*, i8** %found_color, align 8
  %cmp11 = icmp eq i8* %10, null
  br i1 %cmp11, label %if.then.13, label %if.else.24

if.then.13:                                       ; preds = %if.end
  %11 = load i32, i32* @count_color_entries, align 4
  %cmp14 = icmp sgt i32 %11, 20000
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.13
  %12 = load %struct._GHashTable*, %struct._GHashTable** %table.addr, align 8
  store %struct._GHashTable* %12, %struct._GHashTable** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.13
  %13 = load i32, i32* @count_color_entries, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* @count_color_entries, align 4
  %call18 = call noalias i8* @g_slice_alloc(i64 20)
  %14 = bitcast i8* %call18 to %struct._ImgColors*
  store %struct._ImgColors* %14, %struct._ImgColors** %new_color, align 8
  %15 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %count = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %15, i32 0, i32 0
  store i32 1, i32* %count, align 4
  %16 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %r_adj = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %16, i32 0, i32 1
  store i32 0, i32* %r_adj, align 4
  %17 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %g_adj = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %17, i32 0, i32 2
  store i32 0, i32* %g_adj, align 4
  %18 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %b_adj = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %18, i32 0, i32 3
  store i32 0, i32* %b_adj, align 4
  %19 = load i8*, i8** %colors.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx19, align 1
  %21 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %r = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %21, i32 0, i32 4
  store i8 %20, i8* %r, align 1
  %22 = load i8*, i8** %colors.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx20, align 1
  %24 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %g = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %24, i32 0, i32 5
  store i8 %23, i8* %g, align 1
  %25 = load i8*, i8** %colors.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %25, i64 2
  %26 = load i8, i8* %arrayidx21, align 1
  %27 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %b = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %27, i32 0, i32 6
  store i8 %26, i8* %b, align 1
  %28 = load %struct._GHashTable*, %struct._GHashTable** %table.addr, align 8
  %29 = load i32, i32* %key_colors, align 4
  %conv22 = zext i32 %29 to i64
  %30 = inttoptr i64 %conv22 to i8*
  %31 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %32 = bitcast %struct._ImgColors* %31 to i8*
  %call23 = call i32 @g_hash_table_insert(%struct._GHashTable* %28, i8* %30, i8* %32)
  br label %if.end.75

if.else.24:                                       ; preds = %if.end
  %33 = load i8*, i8** %found_color, align 8
  %34 = bitcast i8* %33 to %struct._ImgColors*
  store %struct._ImgColors* %34, %struct._ImgColors** %new_color, align 8
  %35 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %count25 = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %35, i32 0, i32 0
  %36 = load i32, i32* %count25, align 4
  %cmp26 = icmp ult i32 %36, 2147483646
  br i1 %cmp26, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.else.24
  %37 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %count29 = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %37, i32 0, i32 0
  %38 = load i32, i32* %count29, align 4
  %inc30 = add i32 %38, 1
  store i32 %inc30, i32* %count29, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.else.24
  %39 = load i8*, i8** %colors_real.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %39, i64 0
  %40 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %40 to i32
  %41 = load i8*, i8** %colors.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %41, i64 0
  %42 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %42 to i32
  %sub = sub nsw i32 %conv33, %conv35
  %43 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %r_adj36 = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %43, i32 0, i32 1
  %44 = load i32, i32* %r_adj36, align 4
  %add37 = add i32 %44, %sub
  store i32 %add37, i32* %r_adj36, align 4
  %45 = load i8*, i8** %colors_real.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %46 to i32
  %47 = load i8*, i8** %colors.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %47, i64 1
  %48 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %48 to i32
  %sub42 = sub nsw i32 %conv39, %conv41
  %49 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %g_adj43 = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %49, i32 0, i32 2
  %50 = load i32, i32* %g_adj43, align 4
  %add44 = add i32 %50, %sub42
  store i32 %add44, i32* %g_adj43, align 4
  %51 = load i8*, i8** %colors_real.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %51, i64 2
  %52 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %52 to i32
  %53 = load i8*, i8** %colors.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %53, i64 2
  %54 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %54 to i32
  %sub49 = sub nsw i32 %conv46, %conv48
  %55 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %b_adj50 = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %55, i32 0, i32 3
  %56 = load i32, i32* %b_adj50, align 4
  %add51 = add i32 %56, %sub49
  store i32 %add51, i32* %b_adj50, align 4
  %57 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %r_adj52 = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %57, i32 0, i32 1
  %58 = load i32, i32* %r_adj52, align 4
  %cmp53 = icmp ugt i32 %58, 2147483392
  br i1 %cmp53, label %if.then.55, label %if.end.58

if.then.55:                                       ; preds = %if.end.31
  %59 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %count56 = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %59, i32 0, i32 0
  %60 = load i32, i32* %count56, align 4
  %61 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %r_adj57 = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %61, i32 0, i32 1
  %62 = load i32, i32* %r_adj57, align 4
  %div = udiv i32 %62, %60
  store i32 %div, i32* %r_adj57, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.55, %if.end.31
  %63 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %g_adj59 = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %63, i32 0, i32 2
  %64 = load i32, i32* %g_adj59, align 4
  %cmp60 = icmp ugt i32 %64, 2147483392
  br i1 %cmp60, label %if.then.62, label %if.end.66

if.then.62:                                       ; preds = %if.end.58
  %65 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %count63 = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %65, i32 0, i32 0
  %66 = load i32, i32* %count63, align 4
  %67 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %g_adj64 = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %67, i32 0, i32 2
  %68 = load i32, i32* %g_adj64, align 4
  %div65 = udiv i32 %68, %66
  store i32 %div65, i32* %g_adj64, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.62, %if.end.58
  %69 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %b_adj67 = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %69, i32 0, i32 3
  %70 = load i32, i32* %b_adj67, align 4
  %cmp68 = icmp ugt i32 %70, 2147483392
  br i1 %cmp68, label %if.then.70, label %if.end.74

if.then.70:                                       ; preds = %if.end.66
  %71 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %count71 = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %71, i32 0, i32 0
  %72 = load i32, i32* %count71, align 4
  %73 = load %struct._ImgColors*, %struct._ImgColors** %new_color, align 8
  %b_adj72 = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %73, i32 0, i32 3
  %74 = load i32, i32* %b_adj72, align 4
  %div73 = udiv i32 %74, %72
  store i32 %div73, i32* %b_adj72, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.70, %if.end.66
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.17
  %75 = load %struct._GHashTable*, %struct._GHashTable** %table.addr, align 8
  store %struct._GHashTable* %75, %struct._GHashTable** %retval
  br label %return

return:                                           ; preds = %if.end.75, %if.then.16
  %76 = load %struct._GHashTable*, %struct._GHashTable** %retval
  ret %struct._GHashTable* %76
}

declare %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator*) #3

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #3

; Function Attrs: nounwind readnone
declare i32 @g_direct_hash(i8*) #1

; Function Attrs: nounwind readnone
declare i32 @g_direct_equal(i8*, i8*) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #3

declare noalias i8* @g_slice_alloc(i64) #3

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #3

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_import_create_list(i8* %key, i8* %value, i8* %user_data) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %list = alloca %struct._GSList**, align 8
  %color_tab = alloca %struct._ImgColors*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GSList**
  store %struct._GSList** %1, %struct._GSList*** %list, align 8
  %2 = load i8*, i8** %value.addr, align 8
  %3 = bitcast i8* %2 to %struct._ImgColors*
  store %struct._ImgColors* %3, %struct._ImgColors** %color_tab, align 8
  %4 = load %struct._GSList**, %struct._GSList*** %list, align 8
  %5 = load %struct._GSList*, %struct._GSList** %4, align 8
  %6 = load %struct._ImgColors*, %struct._ImgColors** %color_tab, align 8
  %7 = bitcast %struct._ImgColors* %6 to i8*
  %call = call %struct._GSList* @g_slist_prepend(%struct._GSList* %5, i8* %7)
  %8 = load %struct._GSList**, %struct._GSList*** %list, align 8
  store %struct._GSList* %call, %struct._GSList** %8, align 8
  ret void
}

declare %struct._GSList* @g_slist_sort(%struct._GSList*, i32 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_palette_import_sort_colors(i8* %a, i8* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %s1 = alloca %struct._ImgColors*, align 8
  %s2 = alloca %struct._ImgColors*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct._ImgColors*
  store %struct._ImgColors* %1, %struct._ImgColors** %s1, align 8
  %2 = load i8*, i8** %b.addr, align 8
  %3 = bitcast i8* %2 to %struct._ImgColors*
  store %struct._ImgColors* %3, %struct._ImgColors** %s2, align 8
  %4 = load %struct._ImgColors*, %struct._ImgColors** %s1, align 8
  %count = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %4, i32 0, i32 0
  %5 = load i32, i32* %count, align 4
  %6 = load %struct._ImgColors*, %struct._ImgColors** %s2, align 8
  %count1 = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %6, i32 0, i32 0
  %7 = load i32, i32* %count1, align 4
  %cmp = icmp ugt i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._ImgColors*, %struct._ImgColors** %s1, align 8
  %count2 = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %8, i32 0, i32 0
  %9 = load i32, i32* %count2, align 4
  %10 = load %struct._ImgColors*, %struct._ImgColors** %s2, align 8
  %count3 = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %10, i32 0, i32 0
  %11 = load i32, i32* %count3, align 4
  %cmp4 = icmp ult i32 %9, %11
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_palette_import_create_image_palette(i8* %data, i8* %user_data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %color_tab = alloca %struct._ImgColors*, align 8
  %n_colors = alloca i32, align 4
  %lab = alloca i8*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpPalette*
  store %struct._GimpPalette* %1, %struct._GimpPalette** %palette, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = bitcast i8* %2 to %struct._ImgColors*
  store %struct._ImgColors* %3, %struct._ImgColors** %color_tab, align 8
  %4 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %5 = bitcast %struct._GimpPalette* %4 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0))
  %7 = ptrtoint i8* %call1 to i64
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %n_colors, align 4
  %8 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call2 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %8)
  %9 = load i32, i32* %n_colors, align 4
  %cmp = icmp sge i32 %call2, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)) #5
  %10 = load %struct._ImgColors*, %struct._ImgColors** %color_tab, align 8
  %count = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %10, i32 0, i32 0
  %11 = load i32, i32* %count, align 4
  %call5 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* %call4, i32 %11)
  store i8* %call5, i8** %lab, align 8
  %12 = load %struct._ImgColors*, %struct._ImgColors** %color_tab, align 8
  %r = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %12, i32 0, i32 4
  %13 = load i8, i8* %r, align 1
  %conv6 = zext i8 %13 to i32
  %14 = load %struct._ImgColors*, %struct._ImgColors** %color_tab, align 8
  %r_adj = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %14, i32 0, i32 1
  %15 = load i32, i32* %r_adj, align 4
  %16 = load %struct._ImgColors*, %struct._ImgColors** %color_tab, align 8
  %count7 = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %16, i32 0, i32 0
  %17 = load i32, i32* %count7, align 4
  %div = udiv i32 %15, %17
  %add = add i32 %conv6, %div
  %conv8 = trunc i32 %add to i8
  %18 = load %struct._ImgColors*, %struct._ImgColors** %color_tab, align 8
  %g = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %18, i32 0, i32 5
  %19 = load i8, i8* %g, align 1
  %conv9 = zext i8 %19 to i32
  %20 = load %struct._ImgColors*, %struct._ImgColors** %color_tab, align 8
  %g_adj = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %20, i32 0, i32 2
  %21 = load i32, i32* %g_adj, align 4
  %22 = load %struct._ImgColors*, %struct._ImgColors** %color_tab, align 8
  %count10 = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %22, i32 0, i32 0
  %23 = load i32, i32* %count10, align 4
  %div11 = udiv i32 %21, %23
  %add12 = add i32 %conv9, %div11
  %conv13 = trunc i32 %add12 to i8
  %24 = load %struct._ImgColors*, %struct._ImgColors** %color_tab, align 8
  %b = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %24, i32 0, i32 6
  %25 = load i8, i8* %b, align 1
  %conv14 = zext i8 %25 to i32
  %26 = load %struct._ImgColors*, %struct._ImgColors** %color_tab, align 8
  %b_adj = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %26, i32 0, i32 3
  %27 = load i32, i32* %b_adj, align 4
  %28 = load %struct._ImgColors*, %struct._ImgColors** %color_tab, align 8
  %count15 = getelementptr inbounds %struct._ImgColors, %struct._ImgColors* %28, i32 0, i32 0
  %29 = load i32, i32* %count15, align 4
  %div16 = udiv i32 %27, %29
  %add17 = add i32 %conv14, %div16
  %conv18 = trunc i32 %add17 to i8
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %color, i8 zeroext %conv8, i8 zeroext %conv13, i8 zeroext %conv18, i8 zeroext -1)
  %30 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %31 = load i8*, i8** %lab, align 8
  %call19 = call %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette* %30, i32 -1, i8* %31, %struct._GimpRGB* %color)
  %32 = load i8*, i8** %lab, align 8
  call void @g_free(i8* %32)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #3

declare void @g_slice_free1(i64, i8*) #3

declare void @g_slist_free(%struct._GSList*) #3

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare i32 @gimp_palette_get_n_colors(%struct._GimpPalette*) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare void @g_free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
