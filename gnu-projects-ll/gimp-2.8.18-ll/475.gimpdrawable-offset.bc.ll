; ModuleID = './app/core/gimpdrawable-offset.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpDrawablePrivate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_drawable_offset = private unnamed_addr constant [21 x i8] c"gimp_drawable_offset\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"undo-type\04Offset Drawable\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_drawable_offset(%struct._GimpDrawable* %drawable, %struct._GimpContext* %context, i32 %wrap_around, i32 %fill_type, i32 %offset_x, i32 %offset_y) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %wrap_around.addr = alloca i32, align 4
  %fill_type.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %new_tiles = alloca %struct._TileManager*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %src_x = alloca i32, align 4
  %src_y = alloca i32, align 4
  %dest_x = alloca i32, align 4
  %dest_y = alloca i32, align 4
  %fill = alloca [4 x i8], align 1
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %wrap_around, i32* %wrap_around.addr, align 4
  store i32 %fill_type, i32* %fill_type.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  %0 = bitcast [4 x i8]* %fill to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 4, i32 1, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %2 = bitcast %struct._GimpDrawable* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_drawable_offset, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_drawable_offset, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %28 = bitcast %struct._GimpDrawable* %27 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_item_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call39)
  %29 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpItem*
  store %struct._GimpItem* %29, %struct._GimpItem** %item, align 8
  %30 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call41 = call i32 @gimp_item_get_width(%struct._GimpItem* %30)
  store i32 %call41, i32* %width, align 4
  %31 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call42 = call i32 @gimp_item_get_height(%struct._GimpItem* %31)
  store i32 %call42, i32* %height, align 4
  %32 = load i32, i32* %wrap_around.addr, align 4
  %tobool43 = icmp ne i32 %32, 0
  br i1 %tobool43, label %if.then.44, label %if.else.52

if.then.44:                                       ; preds = %do.end.38
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.44
  %33 = load i32, i32* %offset_x.addr, align 4
  %cmp45 = icmp slt i32 %33, 0
  br i1 %cmp45, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load i32, i32* %width, align 4
  %35 = load i32, i32* %offset_x.addr, align 4
  %add = add nsw i32 %35, %34
  store i32 %add, i32* %offset_x.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.46

while.cond.46:                                    ; preds = %while.body.48, %while.end
  %36 = load i32, i32* %offset_y.addr, align 4
  %cmp47 = icmp slt i32 %36, 0
  br i1 %cmp47, label %while.body.48, label %while.end.50

while.body.48:                                    ; preds = %while.cond.46
  %37 = load i32, i32* %height, align 4
  %38 = load i32, i32* %offset_y.addr, align 4
  %add49 = add nsw i32 %38, %37
  store i32 %add49, i32* %offset_y.addr, align 4
  br label %while.cond.46

while.end.50:                                     ; preds = %while.cond.46
  %39 = load i32, i32* %width, align 4
  %40 = load i32, i32* %offset_x.addr, align 4
  %rem = srem i32 %40, %39
  store i32 %rem, i32* %offset_x.addr, align 4
  %41 = load i32, i32* %height, align 4
  %42 = load i32, i32* %offset_y.addr, align 4
  %rem51 = srem i32 %42, %41
  store i32 %rem51, i32* %offset_y.addr, align 4
  br label %if.end.72

if.else.52:                                       ; preds = %do.end.38
  %43 = load i32, i32* %offset_x.addr, align 4
  %44 = load i32, i32* %width, align 4
  %cmp53 = icmp sgt i32 %43, %44
  br i1 %cmp53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.52
  %45 = load i32, i32* %width, align 4
  br label %cond.end.58

cond.false:                                       ; preds = %if.else.52
  %46 = load i32, i32* %offset_x.addr, align 4
  %47 = load i32, i32* %width, align 4
  %sub = sub nsw i32 0, %47
  %cmp54 = icmp slt i32 %46, %sub
  br i1 %cmp54, label %cond.true.55, label %cond.false.57

cond.true.55:                                     ; preds = %cond.false
  %48 = load i32, i32* %width, align 4
  %sub56 = sub nsw i32 0, %48
  br label %cond.end

cond.false.57:                                    ; preds = %cond.false
  %49 = load i32, i32* %offset_x.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.57, %cond.true.55
  %cond = phi i32 [ %sub56, %cond.true.55 ], [ %49, %cond.false.57 ]
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.end, %cond.true
  %cond59 = phi i32 [ %45, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond59, i32* %offset_x.addr, align 4
  %50 = load i32, i32* %offset_y.addr, align 4
  %51 = load i32, i32* %height, align 4
  %cmp60 = icmp sgt i32 %50, %51
  br i1 %cmp60, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.end.58
  %52 = load i32, i32* %height, align 4
  br label %cond.end.70

cond.false.62:                                    ; preds = %cond.end.58
  %53 = load i32, i32* %offset_y.addr, align 4
  %54 = load i32, i32* %height, align 4
  %sub63 = sub nsw i32 0, %54
  %cmp64 = icmp slt i32 %53, %sub63
  br i1 %cmp64, label %cond.true.65, label %cond.false.67

cond.true.65:                                     ; preds = %cond.false.62
  %55 = load i32, i32* %height, align 4
  %sub66 = sub nsw i32 0, %55
  br label %cond.end.68

cond.false.67:                                    ; preds = %cond.false.62
  %56 = load i32, i32* %offset_y.addr, align 4
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.67, %cond.true.65
  %cond69 = phi i32 [ %sub66, %cond.true.65 ], [ %56, %cond.false.67 ]
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.end.68, %cond.true.61
  %cond71 = phi i32 [ %52, %cond.true.61 ], [ %cond69, %cond.end.68 ]
  store i32 %cond71, i32* %offset_y.addr, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %cond.end.70, %while.end.50
  %57 = load i32, i32* %offset_x.addr, align 4
  %cmp73 = icmp eq i32 %57, 0
  br i1 %cmp73, label %land.lhs.true.74, label %if.end.77

land.lhs.true.74:                                 ; preds = %if.end.72
  %58 = load i32, i32* %offset_y.addr, align 4
  %cmp75 = icmp eq i32 %58, 0
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true.74
  br label %return

if.end.77:                                        ; preds = %land.lhs.true.74, %if.end.72
  %59 = load i32, i32* %width, align 4
  %60 = load i32, i32* %height, align 4
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call78 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %61)
  %call79 = call %struct._TileManager* @tile_manager_new(i32 %59, i32 %60, i32 %call78)
  store %struct._TileManager* %call79, %struct._TileManager** %new_tiles, align 8
  %62 = load i32, i32* %offset_x.addr, align 4
  %cmp80 = icmp sge i32 %62, 0
  br i1 %cmp80, label %if.then.81, label %if.else.95

if.then.81:                                       ; preds = %if.end.77
  store i32 0, i32* %src_x, align 4
  %63 = load i32, i32* %offset_x.addr, align 4
  store i32 %63, i32* %dest_x, align 4
  %64 = load i32, i32* %width, align 4
  %65 = load i32, i32* %offset_x.addr, align 4
  %sub82 = sub nsw i32 %64, %65
  %66 = load i32, i32* %width, align 4
  %cmp83 = icmp sgt i32 %sub82, %66
  br i1 %cmp83, label %cond.true.84, label %cond.false.85

cond.true.84:                                     ; preds = %if.then.81
  %67 = load i32, i32* %width, align 4
  br label %cond.end.93

