; ModuleID = './app/core/gimpdrawable-combine.bc'
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
%struct._TileManager = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpDrawableUndo = type { %struct._GimpItemUndo, %struct._TileManager*, i32, i32, i32, i32, i32, %struct._TileManager*, i32, double }
%struct._GimpItemUndo = type { %struct._GimpUndo, %struct._GimpItem* }
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._TempBuf = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [24 x i8] c"%s: illegal parameters.\00", align 1
@__func__.gimp_drawable_real_apply_region = private unnamed_addr constant [32 x i8] c"gimp_drawable_real_apply_region\00", align 1
@__func__.gimp_drawable_real_replace_region = private unnamed_addr constant [34 x i8] c"gimp_drawable_real_replace_region\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_drawable_real_apply_region(%struct._GimpDrawable* %drawable, %struct._PixelRegion* %src2PR, i32 %push_undo, i8* %undo_desc, double %opacity, i32 %mode, %struct._TileManager* %src1_tiles, %struct._PixelRegion* %destPR, i32 %x, i32 %y) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %src2PR.addr = alloca %struct._PixelRegion*, align 8
  %push_undo.addr = alloca i32, align 4
  %undo_desc.addr = alloca i8*, align 8
  %opacity.addr = alloca double, align 8
  %mode.addr = alloca i32, align 4
  %src1_tiles.addr = alloca %struct._TileManager*, align 8
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %mask = alloca %struct._GimpChannel*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %src1PR = alloca %struct._PixelRegion, align 8
  %my_destPR = alloca %struct._PixelRegion, align 8
  %operation = alloca i32, align 4
  %active_components = alloca [4 x i32], align 16
  %mask_item = alloca %struct._GimpItem*, align 8
  %undo = alloca %struct._GimpDrawableUndo*, align 8
  %tmp_srcPR = alloca %struct._PixelRegion, align 8
  %tmp_destPR = alloca %struct._PixelRegion, align 8
  %maskPR = alloca %struct._PixelRegion, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._PixelRegion* %src2PR, %struct._PixelRegion** %src2PR.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct._TileManager* %src1_tiles, %struct._TileManager** %src1_tiles.addr, align 8
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  store %struct._GimpItem* %2, %struct._GimpItem** %item, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call2 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %4)
  store %struct._GimpChannel* %call3, %struct._GimpChannel** %mask, align 8
  %5 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %6 = bitcast %struct._GimpChannel* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_drawable_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDrawable*
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp = icmp eq %struct._GimpDrawable* %7, %8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %call6 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %9)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._GimpChannel* null, %struct._GimpChannel** %mask, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %active_components, i32 0, i32 0
  call void @gimp_drawable_get_active_components(%struct._GimpDrawable* %10, i32* %arraydecay)
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call7 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %11)
  %12 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %12, i32 0, i32 10
  %13 = load i32, i32* %bytes, align 4
  %call8 = call i32 @gimp_image_get_combination_mode(i32 %call7, i32 %13)
  store i32 %call8, i32* %operation, align 4
  %14 = load i32, i32* %operation, align 4
  %cmp9 = icmp eq i32 %14, -1
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_drawable_real_apply_region, i32 0, i32 0))
  br label %if.end.196

if.end.11:                                        ; preds = %if.end
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %15, i32* %offset_x, i32* %offset_y)
  %16 = load i32, i32* %x.addr, align 4
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call12 = call i32 @gimp_item_get_width(%struct._GimpItem* %17)
  %cmp13 = icmp sgt i32 %16, %call12
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call14 = call i32 @gimp_item_get_width(%struct._GimpItem* %18)
  br label %cond.end.18

cond.false:                                       ; preds = %if.end.11
  %19 = load i32, i32* %x.addr, align 4
  %cmp15 = icmp slt i32 %19, 0
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.false
  br label %cond.end

cond.false.17:                                    ; preds = %cond.false
  %20 = load i32, i32* %x.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.17, %cond.true.16
  %cond = phi i32 [ 0, %cond.true.16 ], [ %20, %cond.false.17 ]
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.end, %cond.true
  %cond19 = phi i32 [ %call14, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond19, i32* %x1, align 4
  %21 = load i32, i32* %y.addr, align 4
  %22 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call20 = call i32 @gimp_item_get_height(%struct._GimpItem* %22)
  %cmp21 = icmp sgt i32 %21, %call20
  br i1 %cmp21, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %cond.end.18
  %23 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call23 = call i32 @gimp_item_get_height(%struct._GimpItem* %23)
  br label %cond.end.30

cond.false.24:                                    ; preds = %cond.end.18
  %24 = load i32, i32* %y.addr, align 4
  %cmp25 = icmp slt i32 %24, 0
  br i1 %cmp25, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.false.24
  br label %cond.end.28

cond.false.27:                                    ; preds = %cond.false.24
  %25 = load i32, i32* %y.addr, align 4
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.26
  %cond29 = phi i32 [ 0, %cond.true.26 ], [ %25, %cond.false.27 ]
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.end.28, %cond.true.22
  %cond31 = phi i32 [ %call23, %cond.true.22 ], [ %cond29, %cond.end.28 ]
  store i32 %cond31, i32* %y1, align 4
  %26 = load i32, i32* %x.addr, align 4
  %27 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %27, i32 0, i32 8
  %28 = load i32, i32* %w, align 4
  %add = add nsw i32 %26, %28
  %29 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call32 = call i32 @gimp_item_get_width(%struct._GimpItem* %29)
  %cmp33 = icmp sgt i32 %add, %call32
  br i1 %cmp33, label %cond.true.34, label %cond.false.36

cond.true.34:                                     ; preds = %cond.end.30
  %30 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call35 = call i32 @gimp_item_get_width(%struct._GimpItem* %30)
  br label %cond.end.46

cond.false.36:                                    ; preds = %cond.end.30
  %31 = load i32, i32* %x.addr, align 4
  %32 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %w37 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %32, i32 0, i32 8
  %33 = load i32, i32* %w37, align 4
  %add38 = add nsw i32 %31, %33
  %cmp39 = icmp slt i32 %add38, 0
  br i1 %cmp39, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %cond.false.36
  br label %cond.end.44

cond.false.41:                                    ; preds = %cond.false.36
  %34 = load i32, i32* %x.addr, align 4
  %35 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %w42 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %35, i32 0, i32 8
  %36 = load i32, i32* %w42, align 4
  %add43 = add nsw i32 %34, %36
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.41, %cond.true.40
  %cond45 = phi i32 [ 0, %cond.true.40 ], [ %add43, %cond.false.41 ]
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.end.44, %cond.true.34
  %cond47 = phi i32 [ %call35, %cond.true.34 ], [ %cond45, %cond.end.44 ]
  store i32 %cond47, i32* %x2, align 4
  %37 = load i32, i32* %y.addr, align 4
  %38 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %38, i32 0, i32 9
  %39 = load i32, i32* %h, align 4
  %add48 = add nsw i32 %37, %39
  %40 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call49 = call i32 @gimp_item_get_height(%struct._GimpItem* %40)
  %cmp50 = icmp sgt i32 %add48, %call49
  br i1 %cmp50, label %cond.true.51, label %cond.false.53

cond.true.51:                                     ; preds = %cond.end.46
  %41 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call52 = call i32 @gimp_item_get_height(%struct._GimpItem* %41)
  br label %cond.end.63

cond.false.53:                                    ; preds = %cond.end.46
  %42 = load i32, i32* %y.addr, align 4
  %43 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %h54 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %43, i32 0, i32 9
  %44 = load i32, i32* %h54, align 4
  %add55 = add nsw i32 %42, %44
  %cmp56 = icmp slt i32 %add55, 0
  br i1 %cmp56, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.false.53
  br label %cond.end.61

cond.false.58:                                    ; preds = %cond.false.53
  %45 = load i32, i32* %y.addr, align 4
  %46 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %h59 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %46, i32 0, i32 9
  %47 = load i32, i32* %h59, align 4
  %add60 = add nsw i32 %45, %47
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.58, %cond.true.57
  %cond62 = phi i32 [ 0, %cond.true.57 ], [ %add60, %cond.false.58 ]
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.end.61, %cond.true.51
  %cond64 = phi i32 [ %call52, %cond.true.51 ], [ %cond62, %cond.end.61 ]
  store i32 %cond64, i32* %y2, align 4
  %48 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool65 = icmp ne %struct._GimpChannel* %48, null
  br i1 %tobool65, label %if.then.66, label %if.end.132

if.then.66:                                       ; preds = %cond.end.63
  %49 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %50 = bitcast %struct._GimpChannel* %49 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_item_get_type() #4
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call67)
  %51 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpItem*
  store %struct._GimpItem* %51, %struct._GimpItem** %mask_item, align 8
  %52 = load i32, i32* %x1, align 4
  %53 = load %struct._GimpItem*, %struct._GimpItem** %mask_item, align 8
  %call69 = call i32 @gimp_item_get_width(%struct._GimpItem* %53)
  %54 = load i32, i32* %offset_x, align 4
  %sub = sub nsw i32 %call69, %54
  %cmp70 = icmp sgt i32 %52, %sub
  br i1 %cmp70, label %cond.true.71, label %cond.false.74

