; ModuleID = './app/core/gimpchannel-combine.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct._GimpRGB = type { double, double, double, double }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_channel_combine_rect = private unnamed_addr constant [26 x i8] c"gimp_channel_combine_rect\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"GIMP_IS_CHANNEL (mask)\00", align 1
@__func__.gimp_channel_combine_ellipse_rect = private unnamed_addr constant [34 x i8] c"gimp_channel_combine_ellipse_rect\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"a >= 0.0 && b >= 0.0\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"op != GIMP_CHANNEL_OP_INTERSECT\00", align 1
@__func__.gimp_channel_combine_mask = private unnamed_addr constant [26 x i8] c"gimp_channel_combine_mask\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"GIMP_IS_CHANNEL (add_on)\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%s: unknown operation type\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_channel_combine_rect(%struct._GimpChannel* %mask, i32 %op, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %mask.addr = alloca %struct._GimpChannel*, align 8
  %op.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %maskPR = alloca %struct._PixelRegion, align 8
  %color = alloca i8, align 1
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChannel* %mask, %struct._GimpChannel** %mask.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_channel_combine_rect, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %x.addr, align 4
  %14 = load i32, i32* %y.addr, align 4
  %15 = load i32, i32* %w.addr, align 4
  %16 = load i32, i32* %h.addr, align 4
  %17 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %18 = bitcast %struct._GimpChannel* %17 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call11)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_get_width(%struct._GimpItem* %19)
  %20 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %21 = bitcast %struct._GimpChannel* %20 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call14)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %call16 = call i32 @gimp_item_get_height(%struct._GimpItem* %22)
  %call17 = call i32 @gimp_rectangle_intersect(i32 %13, i32 %14, i32 %15, i32 %16, i32 0, i32 0, i32 %call13, i32 %call16, i32* %x.addr, i32* %y.addr, i32* %w.addr, i32* %h.addr)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %do.end
  br label %return

if.end.20:                                        ; preds = %do.end
  %23 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %24 = bitcast %struct._GimpChannel* %23 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_drawable_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call21)
  %25 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpDrawable*
  %call23 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %25)
  %26 = load i32, i32* %x.addr, align 4
  %27 = load i32, i32* %y.addr, align 4
  %28 = load i32, i32* %w.addr, align 4
  %29 = load i32, i32* %h.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %call23, i32 %26, i32 %27, i32 %28, i32 %29, i32 1)
  %30 = load i32, i32* %op.addr, align 4
  %cmp24 = icmp eq i32 %30, 0
  br i1 %cmp24, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %31 = load i32, i32* %op.addr, align 4
  %cmp25 = icmp eq i32 %31, 2
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %lor.lhs.false, %if.end.20
  store i8 -1, i8* %color, align 1
  br label %if.end.28

if.else.27:                                       ; preds = %lor.lhs.false
  store i8 0, i8* %color, align 1
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.26
  call void @color_region(%struct._PixelRegion* %maskPR, i8* %color)
  %32 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %32, i32 0, i32 12
  %33 = load i32, i32* %bounds_known, align 4
  %tobool29 = icmp ne i32 %33, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.54

land.lhs.true.30:                                 ; preds = %if.end.28
  %34 = load i32, i32* %op.addr, align 4
  %cmp31 = icmp eq i32 %34, 0
  br i1 %cmp31, label %land.lhs.true.32, label %if.else.54

land.lhs.true.32:                                 ; preds = %land.lhs.true.30
  %35 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %empty = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %35, i32 0, i32 11
  %36 = load i32, i32* %empty, align 4
  %tobool33 = icmp ne i32 %36, 0
  br i1 %tobool33, label %if.else.54, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.32
  %37 = load i32, i32* %x.addr, align 4
  %38 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %38, i32 0, i32 13
  %39 = load i32, i32* %x1, align 4
  %cmp35 = icmp slt i32 %37, %39
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.then.34
  %40 = load i32, i32* %x.addr, align 4
  %41 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %x137 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %41, i32 0, i32 13
  store i32 %40, i32* %x137, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.then.34
  %42 = load i32, i32* %y.addr, align 4
  %43 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %43, i32 0, i32 14
  %44 = load i32, i32* %y1, align 4
  %cmp39 = icmp slt i32 %42, %44
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.38
  %45 = load i32, i32* %y.addr, align 4
  %46 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %y141 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %46, i32 0, i32 14
  store i32 %45, i32* %y141, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.38
  %47 = load i32, i32* %x.addr, align 4
  %48 = load i32, i32* %w.addr, align 4
  %add = add nsw i32 %47, %48
  %49 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %49, i32 0, i32 15
  %50 = load i32, i32* %x2, align 4
  %cmp43 = icmp sgt i32 %add, %50
  br i1 %cmp43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end.42
  %51 = load i32, i32* %x.addr, align 4
  %52 = load i32, i32* %w.addr, align 4
  %add45 = add nsw i32 %51, %52
  %53 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %x246 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %53, i32 0, i32 15
  store i32 %add45, i32* %x246, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.end.42
  %54 = load i32, i32* %y.addr, align 4
  %55 = load i32, i32* %h.addr, align 4
  %add48 = add nsw i32 %54, %55
  %56 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %56, i32 0, i32 16
  %57 = load i32, i32* %y2, align 4
  %cmp49 = icmp sgt i32 %add48, %57
  br i1 %cmp49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %if.end.47
  %58 = load i32, i32* %y.addr, align 4
  %59 = load i32, i32* %h.addr, align 4
  %add51 = add nsw i32 %58, %59
  %60 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %y252 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %60, i32 0, i32 16
  store i32 %add51, i32* %y252, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %if.end.47
  br label %if.end.70

if.else.54:                                       ; preds = %land.lhs.true.32, %land.lhs.true.30, %if.end.28
  %61 = load i32, i32* %op.addr, align 4
  %cmp55 = icmp eq i32 %61, 2
  br i1 %cmp55, label %if.then.59, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %if.else.54
  %62 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %empty57 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %62, i32 0, i32 11
  %63 = load i32, i32* %empty57, align 4
  %tobool58 = icmp ne i32 %63, 0
  br i1 %tobool58, label %if.then.59, label %if.else.67

if.then.59:                                       ; preds = %lor.lhs.false.56, %if.else.54
  %64 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %empty60 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %64, i32 0, i32 11
  store i32 0, i32* %empty60, align 4
  %65 = load i32, i32* %x.addr, align 4
  %66 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %x161 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %66, i32 0, i32 13
  store i32 %65, i32* %x161, align 4
  %67 = load i32, i32* %y.addr, align 4
  %68 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %y162 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %68, i32 0, i32 14
  store i32 %67, i32* %y162, align 4
  %69 = load i32, i32* %x.addr, align 4
  %70 = load i32, i32* %w.addr, align 4
  %add63 = add nsw i32 %69, %70
  %71 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %x264 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %71, i32 0, i32 15
  store i32 %add63, i32* %x264, align 4
  %72 = load i32, i32* %y.addr, align 4
  %73 = load i32, i32* %h.addr, align 4
  %add65 = add nsw i32 %72, %73
  %74 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %y266 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %74, i32 0, i32 16
  store i32 %add65, i32* %y266, align 4
  br label %if.end.69

if.else.67:                                       ; preds = %lor.lhs.false.56
  %75 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %bounds_known68 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %75, i32 0, i32 12
  store i32 0, i32* %bounds_known68, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %if.then.59
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.53
  %76 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %x171 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %76, i32 0, i32 13
  %77 = load i32, i32* %x171, align 4
  %78 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %79 = bitcast %struct._GimpChannel* %78 to %struct._GTypeInstance*
  %call72 = call i64 @gimp_item_get_type() #6
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call72)
  %80 = bitcast %struct._GTypeInstance* %call73 to %struct._GimpItem*
  %call74 = call i32 @gimp_item_get_width(%struct._GimpItem* %80)
  %cmp75 = icmp sgt i32 %77, %call74
  br i1 %cmp75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.70
  %81 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %82 = bitcast %struct._GimpChannel* %81 to %struct._GTypeInstance*
  %call76 = call i64 @gimp_item_get_type() #6
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call76)
  %83 = bitcast %struct._GTypeInstance* %call77 to %struct._GimpItem*
  %call78 = call i32 @gimp_item_get_width(%struct._GimpItem* %83)
  br label %cond.end.84

cond.false:                                       ; preds = %if.end.70
  %84 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %x179 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %84, i32 0, i32 13
  %85 = load i32, i32* %x179, align 4
  %cmp80 = icmp slt i32 %85, 0
  br i1 %cmp80, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %cond.false
  br label %cond.end