cond.false.85:                                    ; preds = %if.then.81
  %68 = load i32, i32* %width, align 4
  %69 = load i32, i32* %offset_x.addr, align 4
  %sub86 = sub nsw i32 %68, %69
  %cmp87 = icmp slt i32 %sub86, 0
  br i1 %cmp87, label %cond.true.88, label %cond.false.89

cond.true.88:                                     ; preds = %cond.false.85
  br label %cond.end.91

cond.false.89:                                    ; preds = %cond.false.85
  %70 = load i32, i32* %width, align 4
  %71 = load i32, i32* %offset_x.addr, align 4
  %sub90 = sub nsw i32 %70, %71
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.89, %cond.true.88
  %cond92 = phi i32 [ 0, %cond.true.88 ], [ %sub90, %cond.false.89 ]
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.end.91, %cond.true.84
  %cond94 = phi i32 [ %67, %cond.true.84 ], [ %cond92, %cond.end.91 ]
  store i32 %cond94, i32* %width, align 4
  br label %if.end.110

if.else.95:                                       ; preds = %if.end.77
  %72 = load i32, i32* %offset_x.addr, align 4
  %sub96 = sub nsw i32 0, %72
  store i32 %sub96, i32* %src_x, align 4
  store i32 0, i32* %dest_x, align 4
  %73 = load i32, i32* %width, align 4
  %74 = load i32, i32* %offset_x.addr, align 4
  %add97 = add nsw i32 %73, %74
  %75 = load i32, i32* %width, align 4
  %cmp98 = icmp sgt i32 %add97, %75
  br i1 %cmp98, label %cond.true.99, label %cond.false.100

cond.true.99:                                     ; preds = %if.else.95
  %76 = load i32, i32* %width, align 4
  br label %cond.end.108

cond.false.100:                                   ; preds = %if.else.95
  %77 = load i32, i32* %width, align 4
  %78 = load i32, i32* %offset_x.addr, align 4
  %add101 = add nsw i32 %77, %78
  %cmp102 = icmp slt i32 %add101, 0
  br i1 %cmp102, label %cond.true.103, label %cond.false.104

cond.true.103:                                    ; preds = %cond.false.100
  br label %cond.end.106

cond.false.104:                                   ; preds = %cond.false.100
  %79 = load i32, i32* %width, align 4
  %80 = load i32, i32* %offset_x.addr, align 4
  %add105 = add nsw i32 %79, %80
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.104, %cond.true.103
  %cond107 = phi i32 [ 0, %cond.true.103 ], [ %add105, %cond.false.104 ]
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.end.106, %cond.true.99
  %cond109 = phi i32 [ %76, %cond.true.99 ], [ %cond107, %cond.end.106 ]
  store i32 %cond109, i32* %width, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %cond.end.108, %cond.end.93
  %81 = load i32, i32* %offset_y.addr, align 4
  %cmp111 = icmp sge i32 %81, 0
  br i1 %cmp111, label %if.then.112, label %if.else.126

if.then.112:                                      ; preds = %if.end.110
  store i32 0, i32* %src_y, align 4
  %82 = load i32, i32* %offset_y.addr, align 4
  store i32 %82, i32* %dest_y, align 4
  %83 = load i32, i32* %height, align 4
  %84 = load i32, i32* %offset_y.addr, align 4
  %sub113 = sub nsw i32 %83, %84
  %85 = load i32, i32* %height, align 4
  %cmp114 = icmp sgt i32 %sub113, %85
  br i1 %cmp114, label %cond.true.115, label %cond.false.116

cond.true.115:                                    ; preds = %if.then.112
  %86 = load i32, i32* %height, align 4
  br label %cond.end.124

cond.false.116:                                   ; preds = %if.then.112
  %87 = load i32, i32* %height, align 4
  %88 = load i32, i32* %offset_y.addr, align 4
  %sub117 = sub nsw i32 %87, %88
  %cmp118 = icmp slt i32 %sub117, 0
  br i1 %cmp118, label %cond.true.119, label %cond.false.120

cond.true.119:                                    ; preds = %cond.false.116
  br label %cond.end.122

cond.false.120:                                   ; preds = %cond.false.116
  %89 = load i32, i32* %height, align 4
  %90 = load i32, i32* %offset_y.addr, align 4
  %sub121 = sub nsw i32 %89, %90
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.120, %cond.true.119
  %cond123 = phi i32 [ 0, %cond.true.119 ], [ %sub121, %cond.false.120 ]
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.end.122, %cond.true.115
  %cond125 = phi i32 [ %86, %cond.true.115 ], [ %cond123, %cond.end.122 ]
  store i32 %cond125, i32* %height, align 4
  br label %if.end.141

if.else.126:                                      ; preds = %if.end.110
  %91 = load i32, i32* %offset_y.addr, align 4
  %sub127 = sub nsw i32 0, %91
  store i32 %sub127, i32* %src_y, align 4
  store i32 0, i32* %dest_y, align 4
  %92 = load i32, i32* %height, align 4
  %93 = load i32, i32* %offset_y.addr, align 4
  %add128 = add nsw i32 %92, %93
  %94 = load i32, i32* %height, align 4
  %cmp129 = icmp sgt i32 %add128, %94
  br i1 %cmp129, label %cond.true.130, label %cond.false.131

cond.true.130:                                    ; preds = %if.else.126
  %95 = load i32, i32* %height, align 4
  br label %cond.end.139

cond.false.131:                                   ; preds = %if.else.126
  %96 = load i32, i32* %height, align 4
  %97 = load i32, i32* %offset_y.addr, align 4
  %add132 = add nsw i32 %96, %97
  %cmp133 = icmp slt i32 %add132, 0
  br i1 %cmp133, label %cond.true.134, label %cond.false.135

cond.true.134:                                    ; preds = %cond.false.131
  br label %cond.end.137

cond.false.135:                                   ; preds = %cond.false.131
  %98 = load i32, i32* %height, align 4
  %99 = load i32, i32* %offset_y.addr, align 4
  %add136 = add nsw i32 %98, %99
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.135, %cond.true.134
  %cond138 = phi i32 [ 0, %cond.true.134 ], [ %add136, %cond.false.135 ]
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.end.137, %cond.true.130
  %cond140 = phi i32 [ %95, %cond.true.130 ], [ %cond138, %cond.end.137 ]
  store i32 %cond140, i32* %height, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %cond.end.139, %cond.end.124
  %100 = load i32, i32* %width, align 4
  %tobool142 = icmp ne i32 %100, 0
  br i1 %tobool142, label %land.lhs.true.143, label %if.end.147

land.lhs.true.143:                                ; preds = %if.end.141
  %101 = load i32, i32* %height, align 4
  %tobool144 = icmp ne i32 %101, 0
  br i1 %tobool144, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %land.lhs.true.143
  %102 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call146 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %102)
  %103 = load i32, i32* %src_x, align 4
  %104 = load i32, i32* %src_y, align 4
  %105 = load i32, i32* %width, align 4
  %106 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call146, i32 %103, i32 %104, i32 %105, i32 %106, i32 0)
  %107 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %108 = load i32, i32* %dest_x, align 4
  %109 = load i32, i32* %dest_y, align 4
  %110 = load i32, i32* %width, align 4
  %111 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 1)
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.145, %land.lhs.true.143, %if.end.141
  %112 = load i32, i32* %wrap_around.addr, align 4
  %cmp148 = icmp eq i32 %112, 1
  br i1 %cmp148, label %if.then.149, label %if.else.367