cond.true.71:                                     ; preds = %if.then.66
  %55 = load %struct._GimpItem*, %struct._GimpItem** %mask_item, align 8
  %call72 = call i32 @gimp_item_get_width(%struct._GimpItem* %55)
  %56 = load i32, i32* %offset_x, align 4
  %sub73 = sub nsw i32 %call72, %56
  br label %cond.end.82

cond.false.74:                                    ; preds = %if.then.66
  %57 = load i32, i32* %x1, align 4
  %58 = load i32, i32* %offset_x, align 4
  %sub75 = sub nsw i32 0, %58
  %cmp76 = icmp slt i32 %57, %sub75
  br i1 %cmp76, label %cond.true.77, label %cond.false.79

cond.true.77:                                     ; preds = %cond.false.74
  %59 = load i32, i32* %offset_x, align 4
  %sub78 = sub nsw i32 0, %59
  br label %cond.end.80

cond.false.79:                                    ; preds = %cond.false.74
  %60 = load i32, i32* %x1, align 4
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.79, %cond.true.77
  %cond81 = phi i32 [ %sub78, %cond.true.77 ], [ %60, %cond.false.79 ]
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.end.80, %cond.true.71
  %cond83 = phi i32 [ %sub73, %cond.true.71 ], [ %cond81, %cond.end.80 ]
  store i32 %cond83, i32* %x1, align 4
  %61 = load i32, i32* %y1, align 4
  %62 = load %struct._GimpItem*, %struct._GimpItem** %mask_item, align 8
  %call84 = call i32 @gimp_item_get_height(%struct._GimpItem* %62)
  %63 = load i32, i32* %offset_y, align 4
  %sub85 = sub nsw i32 %call84, %63
  %cmp86 = icmp sgt i32 %61, %sub85
  br i1 %cmp86, label %cond.true.87, label %cond.false.90

cond.true.87:                                     ; preds = %cond.end.82
  %64 = load %struct._GimpItem*, %struct._GimpItem** %mask_item, align 8
  %call88 = call i32 @gimp_item_get_height(%struct._GimpItem* %64)
  %65 = load i32, i32* %offset_y, align 4
  %sub89 = sub nsw i32 %call88, %65
  br label %cond.end.98

cond.false.90:                                    ; preds = %cond.end.82
  %66 = load i32, i32* %y1, align 4
  %67 = load i32, i32* %offset_y, align 4
  %sub91 = sub nsw i32 0, %67
  %cmp92 = icmp slt i32 %66, %sub91
  br i1 %cmp92, label %cond.true.93, label %cond.false.95

cond.true.93:                                     ; preds = %cond.false.90
  %68 = load i32, i32* %offset_y, align 4
  %sub94 = sub nsw i32 0, %68
  br label %cond.end.96

cond.false.95:                                    ; preds = %cond.false.90
  %69 = load i32, i32* %y1, align 4
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.95, %cond.true.93
  %cond97 = phi i32 [ %sub94, %cond.true.93 ], [ %69, %cond.false.95 ]
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.end.96, %cond.true.87
  %cond99 = phi i32 [ %sub89, %cond.true.87 ], [ %cond97, %cond.end.96 ]
  store i32 %cond99, i32* %y1, align 4
  %70 = load i32, i32* %x2, align 4
  %71 = load %struct._GimpItem*, %struct._GimpItem** %mask_item, align 8
  %call100 = call i32 @gimp_item_get_width(%struct._GimpItem* %71)
  %72 = load i32, i32* %offset_x, align 4
  %sub101 = sub nsw i32 %call100, %72
  %cmp102 = icmp sgt i32 %70, %sub101
  br i1 %cmp102, label %cond.true.103, label %cond.false.106