cond.false.82:                                    ; preds = %cond.false
  %86 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %x183 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %86, i32 0, i32 13
  %87 = load i32, i32* %x183, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.82, %cond.true.81
  %cond = phi i32 [ 0, %cond.true.81 ], [ %87, %cond.false.82 ]
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.end, %cond.true
  %cond85 = phi i32 [ %call78, %cond.true ], [ %cond, %cond.end ]
  %88 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %x186 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %88, i32 0, i32 13
  store i32 %cond85, i32* %x186, align 4
  %89 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %y187 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %89, i32 0, i32 14
  %90 = load i32, i32* %y187, align 4
  %91 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %92 = bitcast %struct._GimpChannel* %91 to %struct._GTypeInstance*
  %call88 = call i64 @gimp_item_get_type() #6
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call88)
  %93 = bitcast %struct._GTypeInstance* %call89 to %struct._GimpItem*
  %call90 = call i32 @gimp_item_get_height(%struct._GimpItem* %93)
  %cmp91 = icmp sgt i32 %90, %call90
  br i1 %cmp91, label %cond.true.92, label %cond.false.96

cond.true.92:                                     ; preds = %cond.end.84
  %94 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %95 = bitcast %struct._GimpChannel* %94 to %struct._GTypeInstance*
  %call93 = call i64 @gimp_item_get_type() #6
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call93)
  %96 = bitcast %struct._GTypeInstance* %call94 to %struct._GimpItem*
  %call95 = call i32 @gimp_item_get_height(%struct._GimpItem* %96)
  br label %cond.end.104

cond.false.96:                                    ; preds = %cond.end.84
  %97 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %y197 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %97, i32 0, i32 14
  %98 = load i32, i32* %y197, align 4
  %cmp98 = icmp slt i32 %98, 0
  br i1 %cmp98, label %cond.true.99, label %cond.false.100

cond.true.99:                                     ; preds = %cond.false.96
  br label %cond.end.102

cond.false.100:                                   ; preds = %cond.false.96
  %99 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %y1101 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %99, i32 0, i32 14
  %100 = load i32, i32* %y1101, align 4
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.100, %cond.true.99
  %cond103 = phi i32 [ 0, %cond.true.99 ], [ %100, %cond.false.100 ]
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.end.102, %cond.true.92
  %cond105 = phi i32 [ %call95, %cond.true.92 ], [ %cond103, %cond.end.102 ]
  %101 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %y1106 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %101, i32 0, i32 14
  store i32 %cond105, i32* %y1106, align 4
  %102 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %x2107 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %102, i32 0, i32 15
  %103 = load i32, i32* %x2107, align 4
  %104 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %105 = bitcast %struct._GimpChannel* %104 to %struct._GTypeInstance*
  %call108 = call i64 @gimp_item_get_type() #6
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call108)
  %106 = bitcast %struct._GTypeInstance* %call109 to %struct._GimpItem*
  %call110 = call i32 @gimp_item_get_width(%struct._GimpItem* %106)
  %cmp111 = icmp sgt i32 %103, %call110
  br i1 %cmp111, label %cond.true.112, label %cond.false.116

cond.true.112:                                    ; preds = %cond.end.104
  %107 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %108 = bitcast %struct._GimpChannel* %107 to %struct._GTypeInstance*
  %call113 = call i64 @gimp_item_get_type() #6
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call113)
  %109 = bitcast %struct._GTypeInstance* %call114 to %struct._GimpItem*
  %call115 = call i32 @gimp_item_get_width(%struct._GimpItem* %109)
  br label %cond.end.124

cond.false.116:                                   ; preds = %cond.end.104
  %110 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %x2117 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %110, i32 0, i32 15
  %111 = load i32, i32* %x2117, align 4
  %cmp118 = icmp slt i32 %111, 0
  br i1 %cmp118, label %cond.true.119, label %cond.false.120

cond.true.119:                                    ; preds = %cond.false.116
  br label %cond.end.122

cond.false.120:                                   ; preds = %cond.false.116
  %112 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %x2121 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %112, i32 0, i32 15
  %113 = load i32, i32* %x2121, align 4
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.120, %cond.true.119
  %cond123 = phi i32 [ 0, %cond.true.119 ], [ %113, %cond.false.120 ]
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.end.122, %cond.true.112
  %cond125 = phi i32 [ %call115, %cond.true.112 ], [ %cond123, %cond.end.122 ]
  %114 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %x2126 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %114, i32 0, i32 15
  store i32 %cond125, i32* %x2126, align 4
  %115 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %y2127 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %115, i32 0, i32 16
  %116 = load i32, i32* %y2127, align 4
  %117 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %118 = bitcast %struct._GimpChannel* %117 to %struct._GTypeInstance*
  %call128 = call i64 @gimp_item_get_type() #6
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call128)
  %119 = bitcast %struct._GTypeInstance* %call129 to %struct._GimpItem*
  %call130 = call i32 @gimp_item_get_height(%struct._GimpItem* %119)
  %cmp131 = icmp sgt i32 %116, %call130
  br i1 %cmp131, label %cond.true.132, label %cond.false.136

cond.true.132:                                    ; preds = %cond.end.124
  %120 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %121 = bitcast %struct._GimpChannel* %120 to %struct._GTypeInstance*
  %call133 = call i64 @gimp_item_get_type() #6
  %call134 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call133)
  %122 = bitcast %struct._GTypeInstance* %call134 to %struct._GimpItem*
  %call135 = call i32 @gimp_item_get_height(%struct._GimpItem* %122)
  br label %cond.end.144

cond.false.136:                                   ; preds = %cond.end.124
  %123 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %y2137 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %123, i32 0, i32 16
  %124 = load i32, i32* %y2137, align 4
  %cmp138 = icmp slt i32 %124, 0
  br i1 %cmp138, label %cond.true.139, label %cond.false.140

cond.true.139:                                    ; preds = %cond.false.136
  br label %cond.end.142

cond.false.140:                                   ; preds = %cond.false.136
  %125 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %y2141 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %125, i32 0, i32 16
  %126 = load i32, i32* %y2141, align 4
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.140, %cond.true.139
  %cond143 = phi i32 [ 0, %cond.true.139 ], [ %126, %cond.false.140 ]
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.end.142, %cond.true.132
  %cond145 = phi i32 [ %call135, %cond.true.132 ], [ %cond143, %cond.end.142 ]
  %127 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %y2146 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %127, i32 0, i32 16
  store i32 %cond145, i32* %y2146, align 4
  %128 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %129 = bitcast %struct._GimpChannel* %128 to %struct._GTypeInstance*
  %call147 = call i64 @gimp_drawable_get_type() #6
  %call148 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call147)
  %130 = bitcast %struct._GTypeInstance* %call148 to %struct._GimpDrawable*
  %131 = load i32, i32* %x.addr, align 4
  %132 = load i32, i32* %y.addr, align 4
  %133 = load i32, i32* %w.addr, align 4
  %134 = load i32, i32* %h.addr, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %130, i32 %131, i32 %132, i32 %133, i32 %134)
  br label %return