if.then.149:                                      ; preds = %if.end.147
  %113 = load i32, i32* %offset_x.addr, align 4
  %cmp150 = icmp sge i32 %113, 0
  br i1 %cmp150, label %land.lhs.true.151, label %if.else.158

land.lhs.true.151:                                ; preds = %if.then.149
  %114 = load i32, i32* %offset_y.addr, align 4
  %cmp152 = icmp sge i32 %114, 0
  br i1 %cmp152, label %if.then.153, label %if.else.158

if.then.153:                                      ; preds = %land.lhs.true.151
  %115 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call154 = call i32 @gimp_item_get_width(%struct._GimpItem* %115)
  %116 = load i32, i32* %offset_x.addr, align 4
  %sub155 = sub nsw i32 %call154, %116
  store i32 %sub155, i32* %src_x, align 4
  %117 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call156 = call i32 @gimp_item_get_height(%struct._GimpItem* %117)
  %118 = load i32, i32* %offset_y.addr, align 4
  %sub157 = sub nsw i32 %call156, %118
  store i32 %sub157, i32* %src_y, align 4
  br label %if.end.180

if.else.158:                                      ; preds = %land.lhs.true.151, %if.then.149
  %119 = load i32, i32* %offset_x.addr, align 4
  %cmp159 = icmp sge i32 %119, 0
  br i1 %cmp159, label %land.lhs.true.160, label %if.else.165

land.lhs.true.160:                                ; preds = %if.else.158
  %120 = load i32, i32* %offset_y.addr, align 4
  %cmp161 = icmp slt i32 %120, 0
  br i1 %cmp161, label %if.then.162, label %if.else.165

if.then.162:                                      ; preds = %land.lhs.true.160
  %121 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call163 = call i32 @gimp_item_get_width(%struct._GimpItem* %121)
  %122 = load i32, i32* %offset_x.addr, align 4
  %sub164 = sub nsw i32 %call163, %122
  store i32 %sub164, i32* %src_x, align 4
  store i32 0, i32* %src_y, align 4
  br label %if.end.179

if.else.165:                                      ; preds = %land.lhs.true.160, %if.else.158
  %123 = load i32, i32* %offset_x.addr, align 4
  %cmp166 = icmp slt i32 %123, 0
  br i1 %cmp166, label %land.lhs.true.167, label %if.else.172

land.lhs.true.167:                                ; preds = %if.else.165
  %124 = load i32, i32* %offset_y.addr, align 4
  %cmp168 = icmp sge i32 %124, 0
  br i1 %cmp168, label %if.then.169, label %if.else.172

if.then.169:                                      ; preds = %land.lhs.true.167
  store i32 0, i32* %src_x, align 4
  %125 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call170 = call i32 @gimp_item_get_height(%struct._GimpItem* %125)
  %126 = load i32, i32* %offset_y.addr, align 4
  %sub171 = sub nsw i32 %call170, %126
  store i32 %sub171, i32* %src_y, align 4
  br label %if.end.178

if.else.172:                                      ; preds = %land.lhs.true.167, %if.else.165
  %127 = load i32, i32* %offset_x.addr, align 4
  %cmp173 = icmp slt i32 %127, 0
  br i1 %cmp173, label %land.lhs.true.174, label %if.end.177

land.lhs.true.174:                                ; preds = %if.else.172
  %128 = load i32, i32* %offset_y.addr, align 4
  %cmp175 = icmp slt i32 %128, 0
  br i1 %cmp175, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %land.lhs.true.174
  store i32 0, i32* %src_x, align 4
  store i32 0, i32* %src_y, align 4
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.176, %land.lhs.true.174, %if.else.172
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %if.then.169
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.then.162
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %if.then.153
  %129 = load i32, i32* %src_x, align 4
  %130 = load i32, i32* %offset_x.addr, align 4
  %add181 = add nsw i32 %129, %130
  %131 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call182 = call i32 @gimp_item_get_width(%struct._GimpItem* %131)
  %rem183 = srem i32 %add181, %call182
  store i32 %rem183, i32* %dest_x, align 4
  %132 = load i32, i32* %dest_x, align 4
  %cmp184 = icmp slt i32 %132, 0
  br i1 %cmp184, label %if.then.185, label %if.end.188

if.then.185:                                      ; preds = %if.end.180
  %133 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call186 = call i32 @gimp_item_get_width(%struct._GimpItem* %133)
  %134 = load i32, i32* %dest_x, align 4
  %add187 = add nsw i32 %call186, %134
  store i32 %add187, i32* %dest_x, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.185, %if.end.180
  %135 = load i32, i32* %src_y, align 4
  %136 = load i32, i32* %offset_y.addr, align 4
  %add189 = add nsw i32 %135, %136
  %137 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call190 = call i32 @gimp_item_get_height(%struct._GimpItem* %137)
  %rem191 = srem i32 %add189, %call190
  store i32 %rem191, i32* %dest_y, align 4
  %138 = load i32, i32* %dest_y, align 4
  %cmp192 = icmp slt i32 %138, 0
  br i1 %cmp192, label %if.then.193, label %if.end.196

if.then.193:                                      ; preds = %if.end.188
  %139 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call194 = call i32 @gimp_item_get_height(%struct._GimpItem* %139)
  %140 = load i32, i32* %dest_y, align 4
  %add195 = add nsw i32 %call194, %140
  store i32 %add195, i32* %dest_y, align 4
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.193, %if.end.188
  %141 = load i32, i32* %offset_x.addr, align 4
  %cmp197 = icmp ne i32 %141, 0
  br i1 %cmp197, label %land.lhs.true.198, label %if.end.226

land.lhs.true.198:                                ; preds = %if.end.196
  %142 = load i32, i32* %offset_y.addr, align 4
  %cmp199 = icmp ne i32 %142, 0
  br i1 %cmp199, label %if.then.200, label %if.end.226

if.then.200:                                      ; preds = %land.lhs.true.198
  %143 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call201 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %143)
  %144 = load i32, i32* %src_x, align 4
  %145 = load i32, i32* %src_y, align 4
  %146 = load i32, i32* %offset_x.addr, align 4
  %cmp202 = icmp slt i32 %146, 0
  br i1 %cmp202, label %cond.true.203, label %cond.false.205

cond.true.203:                                    ; preds = %if.then.200
  %147 = load i32, i32* %offset_x.addr, align 4
  %sub204 = sub nsw i32 0, %147
  br label %cond.end.206

cond.false.205:                                   ; preds = %if.then.200
  %148 = load i32, i32* %offset_x.addr, align 4
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.205, %cond.true.203
  %cond207 = phi i32 [ %sub204, %cond.true.203 ], [ %148, %cond.false.205 ]
  %149 = load i32, i32* %offset_y.addr, align 4
  %cmp208 = icmp slt i32 %149, 0
  br i1 %cmp208, label %cond.true.209, label %cond.false.211

cond.true.209:                                    ; preds = %cond.end.206
  %150 = load i32, i32* %offset_y.addr, align 4
  %sub210 = sub nsw i32 0, %150
  br label %cond.end.212

cond.false.211:                                   ; preds = %cond.end.206
  %151 = load i32, i32* %offset_y.addr, align 4
  br label %cond.end.212