cond.true.103:                                    ; preds = %cond.end.98
  %73 = load %struct._GimpItem*, %struct._GimpItem** %mask_item, align 8
  %call104 = call i32 @gimp_item_get_width(%struct._GimpItem* %73)
  %74 = load i32, i32* %offset_x, align 4
  %sub105 = sub nsw i32 %call104, %74
  br label %cond.end.114

cond.false.106:                                   ; preds = %cond.end.98
  %75 = load i32, i32* %x2, align 4
  %76 = load i32, i32* %offset_x, align 4
  %sub107 = sub nsw i32 0, %76
  %cmp108 = icmp slt i32 %75, %sub107
  br i1 %cmp108, label %cond.true.109, label %cond.false.111

cond.true.109:                                    ; preds = %cond.false.106
  %77 = load i32, i32* %offset_x, align 4
  %sub110 = sub nsw i32 0, %77
  br label %cond.end.112

cond.false.111:                                   ; preds = %cond.false.106
  %78 = load i32, i32* %x2, align 4
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.111, %cond.true.109
  %cond113 = phi i32 [ %sub110, %cond.true.109 ], [ %78, %cond.false.111 ]
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.end.112, %cond.true.103
  %cond115 = phi i32 [ %sub105, %cond.true.103 ], [ %cond113, %cond.end.112 ]
  store i32 %cond115, i32* %x2, align 4
  %79 = load i32, i32* %y2, align 4
  %80 = load %struct._GimpItem*, %struct._GimpItem** %mask_item, align 8
  %call116 = call i32 @gimp_item_get_height(%struct._GimpItem* %80)
  %81 = load i32, i32* %offset_y, align 4
  %sub117 = sub nsw i32 %call116, %81
  %cmp118 = icmp sgt i32 %79, %sub117
  br i1 %cmp118, label %cond.true.119, label %cond.false.122

cond.true.119:                                    ; preds = %cond.end.114
  %82 = load %struct._GimpItem*, %struct._GimpItem** %mask_item, align 8
  %call120 = call i32 @gimp_item_get_height(%struct._GimpItem* %82)
  %83 = load i32, i32* %offset_y, align 4
  %sub121 = sub nsw i32 %call120, %83
  br label %cond.end.130

cond.false.122:                                   ; preds = %cond.end.114
  %84 = load i32, i32* %y2, align 4
  %85 = load i32, i32* %offset_y, align 4
  %sub123 = sub nsw i32 0, %85
  %cmp124 = icmp slt i32 %84, %sub123
  br i1 %cmp124, label %cond.true.125, label %cond.false.127

cond.true.125:                                    ; preds = %cond.false.122
  %86 = load i32, i32* %offset_y, align 4
  %sub126 = sub nsw i32 0, %86
  br label %cond.end.128

cond.false.127:                                   ; preds = %cond.false.122
  %87 = load i32, i32* %y2, align 4
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.127, %cond.true.125
  %cond129 = phi i32 [ %sub126, %cond.true.125 ], [ %87, %cond.false.127 ]
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.end.128, %cond.true.119
  %cond131 = phi i32 [ %sub121, %cond.true.119 ], [ %cond129, %cond.end.128 ]
  store i32 %cond131, i32* %y2, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %cond.end.130, %cond.end.63
  %88 = load i32, i32* %push_undo.addr, align 4
  %tobool133 = icmp ne i32 %88, 0
  br i1 %tobool133, label %if.then.134, label %if.end.159

if.then.134:                                      ; preds = %if.end.132
  %89 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %90 = load i8*, i8** %undo_desc.addr, align 8
  %91 = load i32, i32* %x1, align 4
  %92 = load i32, i32* %y1, align 4
  %93 = load i32, i32* %x2, align 4
  %94 = load i32, i32* %x1, align 4
  %sub135 = sub nsw i32 %93, %94
  %95 = load i32, i32* %y2, align 4
  %96 = load i32, i32* %y1, align 4
  %sub136 = sub nsw i32 %95, %96
  call void @gimp_drawable_push_undo(%struct._GimpDrawable* %89, i8* %90, i32 %91, i32 %92, i32 %sub135, i32 %sub136, %struct._TileManager* null, i32 0)
  %97 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call137 = call %struct._GimpUndo* @gimp_image_undo_get_fadeable(%struct._GimpImage* %97)
  %98 = bitcast %struct._GimpUndo* %call137 to %struct._GTypeInstance*
  %call138 = call i64 @gimp_drawable_undo_get_type() #4
  %call139 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call138)
  %99 = bitcast %struct._GTypeInstance* %call139 to %struct._GimpDrawableUndo*
  store %struct._GimpDrawableUndo* %99, %struct._GimpDrawableUndo** %undo, align 8
  %100 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %tobool140 = icmp ne %struct._GimpDrawableUndo* %100, null
  br i1 %tobool140, label %if.then.141, label %if.end.158

if.then.141:                                      ; preds = %if.then.134
  %101 = load i32, i32* %mode.addr, align 4
  %102 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %paint_mode = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %102, i32 0, i32 8
  store i32 %101, i32* %paint_mode, align 4
  %103 = load double, double* %opacity.addr, align 8
  %104 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %opacity142 = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %104, i32 0, i32 9
  store double %103, double* %opacity142, align 8
  %105 = load i32, i32* %x2, align 4
  %106 = load i32, i32* %x1, align 4
  %sub143 = sub nsw i32 %105, %106
  %107 = load i32, i32* %y2, align 4
  %108 = load i32, i32* %y1, align 4
  %sub144 = sub nsw i32 %107, %108
  %109 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %bytes145 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %109, i32 0, i32 10
  %110 = load i32, i32* %bytes145, align 4
  %call146 = call %struct._TileManager* @tile_manager_new(i32 %sub143, i32 %sub144, i32 %110)
  %111 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %src2_tiles = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %111, i32 0, i32 7
  store %struct._TileManager* %call146, %struct._TileManager** %src2_tiles, align 8
  %112 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %113 = bitcast %struct._PixelRegion* %tmp_srcPR to i8*
  %114 = bitcast %struct._PixelRegion* %112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %113, i8* %114, i64 64, i32 8, i1 false)
  %115 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %x147 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %115, i32 0, i32 6
  %116 = load i32, i32* %x147, align 4
  %117 = load i32, i32* %x1, align 4
  %118 = load i32, i32* %x.addr, align 4
  %sub148 = sub nsw i32 %117, %118
  %add149 = add nsw i32 %116, %sub148
  %119 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %y150 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %119, i32 0, i32 7
  %120 = load i32, i32* %y150, align 4
  %121 = load i32, i32* %y1, align 4
  %122 = load i32, i32* %y.addr, align 4
  %sub151 = sub nsw i32 %121, %122
  %add152 = add nsw i32 %120, %sub151
  %123 = load i32, i32* %x2, align 4
  %124 = load i32, i32* %x1, align 4
  %sub153 = sub nsw i32 %123, %124
  %125 = load i32, i32* %y2, align 4
  %126 = load i32, i32* %y1, align 4
  %sub154 = sub nsw i32 %125, %126
  call void @pixel_region_resize(%struct._PixelRegion* %tmp_srcPR, i32 %add149, i32 %add152, i32 %sub153, i32 %sub154)
  %127 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %src2_tiles155 = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %127, i32 0, i32 7
  %128 = load %struct._TileManager*, %struct._TileManager** %src2_tiles155, align 8
  %129 = load i32, i32* %x2, align 4
  %130 = load i32, i32* %x1, align 4
  %sub156 = sub nsw i32 %129, %130
  %131 = load i32, i32* %y2, align 4
  %132 = load i32, i32* %y1, align 4
  %sub157 = sub nsw i32 %131, %132
  call void @pixel_region_init(%struct._PixelRegion* %tmp_destPR, %struct._TileManager* %128, i32 0, i32 0, i32 %sub156, i32 %sub157, i32 1)
  call void @copy_region(%struct._PixelRegion* %tmp_srcPR, %struct._PixelRegion* %tmp_destPR)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.141, %if.then.134
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.132
  %133 = load %struct._TileManager*, %struct._TileManager** %src1_tiles.addr, align 8
  %tobool160 = icmp ne %struct._TileManager* %133, null
  br i1 %tobool160, label %if.then.161, label %if.else