return:                                           ; preds = %cond.end.144, %if.then.19, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @gimp_rectangle_intersect(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #3

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

declare void @color_region(%struct._PixelRegion*, i8*) #3

declare void @gimp_drawable_update(%struct._GimpDrawable*, i32, i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_channel_combine_ellipse(%struct._GimpChannel* %mask, i32 %op, i32 %x, i32 %y, i32 %w, i32 %h, i32 %antialias) #0 {
entry:
  %mask.addr = alloca %struct._GimpChannel*, align 8
  %op.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  store %struct._GimpChannel* %mask, %struct._GimpChannel** %mask.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %1 = load i32, i32* %op.addr, align 4
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %4 = load i32, i32* %w.addr, align 4
  %5 = load i32, i32* %h.addr, align 4
  %6 = load i32, i32* %w.addr, align 4
  %conv = sitofp i32 %6 to double
  %div = fdiv double %conv, 2.000000e+00
  %7 = load i32, i32* %h.addr, align 4
  %conv1 = sitofp i32 %7 to double
  %div2 = fdiv double %conv1, 2.000000e+00
  %8 = load i32, i32* %antialias.addr, align 4
  call void @gimp_channel_combine_ellipse_rect(%struct._GimpChannel* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, double %div, double %div2, i32 %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_channel_combine_ellipse_rect(%struct._GimpChannel* %mask, i32 %op, i32 %x, i32 %y, i32 %w, i32 %h, double %a, double %b, i32 %antialias) #0 {
entry:
  %mask.addr = alloca %struct._GimpChannel*, align 8
  %op.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %antialias.addr = alloca i32, align 4
  %maskPR = alloca %struct._PixelRegion, align 8
  %a_sqr = alloca double, align 8
  %b_sqr = alloca double, align 8
  %ellipse_center_x = alloca double, align 8
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %pr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %data = alloca i8*, align 8
  %py = alloca i32, align 4
  %px = alloca i32, align 4
  %ellipse_center_y = alloca double, align 8
  %half_ellipse_width_at_y = alloca double, align 8
  %x_start = alloca i32, align 4
  %x_end = alloca i32, align 4
  %yi = alloca float, align 4
  %last_val = alloca i32, align 4
  %x_start165 = alloca i32, align 4
  %cur_x = alloca i32, align 4
  %xj = alloca float, align 4
  %xdist = alloca float, align 4
  %ydist = alloca float, align 4
  %r = alloca float, align 4
  %dist = alloca float, align 4
  %val = alloca i32, align 4
  store %struct._GimpChannel* %mask, %struct._GimpChannel** %mask.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  store i32 %antialias, i32* %antialias.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_channel_combine_ellipse_rect, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load double, double* %a.addr, align 8
  %cmp12 = fcmp oge double %13, 0.000000e+00
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load double, double* %b.addr, align 8
  %cmp14 = fcmp oge double %14, 0.000000e+00
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_channel_combine_ellipse_rect, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %15 = load i32, i32* %op.addr, align 4
  %cmp20 = icmp ne i32 %15, 3
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.23

if.else.22:                                       ; preds = %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_channel_combine_ellipse_rect, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %16 = load double, double* %a.addr, align 8
  %17 = load i32, i32* %w.addr, align 4
  %conv = sitofp i32 %17 to double
  %div = fdiv double %conv, 2.000000e+00
  %cmp25 = fcmp olt double %16, %div
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.24
  %18 = load double, double* %a.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end.24
  %19 = load i32, i32* %w.addr, align 4
  %conv27 = sitofp i32 %19 to double
  %div28 = fdiv double %conv27, 2.000000e+00
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %18, %cond.true ], [ %div28, %cond.false ]
  store double %cond, double* %a.addr, align 8
  %20 = load double, double* %b.addr, align 8
  %21 = load i32, i32* %h.addr, align 4
  %conv29 = sitofp i32 %21 to double
  %div30 = fdiv double %conv29, 2.000000e+00
  %cmp31 = fcmp olt double %20, %div30
  br i1 %cmp31, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.end
  %22 = load double, double* %b.addr, align 8
  br label %cond.end.37

cond.false.34:                                    ; preds = %cond.end
  %23 = load i32, i32* %h.addr, align 4
  %conv35 = sitofp i32 %23 to double
  %div36 = fdiv double %conv35, 2.000000e+00
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.34, %cond.true.33
  %cond38 = phi double [ %22, %cond.true.33 ], [ %div36, %cond.false.34 ]
  store double %cond38, double* %b.addr, align 8
  %24 = load double, double* %a.addr, align 8
  %25 = load double, double* %a.addr, align 8
  %mul = fmul double %24, %25
  store double %mul, double* %a_sqr, align 8
  %26 = load double, double* %b.addr, align 8
  %27 = load double, double* %b.addr, align 8
  %mul39 = fmul double %26, %27
  store double %mul39, double* %b_sqr, align 8
  %28 = load i32, i32* %x.addr, align 4
  %29 = load i32, i32* %y.addr, align 4
  %30 = load i32, i32* %w.addr, align 4
  %31 = load i32, i32* %h.addr, align 4
  %32 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %33 = bitcast %struct._GimpChannel* %32 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call40)
  %34 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_get_width(%struct._GimpItem* %34)
  %35 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %36 = bitcast %struct._GimpChannel* %35 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_item_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call43)
  %37 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpItem*
  %call45 = call i32 @gimp_item_get_height(%struct._GimpItem* %37)
  %call46 = call i32 @gimp_rectangle_intersect(i32 %28, i32 %29, i32 %30, i32 %31, i32 0, i32 0, i32 %call42, i32 %call45, i32* %x0, i32* %y0, i32* %width, i32* %height)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %cond.end.37
  br label %return

if.end.49:                                        ; preds = %cond.end.37
  %38 = load i32, i32* %x.addr, align 4
  %conv50 = sitofp i32 %38 to double
  %39 = load double, double* %a.addr, align 8
  %add = fadd double %conv50, %39
  store double %add, double* %ellipse_center_x, align 8
  %40 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %41 = bitcast %struct._GimpChannel* %40 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_drawable_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call51)
  %42 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpDrawable*
  %call53 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %42)
  %43 = load i32, i32* %x0, align 4
  %44 = load i32, i32* %y0, align 4
  %45 = load i32, i32* %width, align 4
  %46 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %call53, i32 %43, i32 %44, i32 %45, i32 %46, i32 1)
  %call54 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %maskPR)
  %47 = bitcast %struct._PixelRegionIterator* %call54 to i8*
  store i8* %47, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.366, %if.end.49
  %48 = load i8*, i8** %pr, align 8
  %cmp55 = icmp ne i8* %48, null
  br i1 %cmp55, label %for.body, label %for.end.368

for.body:                                         ; preds = %for.cond
  %data58 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 0
  %49 = load i8*, i8** %data58, align 8
  store i8* %49, i8** %data, align 8
  %y60 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 7
  %50 = load i32, i32* %y60, align 4
  store i32 %50, i32* %py, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.363, %for.body
  %51 = load i32, i32* %py, align 4
  %y62 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 7
  %52 = load i32, i32* %y62, align 4
  %h63 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 9
  %53 = load i32, i32* %h63, align 4
  %add64 = add nsw i32 %52, %53
  %cmp65 = icmp slt i32 %51, %add64
  br i1 %cmp65, label %for.body.67, label %for.end.365

for.body.67:                                      ; preds = %for.cond.61
  %x69 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 6
  %54 = load i32, i32* %x69, align 4
  store i32 %54, i32* %px, align 4
  %55 = load i32, i32* %py, align 4
  %conv71 = sitofp i32 %55 to double
  %56 = load i32, i32* %y.addr, align 4
  %conv72 = sitofp i32 %56 to double
  %57 = load double, double* %b.addr, align 8
  %add73 = fadd double %conv72, %57
  %cmp74 = fcmp oge double %conv71, %add73
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.84

land.lhs.true.76:                                 ; preds = %for.body.67
  %58 = load i32, i32* %py, align 4
  %conv77 = sitofp i32 %58 to double
  %59 = load i32, i32* %y.addr, align 4
  %60 = load i32, i32* %h.addr, align 4
  %add78 = add nsw i32 %59, %60
  %conv79 = sitofp i32 %add78 to double
  %61 = load double, double* %b.addr, align 8
  %sub = fsub double %conv79, %61
  %cmp80 = fcmp olt double %conv77, %sub
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %land.lhs.true.76
  %62 = load i8*, i8** %data, align 8
  %63 = load i32, i32* %op.addr, align 4
  %w83 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 8
  %64 = load i32, i32* %w83, align 4
  call void @gimp_channel_combine_span(i8* %62, i32 %63, i32 0, i32 %64, i32 255)
  br label %for.inc.363

if.end.84:                                        ; preds = %land.lhs.true.76, %for.body.67
  %65 = load i32, i32* %py, align 4
  %conv85 = sitofp i32 %65 to double
  %66 = load i32, i32* %y.addr, align 4
  %conv86 = sitofp i32 %66 to double
  %67 = load double, double* %b.addr, align 8
  %add87 = fadd double %conv86, %67
  %cmp88 = fcmp olt double %conv85, %add87
  br i1 %cmp88, label %if.then.90, label %if.else.93

if.then.90:                                       ; preds = %if.end.84
  %68 = load i32, i32* %y.addr, align 4
  %conv91 = sitofp i32 %68 to double
  %69 = load double, double* %b.addr, align 8
  %add92 = fadd double %conv91, %69
  store double %add92, double* %ellipse_center_y, align 8
  br label %if.end.97

if.else.93:                                       ; preds = %if.end.84
  %70 = load i32, i32* %y.addr, align 4
  %71 = load i32, i32* %h.addr, align 4
  %add94 = add nsw i32 %70, %71
  %conv95 = sitofp i32 %add94 to double
  %72 = load double, double* %b.addr, align 8
  %sub96 = fsub double %conv95, %72
  store double %sub96, double* %ellipse_center_y, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.93, %if.then.90
  %73 = load i32, i32* %antialias.addr, align 4
  %tobool98 = icmp ne i32 %73, 0
  br i1 %tobool98, label %if.else.144, label %if.then.99

if.then.99:                                       ; preds = %if.end.97
  %74 = load double, double* %a_sqr, align 8
  %75 = load double, double* %a_sqr, align 8
  %76 = load i32, i32* %py, align 4
  %conv103 = sitofp i32 %76 to float
  %add104 = fadd float %conv103, 5.000000e-01
  %conv105 = fpext float %add104 to double
  %77 = load double, double* %ellipse_center_y, align 8
  %sub106 = fsub double %conv105, %77
  %78 = load i32, i32* %py, align 4
  %conv107 = sitofp i32 %78 to float
  %add108 = fadd float %conv107, 5.000000e-01
  %conv109 = fpext float %add108 to double
  %79 = load double, double* %ellipse_center_y, align 8
  %sub110 = fsub double %conv109, %79
  %mul111 = fmul double %sub106, %sub110
  %mul112 = fmul double %75, %mul111
  %80 = load double, double* %b_sqr, align 8
  %div113 = fdiv double %mul112, %80
  %sub114 = fsub double %74, %div113
  %call115 = call double @sqrt(double %sub114) #5
  store double %call115, double* %half_ellipse_width_at_y, align 8
  %81 = load double, double* %ellipse_center_x, align 8
  %82 = load double, double* %half_ellipse_width_at_y, align 8
  %sub116 = fsub double %81, %82
  %add117 = fadd double %sub116, 5.000000e-01
  %conv118 = fptosi double %add117 to i32
  store i32 %conv118, i32* %x_start, align 4
  %83 = load double, double* %ellipse_center_x, align 8
  %84 = load i32, i32* %w.addr, align 4
  %conv119 = sitofp i32 %84 to double
  %add120 = fadd double %83, %conv119
  %85 = load double, double* %a.addr, align 8
  %mul121 = fmul double 2.000000e+00, %85
  %sub122 = fsub double %add120, %mul121
  %86 = load double, double* %half_ellipse_width_at_y, align 8
  %add123 = fadd double %sub122, %86
  %add124 = fadd double %add123, 5.000000e-01
  %conv125 = fptosi double %add124 to i32
  store i32 %conv125, i32* %x_end, align 4
  %87 = load i8*, i8** %data, align 8
  %88 = load i32, i32* %op.addr, align 4
  %89 = load i32, i32* %x_start, align 4
  %90 = load i32, i32* %px, align 4
  %sub126 = sub nsw i32 %89, %90
  %cmp127 = icmp sgt i32 %sub126, 0
  br i1 %cmp127, label %cond.true.129, label %cond.false.131