cond.end.212:                                     ; preds = %cond.false.211, %cond.true.209
  %cond213 = phi i32 [ %sub210, %cond.true.209 ], [ %151, %cond.false.211 ]
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call201, i32 %144, i32 %145, i32 %cond207, i32 %cond213, i32 0)
  %152 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %153 = load i32, i32* %dest_x, align 4
  %154 = load i32, i32* %dest_y, align 4
  %155 = load i32, i32* %offset_x.addr, align 4
  %cmp214 = icmp slt i32 %155, 0
  br i1 %cmp214, label %cond.true.215, label %cond.false.217

cond.true.215:                                    ; preds = %cond.end.212
  %156 = load i32, i32* %offset_x.addr, align 4
  %sub216 = sub nsw i32 0, %156
  br label %cond.end.218

cond.false.217:                                   ; preds = %cond.end.212
  %157 = load i32, i32* %offset_x.addr, align 4
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.217, %cond.true.215
  %cond219 = phi i32 [ %sub216, %cond.true.215 ], [ %157, %cond.false.217 ]
  %158 = load i32, i32* %offset_y.addr, align 4
  %cmp220 = icmp slt i32 %158, 0
  br i1 %cmp220, label %cond.true.221, label %cond.false.223

cond.true.221:                                    ; preds = %cond.end.218
  %159 = load i32, i32* %offset_y.addr, align 4
  %sub222 = sub nsw i32 0, %159
  br label %cond.end.224

cond.false.223:                                   ; preds = %cond.end.218
  %160 = load i32, i32* %offset_y.addr, align 4
  br label %cond.end.224

cond.end.224:                                     ; preds = %cond.false.223, %cond.true.221
  %cond225 = phi i32 [ %sub222, %cond.true.221 ], [ %160, %cond.false.223 ]
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %152, i32 %153, i32 %154, i32 %cond219, i32 %cond225, i32 1)
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  br label %if.end.226

if.end.226:                                       ; preds = %cond.end.224, %land.lhs.true.198, %if.end.196
  %161 = load i32, i32* %offset_x.addr, align 4
  %cmp227 = icmp ne i32 %161, 0
  br i1 %cmp227, label %if.then.228, label %if.end.296

if.then.228:                                      ; preds = %if.end.226
  %162 = load i32, i32* %offset_y.addr, align 4
  %cmp229 = icmp sge i32 %162, 0
  br i1 %cmp229, label %if.then.230, label %if.else.261

if.then.230:                                      ; preds = %if.then.228
  %163 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call231 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %163)
  %164 = load i32, i32* %src_x, align 4
  %165 = load i32, i32* %offset_x.addr, align 4
  %cmp232 = icmp slt i32 %165, 0
  br i1 %cmp232, label %cond.true.233, label %cond.false.235

cond.true.233:                                    ; preds = %if.then.230
  %166 = load i32, i32* %offset_x.addr, align 4
  %sub234 = sub nsw i32 0, %166
  br label %cond.end.236

cond.false.235:                                   ; preds = %if.then.230
  %167 = load i32, i32* %offset_x.addr, align 4
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.false.235, %cond.true.233
  %cond237 = phi i32 [ %sub234, %cond.true.233 ], [ %167, %cond.false.235 ]
  %168 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call238 = call i32 @gimp_item_get_height(%struct._GimpItem* %168)
  %169 = load i32, i32* %offset_y.addr, align 4
  %cmp239 = icmp slt i32 %169, 0
  br i1 %cmp239, label %cond.true.240, label %cond.false.242

cond.true.240:                                    ; preds = %cond.end.236
  %170 = load i32, i32* %offset_y.addr, align 4
  %sub241 = sub nsw i32 0, %170
  br label %cond.end.243

cond.false.242:                                   ; preds = %cond.end.236
  %171 = load i32, i32* %offset_y.addr, align 4
  br label %cond.end.243

cond.end.243:                                     ; preds = %cond.false.242, %cond.true.240
  %cond244 = phi i32 [ %sub241, %cond.true.240 ], [ %171, %cond.false.242 ]
  %sub245 = sub nsw i32 %call238, %cond244
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call231, i32 %164, i32 0, i32 %cond237, i32 %sub245, i32 0)
  %172 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %173 = load i32, i32* %dest_x, align 4
  %174 = load i32, i32* %dest_y, align 4
  %175 = load i32, i32* %offset_y.addr, align 4
  %add246 = add nsw i32 %174, %175
  %176 = load i32, i32* %offset_x.addr, align 4
  %cmp247 = icmp slt i32 %176, 0
  br i1 %cmp247, label %cond.true.248, label %cond.false.250

cond.true.248:                                    ; preds = %cond.end.243
  %177 = load i32, i32* %offset_x.addr, align 4
  %sub249 = sub nsw i32 0, %177
  br label %cond.end.251

cond.false.250:                                   ; preds = %cond.end.243
  %178 = load i32, i32* %offset_x.addr, align 4
  br label %cond.end.251

cond.end.251:                                     ; preds = %cond.false.250, %cond.true.248
  %cond252 = phi i32 [ %sub249, %cond.true.248 ], [ %178, %cond.false.250 ]
  %179 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call253 = call i32 @gimp_item_get_height(%struct._GimpItem* %179)
  %180 = load i32, i32* %offset_y.addr, align 4
  %cmp254 = icmp slt i32 %180, 0
  br i1 %cmp254, label %cond.true.255, label %cond.false.257

cond.true.255:                                    ; preds = %cond.end.251
  %181 = load i32, i32* %offset_y.addr, align 4
  %sub256 = sub nsw i32 0, %181
  br label %cond.end.258

cond.false.257:                                   ; preds = %cond.end.251
  %182 = load i32, i32* %offset_y.addr, align 4
  br label %cond.end.258

cond.end.258:                                     ; preds = %cond.false.257, %cond.true.255
  %cond259 = phi i32 [ %sub256, %cond.true.255 ], [ %182, %cond.false.257 ]
  %sub260 = sub nsw i32 %call253, %cond259
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %172, i32 %173, i32 %add246, i32 %cond252, i32 %sub260, i32 1)
  br label %if.end.295

if.else.261:                                      ; preds = %if.then.228
  %183 = load i32, i32* %offset_y.addr, align 4
  %cmp262 = icmp slt i32 %183, 0
  br i1 %cmp262, label %if.then.263, label %if.end.294

if.then.263:                                      ; preds = %if.else.261
  %184 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call264 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %184)
  %185 = load i32, i32* %src_x, align 4
  %186 = load i32, i32* %src_y, align 4
  %187 = load i32, i32* %offset_y.addr, align 4
  %sub265 = sub nsw i32 %186, %187
  %188 = load i32, i32* %offset_x.addr, align 4
  %cmp266 = icmp slt i32 %188, 0
  br i1 %cmp266, label %cond.true.267, label %cond.false.269

cond.true.267:                                    ; preds = %if.then.263
  %189 = load i32, i32* %offset_x.addr, align 4
  %sub268 = sub nsw i32 0, %189
  br label %cond.end.270

cond.false.269:                                   ; preds = %if.then.263
  %190 = load i32, i32* %offset_x.addr, align 4
  br label %cond.end.270

cond.end.270:                                     ; preds = %cond.false.269, %cond.true.267
  %cond271 = phi i32 [ %sub268, %cond.true.267 ], [ %190, %cond.false.269 ]
  %191 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call272 = call i32 @gimp_item_get_height(%struct._GimpItem* %191)
  %192 = load i32, i32* %offset_y.addr, align 4
  %cmp273 = icmp slt i32 %192, 0
  br i1 %cmp273, label %cond.true.274, label %cond.false.276