if.then.161:                                      ; preds = %if.end.159
  %134 = load %struct._TileManager*, %struct._TileManager** %src1_tiles.addr, align 8
  %135 = load i32, i32* %x1, align 4
  %136 = load i32, i32* %y1, align 4
  %137 = load i32, i32* %x2, align 4
  %138 = load i32, i32* %x1, align 4
  %sub162 = sub nsw i32 %137, %138
  %139 = load i32, i32* %y2, align 4
  %140 = load i32, i32* %y1, align 4
  %sub163 = sub nsw i32 %139, %140
  call void @pixel_region_init(%struct._PixelRegion* %src1PR, %struct._TileManager* %134, i32 %135, i32 %136, i32 %sub162, i32 %sub163, i32 0)
  br label %if.end.167

if.else:                                          ; preds = %if.end.159
  %141 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call164 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %141)
  %142 = load i32, i32* %x1, align 4
  %143 = load i32, i32* %y1, align 4
  %144 = load i32, i32* %x2, align 4
  %145 = load i32, i32* %x1, align 4
  %sub165 = sub nsw i32 %144, %145
  %146 = load i32, i32* %y2, align 4
  %147 = load i32, i32* %y1, align 4
  %sub166 = sub nsw i32 %146, %147
  call void @pixel_region_init(%struct._PixelRegion* %src1PR, %struct._TileManager* %call164, i32 %142, i32 %143, i32 %sub165, i32 %sub166, i32 0)
  br label %if.end.167

if.end.167:                                       ; preds = %if.else, %if.then.161
  %148 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %tobool168 = icmp ne %struct._PixelRegion* %148, null
  br i1 %tobool168, label %if.end.173, label %if.then.169

if.then.169:                                      ; preds = %if.end.167
  %149 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call170 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %149)
  %150 = load i32, i32* %x1, align 4
  %151 = load i32, i32* %y1, align 4
  %152 = load i32, i32* %x2, align 4
  %153 = load i32, i32* %x1, align 4
  %sub171 = sub nsw i32 %152, %153
  %154 = load i32, i32* %y2, align 4
  %155 = load i32, i32* %y1, align 4
  %sub172 = sub nsw i32 %154, %155
  call void @pixel_region_init(%struct._PixelRegion* %my_destPR, %struct._TileManager* %call170, i32 %150, i32 %151, i32 %sub171, i32 %sub172, i32 1)
  store %struct._PixelRegion* %my_destPR, %struct._PixelRegion** %destPR.addr, align 8
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.169, %if.end.167
  %156 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %157 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %x174 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %157, i32 0, i32 6
  %158 = load i32, i32* %x174, align 4
  %159 = load i32, i32* %x1, align 4
  %160 = load i32, i32* %x.addr, align 4
  %sub175 = sub nsw i32 %159, %160
  %add176 = add nsw i32 %158, %sub175
  %161 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %y177 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %161, i32 0, i32 7
  %162 = load i32, i32* %y177, align 4
  %163 = load i32, i32* %y1, align 4
  %164 = load i32, i32* %y.addr, align 4
  %sub178 = sub nsw i32 %163, %164
  %add179 = add nsw i32 %162, %sub178
  %165 = load i32, i32* %x2, align 4
  %166 = load i32, i32* %x1, align 4
  %sub180 = sub nsw i32 %165, %166
  %167 = load i32, i32* %y2, align 4
  %168 = load i32, i32* %y1, align 4
  %sub181 = sub nsw i32 %167, %168
  call void @pixel_region_resize(%struct._PixelRegion* %156, i32 %add176, i32 %add179, i32 %sub180, i32 %sub181)
  %169 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool182 = icmp ne %struct._GimpChannel* %169, null
  br i1 %tobool182, label %if.then.183, label %if.else.192

if.then.183:                                      ; preds = %if.end.173
  %170 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %171 = bitcast %struct._GimpChannel* %170 to %struct._GTypeInstance*
  %call184 = call i64 @gimp_drawable_get_type() #4
  %call185 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 %call184)
  %172 = bitcast %struct._GTypeInstance* %call185 to %struct._GimpDrawable*
  %call186 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %172)
  %173 = load i32, i32* %x1, align 4
  %174 = load i32, i32* %offset_x, align 4
  %add187 = add nsw i32 %173, %174
  %175 = load i32, i32* %y1, align 4
  %176 = load i32, i32* %offset_y, align 4
  %add188 = add nsw i32 %175, %176
  %177 = load i32, i32* %x2, align 4
  %178 = load i32, i32* %x1, align 4
  %sub189 = sub nsw i32 %177, %178
  %179 = load i32, i32* %y2, align 4
  %180 = load i32, i32* %y1, align 4
  %sub190 = sub nsw i32 %179, %180
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %call186, i32 %add187, i32 %add188, i32 %sub189, i32 %sub190, i32 0)
  %181 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %182 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %183 = load double, double* %opacity.addr, align 8
  %mul = fmul double %183, 2.559990e+02
  %conv = fptoui double %mul to i32
  %184 = load i32, i32* %mode.addr, align 4
  %arraydecay191 = getelementptr inbounds [4 x i32], [4 x i32]* %active_components, i32 0, i32 0
  %185 = load i32, i32* %operation, align 4
  call void @combine_regions(%struct._PixelRegion* %src1PR, %struct._PixelRegion* %181, %struct._PixelRegion* %182, %struct._PixelRegion* %maskPR, i8* null, i32 %conv, i32 %184, i32* %arraydecay191, i32 %185)
  br label %if.end.196