cond.true.129:                                    ; preds = %if.then.99
  %91 = load i32, i32* %x_start, align 4
  %92 = load i32, i32* %px, align 4
  %sub130 = sub nsw i32 %91, %92
  br label %cond.end.132

cond.false.131:                                   ; preds = %if.then.99
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.131, %cond.true.129
  %cond133 = phi i32 [ %sub130, %cond.true.129 ], [ 0, %cond.false.131 ]
  %93 = load i32, i32* %x_end, align 4
  %94 = load i32, i32* %px, align 4
  %sub134 = sub nsw i32 %93, %94
  %w135 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 8
  %95 = load i32, i32* %w135, align 4
  %cmp136 = icmp slt i32 %sub134, %95
  br i1 %cmp136, label %cond.true.138, label %cond.false.140

cond.true.138:                                    ; preds = %cond.end.132
  %96 = load i32, i32* %x_end, align 4
  %97 = load i32, i32* %px, align 4
  %sub139 = sub nsw i32 %96, %97
  br label %cond.end.142

cond.false.140:                                   ; preds = %cond.end.132
  %w141 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 8
  %98 = load i32, i32* %w141, align 4
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.140, %cond.true.138
  %cond143 = phi i32 [ %sub139, %cond.true.138 ], [ %98, %cond.false.140 ]
  call void @gimp_channel_combine_span(i8* %87, i32 %88, i32 %cond133, i32 %cond143, i32 255)
  br label %if.end.362

if.else.144:                                      ; preds = %if.end.97
  %99 = load i32, i32* %py, align 4
  %conv146 = sitofp i32 %99 to double
  %add147 = fadd double %conv146, 5.000000e-01
  %100 = load double, double* %ellipse_center_y, align 8
  %sub148 = fsub double %add147, %100
  %cmp149 = fcmp olt double %sub148, 0.000000e+00
  br i1 %cmp149, label %cond.true.151, label %cond.false.156

cond.true.151:                                    ; preds = %if.else.144
  %101 = load i32, i32* %py, align 4
  %conv152 = sitofp i32 %101 to double
  %add153 = fadd double %conv152, 5.000000e-01
  %102 = load double, double* %ellipse_center_y, align 8
  %sub154 = fsub double %add153, %102
  %sub155 = fsub double -0.000000e+00, %sub154
  br label %cond.end.160

cond.false.156:                                   ; preds = %if.else.144
  %103 = load i32, i32* %py, align 4
  %conv157 = sitofp i32 %103 to double
  %add158 = fadd double %conv157, 5.000000e-01
  %104 = load double, double* %ellipse_center_y, align 8
  %sub159 = fsub double %add158, %104
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.156, %cond.true.151
  %cond161 = phi double [ %sub155, %cond.true.151 ], [ %sub159, %cond.false.156 ]
  %conv162 = fptrunc double %cond161 to float
  store float %conv162, float* %yi, align 4
  store i32 -1, i32* %last_val, align 4
  %105 = load i32, i32* %px, align 4
  store i32 %105, i32* %x_start165, align 4
  %106 = load i32, i32* %px, align 4
  store i32 %106, i32* %cur_x, align 4
  br label %for.cond.167

for.cond.167:                                     ; preds = %for.inc, %cond.end.160
  %107 = load i32, i32* %cur_x, align 4
  %108 = load i32, i32* %px, align 4
  %w168 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 8
  %109 = load i32, i32* %w168, align 4
  %add169 = add nsw i32 %108, %109
  %cmp170 = icmp slt i32 %107, %add169
  br i1 %cmp170, label %for.body.172, label %for.end

for.body.172:                                     ; preds = %for.cond.167
  %110 = load i32, i32* %cur_x, align 4
  %111 = load i32, i32* %x.addr, align 4
  %112 = load i32, i32* %w.addr, align 4
  %div179 = sdiv i32 %112, 2
  %add180 = add nsw i32 %111, %div179
  %cmp181 = icmp slt i32 %110, %add180
  br i1 %cmp181, label %if.then.183, label %if.else.186

if.then.183:                                      ; preds = %for.body.172
  %113 = load i32, i32* %x.addr, align 4
  %conv184 = sitofp i32 %113 to double
  %114 = load double, double* %a.addr, align 8
  %add185 = fadd double %conv184, %114
  store double %add185, double* %ellipse_center_x, align 8
  br label %if.end.190

if.else.186:                                      ; preds = %for.body.172
  %115 = load i32, i32* %x.addr, align 4
  %116 = load i32, i32* %w.addr, align 4
  %add187 = add nsw i32 %115, %116
  %conv188 = sitofp i32 %add187 to double
  %117 = load double, double* %a.addr, align 8
  %sub189 = fsub double %conv188, %117
  store double %sub189, double* %ellipse_center_x, align 8
  br label %if.end.190

if.end.190:                                       ; preds = %if.else.186, %if.then.183
  %118 = load i32, i32* %cur_x, align 4
  %conv191 = sitofp i32 %118 to double
  %add192 = fadd double %conv191, 5.000000e-01
  %119 = load double, double* %ellipse_center_x, align 8
  %sub193 = fsub double %add192, %119
  %cmp194 = fcmp olt double %sub193, 0.000000e+00
  br i1 %cmp194, label %cond.true.196, label %cond.false.201

cond.true.196:                                    ; preds = %if.end.190
  %120 = load i32, i32* %cur_x, align 4
  %conv197 = sitofp i32 %120 to double
  %add198 = fadd double %conv197, 5.000000e-01
  %121 = load double, double* %ellipse_center_x, align 8
  %sub199 = fsub double %add198, %121
  %sub200 = fsub double -0.000000e+00, %sub199
  br label %cond.end.205

cond.false.201:                                   ; preds = %if.end.190
  %122 = load i32, i32* %cur_x, align 4
  %conv202 = sitofp i32 %122 to double
  %add203 = fadd double %conv202, 5.000000e-01
  %123 = load double, double* %ellipse_center_x, align 8
  %sub204 = fsub double %add203, %123
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.false.201, %cond.true.196
  %cond206 = phi double [ %sub200, %cond.true.196 ], [ %sub204, %cond.false.201 ]
  %conv207 = fptrunc double %cond206 to float
  store float %conv207, float* %xj, align 4
  %124 = load float, float* %yi, align 4
  %conv208 = fpext float %124 to double
  %125 = load double, double* %b.addr, align 8
  %cmp209 = fcmp olt double %conv208, %125
  br i1 %cmp209, label %if.then.211, label %if.else.221

if.then.211:                                      ; preds = %cond.end.205
  %126 = load float, float* %xj, align 4
  %conv212 = fpext float %126 to double
  %127 = load double, double* %a.addr, align 8
  %128 = load float, float* %yi, align 4
  %129 = load float, float* %yi, align 4
  %mul213 = fmul float %128, %129
  %conv214 = fpext float %mul213 to double
  %130 = load double, double* %b_sqr, align 8
  %div215 = fdiv double %conv214, %130
  %sub216 = fsub double 1.000000e+00, %div215
  %call217 = call double @sqrt(double %sub216) #5
  %mul218 = fmul double %127, %call217
  %sub219 = fsub double %conv212, %mul218
  %conv220 = fptrunc double %sub219 to float
  store float %conv220, float* %xdist, align 4
  br label %if.end.222

if.else.221:                                      ; preds = %cond.end.205
  store float 1.000000e+03, float* %xdist, align 4
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.221, %if.then.211
  %131 = load float, float* %xj, align 4
  %conv223 = fpext float %131 to double
  %132 = load double, double* %a.addr, align 8
  %cmp224 = fcmp olt double %conv223, %132
  br i1 %cmp224, label %if.then.226, label %if.else.236

if.then.226:                                      ; preds = %if.end.222
  %133 = load float, float* %yi, align 4
  %conv227 = fpext float %133 to double
  %134 = load double, double* %b.addr, align 8
  %135 = load float, float* %xj, align 4
  %136 = load float, float* %xj, align 4
  %mul228 = fmul float %135, %136
  %conv229 = fpext float %mul228 to double
  %137 = load double, double* %a_sqr, align 8
  %div230 = fdiv double %conv229, %137
  %sub231 = fsub double 1.000000e+00, %div230
  %call232 = call double @sqrt(double %sub231) #5
  %mul233 = fmul double %134, %call232
  %sub234 = fsub double %conv227, %mul233
  %conv235 = fptrunc double %sub234 to float
  store float %conv235, float* %ydist, align 4
  br label %if.end.237