cond.true.274:                                    ; preds = %cond.end.270
  %193 = load i32, i32* %offset_y.addr, align 4
  %sub275 = sub nsw i32 0, %193
  br label %cond.end.277

cond.false.276:                                   ; preds = %cond.end.270
  %194 = load i32, i32* %offset_y.addr, align 4
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.false.276, %cond.true.274
  %cond278 = phi i32 [ %sub275, %cond.true.274 ], [ %194, %cond.false.276 ]
  %sub279 = sub nsw i32 %call272, %cond278
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call264, i32 %185, i32 %sub265, i32 %cond271, i32 %sub279, i32 0)
  %195 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %196 = load i32, i32* %dest_x, align 4
  %197 = load i32, i32* %offset_x.addr, align 4
  %cmp280 = icmp slt i32 %197, 0
  br i1 %cmp280, label %cond.true.281, label %cond.false.283

cond.true.281:                                    ; preds = %cond.end.277
  %198 = load i32, i32* %offset_x.addr, align 4
  %sub282 = sub nsw i32 0, %198
  br label %cond.end.284

cond.false.283:                                   ; preds = %cond.end.277
  %199 = load i32, i32* %offset_x.addr, align 4
  br label %cond.end.284

cond.end.284:                                     ; preds = %cond.false.283, %cond.true.281
  %cond285 = phi i32 [ %sub282, %cond.true.281 ], [ %199, %cond.false.283 ]
  %200 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call286 = call i32 @gimp_item_get_height(%struct._GimpItem* %200)
  %201 = load i32, i32* %offset_y.addr, align 4
  %cmp287 = icmp slt i32 %201, 0
  br i1 %cmp287, label %cond.true.288, label %cond.false.290

cond.true.288:                                    ; preds = %cond.end.284
  %202 = load i32, i32* %offset_y.addr, align 4
  %sub289 = sub nsw i32 0, %202
  br label %cond.end.291

cond.false.290:                                   ; preds = %cond.end.284
  %203 = load i32, i32* %offset_y.addr, align 4
  br label %cond.end.291

cond.end.291:                                     ; preds = %cond.false.290, %cond.true.288
  %cond292 = phi i32 [ %sub289, %cond.true.288 ], [ %203, %cond.false.290 ]
  %sub293 = sub nsw i32 %call286, %cond292
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %195, i32 %196, i32 0, i32 %cond285, i32 %sub293, i32 1)
  br label %if.end.294

if.end.294:                                       ; preds = %cond.end.291, %if.else.261
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294, %cond.end.258
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %if.end.226
  %204 = load i32, i32* %offset_y.addr, align 4
  %cmp297 = icmp ne i32 %204, 0
  br i1 %cmp297, label %if.then.298, label %if.end.366

if.then.298:                                      ; preds = %if.end.296
  %205 = load i32, i32* %offset_x.addr, align 4
  %cmp299 = icmp sge i32 %205, 0
  br i1 %cmp299, label %if.then.300, label %if.else.331

if.then.300:                                      ; preds = %if.then.298
  %206 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call301 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %206)
  %207 = load i32, i32* %src_y, align 4
  %208 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call302 = call i32 @gimp_item_get_width(%struct._GimpItem* %208)
  %209 = load i32, i32* %offset_x.addr, align 4
  %cmp303 = icmp slt i32 %209, 0
  br i1 %cmp303, label %cond.true.304, label %cond.false.306

cond.true.304:                                    ; preds = %if.then.300
  %210 = load i32, i32* %offset_x.addr, align 4
  %sub305 = sub nsw i32 0, %210
  br label %cond.end.307

cond.false.306:                                   ; preds = %if.then.300
  %211 = load i32, i32* %offset_x.addr, align 4
  br label %cond.end.307

cond.end.307:                                     ; preds = %cond.false.306, %cond.true.304
  %cond308 = phi i32 [ %sub305, %cond.true.304 ], [ %211, %cond.false.306 ]
  %sub309 = sub nsw i32 %call302, %cond308
  %212 = load i32, i32* %offset_y.addr, align 4
  %cmp310 = icmp slt i32 %212, 0
  br i1 %cmp310, label %cond.true.311, label %cond.false.313

cond.true.311:                                    ; preds = %cond.end.307
  %213 = load i32, i32* %offset_y.addr, align 4
  %sub312 = sub nsw i32 0, %213
  br label %cond.end.314

cond.false.313:                                   ; preds = %cond.end.307
  %214 = load i32, i32* %offset_y.addr, align 4
  br label %cond.end.314

cond.end.314:                                     ; preds = %cond.false.313, %cond.true.311
  %cond315 = phi i32 [ %sub312, %cond.true.311 ], [ %214, %cond.false.313 ]
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call301, i32 0, i32 %207, i32 %sub309, i32 %cond315, i32 0)
  %215 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %216 = load i32, i32* %dest_x, align 4
  %217 = load i32, i32* %offset_x.addr, align 4
  %add316 = add nsw i32 %216, %217
  %218 = load i32, i32* %dest_y, align 4
  %219 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call317 = call i32 @gimp_item_get_width(%struct._GimpItem* %219)
  %220 = load i32, i32* %offset_x.addr, align 4
  %cmp318 = icmp slt i32 %220, 0
  br i1 %cmp318, label %cond.true.319, label %cond.false.321

cond.true.319:                                    ; preds = %cond.end.314
  %221 = load i32, i32* %offset_x.addr, align 4
  %sub320 = sub nsw i32 0, %221
  br label %cond.end.322

cond.false.321:                                   ; preds = %cond.end.314
  %222 = load i32, i32* %offset_x.addr, align 4
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.false.321, %cond.true.319
  %cond323 = phi i32 [ %sub320, %cond.true.319 ], [ %222, %cond.false.321 ]
  %sub324 = sub nsw i32 %call317, %cond323
  %223 = load i32, i32* %offset_y.addr, align 4
  %cmp325 = icmp slt i32 %223, 0
  br i1 %cmp325, label %cond.true.326, label %cond.false.328

cond.true.326:                                    ; preds = %cond.end.322
  %224 = load i32, i32* %offset_y.addr, align 4
  %sub327 = sub nsw i32 0, %224
  br label %cond.end.329

cond.false.328:                                   ; preds = %cond.end.322
  %225 = load i32, i32* %offset_y.addr, align 4
  br label %cond.end.329

cond.end.329:                                     ; preds = %cond.false.328, %cond.true.326
  %cond330 = phi i32 [ %sub327, %cond.true.326 ], [ %225, %cond.false.328 ]
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %215, i32 %add316, i32 %218, i32 %sub324, i32 %cond330, i32 1)
  br label %if.end.365

if.else.331:                                      ; preds = %if.then.298
  %226 = load i32, i32* %offset_x.addr, align 4
  %cmp332 = icmp slt i32 %226, 0
  br i1 %cmp332, label %if.then.333, label %if.end.364

if.then.333:                                      ; preds = %if.else.331
  %227 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call334 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %227)
  %228 = load i32, i32* %src_x, align 4
  %229 = load i32, i32* %offset_x.addr, align 4
  %sub335 = sub nsw i32 %228, %229
  %230 = load i32, i32* %src_y, align 4
  %231 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call336 = call i32 @gimp_item_get_width(%struct._GimpItem* %231)
  %232 = load i32, i32* %offset_x.addr, align 4
  %cmp337 = icmp slt i32 %232, 0
  br i1 %cmp337, label %cond.true.338, label %cond.false.340