if.else.192:                                      ; preds = %if.end.173
  %186 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %187 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %188 = load double, double* %opacity.addr, align 8
  %mul193 = fmul double %188, 2.559990e+02
  %conv194 = fptoui double %mul193 to i32
  %189 = load i32, i32* %mode.addr, align 4
  %arraydecay195 = getelementptr inbounds [4 x i32], [4 x i32]* %active_components, i32 0, i32 0
  %190 = load i32, i32* %operation, align 4
  call void @combine_regions(%struct._PixelRegion* %src1PR, %struct._PixelRegion* %186, %struct._PixelRegion* %187, %struct._PixelRegion* null, i8* null, i32 %conv194, i32 %189, i32* %arraydecay195, i32 %190)
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.10, %if.else.192, %if.then.183
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #1

declare void @gimp_drawable_get_active_components(%struct._GimpDrawable*, i32*) #1

declare i32 @gimp_image_get_combination_mode(i32, i32) #1

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare void @gimp_drawable_push_undo(%struct._GimpDrawable*, i8*, i32, i32, i32, i32, %struct._TileManager*, i32) #1

declare %struct._GimpUndo* @gimp_image_undo_get_fadeable(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_undo_get_type() #2

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @pixel_region_resize(%struct._PixelRegion*, i32, i32, i32, i32) #1

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare void @copy_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

declare void @combine_regions(%struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*, i8*, i32, i32, i32*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_drawable_real_replace_region(%struct._GimpDrawable* %drawable, %struct._PixelRegion* %src2PR, i32 %push_undo, i8* %undo_desc, double %opacity, %struct._PixelRegion* %maskPR, i32 %x, i32 %y) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %src2PR.addr = alloca %struct._PixelRegion*, align 8
  %push_undo.addr = alloca i32, align 4
  %undo_desc.addr = alloca i8*, align 8
  %opacity.addr = alloca double, align 8
  %maskPR.addr = alloca %struct._PixelRegion*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %mask = alloca %struct._GimpChannel*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %src1PR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %operation = alloca i32, align 4
  %active_components = alloca [4 x i32], align 16
  %mask_item = alloca %struct._GimpItem*, align 8
  %mask2PR = alloca %struct._PixelRegion, align 8
  %tempPR = alloca %struct._PixelRegion, align 8
  %temp_data = alloca i8*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._PixelRegion* %src2PR, %struct._PixelRegion** %src2PR.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store %struct._PixelRegion* %maskPR, %struct._PixelRegion** %maskPR.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  store %struct._GimpItem* %2, %struct._GimpItem** %item, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call2 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %4)
  store %struct._GimpChannel* %call3, %struct._GimpChannel** %mask, align 8
  %5 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %6 = bitcast %struct._GimpChannel* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_drawable_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDrawable*
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp = icmp eq %struct._GimpDrawable* %7, %8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %call6 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %9)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._GimpChannel* null, %struct._GimpChannel** %mask, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %active_components, i32 0, i32 0
  call void @gimp_drawable_get_active_components(%struct._GimpDrawable* %10, i32* %arraydecay)
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call7 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %11)
  %12 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %12, i32 0, i32 10
  %13 = load i32, i32* %bytes, align 4
  %call8 = call i32 @gimp_image_get_combination_mode(i32 %call7, i32 %13)
  store i32 %call8, i32* %operation, align 4
  %14 = load i32, i32* %operation, align 4
  %cmp9 = icmp eq i32 %14, -1
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_drawable_real_replace_region, i32 0, i32 0))
  br label %if.end.179

if.end.11:                                        ; preds = %if.end
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %15, i32* %offset_x, i32* %offset_y)
  %16 = load i32, i32* %x.addr, align 4
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call12 = call i32 @gimp_item_get_width(%struct._GimpItem* %17)
  %cmp13 = icmp sgt i32 %16, %call12
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call14 = call i32 @gimp_item_get_width(%struct._GimpItem* %18)
  br label %cond.end.18

cond.false:                                       ; preds = %if.end.11
  %19 = load i32, i32* %x.addr, align 4
  %cmp15 = icmp slt i32 %19, 0
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.false
  br label %cond.end