if.else.236:                                      ; preds = %if.end.222
  store float 1.000000e+03, float* %ydist, align 4
  br label %if.end.237

if.end.237:                                       ; preds = %if.else.236, %if.then.226
  %138 = load float, float* %xdist, align 4
  %conv238 = fpext float %138 to double
  %139 = load float, float* %ydist, align 4
  %conv239 = fpext float %139 to double
  %call240 = call double @hypot(double %conv238, double %conv239) #5
  %conv241 = fptrunc double %call240 to float
  store float %conv241, float* %r, align 4
  %140 = load float, float* %r, align 4
  %conv242 = fpext float %140 to double
  %cmp243 = fcmp olt double %conv242, 1.000000e-03
  br i1 %cmp243, label %if.then.245, label %if.else.246

if.then.245:                                      ; preds = %if.end.237
  store float 0.000000e+00, float* %dist, align 4
  br label %if.end.249

if.else.246:                                      ; preds = %if.end.237
  %141 = load float, float* %xdist, align 4
  %142 = load float, float* %ydist, align 4
  %mul247 = fmul float %141, %142
  %143 = load float, float* %r, align 4
  %div248 = fdiv float %mul247, %143
  store float %div248, float* %dist, align 4
  br label %if.end.249

if.end.249:                                       ; preds = %if.else.246, %if.then.245
  %144 = load float, float* %xdist, align 4
  %conv250 = fpext float %144 to double
  %cmp251 = fcmp olt double %conv250, 0.000000e+00
  br i1 %cmp251, label %if.then.253, label %if.end.255

if.then.253:                                      ; preds = %if.end.249
  %145 = load float, float* %dist, align 4
  %mul254 = fmul float %145, -1.000000e+00
  store float %mul254, float* %dist, align 4
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.253, %if.end.249
  %146 = load float, float* %dist, align 4
  %conv256 = fpext float %146 to double
  %cmp257 = fcmp olt double %conv256, -5.000000e-01
  br i1 %cmp257, label %if.then.259, label %if.else.260

if.then.259:                                      ; preds = %if.end.255
  store i32 255, i32* %val, align 4
  br label %if.end.272

if.else.260:                                      ; preds = %if.end.255
  %147 = load float, float* %dist, align 4
  %conv261 = fpext float %147 to double
  %cmp262 = fcmp olt double %conv261, 5.000000e-01
  br i1 %cmp262, label %if.then.264, label %if.else.270

if.then.264:                                      ; preds = %if.else.260
  %148 = load float, float* %dist, align 4
  %conv265 = fpext float %148 to double
  %add266 = fadd double %conv265, 5.000000e-01
  %sub267 = fsub double 1.000000e+00, %add266
  %mul268 = fmul double 2.550000e+02, %sub267
  %conv269 = fptosi double %mul268 to i32
  store i32 %conv269, i32* %val, align 4
  br label %if.end.271

if.else.270:                                      ; preds = %if.else.260
  store i32 0, i32* %val, align 4
  br label %if.end.271

if.end.271:                                       ; preds = %if.else.270, %if.then.264
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %if.then.259
  %149 = load i32, i32* %last_val, align 4
  %150 = load i32, i32* %val, align 4
  %cmp273 = icmp ne i32 %149, %150
  br i1 %cmp273, label %if.then.275, label %if.end.298

if.then.275:                                      ; preds = %if.end.272
  %151 = load i32, i32* %last_val, align 4
  %cmp276 = icmp ne i32 %151, -1
  br i1 %cmp276, label %if.then.278, label %if.end.297

if.then.278:                                      ; preds = %if.then.275
  %152 = load i8*, i8** %data, align 8
  %153 = load i32, i32* %op.addr, align 4
  %154 = load i32, i32* %x_start165, align 4
  %155 = load i32, i32* %px, align 4
  %sub279 = sub nsw i32 %154, %155
  %cmp280 = icmp sgt i32 %sub279, 0
  br i1 %cmp280, label %cond.true.282, label %cond.false.284

cond.true.282:                                    ; preds = %if.then.278
  %156 = load i32, i32* %x_start165, align 4
  %157 = load i32, i32* %px, align 4
  %sub283 = sub nsw i32 %156, %157
  br label %cond.end.285

cond.false.284:                                   ; preds = %if.then.278
  br label %cond.end.285

cond.end.285:                                     ; preds = %cond.false.284, %cond.true.282
  %cond286 = phi i32 [ %sub283, %cond.true.282 ], [ 0, %cond.false.284 ]
  %158 = load i32, i32* %cur_x, align 4
  %159 = load i32, i32* %px, align 4
  %sub287 = sub nsw i32 %158, %159
  %w288 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 8
  %160 = load i32, i32* %w288, align 4
  %cmp289 = icmp slt i32 %sub287, %160
  br i1 %cmp289, label %cond.true.291, label %cond.false.293

cond.true.291:                                    ; preds = %cond.end.285
  %161 = load i32, i32* %cur_x, align 4
  %162 = load i32, i32* %px, align 4
  %sub292 = sub nsw i32 %161, %162
  br label %cond.end.295

cond.false.293:                                   ; preds = %cond.end.285
  %w294 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 8
  %163 = load i32, i32* %w294, align 4
  br label %cond.end.295

cond.end.295:                                     ; preds = %cond.false.293, %cond.true.291
  %cond296 = phi i32 [ %sub292, %cond.true.291 ], [ %163, %cond.false.293 ]
  %164 = load i32, i32* %last_val, align 4
  call void @gimp_channel_combine_span(i8* %152, i32 %153, i32 %cond286, i32 %cond296, i32 %164)
  br label %if.end.297

if.end.297:                                       ; preds = %cond.end.295, %if.then.275
  %165 = load i32, i32* %cur_x, align 4
  store i32 %165, i32* %x_start165, align 4
  %166 = load i32, i32* %val, align 4
  store i32 %166, i32* %last_val, align 4
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %if.end.272
  %167 = load i32, i32* %cur_x, align 4
  %conv299 = sitofp i32 %167 to double
  %168 = load i32, i32* %x.addr, align 4
  %conv300 = sitofp i32 %168 to double
  %169 = load double, double* %a.addr, align 8
  %add301 = fadd double %conv300, %169
  %cmp302 = fcmp oge double %conv299, %add301
  br i1 %cmp302, label %land.lhs.true.304, label %if.end.334

land.lhs.true.304:                                ; preds = %if.end.298
  %170 = load i32, i32* %cur_x, align 4
  %conv305 = sitofp i32 %170 to double
  %171 = load i32, i32* %x.addr, align 4
  %172 = load i32, i32* %w.addr, align 4
  %add306 = add nsw i32 %171, %172
  %conv307 = sitofp i32 %add306 to double
  %173 = load double, double* %a.addr, align 8
  %sub308 = fsub double %conv307, %173
  %cmp309 = fcmp olt double %conv305, %sub308
  br i1 %cmp309, label %if.then.311, label %if.end.334

if.then.311:                                      ; preds = %land.lhs.true.304
  %174 = load i8*, i8** %data, align 8
  %175 = load i32, i32* %op.addr, align 4
  %176 = load i32, i32* %x_start165, align 4
  %177 = load i32, i32* %px, align 4
  %sub312 = sub nsw i32 %176, %177
  %cmp313 = icmp sgt i32 %sub312, 0
  br i1 %cmp313, label %cond.true.315, label %cond.false.317

cond.true.315:                                    ; preds = %if.then.311
  %178 = load i32, i32* %x_start165, align 4
  %179 = load i32, i32* %px, align 4
  %sub316 = sub nsw i32 %178, %179
  br label %cond.end.318

cond.false.317:                                   ; preds = %if.then.311
  br label %cond.end.318

cond.end.318:                                     ; preds = %cond.false.317, %cond.true.315
  %cond319 = phi i32 [ %sub316, %cond.true.315 ], [ 0, %cond.false.317 ]
  %180 = load i32, i32* %cur_x, align 4
  %181 = load i32, i32* %px, align 4
  %sub320 = sub nsw i32 %180, %181
  %w321 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 8
  %182 = load i32, i32* %w321, align 4
  %cmp322 = icmp slt i32 %sub320, %182
  br i1 %cmp322, label %cond.true.324, label %cond.false.326

cond.true.324:                                    ; preds = %cond.end.318
  %183 = load i32, i32* %cur_x, align 4
  %184 = load i32, i32* %px, align 4
  %sub325 = sub nsw i32 %183, %184
  br label %cond.end.328

cond.false.326:                                   ; preds = %cond.end.318
  %w327 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 8
  %185 = load i32, i32* %w327, align 4
  br label %cond.end.328