cond.true.338:                                    ; preds = %if.then.333
  %233 = load i32, i32* %offset_x.addr, align 4
  %sub339 = sub nsw i32 0, %233
  br label %cond.end.341

cond.false.340:                                   ; preds = %if.then.333
  %234 = load i32, i32* %offset_x.addr, align 4
  br label %cond.end.341

cond.end.341:                                     ; preds = %cond.false.340, %cond.true.338
  %cond342 = phi i32 [ %sub339, %cond.true.338 ], [ %234, %cond.false.340 ]
  %sub343 = sub nsw i32 %call336, %cond342
  %235 = load i32, i32* %offset_y.addr, align 4
  %cmp344 = icmp slt i32 %235, 0
  br i1 %cmp344, label %cond.true.345, label %cond.false.347

cond.true.345:                                    ; preds = %cond.end.341
  %236 = load i32, i32* %offset_y.addr, align 4
  %sub346 = sub nsw i32 0, %236
  br label %cond.end.348

cond.false.347:                                   ; preds = %cond.end.341
  %237 = load i32, i32* %offset_y.addr, align 4
  br label %cond.end.348

cond.end.348:                                     ; preds = %cond.false.347, %cond.true.345
  %cond349 = phi i32 [ %sub346, %cond.true.345 ], [ %237, %cond.false.347 ]
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call334, i32 %sub335, i32 %230, i32 %sub343, i32 %cond349, i32 0)
  %238 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %239 = load i32, i32* %dest_y, align 4
  %240 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call350 = call i32 @gimp_item_get_width(%struct._GimpItem* %240)
  %241 = load i32, i32* %offset_x.addr, align 4
  %cmp351 = icmp slt i32 %241, 0
  br i1 %cmp351, label %cond.true.352, label %cond.false.354

cond.true.352:                                    ; preds = %cond.end.348
  %242 = load i32, i32* %offset_x.addr, align 4
  %sub353 = sub nsw i32 0, %242
  br label %cond.end.355

cond.false.354:                                   ; preds = %cond.end.348
  %243 = load i32, i32* %offset_x.addr, align 4
  br label %cond.end.355

cond.end.355:                                     ; preds = %cond.false.354, %cond.true.352
  %cond356 = phi i32 [ %sub353, %cond.true.352 ], [ %243, %cond.false.354 ]
  %sub357 = sub nsw i32 %call350, %cond356
  %244 = load i32, i32* %offset_y.addr, align 4
  %cmp358 = icmp slt i32 %244, 0
  br i1 %cmp358, label %cond.true.359, label %cond.false.361

cond.true.359:                                    ; preds = %cond.end.355
  %245 = load i32, i32* %offset_y.addr, align 4
  %sub360 = sub nsw i32 0, %245
  br label %cond.end.362

cond.false.361:                                   ; preds = %cond.end.355
  %246 = load i32, i32* %offset_y.addr, align 4
  br label %cond.end.362

cond.end.362:                                     ; preds = %cond.false.361, %cond.true.359
  %cond363 = phi i32 [ %sub360, %cond.true.359 ], [ %246, %cond.false.361 ]
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %238, i32 0, i32 %239, i32 %sub357, i32 %cond363, i32 1)
  br label %if.end.364

if.end.364:                                       ; preds = %cond.end.362, %if.else.331
  br label %if.end.365

if.end.365:                                       ; preds = %if.end.364, %cond.end.329
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  br label %if.end.366

if.end.366:                                       ; preds = %if.end.365, %if.end.296
  br label %if.end.509

if.else.367:                                      ; preds = %if.end.147
  %247 = load i32, i32* %fill_type.addr, align 4
  %cmp368 = icmp eq i32 %247, 0
  br i1 %cmp368, label %if.then.369, label %if.end.380

if.then.369:                                      ; preds = %if.else.367
  %248 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %248, %struct._GimpRGB* %color)
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %fill, i32 0, i64 0
  %arrayidx371 = getelementptr inbounds [4 x i8], [4 x i8]* %fill, i32 0, i64 1
  %arrayidx372 = getelementptr inbounds [4 x i8], [4 x i8]* %fill, i32 0, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* %arrayidx, i8* %arrayidx371, i8* %arrayidx372)
  %249 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call373 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %249)
  %tobool374 = icmp ne i32 %call373, 0
  br i1 %tobool374, label %if.then.375, label %if.end.379

if.then.375:                                      ; preds = %if.then.369
  %250 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call376 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %250)
  %sub377 = sub nsw i32 %call376, 1
  %idxprom = sext i32 %sub377 to i64
  %arrayidx378 = getelementptr inbounds [4 x i8], [4 x i8]* %fill, i32 0, i64 %idxprom
  store i8 -1, i8* %arrayidx378, align 1
  br label %if.end.379

if.end.379:                                       ; preds = %if.then.375, %if.then.369
  br label %if.end.380

if.end.380:                                       ; preds = %if.end.379, %if.else.367
  %251 = load i32, i32* %offset_x.addr, align 4
  %cmp381 = icmp sge i32 %251, 0
  br i1 %cmp381, label %land.lhs.true.382, label %if.else.385

land.lhs.true.382:                                ; preds = %if.end.380
  %252 = load i32, i32* %offset_y.addr, align 4
  %cmp383 = icmp sge i32 %252, 0
  br i1 %cmp383, label %if.then.384, label %if.else.385

if.then.384:                                      ; preds = %land.lhs.true.382
  store i32 0, i32* %dest_x, align 4
  store i32 0, i32* %dest_y, align 4
  br label %if.end.411

if.else.385:                                      ; preds = %land.lhs.true.382, %if.end.380
  %253 = load i32, i32* %offset_x.addr, align 4
  %cmp386 = icmp sge i32 %253, 0
  br i1 %cmp386, label %land.lhs.true.387, label %if.else.392

land.lhs.true.387:                                ; preds = %if.else.385
  %254 = load i32, i32* %offset_y.addr, align 4
  %cmp388 = icmp slt i32 %254, 0
  br i1 %cmp388, label %if.then.389, label %if.else.392

if.then.389:                                      ; preds = %land.lhs.true.387
  store i32 0, i32* %dest_x, align 4
  %255 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call390 = call i32 @gimp_item_get_height(%struct._GimpItem* %255)
  %256 = load i32, i32* %offset_y.addr, align 4
  %add391 = add nsw i32 %call390, %256
  store i32 %add391, i32* %dest_y, align 4
  br label %if.end.410

if.else.392:                                      ; preds = %land.lhs.true.387, %if.else.385
  %257 = load i32, i32* %offset_x.addr, align 4
  %cmp393 = icmp slt i32 %257, 0
  br i1 %cmp393, label %land.lhs.true.394, label %if.else.399

land.lhs.true.394:                                ; preds = %if.else.392
  %258 = load i32, i32* %offset_y.addr, align 4
  %cmp395 = icmp sge i32 %258, 0
  br i1 %cmp395, label %if.then.396, label %if.else.399

if.then.396:                                      ; preds = %land.lhs.true.394
  %259 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call397 = call i32 @gimp_item_get_width(%struct._GimpItem* %259)
  %260 = load i32, i32* %offset_x.addr, align 4
  %add398 = add nsw i32 %call397, %260
  store i32 %add398, i32* %dest_x, align 4
  store i32 0, i32* %dest_y, align 4
  br label %if.end.409