cond.false.17:                                    ; preds = %cond.false
  %20 = load i32, i32* %x.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.17, %cond.true.16
  %cond = phi i32 [ 0, %cond.true.16 ], [ %20, %cond.false.17 ]
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.end, %cond.true
  %cond19 = phi i32 [ %call14, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond19, i32* %x1, align 4
  %21 = load i32, i32* %y.addr, align 4
  %22 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call20 = call i32 @gimp_item_get_height(%struct._GimpItem* %22)
  %cmp21 = icmp sgt i32 %21, %call20
  br i1 %cmp21, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %cond.end.18
  %23 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call23 = call i32 @gimp_item_get_height(%struct._GimpItem* %23)
  br label %cond.end.30

cond.false.24:                                    ; preds = %cond.end.18
  %24 = load i32, i32* %y.addr, align 4
  %cmp25 = icmp slt i32 %24, 0
  br i1 %cmp25, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.false.24
  br label %cond.end.28

cond.false.27:                                    ; preds = %cond.false.24
  %25 = load i32, i32* %y.addr, align 4
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.26
  %cond29 = phi i32 [ 0, %cond.true.26 ], [ %25, %cond.false.27 ]
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.end.28, %cond.true.22
  %cond31 = phi i32 [ %call23, %cond.true.22 ], [ %cond29, %cond.end.28 ]
  store i32 %cond31, i32* %y1, align 4
  %26 = load i32, i32* %x.addr, align 4
  %27 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %27, i32 0, i32 8
  %28 = load i32, i32* %w, align 4
  %add = add nsw i32 %26, %28
  %29 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call32 = call i32 @gimp_item_get_width(%struct._GimpItem* %29)
  %cmp33 = icmp sgt i32 %add, %call32
  br i1 %cmp33, label %cond.true.34, label %cond.false.36

cond.true.34:                                     ; preds = %cond.end.30
  %30 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call35 = call i32 @gimp_item_get_width(%struct._GimpItem* %30)
  br label %cond.end.46

cond.false.36:                                    ; preds = %cond.end.30
  %31 = load i32, i32* %x.addr, align 4
  %32 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %w37 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %32, i32 0, i32 8
  %33 = load i32, i32* %w37, align 4
  %add38 = add nsw i32 %31, %33
  %cmp39 = icmp slt i32 %add38, 0
  br i1 %cmp39, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %cond.false.36
  br label %cond.end.44

cond.false.41:                                    ; preds = %cond.false.36
  %34 = load i32, i32* %x.addr, align 4
  %35 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %w42 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %35, i32 0, i32 8
  %36 = load i32, i32* %w42, align 4
  %add43 = add nsw i32 %34, %36
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.41, %cond.true.40
  %cond45 = phi i32 [ 0, %cond.true.40 ], [ %add43, %cond.false.41 ]
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.end.44, %cond.true.34
  %cond47 = phi i32 [ %call35, %cond.true.34 ], [ %cond45, %cond.end.44 ]
  store i32 %cond47, i32* %x2, align 4
  %37 = load i32, i32* %y.addr, align 4
  %38 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %38, i32 0, i32 9
  %39 = load i32, i32* %h, align 4
  %add48 = add nsw i32 %37, %39
  %40 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call49 = call i32 @gimp_item_get_height(%struct._GimpItem* %40)
  %cmp50 = icmp sgt i32 %add48, %call49
  br i1 %cmp50, label %cond.true.51, label %cond.false.53

cond.true.51:                                     ; preds = %cond.end.46
  %41 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call52 = call i32 @gimp_item_get_height(%struct._GimpItem* %41)
  br label %cond.end.63

cond.false.53:                                    ; preds = %cond.end.46
  %42 = load i32, i32* %y.addr, align 4
  %43 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %h54 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %43, i32 0, i32 9
  %44 = load i32, i32* %h54, align 4
  %add55 = add nsw i32 %42, %44
  %cmp56 = icmp slt i32 %add55, 0
  br i1 %cmp56, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.false.53
  br label %cond.end.61

cond.false.58:                                    ; preds = %cond.false.53
  %45 = load i32, i32* %y.addr, align 4
  %46 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %h59 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %46, i32 0, i32 9
  %47 = load i32, i32* %h59, align 4
  %add60 = add nsw i32 %45, %47
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.58, %cond.true.57
  %cond62 = phi i32 [ 0, %cond.true.57 ], [ %add60, %cond.false.58 ]
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.end.61, %cond.true.51
  %cond64 = phi i32 [ %call52, %cond.true.51 ], [ %cond62, %cond.end.61 ]
  store i32 %cond64, i32* %y2, align 4
  %48 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool65 = icmp ne %struct._GimpChannel* %48, null
  br i1 %tobool65, label %if.then.66, label %if.end.132

if.then.66:                                       ; preds = %cond.end.63
  %49 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %50 = bitcast %struct._GimpChannel* %49 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_item_get_type() #4
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call67)
  %51 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpItem*
  store %struct._GimpItem* %51, %struct._GimpItem** %mask_item, align 8
  %52 = load i32, i32* %x1, align 4
  %53 = load %struct._GimpItem*, %struct._GimpItem** %mask_item, align 8
  %call69 = call i32 @gimp_item_get_width(%struct._GimpItem* %53)
  %54 = load i32, i32* %offset_x, align 4
  %sub = sub nsw i32 %call69, %54
  %cmp70 = icmp sgt i32 %52, %sub
  br i1 %cmp70, label %cond.true.71, label %cond.false.74

cond.true.71:                                     ; preds = %if.then.66
  %55 = load %struct._GimpItem*, %struct._GimpItem** %mask_item, align 8
  %call72 = call i32 @gimp_item_get_width(%struct._GimpItem* %55)
  %56 = load i32, i32* %offset_x, align 4
  %sub73 = sub nsw i32 %call72, %56
  br label %cond.end.82

cond.false.74:                                    ; preds = %if.then.66
  %57 = load i32, i32* %x1, align 4
  %58 = load i32, i32* %offset_x, align 4
  %sub75 = sub nsw i32 0, %58
  %cmp76 = icmp slt i32 %57, %sub75
  br i1 %cmp76, label %cond.true.77, label %cond.false.79

cond.true.77:                                     ; preds = %cond.false.74
  %59 = load i32, i32* %offset_x, align 4
  %sub78 = sub nsw i32 0, %59
  br label %cond.end.80

cond.false.79:                                    ; preds = %cond.false.74
  %60 = load i32, i32* %x1, align 4
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.79, %cond.true.77
  %cond81 = phi i32 [ %sub78, %cond.true.77 ], [ %60, %cond.false.79 ]
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.end.80, %cond.true.71
  %cond83 = phi i32 [ %sub73, %cond.true.71 ], [ %cond81, %cond.end.80 ]
  store i32 %cond83, i32* %x1, align 4
  %61 = load i32, i32* %y1, align 4
  %62 = load %struct._GimpItem*, %struct._GimpItem** %mask_item, align 8
  %call84 = call i32 @gimp_item_get_height(%struct._GimpItem* %62)
  %63 = load i32, i32* %offset_y, align 4
  %sub85 = sub nsw i32 %call84, %63
  %cmp86 = icmp sgt i32 %61, %sub85
  br i1 %cmp86, label %cond.true.87, label %cond.false.90

cond.true.87:                                     ; preds = %cond.end.82
  %64 = load %struct._GimpItem*, %struct._GimpItem** %mask_item, align 8
  %call88 = call i32 @gimp_item_get_height(%struct._GimpItem* %64)
  %65 = load i32, i32* %offset_y, align 4
  %sub89 = sub nsw i32 %call88, %65
  br label %cond.end.98

cond.false.90:                                    ; preds = %cond.end.82
  %66 = load i32, i32* %y1, align 4
  %67 = load i32, i32* %offset_y, align 4
  %sub91 = sub nsw i32 0, %67
  %cmp92 = icmp slt i32 %66, %sub91
  br i1 %cmp92, label %cond.true.93, label %cond.false.95

cond.true.93:                                     ; preds = %cond.false.90
  %68 = load i32, i32* %offset_y, align 4
  %sub94 = sub nsw i32 0, %68
  br label %cond.end.96