cond.end.328:                                     ; preds = %cond.false.326, %cond.true.324
  %cond329 = phi i32 [ %sub325, %cond.true.324 ], [ %185, %cond.false.326 ]
  %186 = load i32, i32* %last_val, align 4
  call void @gimp_channel_combine_span(i8* %174, i32 %175, i32 %cond319, i32 %cond329, i32 %186)
  %187 = load i32, i32* %cur_x, align 4
  store i32 %187, i32* %x_start165, align 4
  %188 = load i32, i32* %x.addr, align 4
  %189 = load i32, i32* %w.addr, align 4
  %add330 = add nsw i32 %188, %189
  %conv331 = sitofp i32 %add330 to double
  %190 = load double, double* %a.addr, align 8
  %sub332 = fsub double %conv331, %190
  %conv333 = fptosi double %sub332 to i32
  store i32 %conv333, i32* %cur_x, align 4
  store i32 255, i32* %val, align 4
  store i32 255, i32* %last_val, align 4
  br label %if.end.334

if.end.334:                                       ; preds = %cond.end.328, %land.lhs.true.304, %if.end.298
  %191 = load i32, i32* %cur_x, align 4
  %192 = load i32, i32* %x.addr, align 4
  %193 = load i32, i32* %w.addr, align 4
  %div335 = sdiv i32 %193, 2
  %add336 = add nsw i32 %192, %div335
  %cmp337 = icmp sge i32 %191, %add336
  br i1 %cmp337, label %if.then.339, label %if.end.343

if.then.339:                                      ; preds = %if.end.334
  %194 = load i32, i32* %x.addr, align 4
  %195 = load i32, i32* %w.addr, align 4
  %add340 = add nsw i32 %194, %195
  %conv341 = sitofp i32 %add340 to double
  %196 = load double, double* %a.addr, align 8
  %sub342 = fsub double %conv341, %196
  store double %sub342, double* %ellipse_center_x, align 8
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.339, %if.end.334
  br label %for.inc

for.inc:                                          ; preds = %if.end.343
  %197 = load i32, i32* %cur_x, align 4
  %inc = add nsw i32 %197, 1
  store i32 %inc, i32* %cur_x, align 4
  br label %for.cond.167

for.end:                                          ; preds = %for.cond.167
  %198 = load i8*, i8** %data, align 8
  %199 = load i32, i32* %op.addr, align 4
  %200 = load i32, i32* %x_start165, align 4
  %201 = load i32, i32* %px, align 4
  %sub344 = sub nsw i32 %200, %201
  %cmp345 = icmp sgt i32 %sub344, 0
  br i1 %cmp345, label %cond.true.347, label %cond.false.349

cond.true.347:                                    ; preds = %for.end
  %202 = load i32, i32* %x_start165, align 4
  %203 = load i32, i32* %px, align 4
  %sub348 = sub nsw i32 %202, %203
  br label %cond.end.350

cond.false.349:                                   ; preds = %for.end
  br label %cond.end.350

cond.end.350:                                     ; preds = %cond.false.349, %cond.true.347
  %cond351 = phi i32 [ %sub348, %cond.true.347 ], [ 0, %cond.false.349 ]
  %204 = load i32, i32* %cur_x, align 4
  %205 = load i32, i32* %px, align 4
  %sub352 = sub nsw i32 %204, %205
  %w353 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 8
  %206 = load i32, i32* %w353, align 4
  %cmp354 = icmp slt i32 %sub352, %206
  br i1 %cmp354, label %cond.true.356, label %cond.false.358

cond.true.356:                                    ; preds = %cond.end.350
  %207 = load i32, i32* %cur_x, align 4
  %208 = load i32, i32* %px, align 4
  %sub357 = sub nsw i32 %207, %208
  br label %cond.end.360

cond.false.358:                                   ; preds = %cond.end.350
  %w359 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 8
  %209 = load i32, i32* %w359, align 4
  br label %cond.end.360

cond.end.360:                                     ; preds = %cond.false.358, %cond.true.356
  %cond361 = phi i32 [ %sub357, %cond.true.356 ], [ %209, %cond.false.358 ]
  %210 = load i32, i32* %last_val, align 4
  call void @gimp_channel_combine_span(i8* %198, i32 %199, i32 %cond351, i32 %cond361, i32 %210)
  br label %if.end.362

if.end.362:                                       ; preds = %cond.end.360, %cond.end.142
  br label %for.inc.363

for.inc.363:                                      ; preds = %if.end.362, %if.then.82
  %211 = load i32, i32* %py, align 4
  %inc364 = add nsw i32 %211, 1
  store i32 %inc364, i32* %py, align 4
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 5
  %212 = load i32, i32* %rowstride, align 4
  %213 = load i8*, i8** %data, align 8
  %idx.ext = sext i32 %212 to i64
  %add.ptr = getelementptr inbounds i8, i8* %213, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8
  br label %for.cond.61

for.end.365:                                      ; preds = %for.cond.61
  br label %for.inc.366

for.inc.366:                                      ; preds = %for.end.365
  %214 = load i8*, i8** %pr, align 8
  %215 = bitcast i8* %214 to %struct._PixelRegionIterator*
  %call367 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %215)
  %216 = bitcast %struct._PixelRegionIterator* %call367 to i8*
  store i8* %216, i8** %pr, align 8
  br label %for.cond

for.end.368:                                      ; preds = %for.cond
  %217 = load i32, i32* %x0, align 4
  store i32 %217, i32* %x.addr, align 4
  %218 = load i32, i32* %y0, align 4
  store i32 %218, i32* %y.addr, align 4
  %219 = load i32, i32* %width, align 4
  store i32 %219, i32* %w.addr, align 4
  %220 = load i32, i32* %height, align 4
  store i32 %220, i32* %h.addr, align 4
  %221 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %221, i32 0, i32 12
  %222 = load i32, i32* %bounds_known, align 4
  %tobool369 = icmp ne i32 %222, 0
  br i1 %tobool369, label %land.lhs.true.370, label %if.else.400

land.lhs.true.370:                                ; preds = %for.end.368
  %223 = load i32, i32* %op.addr, align 4
  %cmp371 = icmp eq i32 %223, 0
  br i1 %cmp371, label %land.lhs.true.373, label %if.else.400

land.lhs.true.373:                                ; preds = %land.lhs.true.370
  %224 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %empty = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %224, i32 0, i32 11
  %225 = load i32, i32* %empty, align 4
  %tobool374 = icmp ne i32 %225, 0
  br i1 %tobool374, label %if.else.400, label %if.then.375

if.then.375:                                      ; preds = %land.lhs.true.373
  %226 = load i32, i32* %x.addr, align 4
  %227 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %227, i32 0, i32 13
  %228 = load i32, i32* %x1, align 4
  %cmp376 = icmp slt i32 %226, %228
  br i1 %cmp376, label %if.then.378, label %if.end.380

if.then.378:                                      ; preds = %if.then.375
  %229 = load i32, i32* %x.addr, align 4
  %230 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %x1379 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %230, i32 0, i32 13
  store i32 %229, i32* %x1379, align 4
  br label %if.end.380

if.end.380:                                       ; preds = %if.then.378, %if.then.375
  %231 = load i32, i32* %y.addr, align 4
  %232 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %232, i32 0, i32 14
  %233 = load i32, i32* %y1, align 4
  %cmp381 = icmp slt i32 %231, %233
  br i1 %cmp381, label %if.then.383, label %if.end.385

if.then.383:                                      ; preds = %if.end.380
  %234 = load i32, i32* %y.addr, align 4
  %235 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %y1384 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %235, i32 0, i32 14
  store i32 %234, i32* %y1384, align 4
  br label %if.end.385

if.end.385:                                       ; preds = %if.then.383, %if.end.380
  %236 = load i32, i32* %x.addr, align 4
  %237 = load i32, i32* %w.addr, align 4
  %add386 = add nsw i32 %236, %237
  %238 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %238, i32 0, i32 15
  %239 = load i32, i32* %x2, align 4
  %cmp387 = icmp sgt i32 %add386, %239
  br i1 %cmp387, label %if.then.389, label %if.end.392

if.then.389:                                      ; preds = %if.end.385
  %240 = load i32, i32* %x.addr, align 4
  %241 = load i32, i32* %w.addr, align 4
  %add390 = add nsw i32 %240, %241
  %242 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %x2391 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %242, i32 0, i32 15
  store i32 %add390, i32* %x2391, align 4
  br label %if.end.392

if.end.392:                                       ; preds = %if.then.389, %if.end.385
  %243 = load i32, i32* %y.addr, align 4
  %244 = load i32, i32* %h.addr, align 4
  %add393 = add nsw i32 %243, %244
  %245 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %245, i32 0, i32 16
  %246 = load i32, i32* %y2, align 4
  %cmp394 = icmp sgt i32 %add393, %246
  br i1 %cmp394, label %if.then.396, label %if.end.399

if.then.396:                                      ; preds = %if.end.392
  %247 = load i32, i32* %y.addr, align 4
  %248 = load i32, i32* %h.addr, align 4
  %add397 = add nsw i32 %247, %248
  %249 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %y2398 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %249, i32 0, i32 16
  store i32 %add397, i32* %y2398, align 4
  br label %if.end.399

if.end.399:                                       ; preds = %if.then.396, %if.end.392
  br label %if.end.416