if.else.399:                                      ; preds = %land.lhs.true.394, %if.else.392
  %261 = load i32, i32* %offset_x.addr, align 4
  %cmp400 = icmp slt i32 %261, 0
  br i1 %cmp400, label %land.lhs.true.401, label %if.end.408

land.lhs.true.401:                                ; preds = %if.else.399
  %262 = load i32, i32* %offset_y.addr, align 4
  %cmp402 = icmp slt i32 %262, 0
  br i1 %cmp402, label %if.then.403, label %if.end.408

if.then.403:                                      ; preds = %land.lhs.true.401
  %263 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call404 = call i32 @gimp_item_get_width(%struct._GimpItem* %263)
  %264 = load i32, i32* %offset_x.addr, align 4
  %add405 = add nsw i32 %call404, %264
  store i32 %add405, i32* %dest_x, align 4
  %265 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call406 = call i32 @gimp_item_get_height(%struct._GimpItem* %265)
  %266 = load i32, i32* %offset_y.addr, align 4
  %add407 = add nsw i32 %call406, %266
  store i32 %add407, i32* %dest_y, align 4
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.403, %land.lhs.true.401, %if.else.399
  br label %if.end.409

if.end.409:                                       ; preds = %if.end.408, %if.then.396
  br label %if.end.410

if.end.410:                                       ; preds = %if.end.409, %if.then.389
  br label %if.end.411

if.end.411:                                       ; preds = %if.end.410, %if.then.384
  %267 = load i32, i32* %offset_x.addr, align 4
  %cmp412 = icmp ne i32 %267, 0
  br i1 %cmp412, label %land.lhs.true.413, label %if.end.428

land.lhs.true.413:                                ; preds = %if.end.411
  %268 = load i32, i32* %offset_y.addr, align 4
  %cmp414 = icmp ne i32 %268, 0
  br i1 %cmp414, label %if.then.415, label %if.end.428

if.then.415:                                      ; preds = %land.lhs.true.413
  %269 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %270 = load i32, i32* %dest_x, align 4
  %271 = load i32, i32* %dest_y, align 4
  %272 = load i32, i32* %offset_x.addr, align 4
  %cmp416 = icmp slt i32 %272, 0
  br i1 %cmp416, label %cond.true.417, label %cond.false.419

cond.true.417:                                    ; preds = %if.then.415
  %273 = load i32, i32* %offset_x.addr, align 4
  %sub418 = sub nsw i32 0, %273
  br label %cond.end.420

cond.false.419:                                   ; preds = %if.then.415
  %274 = load i32, i32* %offset_x.addr, align 4
  br label %cond.end.420

cond.end.420:                                     ; preds = %cond.false.419, %cond.true.417
  %cond421 = phi i32 [ %sub418, %cond.true.417 ], [ %274, %cond.false.419 ]
  %275 = load i32, i32* %offset_y.addr, align 4
  %cmp422 = icmp slt i32 %275, 0
  br i1 %cmp422, label %cond.true.423, label %cond.false.425

cond.true.423:                                    ; preds = %cond.end.420
  %276 = load i32, i32* %offset_y.addr, align 4
  %sub424 = sub nsw i32 0, %276
  br label %cond.end.426

cond.false.425:                                   ; preds = %cond.end.420
  %277 = load i32, i32* %offset_y.addr, align 4
  br label %cond.end.426

cond.end.426:                                     ; preds = %cond.false.425, %cond.true.423
  %cond427 = phi i32 [ %sub424, %cond.true.423 ], [ %277, %cond.false.425 ]
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %269, i32 %270, i32 %271, i32 %cond421, i32 %cond427, i32 1)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fill, i32 0, i32 0
  call void @color_region(%struct._PixelRegion* %destPR, i8* %arraydecay)
  br label %if.end.428

if.end.428:                                       ; preds = %cond.end.426, %land.lhs.true.413, %if.end.411
  %278 = load i32, i32* %offset_x.addr, align 4
  %cmp429 = icmp ne i32 %278, 0
  br i1 %cmp429, label %if.then.430, label %if.end.468

if.then.430:                                      ; preds = %if.end.428
  %279 = load i32, i32* %offset_y.addr, align 4
  %cmp431 = icmp sge i32 %279, 0
  br i1 %cmp431, label %if.then.432, label %if.else.448

if.then.432:                                      ; preds = %if.then.430
  %280 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %281 = load i32, i32* %dest_x, align 4
  %282 = load i32, i32* %dest_y, align 4
  %283 = load i32, i32* %offset_y.addr, align 4
  %add433 = add nsw i32 %282, %283
  %284 = load i32, i32* %offset_x.addr, align 4
  %cmp434 = icmp slt i32 %284, 0
  br i1 %cmp434, label %cond.true.435, label %cond.false.437

cond.true.435:                                    ; preds = %if.then.432
  %285 = load i32, i32* %offset_x.addr, align 4
  %sub436 = sub nsw i32 0, %285
  br label %cond.end.438

cond.false.437:                                   ; preds = %if.then.432
  %286 = load i32, i32* %offset_x.addr, align 4
  br label %cond.end.438

cond.end.438:                                     ; preds = %cond.false.437, %cond.true.435
  %cond439 = phi i32 [ %sub436, %cond.true.435 ], [ %286, %cond.false.437 ]
  %287 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call440 = call i32 @gimp_item_get_height(%struct._GimpItem* %287)
  %288 = load i32, i32* %offset_y.addr, align 4
  %cmp441 = icmp slt i32 %288, 0
  br i1 %cmp441, label %cond.true.442, label %cond.false.444

cond.true.442:                                    ; preds = %cond.end.438
  %289 = load i32, i32* %offset_y.addr, align 4
  %sub443 = sub nsw i32 0, %289
  br label %cond.end.445

cond.false.444:                                   ; preds = %cond.end.438
  %290 = load i32, i32* %offset_y.addr, align 4
  br label %cond.end.445

cond.end.445:                                     ; preds = %cond.false.444, %cond.true.442
  %cond446 = phi i32 [ %sub443, %cond.true.442 ], [ %290, %cond.false.444 ]
  %sub447 = sub nsw i32 %call440, %cond446
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %280, i32 %281, i32 %add433, i32 %cond439, i32 %sub447, i32 1)
  br label %if.end.466

if.else.448:                                      ; preds = %if.then.430
  %291 = load i32, i32* %offset_y.addr, align 4
  %cmp449 = icmp slt i32 %291, 0
  br i1 %cmp449, label %if.then.450, label %if.end.465

if.then.450:                                      ; preds = %if.else.448
  %292 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %293 = load i32, i32* %dest_x, align 4
  %294 = load i32, i32* %offset_x.addr, align 4
  %cmp451 = icmp slt i32 %294, 0
  br i1 %cmp451, label %cond.true.452, label %cond.false.454

cond.true.452:                                    ; preds = %if.then.450
  %295 = load i32, i32* %offset_x.addr, align 4
  %sub453 = sub nsw i32 0, %295
  br label %cond.end.455

cond.false.454:                                   ; preds = %if.then.450
  %296 = load i32, i32* %offset_x.addr, align 4
  br label %cond.end.455

cond.end.455:                                     ; preds = %cond.false.454, %cond.true.452
  %cond456 = phi i32 [ %sub453, %cond.true.452 ], [ %296, %cond.false.454 ]
  %297 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call457 = call i32 @gimp_item_get_height(%struct._GimpItem* %297)
  %298 = load i32, i32* %offset_y.addr, align 4
  %cmp458 = icmp slt i32 %298, 0
  br i1 %cmp458, label %cond.true.459, label %cond.false.461