cond.false.95:                                    ; preds = %cond.false.90
  %69 = load i32, i32* %y1, align 4
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.95, %cond.true.93
  %cond97 = phi i32 [ %sub94, %cond.true.93 ], [ %69, %cond.false.95 ]
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.end.96, %cond.true.87
  %cond99 = phi i32 [ %sub89, %cond.true.87 ], [ %cond97, %cond.end.96 ]
  store i32 %cond99, i32* %y1, align 4
  %70 = load i32, i32* %x2, align 4
  %71 = load %struct._GimpItem*, %struct._GimpItem** %mask_item, align 8
  %call100 = call i32 @gimp_item_get_width(%struct._GimpItem* %71)
  %72 = load i32, i32* %offset_x, align 4
  %sub101 = sub nsw i32 %call100, %72
  %cmp102 = icmp sgt i32 %70, %sub101
  br i1 %cmp102, label %cond.true.103, label %cond.false.106

cond.true.103:                                    ; preds = %cond.end.98
  %73 = load %struct._GimpItem*, %struct._GimpItem** %mask_item, align 8
  %call104 = call i32 @gimp_item_get_width(%struct._GimpItem* %73)
  %74 = load i32, i32* %offset_x, align 4
  %sub105 = sub nsw i32 %call104, %74
  br label %cond.end.114

cond.false.106:                                   ; preds = %cond.end.98
  %75 = load i32, i32* %x2, align 4
  %76 = load i32, i32* %offset_x, align 4
  %sub107 = sub nsw i32 0, %76
  %cmp108 = icmp slt i32 %75, %sub107
  br i1 %cmp108, label %cond.true.109, label %cond.false.111

cond.true.109:                                    ; preds = %cond.false.106
  %77 = load i32, i32* %offset_x, align 4
  %sub110 = sub nsw i32 0, %77
  br label %cond.end.112

cond.false.111:                                   ; preds = %cond.false.106
  %78 = load i32, i32* %x2, align 4
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.111, %cond.true.109
  %cond113 = phi i32 [ %sub110, %cond.true.109 ], [ %78, %cond.false.111 ]
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.end.112, %cond.true.103
  %cond115 = phi i32 [ %sub105, %cond.true.103 ], [ %cond113, %cond.end.112 ]
  store i32 %cond115, i32* %x2, align 4
  %79 = load i32, i32* %y2, align 4
  %80 = load %struct._GimpItem*, %struct._GimpItem** %mask_item, align 8
  %call116 = call i32 @gimp_item_get_height(%struct._GimpItem* %80)
  %81 = load i32, i32* %offset_y, align 4
  %sub117 = sub nsw i32 %call116, %81
  %cmp118 = icmp sgt i32 %79, %sub117
  br i1 %cmp118, label %cond.true.119, label %cond.false.122

cond.true.119:                                    ; preds = %cond.end.114
  %82 = load %struct._GimpItem*, %struct._GimpItem** %mask_item, align 8
  %call120 = call i32 @gimp_item_get_height(%struct._GimpItem* %82)
  %83 = load i32, i32* %offset_y, align 4
  %sub121 = sub nsw i32 %call120, %83
  br label %cond.end.130

cond.false.122:                                   ; preds = %cond.end.114
  %84 = load i32, i32* %y2, align 4
  %85 = load i32, i32* %offset_y, align 4
  %sub123 = sub nsw i32 0, %85
  %cmp124 = icmp slt i32 %84, %sub123
  br i1 %cmp124, label %cond.true.125, label %cond.false.127

cond.true.125:                                    ; preds = %cond.false.122
  %86 = load i32, i32* %offset_y, align 4
  %sub126 = sub nsw i32 0, %86
  br label %cond.end.128

cond.false.127:                                   ; preds = %cond.false.122
  %87 = load i32, i32* %y2, align 4
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.127, %cond.true.125
  %cond129 = phi i32 [ %sub126, %cond.true.125 ], [ %87, %cond.false.127 ]
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.end.128, %cond.true.119
  %cond131 = phi i32 [ %sub121, %cond.true.119 ], [ %cond129, %cond.end.128 ]
  store i32 %cond131, i32* %y2, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %cond.end.130, %cond.end.63
  %88 = load i32, i32* %push_undo.addr, align 4
  %tobool133 = icmp ne i32 %88, 0
  br i1 %tobool133, label %if.then.134, label %if.end.137

if.then.134:                                      ; preds = %if.end.132
  %89 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %90 = load i8*, i8** %undo_desc.addr, align 8
  %91 = load i32, i32* %x1, align 4
  %92 = load i32, i32* %y1, align 4
  %93 = load i32, i32* %x2, align 4
  %94 = load i32, i32* %x1, align 4
  %sub135 = sub nsw i32 %93, %94
  %95 = load i32, i32* %y2, align 4
  %96 = load i32, i32* %y1, align 4
  %sub136 = sub nsw i32 %95, %96
  call void @gimp_drawable_push_undo(%struct._GimpDrawable* %89, i8* %90, i32 %91, i32 %92, i32 %sub135, i32 %sub136, %struct._TileManager* null, i32 0)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.134, %if.end.132
  %97 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call138 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %97)
  %98 = load i32, i32* %x1, align 4
  %99 = load i32, i32* %y1, align 4
  %100 = load i32, i32* %x2, align 4
  %101 = load i32, i32* %x1, align 4
  %sub139 = sub nsw i32 %100, %101
  %102 = load i32, i32* %y2, align 4
  %103 = load i32, i32* %y1, align 4
  %sub140 = sub nsw i32 %102, %103
  call void @pixel_region_init(%struct._PixelRegion* %src1PR, %struct._TileManager* %call138, i32 %98, i32 %99, i32 %sub139, i32 %sub140, i32 0)
  %104 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call141 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %104)
  %105 = load i32, i32* %x1, align 4
  %106 = load i32, i32* %y1, align 4
  %107 = load i32, i32* %x2, align 4
  %108 = load i32, i32* %x1, align 4
  %sub142 = sub nsw i32 %107, %108
  %109 = load i32, i32* %y2, align 4
  %110 = load i32, i32* %y1, align 4
  %sub143 = sub nsw i32 %109, %110
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %call141, i32 %105, i32 %106, i32 %sub142, i32 %sub143, i32 1)
  %111 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %112 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %x144 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %112, i32 0, i32 6
  %113 = load i32, i32* %x144, align 4
  %114 = load i32, i32* %x1, align 4
  %115 = load i32, i32* %x.addr, align 4
  %sub145 = sub nsw i32 %114, %115
  %add146 = add nsw i32 %113, %sub145
  %116 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %y147 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %116, i32 0, i32 7
  %117 = load i32, i32* %y147, align 4
  %118 = load i32, i32* %y1, align 4
  %119 = load i32, i32* %y.addr, align 4
  %sub148 = sub nsw i32 %118, %119
  %add149 = add nsw i32 %117, %sub148
  %120 = load i32, i32* %x2, align 4
  %121 = load i32, i32* %x1, align 4
  %sub150 = sub nsw i32 %120, %121
  %122 = load i32, i32* %y2, align 4
  %123 = load i32, i32* %y1, align 4
  %sub151 = sub nsw i32 %122, %123
  call void @pixel_region_resize(%struct._PixelRegion* %111, i32 %add146, i32 %add149, i32 %sub150, i32 %sub151)
  %124 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool152 = icmp ne %struct._GimpChannel* %124, null
  br i1 %tobool152, label %if.then.153, label %if.else