if.else.400:                                      ; preds = %land.lhs.true.373, %land.lhs.true.370, %for.end.368
  %250 = load i32, i32* %op.addr, align 4
  %cmp401 = icmp eq i32 %250, 2
  br i1 %cmp401, label %if.then.405, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.400
  %251 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %empty403 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %251, i32 0, i32 11
  %252 = load i32, i32* %empty403, align 4
  %tobool404 = icmp ne i32 %252, 0
  br i1 %tobool404, label %if.then.405, label %if.else.413

if.then.405:                                      ; preds = %lor.lhs.false, %if.else.400
  %253 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %empty406 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %253, i32 0, i32 11
  store i32 0, i32* %empty406, align 4
  %254 = load i32, i32* %x.addr, align 4
  %255 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %x1407 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %255, i32 0, i32 13
  store i32 %254, i32* %x1407, align 4
  %256 = load i32, i32* %y.addr, align 4
  %257 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %y1408 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %257, i32 0, i32 14
  store i32 %256, i32* %y1408, align 4
  %258 = load i32, i32* %x.addr, align 4
  %259 = load i32, i32* %w.addr, align 4
  %add409 = add nsw i32 %258, %259
  %260 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %x2410 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %260, i32 0, i32 15
  store i32 %add409, i32* %x2410, align 4
  %261 = load i32, i32* %y.addr, align 4
  %262 = load i32, i32* %h.addr, align 4
  %add411 = add nsw i32 %261, %262
  %263 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %y2412 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %263, i32 0, i32 16
  store i32 %add411, i32* %y2412, align 4
  br label %if.end.415

if.else.413:                                      ; preds = %lor.lhs.false
  %264 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %bounds_known414 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %264, i32 0, i32 12
  store i32 0, i32* %bounds_known414, align 4
  br label %if.end.415

if.end.415:                                       ; preds = %if.else.413, %if.then.405
  br label %if.end.416

if.end.416:                                       ; preds = %if.end.415, %if.end.399
  %265 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %266 = bitcast %struct._GimpChannel* %265 to %struct._GTypeInstance*
  %call417 = call i64 @gimp_drawable_get_type() #6
  %call418 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %266, i64 %call417)
  %267 = bitcast %struct._GTypeInstance* %call418 to %struct._GimpDrawable*
  %268 = load i32, i32* %x.addr, align 4
  %269 = load i32, i32* %y.addr, align 4
  %270 = load i32, i32* %w.addr, align 4
  %271 = load i32, i32* %h.addr, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %267, i32 %268, i32 %269, i32 %270, i32 %271)
  br label %return

return:                                           ; preds = %if.end.416, %if.then.48, %if.else.22, %if.else.16, %if.else.9
  ret void
}

declare %struct._PixelRegionIterator* @pixel_regions_register(i32, ...) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_combine_span(i8* %data, i32 %op, i32 %x1, i32 %x2, i32 %value) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %op.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %val25 = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  %0 = load i32, i32* %x2.addr, align 4
  %1 = load i32, i32* %x1.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %op.addr, align 4
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb.12
    i32 3, label %sw.bb.42
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %3 = load i32, i32* %value.addr, align 4
  %cmp1 = icmp eq i32 %3, 255
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %sw.bb
  %4 = load i8*, i8** %data.addr, align 8
  %5 = load i32, i32* %x1.addr, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = load i32, i32* %x2.addr, align 4
  %7 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %6, %7
  %conv = sext i32 %sub to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 -1, i64 %conv, i32 1, i1 false)
  br label %if.end.11

if.else:                                          ; preds = %sw.bb
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.else
  %8 = load i32, i32* %x1.addr, align 4
  %9 = load i32, i32* %x2.addr, align 4
  %cmp3 = icmp slt i32 %8, %9
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %x1.addr, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv5 = zext i8 %12 to i32
  %13 = load i32, i32* %value.addr, align 4
  %add = add nsw i32 %conv5, %13
  store i32 %add, i32* %val, align 4
  %14 = load i32, i32* %val, align 4
  %cmp6 = icmp ugt i32 %14, 255
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %15 = load i32, i32* %val, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 255, %cond.true ], [ %15, %cond.false ]
  %conv8 = trunc i32 %cond to i8
  %16 = load i32, i32* %x1.addr, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %x1.addr, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load i8*, i8** %data.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %17, i64 %idxprom9
  store i8 %conv8, i8* %arrayidx10, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.11

if.end.11:                                        ; preds = %while.end, %if.then.2
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end
  %18 = load i32, i32* %value.addr, align 4
  %cmp13 = icmp eq i32 %18, 255
  br i1 %cmp13, label %if.then.15, label %if.else.20

if.then.15:                                       ; preds = %sw.bb.12
  %19 = load i8*, i8** %data.addr, align 8
  %20 = load i32, i32* %x1.addr, align 4
  %idx.ext16 = sext i32 %20 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %19, i64 %idx.ext16
  %21 = load i32, i32* %x2.addr, align 4
  %22 = load i32, i32* %x1.addr, align 4
  %sub18 = sub nsw i32 %21, %22
  %conv19 = sext i32 %sub18 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr17, i8 0, i64 %conv19, i32 1, i1 false)
  br label %if.end.41

if.else.20:                                       ; preds = %sw.bb.12
  br label %while.cond.21

while.cond.21:                                    ; preds = %cond.end.34, %if.else.20
  %23 = load i32, i32* %x1.addr, align 4
  %24 = load i32, i32* %x2.addr, align 4
  %cmp22 = icmp slt i32 %23, %24
  br i1 %cmp22, label %while.body.24, label %while.end.40

while.body.24:                                    ; preds = %while.cond.21
  %25 = load i32, i32* %x1.addr, align 4
  %idxprom26 = sext i32 %25 to i64
  %26 = load i8*, i8** %data.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %26, i64 %idxprom26
  %27 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %27 to i32
  %28 = load i32, i32* %value.addr, align 4
  %sub29 = sub nsw i32 %conv28, %28
  store i32 %sub29, i32* %val25, align 4
  %29 = load i32, i32* %val25, align 4
  %cmp30 = icmp sgt i32 %29, 0
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %while.body.24
  %30 = load i32, i32* %val25, align 4
  br label %cond.end.34

cond.false.33:                                    ; preds = %while.body.24
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.32
  %cond35 = phi i32 [ %30, %cond.true.32 ], [ 0, %cond.false.33 ]
  %conv36 = trunc i32 %cond35 to i8
  %31 = load i32, i32* %x1.addr, align 4
  %inc37 = add nsw i32 %31, 1
  store i32 %inc37, i32* %x1.addr, align 4
  %idxprom38 = sext i32 %31 to i64
  %32 = load i8*, i8** %data.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %32, i64 %idxprom38
  store i8 %conv36, i8* %arrayidx39, align 1
  br label %while.cond.21

while.end.40:                                     ; preds = %while.cond.21
  br label %if.end.41

if.end.41:                                        ; preds = %while.end.40, %if.then.15
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.end, %sw.bb.42, %if.end.41, %if.end.11
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind
declare double @hypot(double, double) #4

declare %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator*) #3

; Function Attrs: nounwind uwtable
define void @gimp_channel_combine_mask(%struct._GimpChannel* %mask, %struct._GimpChannel* %add_on, i32 %op, i32 %off_x, i32 %off_y) #0 {
entry:
  %mask.addr = alloca %struct._GimpChannel*, align 8
  %add_on.addr = alloca %struct._GimpChannel*, align 8
  %op.addr = alloca i32, align 4
  %off_x.addr = alloca i32, align 4
  %off_y.addr = alloca i32, align 4
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpChannel* %mask, %struct._GimpChannel** %mask.addr, align 8
  store %struct._GimpChannel* %add_on, %struct._GimpChannel** %add_on.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store i32 %off_x, i32* %off_x.addr, align 4
  store i32 %off_y, i32* %off_y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_channel_combine_mask, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_channel_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_channel_combine_mask, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load i32, i32* %off_x.addr, align 4
  %27 = load i32, i32* %off_y.addr, align 4
  %28 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on.addr, align 8
  %29 = bitcast %struct._GimpChannel* %28 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_item_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call39)
  %30 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpItem*
  %call41 = call i32 @gimp_item_get_width(%struct._GimpItem* %30)
  %31 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on.addr, align 8
  %32 = bitcast %struct._GimpChannel* %31 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_item_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call42)
  %33 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpItem*
  %call44 = call i32 @gimp_item_get_height(%struct._GimpItem* %33)
  %34 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %35 = bitcast %struct._GimpChannel* %34 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_item_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call45)
  %36 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpItem*
  %call47 = call i32 @gimp_item_get_width(%struct._GimpItem* %36)
  %37 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %38 = bitcast %struct._GimpChannel* %37 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call48)
  %39 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  %call50 = call i32 @gimp_item_get_height(%struct._GimpItem* %39)
  %call51 = call i32 @gimp_rectangle_intersect(i32 %26, i32 %27, i32 %call41, i32 %call44, i32 0, i32 0, i32 %call47, i32 %call50, i32* %x, i32* %y, i32* %w, i32* %h)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %do.end.38
  br label %return