cond.true.459:                                    ; preds = %cond.end.455
  %299 = load i32, i32* %offset_y.addr, align 4
  %sub460 = sub nsw i32 0, %299
  br label %cond.end.462

cond.false.461:                                   ; preds = %cond.end.455
  %300 = load i32, i32* %offset_y.addr, align 4
  br label %cond.end.462

cond.end.462:                                     ; preds = %cond.false.461, %cond.true.459
  %cond463 = phi i32 [ %sub460, %cond.true.459 ], [ %300, %cond.false.461 ]
  %sub464 = sub nsw i32 %call457, %cond463
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %292, i32 %293, i32 0, i32 %cond456, i32 %sub464, i32 1)
  br label %if.end.465

if.end.465:                                       ; preds = %cond.end.462, %if.else.448
  br label %if.end.466

if.end.466:                                       ; preds = %if.end.465, %cond.end.445
  %arraydecay467 = getelementptr inbounds [4 x i8], [4 x i8]* %fill, i32 0, i32 0
  call void @color_region(%struct._PixelRegion* %destPR, i8* %arraydecay467)
  br label %if.end.468

if.end.468:                                       ; preds = %if.end.466, %if.end.428
  %301 = load i32, i32* %offset_y.addr, align 4
  %cmp469 = icmp ne i32 %301, 0
  br i1 %cmp469, label %if.then.470, label %if.end.508

if.then.470:                                      ; preds = %if.end.468
  %302 = load i32, i32* %offset_x.addr, align 4
  %cmp471 = icmp sge i32 %302, 0
  br i1 %cmp471, label %if.then.472, label %if.else.488

if.then.472:                                      ; preds = %if.then.470
  %303 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %304 = load i32, i32* %dest_x, align 4
  %305 = load i32, i32* %offset_x.addr, align 4
  %add473 = add nsw i32 %304, %305
  %306 = load i32, i32* %dest_y, align 4
  %307 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call474 = call i32 @gimp_item_get_width(%struct._GimpItem* %307)
  %308 = load i32, i32* %offset_x.addr, align 4
  %cmp475 = icmp slt i32 %308, 0
  br i1 %cmp475, label %cond.true.476, label %cond.false.478

cond.true.476:                                    ; preds = %if.then.472
  %309 = load i32, i32* %offset_x.addr, align 4
  %sub477 = sub nsw i32 0, %309
  br label %cond.end.479

cond.false.478:                                   ; preds = %if.then.472
  %310 = load i32, i32* %offset_x.addr, align 4
  br label %cond.end.479

cond.end.479:                                     ; preds = %cond.false.478, %cond.true.476
  %cond480 = phi i32 [ %sub477, %cond.true.476 ], [ %310, %cond.false.478 ]
  %sub481 = sub nsw i32 %call474, %cond480
  %311 = load i32, i32* %offset_y.addr, align 4
  %cmp482 = icmp slt i32 %311, 0
  br i1 %cmp482, label %cond.true.483, label %cond.false.485

cond.true.483:                                    ; preds = %cond.end.479
  %312 = load i32, i32* %offset_y.addr, align 4
  %sub484 = sub nsw i32 0, %312
  br label %cond.end.486

cond.false.485:                                   ; preds = %cond.end.479
  %313 = load i32, i32* %offset_y.addr, align 4
  br label %cond.end.486

cond.end.486:                                     ; preds = %cond.false.485, %cond.true.483
  %cond487 = phi i32 [ %sub484, %cond.true.483 ], [ %313, %cond.false.485 ]
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %303, i32 %add473, i32 %306, i32 %sub481, i32 %cond487, i32 1)
  br label %if.end.506

if.else.488:                                      ; preds = %if.then.470
  %314 = load i32, i32* %offset_x.addr, align 4
  %cmp489 = icmp slt i32 %314, 0
  br i1 %cmp489, label %if.then.490, label %if.end.505

if.then.490:                                      ; preds = %if.else.488
  %315 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %316 = load i32, i32* %dest_y, align 4
  %317 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call491 = call i32 @gimp_item_get_width(%struct._GimpItem* %317)
  %318 = load i32, i32* %offset_x.addr, align 4
  %cmp492 = icmp slt i32 %318, 0
  br i1 %cmp492, label %cond.true.493, label %cond.false.495

cond.true.493:                                    ; preds = %if.then.490
  %319 = load i32, i32* %offset_x.addr, align 4
  %sub494 = sub nsw i32 0, %319
  br label %cond.end.496

cond.false.495:                                   ; preds = %if.then.490
  %320 = load i32, i32* %offset_x.addr, align 4
  br label %cond.end.496

cond.end.496:                                     ; preds = %cond.false.495, %cond.true.493
  %cond497 = phi i32 [ %sub494, %cond.true.493 ], [ %320, %cond.false.495 ]
  %sub498 = sub nsw i32 %call491, %cond497
  %321 = load i32, i32* %offset_y.addr, align 4
  %cmp499 = icmp slt i32 %321, 0
  br i1 %cmp499, label %cond.true.500, label %cond.false.502

cond.true.500:                                    ; preds = %cond.end.496
  %322 = load i32, i32* %offset_y.addr, align 4
  %sub501 = sub nsw i32 0, %322
  br label %cond.end.503

cond.false.502:                                   ; preds = %cond.end.496
  %323 = load i32, i32* %offset_y.addr, align 4
  br label %cond.end.503

cond.end.503:                                     ; preds = %cond.false.502, %cond.true.500
  %cond504 = phi i32 [ %sub501, %cond.true.500 ], [ %323, %cond.false.502 ]
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %315, i32 0, i32 %316, i32 %sub498, i32 %cond504, i32 1)
  br label %if.end.505

if.end.505:                                       ; preds = %cond.end.503, %if.else.488
  br label %if.end.506

if.end.506:                                       ; preds = %if.end.505, %cond.end.486
  %arraydecay507 = getelementptr inbounds [4 x i8], [4 x i8]* %fill, i32 0, i32 0
  call void @color_region(%struct._PixelRegion* %destPR, i8* %arraydecay507)
  br label %if.end.508

if.end.508:                                       ; preds = %if.end.506, %if.end.468
  br label %if.end.509

if.end.509:                                       ; preds = %if.end.508, %if.end.366
  %324 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %325 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call510 = call i32 @gimp_item_is_attached(%struct._GimpItem* %325)
  %call511 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i64 10)
  %326 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %327 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call512 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %327)
  call void @gimp_drawable_set_tiles(%struct._GimpDrawable* %324, i32 %call510, i8* %call511, %struct._TileManager* %326, i32 %call512)
  %328 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %328)
  br label %return

return:                                           ; preds = %if.end.509, %if.then.76, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_item_get_width(%struct._GimpItem*) #4

declare i32 @gimp_item_get_height(%struct._GimpItem*) #4

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #4

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #4

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #4

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #4

declare void @copy_region(%struct._PixelRegion*, %struct._PixelRegion*) #4

declare void @gimp_context_get_background(%struct._GimpContext*, %struct._GimpRGB*) #4

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #4

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #4

declare void @color_region(%struct._PixelRegion*, i8*) #4

declare void @gimp_drawable_set_tiles(%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32) #4

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #4

declare i8* @g_dpgettext(i8*, i8*, i64) #4

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #4

declare void @tile_manager_unref(%struct._TileManager*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