if.then.153:                                      ; preds = %if.end.137
  %125 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %126 = bitcast %struct._GimpChannel* %125 to %struct._GTypeInstance*
  %call154 = call i64 @gimp_drawable_get_type() #4
  %call155 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call154)
  %127 = bitcast %struct._GTypeInstance* %call155 to %struct._GimpDrawable*
  %call156 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %127)
  %128 = load i32, i32* %x1, align 4
  %129 = load i32, i32* %offset_x, align 4
  %add157 = add nsw i32 %128, %129
  %130 = load i32, i32* %y1, align 4
  %131 = load i32, i32* %offset_y, align 4
  %add158 = add nsw i32 %130, %131
  %132 = load i32, i32* %x2, align 4
  %133 = load i32, i32* %x1, align 4
  %sub159 = sub nsw i32 %132, %133
  %134 = load i32, i32* %y2, align 4
  %135 = load i32, i32* %y1, align 4
  %sub160 = sub nsw i32 %134, %135
  call void @pixel_region_init(%struct._PixelRegion* %mask2PR, %struct._TileManager* %call156, i32 %add157, i32 %add158, i32 %sub159, i32 %sub160, i32 0)
  %136 = load i32, i32* %y2, align 4
  %137 = load i32, i32* %y1, align 4
  %sub161 = sub nsw i32 %136, %137
  %138 = load i32, i32* %x2, align 4
  %139 = load i32, i32* %x1, align 4
  %sub162 = sub nsw i32 %138, %139
  %mul = mul nsw i32 %sub161, %sub162
  %conv = sext i32 %mul to i64
  %call163 = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call163, i8** %temp_data, align 8
  %140 = load i8*, i8** %temp_data, align 8
  %141 = load i32, i32* %x2, align 4
  %142 = load i32, i32* %x1, align 4
  %sub164 = sub nsw i32 %141, %142
  %143 = load i32, i32* %x2, align 4
  %144 = load i32, i32* %x1, align 4
  %sub165 = sub nsw i32 %143, %144
  %145 = load i32, i32* %y2, align 4
  %146 = load i32, i32* %y1, align 4
  %sub166 = sub nsw i32 %145, %146
  call void @pixel_region_init_data(%struct._PixelRegion* %tempPR, i8* %140, i32 1, i32 %sub164, i32 0, i32 0, i32 %sub165, i32 %sub166)
  call void @copy_region(%struct._PixelRegion* %mask2PR, %struct._PixelRegion* %tempPR)
  %147 = load i8*, i8** %temp_data, align 8
  %148 = load i32, i32* %x2, align 4
  %149 = load i32, i32* %x1, align 4
  %sub167 = sub nsw i32 %148, %149
  %150 = load i32, i32* %x2, align 4
  %151 = load i32, i32* %x1, align 4
  %sub168 = sub nsw i32 %150, %151
  %152 = load i32, i32* %y2, align 4
  %153 = load i32, i32* %y1, align 4
  %sub169 = sub nsw i32 %152, %153
  call void @pixel_region_init_data(%struct._PixelRegion* %tempPR, i8* %147, i32 1, i32 %sub167, i32 0, i32 0, i32 %sub168, i32 %sub169)
  %154 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  call void @apply_mask_to_region(%struct._PixelRegion* %tempPR, %struct._PixelRegion* %154, i32 255)
  %155 = load i8*, i8** %temp_data, align 8
  %156 = load i32, i32* %x2, align 4
  %157 = load i32, i32* %x1, align 4
  %sub170 = sub nsw i32 %156, %157
  %158 = load i32, i32* %x2, align 4
  %159 = load i32, i32* %x1, align 4
  %sub171 = sub nsw i32 %158, %159
  %160 = load i32, i32* %y2, align 4
  %161 = load i32, i32* %y1, align 4
  %sub172 = sub nsw i32 %160, %161
  call void @pixel_region_init_data(%struct._PixelRegion* %tempPR, i8* %155, i32 1, i32 %sub170, i32 0, i32 0, i32 %sub171, i32 %sub172)
  %162 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %163 = load double, double* %opacity.addr, align 8
  %mul173 = fmul double %163, 2.559990e+02
  %conv174 = fptoui double %mul173 to i32
  %arraydecay175 = getelementptr inbounds [4 x i32], [4 x i32]* %active_components, i32 0, i32 0
  %164 = load i32, i32* %operation, align 4
  call void @combine_regions_replace(%struct._PixelRegion* %src1PR, %struct._PixelRegion* %162, %struct._PixelRegion* %destPR, %struct._PixelRegion* %tempPR, i8* null, i32 %conv174, i32* %arraydecay175, i32 %164)
  %165 = load i8*, i8** %temp_data, align 8
  call void @g_free(i8* %165)
  br label %if.end.179

if.else:                                          ; preds = %if.end.137
  %166 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %167 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %168 = load double, double* %opacity.addr, align 8
  %mul176 = fmul double %168, 2.559990e+02
  %conv177 = fptoui double %mul176 to i32
  %arraydecay178 = getelementptr inbounds [4 x i32], [4 x i32]* %active_components, i32 0, i32 0
  %169 = load i32, i32* %operation, align 4
  call void @combine_regions_replace(%struct._PixelRegion* %src1PR, %struct._PixelRegion* %166, %struct._PixelRegion* %destPR, %struct._PixelRegion* %167, i8* null, i32 %conv177, i32* %arraydecay178, i32 %169)
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.10, %if.else, %if.then.153
  ret void
}

declare noalias i8* @g_malloc(i64) #1

declare void @pixel_region_init_data(%struct._PixelRegion*, i8*, i32, i32, i32, i32, i32, i32) #1

declare void @apply_mask_to_region(%struct._PixelRegion*, %struct._PixelRegion*, i32) #1

declare void @combine_regions_replace(%struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*, i8*, i32, i32*, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