if.end.54:                                        ; preds = %do.end.38
  %40 = load %struct._GimpChannel*, %struct._GimpChannel** %add_on.addr, align 8
  %41 = bitcast %struct._GimpChannel* %40 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_drawable_get_type() #6
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call55)
  %42 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpDrawable*
  %call57 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %42)
  %43 = load i32, i32* %x, align 4
  %44 = load i32, i32* %off_x.addr, align 4
  %sub = sub nsw i32 %43, %44
  %45 = load i32, i32* %y, align 4
  %46 = load i32, i32* %off_y.addr, align 4
  %sub58 = sub nsw i32 %45, %46
  %47 = load i32, i32* %w, align 4
  %48 = load i32, i32* %h, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call57, i32 %sub, i32 %sub58, i32 %47, i32 %48, i32 0)
  %49 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %50 = bitcast %struct._GimpChannel* %49 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_drawable_get_type() #6
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call59)
  %51 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpDrawable*
  %call61 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %51)
  %52 = load i32, i32* %x, align 4
  %53 = load i32, i32* %y, align 4
  %54 = load i32, i32* %w, align 4
  %55 = load i32, i32* %h, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %call61, i32 %52, i32 %53, i32 %54, i32 %55, i32 1)
  %56 = load i32, i32* %op.addr, align 4
  switch i32 %56, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb.62
    i32 3, label %sw.bb.63
  ]

sw.bb:                                            ; preds = %if.end.54, %if.end.54
  call void (void ()*, i8*, i32, ...) @pixel_regions_process_parallel(void ()* bitcast (void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)* @gimp_channel_combine_sub_region_add to void ()*), i8* null, i32 2, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.end.54
  call void (void ()*, i8*, i32, ...) @pixel_regions_process_parallel(void ()* bitcast (void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)* @gimp_channel_combine_sub_region_sub to void ()*), i8* null, i32 2, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  br label %sw.epilog

sw.bb.63:                                         ; preds = %if.end.54
  call void (void ()*, i8*, i32, ...) @pixel_regions_process_parallel(void ()* bitcast (void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)* @gimp_channel_combine_sub_region_intersect to void ()*), i8* null, i32 2, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.54
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_channel_combine_mask, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.63, %sw.bb.62, %sw.bb
  %57 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %57, i32 0, i32 12
  store i32 0, i32* %bounds_known, align 4
  %58 = load %struct._GimpChannel*, %struct._GimpChannel** %mask.addr, align 8
  %59 = bitcast %struct._GimpChannel* %58 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_drawable_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call64)
  %60 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpDrawable*
  %61 = load i32, i32* %x, align 4
  %62 = load i32, i32* %y, align 4
  %63 = load i32, i32* %w, align 4
  %64 = load i32, i32* %h, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %60, i32 %61, i32 %62, i32 %63, i32 %64)
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.53, %if.else.36, %if.else.9
  ret void
}

declare void @pixel_regions_process_parallel(void ()*, i8*, i32, ...) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_combine_sub_region_add(i8* %unused, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR) #0 {
entry:
  %unused.addr = alloca i8*, align 8
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %val = alloca i32, align 4
  store i8* %unused, i8** %unused.addr, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  store i8* %1, i8** %src, align 8
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %data1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 0
  %3 = load i8*, i8** %data1, align 8
  store i8* %3, i8** %dest, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %4 = load i32, i32* %y, align 4
  %5 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %5, i32 0, i32 9
  %6 = load i32, i32* %h, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %x, align 4
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %8, i32 0, i32 8
  %9 = load i32, i32* %w, align 4
  %cmp3 = icmp slt i32 %7, %9
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %x, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i8*, i8** %dest, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %13 = load i32, i32* %x, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load i8*, i8** %src, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %14, i64 %idxprom5
  %15 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %15 to i32
  %add = add nsw i32 %conv, %conv7
  store i32 %add, i32* %val, align 4
  %16 = load i32, i32* %val, align 4
  %cmp8 = icmp ugt i32 %16, 255
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.4
  br label %cond.end

cond.false:                                       ; preds = %for.body.4
  %17 = load i32, i32* %val, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 255, %cond.true ], [ %17, %cond.false ]
  %conv10 = trunc i32 %cond to i8
  %18 = load i32, i32* %x, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load i8*, i8** %dest, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %19, i64 %idxprom11
  store i8 %conv10, i8* %arrayidx12, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %20 = load i32, i32* %x, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %21 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %21, i32 0, i32 5
  %22 = load i32, i32* %rowstride, align 4
  %23 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  %24 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %rowstride13 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %24, i32 0, i32 5
  %25 = load i32, i32* %rowstride13, align 4
  %26 = load i8*, i8** %dest, align 8
  %idx.ext14 = sext i32 %25 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %26, i64 %idx.ext14
  store i8* %add.ptr15, i8** %dest, align 8
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %27 = load i32, i32* %y, align 4
  %inc17 = add nsw i32 %27, 1
  store i32 %inc17, i32* %y, align 4
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_combine_sub_region_sub(i8* %unused, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR) #0 {
entry:
  %unused.addr = alloca i8*, align 8
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i8* %unused, i8** %unused.addr, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  store i8* %1, i8** %src, align 8
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %data1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 0
  %3 = load i8*, i8** %data1, align 8
  store i8* %3, i8** %dest, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %entry
  %4 = load i32, i32* %y, align 4
  %5 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %5, i32 0, i32 9
  %6 = load i32, i32* %h, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %x, align 4
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %8, i32 0, i32 8
  %9 = load i32, i32* %w, align 4
  %cmp3 = icmp slt i32 %7, %9
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %x, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i8*, i8** %src, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %13 = load i32, i32* %x, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load i8*, i8** %dest, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %14, i64 %idxprom5
  %15 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %15 to i32
  %cmp8 = icmp sgt i32 %conv, %conv7
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.4
  %16 = load i32, i32* %x, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load i8*, i8** %dest, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %17, i64 %idxprom10
  store i8 0, i8* %arrayidx11, align 1
  br label %if.end

if.else:                                          ; preds = %for.body.4
  %18 = load i32, i32* %x, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load i8*, i8** %src, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %19, i64 %idxprom12
  %20 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %20 to i32
  %21 = load i32, i32* %x, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load i8*, i8** %dest, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %22, i64 %idxprom15
  %23 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %23 to i32
  %sub = sub nsw i32 %conv17, %conv14
  %conv18 = trunc i32 %sub to i8
  store i8 %conv18, i8* %arrayidx16, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %x, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %25 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %25, i32 0, i32 5
  %26 = load i32, i32* %rowstride, align 4
  %27 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  %28 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %rowstride19 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %28, i32 0, i32 5
  %29 = load i32, i32* %rowstride19, align 4
  %30 = load i8*, i8** %dest, align 8
  %idx.ext20 = sext i32 %29 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %30, i64 %idx.ext20
  store i8* %add.ptr21, i8** %dest, align 8
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %31 = load i32, i32* %y, align 4
  %inc23 = add nsw i32 %31, 1
  store i32 %inc23, i32* %y, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_combine_sub_region_intersect(i8* %unused, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR) #0 {
entry:
  %unused.addr = alloca i8*, align 8
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i8* %unused, i8** %unused.addr, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  store i8* %1, i8** %src, align 8
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %data1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 0
  %3 = load i8*, i8** %data1, align 8
  store i8* %3, i8** %dest, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %entry
  %4 = load i32, i32* %y, align 4
  %5 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %5, i32 0, i32 9
  %6 = load i32, i32* %h, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %x, align 4
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %8, i32 0, i32 8
  %9 = load i32, i32* %w, align 4
  %cmp3 = icmp slt i32 %7, %9
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %x, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i8*, i8** %dest, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %13 = load i32, i32* %x, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load i8*, i8** %src, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %14, i64 %idxprom5
  %15 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %15 to i32
  %cmp8 = icmp slt i32 %conv, %conv7
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.4
  %16 = load i32, i32* %x, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load i8*, i8** %dest, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %17, i64 %idxprom10
  %18 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %18 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.4
  %19 = load i32, i32* %x, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load i8*, i8** %src, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %20, i64 %idxprom13
  %21 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %21 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv12, %cond.true ], [ %conv15, %cond.false ]
  %conv16 = trunc i32 %cond to i8
  %22 = load i32, i32* %x, align 4
  %idxprom17 = sext i32 %22 to i64
  %23 = load i8*, i8** %dest, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %23, i64 %idxprom17
  store i8 %conv16, i8* %arrayidx18, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %24 = load i32, i32* %x, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %25 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %25, i32 0, i32 5
  %26 = load i32, i32* %rowstride, align 4
  %27 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  %28 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %rowstride19 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %28, i32 0, i32 5
  %29 = load i32, i32* %rowstride19, align 4
  %30 = load i8*, i8** %dest, align 8
  %idx.ext20 = sext i32 %29 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %30, i64 %idx.ext20
  store i8* %add.ptr21, i8** %dest, align 8
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %31 = load i32, i32* %y, align 4
  %inc23 = add nsw i32 %31, 1
  store i32 %inc23, i32* %y, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  ret void
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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

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
