; ModuleID = './app/core/gimpimage-guides.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpGuide = type { %struct._GObject, i32, i32, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
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
%struct._GimpUndo = type opaque
%struct._GimpImagePrivate = type { i32, %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure*, i8*, i8*, i32, i32, double, double, i32, i32, i8*, i32, %struct._GimpPalette*, i32, i32, i32, i32, i32, i32, i32, %struct._GimpProjection*, %struct._GeglNode*, %struct._GList*, %struct._GimpGrid*, %struct._GList*, %struct._GimpItemTree*, %struct._GimpItemTree*, %struct._GimpItemTree*, %struct._GSList*, i32, i32, i32, %struct._GimpLayer*, %struct._GimpChannel*, %struct._GimpParasiteList*, [4 x i32], [4 x i32], i32, i32, %struct._GimpRGB, %struct._GimpUndoStack*, %struct._GimpUndoStack*, i32, i32, %struct._TempBuf*, %struct._GimpImageFlushAccumulator }
%struct._GimpPlugInProcedure = type opaque
%struct._GimpPalette = type opaque
%struct._GimpProjection = type opaque
%struct._GeglNode = type opaque
%struct._GimpGrid = type opaque
%struct._GimpItemTree = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpLayer = type opaque
%struct._GimpChannel = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpUndoStack = type opaque
%struct._TempBuf = type opaque
%struct._GimpImageFlushAccumulator = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_add_hguide = private unnamed_addr constant [22 x i8] c"gimp_image_add_hguide\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"position >= 0 && position <= gimp_image_get_height (image)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"undo-type\04Add Horizontal Guide\00", align 1
@__func__.gimp_image_add_vguide = private unnamed_addr constant [22 x i8] c"gimp_image_add_vguide\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"position >= 0 && position <= gimp_image_get_width (image)\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"undo-type\04Add Vertical Guide\00", align 1
@__func__.gimp_image_add_guide = private unnamed_addr constant [21 x i8] c"gimp_image_add_guide\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"GIMP_IS_GUIDE (guide)\00", align 1
@__func__.gimp_image_remove_guide = private unnamed_addr constant [24 x i8] c"gimp_image_remove_guide\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"undo-type\04Remove Guide\00", align 1
@__func__.gimp_image_move_guide = private unnamed_addr constant [22 x i8] c"gimp_image_move_guide\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"position >= 0\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"position <= gimp_image_get_height (image)\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"position <= gimp_image_get_width (image)\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"undo-type\04Move Guide\00", align 1
@__func__.gimp_image_get_guides = private unnamed_addr constant [22 x i8] c"gimp_image_get_guides\00", align 1
@__func__.gimp_image_get_guide = private unnamed_addr constant [21 x i8] c"gimp_image_get_guide\00", align 1
@__func__.gimp_image_get_next_guide = private unnamed_addr constant [26 x i8] c"gimp_image_get_next_guide\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"guide_found != NULL\00", align 1
@__func__.gimp_image_find_guide = private unnamed_addr constant [22 x i8] c"gimp_image_find_guide\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"epsilon_x > 0 && epsilon_y > 0\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpGuide* @gimp_image_add_hguide(%struct._GimpImage* %image, i32 %position, i32 %push_undo) #0 {
entry:
  %retval = alloca %struct._GimpGuide*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %position.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %guide = alloca %struct._GimpGuide*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_add_hguide, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpGuide* null, %struct._GimpGuide** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %position.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.17

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %position.addr, align 4
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call14 = call i32 @gimp_image_get_height(%struct._GimpImage* %15)
  %cmp15 = icmp sle i32 %14, %call14
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %land.lhs.true.13
  br label %if.end.18

if.else.17:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_add_hguide, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpGuide* null, %struct._GimpGuide** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %16, i32 0, i32 1
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %next_guide_ID = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 27
  %18 = load i32, i32* %next_guide_ID, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %next_guide_ID, align 4
  %call20 = call %struct._GimpGuide* @gimp_guide_new(i32 0, i32 %18)
  store %struct._GimpGuide* %call20, %struct._GimpGuide** %guide, align 8
  %19 = load i32, i32* %push_undo.addr, align 4
  %tobool21 = icmp ne i32 %19, 0
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %do.end.19
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call23 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i64 10)
  %21 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call24 = call %struct._GimpUndo* @gimp_image_undo_push_guide(%struct._GimpImage* %20, i8* %call23, %struct._GimpGuide* %21)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %do.end.19
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %23 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %24 = load i32, i32* %position.addr, align 4
  call void @gimp_image_add_guide(%struct._GimpImage* %22, %struct._GimpGuide* %23, i32 %24)
  %25 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %26 = bitcast %struct._GimpGuide* %25 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 80)
  %27 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  %28 = bitcast %struct._GObject* %27 to i8*
  call void @g_object_unref(i8* %28)
  %29 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  store %struct._GimpGuide* %29, %struct._GimpGuide** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.else.17, %if.else.9
  %30 = load %struct._GimpGuide*, %struct._GimpGuide** %retval
  ret %struct._GimpGuide* %30
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare %struct._GimpGuide* @gimp_guide_new(i32, i32) #3

declare %struct._GimpUndo* @gimp_image_undo_push_guide(%struct._GimpImage*, i8*, %struct._GimpGuide*) #3

declare i8* @g_dpgettext(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @gimp_image_add_guide(%struct._GimpImage* %image, %struct._GimpGuide* %guide, i32 %position) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %guide.addr = alloca %struct._GimpGuide*, align 8
  %position.addr = alloca i32, align 4
  %private = alloca %struct._GimpImagePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpGuide* %guide, %struct._GimpGuide** %guide.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_image_add_guide, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  %14 = bitcast %struct._GimpGuide* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_guide_get_type() #4
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_image_add_guide, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %27 = bitcast %struct._GimpImage* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_image_get_type() #4
  %call40 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast i8* %call40 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %28, %struct._GimpImagePrivate** %private, align 8
  %29 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %guides = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %29, i32 0, i32 24
  %30 = load %struct._GList*, %struct._GList** %guides, align 8
  %31 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  %32 = bitcast %struct._GimpGuide* %31 to i8*
  %call41 = call %struct._GList* @g_list_prepend(%struct._GList* %30, i8* %32)
  %33 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %guides42 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %33, i32 0, i32 24
  store %struct._GList* %call41, %struct._GList** %guides42, align 8
  %34 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  %35 = load i32, i32* %position.addr, align 4
  call void @gimp_guide_set_position(%struct._GimpGuide* %34, i32 %35)
  %36 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  %37 = bitcast %struct._GimpGuide* %36 to %struct._GTypeInstance*
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 80)
  %38 = bitcast %struct._GTypeInstance* %call43 to %struct._GObject*
  %39 = bitcast %struct._GObject* %38 to i8*
  %call44 = call i8* @g_object_ref(i8* %39)
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %41 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  call void @gimp_image_guide_added(%struct._GimpImage* %40, %struct._GimpGuide* %41)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

declare void @g_object_unref(i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind uwtable
define %struct._GimpGuide* @gimp_image_add_vguide(%struct._GimpImage* %image, i32 %position, i32 %push_undo) #0 {
entry:
  %retval = alloca %struct._GimpGuide*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %position.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %guide = alloca %struct._GimpGuide*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_add_vguide, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpGuide* null, %struct._GimpGuide** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %position.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.17

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %position.addr, align 4
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call14 = call i32 @gimp_image_get_width(%struct._GimpImage* %15)
  %cmp15 = icmp sle i32 %14, %call14
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %land.lhs.true.13
  br label %if.end.18

if.else.17:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_add_vguide, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpGuide* null, %struct._GimpGuide** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %16, i32 0, i32 1
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %next_guide_ID = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 27
  %18 = load i32, i32* %next_guide_ID, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %next_guide_ID, align 4
  %call20 = call %struct._GimpGuide* @gimp_guide_new(i32 1, i32 %18)
  store %struct._GimpGuide* %call20, %struct._GimpGuide** %guide, align 8
  %19 = load i32, i32* %push_undo.addr, align 4
  %tobool21 = icmp ne i32 %19, 0
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %do.end.19
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call23 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i64 10)
  %21 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call24 = call %struct._GimpUndo* @gimp_image_undo_push_guide(%struct._GimpImage* %20, i8* %call23, %struct._GimpGuide* %21)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %do.end.19
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %23 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %24 = load i32, i32* %position.addr, align 4
  call void @gimp_image_add_guide(%struct._GimpImage* %22, %struct._GimpGuide* %23, i32 %24)
  %25 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %26 = bitcast %struct._GimpGuide* %25 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 80)
  %27 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  %28 = bitcast %struct._GObject* %27 to i8*
  call void @g_object_unref(i8* %28)
  %29 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  store %struct._GimpGuide* %29, %struct._GimpGuide** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.else.17, %if.else.9
  %30 = load %struct._GimpGuide*, %struct._GimpGuide** %retval
  ret %struct._GimpGuide* %30
}

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_guide_get_type() #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #3

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #3

declare void @gimp_guide_set_position(%struct._GimpGuide*, i32) #3

declare i8* @g_object_ref(i8*) #3

declare void @gimp_image_guide_added(%struct._GimpImage*, %struct._GimpGuide*) #3

; Function Attrs: nounwind uwtable
define void @gimp_image_remove_guide(%struct._GimpImage* %image, %struct._GimpGuide* %guide, i32 %push_undo) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %guide.addr = alloca %struct._GimpGuide*, align 8
  %push_undo.addr = alloca i32, align 4
  %private = alloca %struct._GimpImagePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpGuide* %guide, %struct._GimpGuide** %guide.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_image_remove_guide, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  %14 = bitcast %struct._GimpGuide* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_guide_get_type() #4
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_image_remove_guide, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %27 = bitcast %struct._GimpImage* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_image_get_type() #4
  %call40 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast i8* %call40 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %28, %struct._GimpImagePrivate** %private, align 8
  %29 = load i32, i32* %push_undo.addr, align 4
  %tobool41 = icmp ne i32 %29, 0
  br i1 %tobool41, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %do.end.38
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call43 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i64 10)
  %31 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  %call44 = call %struct._GimpUndo* @gimp_image_undo_push_guide(%struct._GimpImage* %30, i8* %call43, %struct._GimpGuide* %31)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %do.end.38
  %32 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %guides = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %32, i32 0, i32 24
  %33 = load %struct._GList*, %struct._GList** %guides, align 8
  %34 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  %35 = bitcast %struct._GimpGuide* %34 to i8*
  %call46 = call %struct._GList* @g_list_remove(%struct._GList* %33, i8* %35)
  %36 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %guides47 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %36, i32 0, i32 24
  store %struct._GList* %call46, %struct._GList** %guides47, align 8
  %37 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  call void @gimp_guide_removed(%struct._GimpGuide* %37)
  %38 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %39 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  call void @gimp_image_guide_removed(%struct._GimpImage* %38, %struct._GimpGuide* %39)
  %40 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  call void @gimp_guide_set_position(%struct._GimpGuide* %40, i32 -1)
  %41 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  %42 = bitcast %struct._GimpGuide* %41 to %struct._GTypeInstance*
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 80)
  %43 = bitcast %struct._GTypeInstance* %call48 to %struct._GObject*
  %44 = bitcast %struct._GObject* %43 to i8*
  call void @g_object_unref(i8* %44)
  br label %return

return:                                           ; preds = %if.end.45, %if.else.36, %if.else.9
  ret void
}

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #3

declare void @gimp_guide_removed(%struct._GimpGuide*) #3

declare void @gimp_image_guide_removed(%struct._GimpImage*, %struct._GimpGuide*) #3

; Function Attrs: nounwind uwtable
define void @gimp_image_move_guide(%struct._GimpImage* %image, %struct._GimpGuide* %guide, i32 %position, i32 %push_undo) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %guide.addr = alloca %struct._GimpGuide*, align 8
  %position.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpGuide* %guide, %struct._GimpGuide** %guide.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_move_guide, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  %14 = bitcast %struct._GimpGuide* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_guide_get_type() #4
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_move_guide, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i32, i32* %position.addr, align 4
  %cmp40 = icmp sge i32 %26, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_move_guide, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  %call45 = call i32 @gimp_guide_get_orientation(%struct._GimpGuide* %27)
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.55

if.then.47:                                       ; preds = %do.end.44
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %28 = load i32, i32* %position.addr, align 4
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call49 = call i32 @gimp_image_get_height(%struct._GimpImage* %29)
  %cmp50 = icmp sle i32 %28, %call49
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.body.48
  br label %if.end.53

if.else.52:                                       ; preds = %do.body.48
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_move_guide, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.53:                                        ; preds = %if.then.51
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %if.end.63

if.else.55:                                       ; preds = %do.end.44
  br label %do.body.56

do.body.56:                                       ; preds = %if.else.55
  %30 = load i32, i32* %position.addr, align 4
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call57 = call i32 @gimp_image_get_width(%struct._GimpImage* %31)
  %cmp58 = icmp sle i32 %30, %call57
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body.56
  br label %if.end.61

if.else.60:                                       ; preds = %do.body.56
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_move_guide, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.61:                                        ; preds = %if.then.59
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %if.end.63

if.end.63:                                        ; preds = %do.end.62, %do.end.54
  %32 = load i32, i32* %push_undo.addr, align 4
  %tobool64 = icmp ne i32 %32, 0
  br i1 %tobool64, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %if.end.63
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call66 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i64 10)
  %34 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  %call67 = call %struct._GimpUndo* @gimp_image_undo_push_guide(%struct._GimpImage* %33, i8* %call66, %struct._GimpGuide* %34)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %if.end.63
  %35 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  %36 = load i32, i32* %position.addr, align 4
  call void @gimp_guide_set_position(%struct._GimpGuide* %35, i32 %36)
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %38 = load %struct._GimpGuide*, %struct._GimpGuide** %guide.addr, align 8
  call void @gimp_image_guide_moved(%struct._GimpImage* %37, %struct._GimpGuide* %38)
  br label %return

return:                                           ; preds = %if.end.68, %if.else.60, %if.else.52, %if.else.42, %if.else.36, %if.else.9
  ret void
}

declare i32 @gimp_guide_get_orientation(%struct._GimpGuide*) #3

declare void @gimp_image_guide_moved(%struct._GimpImage*, %struct._GimpGuide*) #3

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_image_get_guides(%struct._GimpImage* %image) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_get_guides, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_get_type() #4
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagePrivate*
  %guides = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %15, i32 0, i32 24
  %16 = load %struct._GList*, %struct._GList** %guides, align 8
  store %struct._GList* %16, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %17
}

; Function Attrs: nounwind uwtable
define %struct._GimpGuide* @gimp_image_get_guide(%struct._GimpImage* %image, i32 %id) #0 {
entry:
  %retval = alloca %struct._GimpGuide*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %id.addr = alloca i32, align 4
  %guides = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %guide = alloca %struct._GimpGuide*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %id, i32* %id.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_image_get_guide, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpGuide* null, %struct._GimpGuide** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_get_type() #4
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagePrivate*
  %guides13 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %15, i32 0, i32 24
  %16 = load %struct._GList*, %struct._GList** %guides13, align 8
  store %struct._GList* %16, %struct._GList** %guides, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %17 = load %struct._GList*, %struct._GList** %guides, align 8
  %tobool14 = icmp ne %struct._GList* %17, null
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %guides, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpGuide*
  store %struct._GimpGuide* %20, %struct._GimpGuide** %guide, align 8
  %21 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call16 = call i32 @gimp_guide_get_ID(%struct._GimpGuide* %21)
  %22 = load i32, i32* %id.addr, align 4
  %cmp17 = icmp eq i32 %call16, %22
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.22

land.lhs.true.18:                                 ; preds = %for.body
  %23 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call19 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %23)
  %cmp20 = icmp sge i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true.18
  %24 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  store %struct._GimpGuide* %24, %struct._GimpGuide** %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true.18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %25 = load %struct._GList*, %struct._GList** %guides, align 8
  %tobool23 = icmp ne %struct._GList* %25, null
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %26 = load %struct._GList*, %struct._GList** %guides, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 1
  %27 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %27, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %guides, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._GimpGuide* null, %struct._GimpGuide** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.21, %if.else.9
  %28 = load %struct._GimpGuide*, %struct._GimpGuide** %retval
  ret %struct._GimpGuide* %28
}

declare i32 @gimp_guide_get_ID(%struct._GimpGuide*) #3

declare i32 @gimp_guide_get_position(%struct._GimpGuide*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpGuide* @gimp_image_get_next_guide(%struct._GimpImage* %image, i32 %id, i32* %guide_found) #0 {
entry:
  %retval = alloca %struct._GimpGuide*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %id.addr = alloca i32, align 4
  %guide_found.addr = alloca i32*, align 8
  %guides = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %guide = alloca %struct._GimpGuide*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %id, i32* %id.addr, align 4
  store i32* %guide_found, i32** %guide_found.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_image_get_next_guide, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpGuide* null, %struct._GimpGuide** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %guide_found.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_image_get_next_guide, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GimpGuide* null, %struct._GimpGuide** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load i32, i32* %id.addr, align 4
  %cmp17 = icmp eq i32 %14, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.end.16
  %15 = load i32*, i32** %guide_found.addr, align 8
  store i32 1, i32* %15, align 4
  br label %if.end.20

if.else.19:                                       ; preds = %do.end.16
  %16 = load i32*, i32** %guide_found.addr, align 8
  store i32 0, i32* %16, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.18
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %18 = bitcast %struct._GimpImage* %17 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_image_get_type() #4
  %call22 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %18, i64 %call21)
  %19 = bitcast i8* %call22 to %struct._GimpImagePrivate*
  %guides23 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %19, i32 0, i32 24
  %20 = load %struct._GList*, %struct._GList** %guides23, align 8
  store %struct._GList* %20, %struct._GList** %guides, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.20
  %21 = load %struct._GList*, %struct._GList** %guides, align 8
  %tobool24 = icmp ne %struct._GList* %21, null
  br i1 %tobool24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct._GList*, %struct._GList** %guides, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8
  %24 = bitcast i8* %23 to %struct._GimpGuide*
  store %struct._GimpGuide* %24, %struct._GimpGuide** %guide, align 8
  %25 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call26 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %25)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body
  br label %for.inc

if.end.29:                                        ; preds = %for.body
  %26 = load i32*, i32** %guide_found.addr, align 8
  %27 = load i32, i32* %26, align 4
  %tobool30 = icmp ne i32 %27, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  %28 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  store %struct._GimpGuide* %28, %struct._GimpGuide** %retval
  br label %return

if.end.32:                                        ; preds = %if.end.29
  %29 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call33 = call i32 @gimp_guide_get_ID(%struct._GimpGuide* %29)
  %30 = load i32, i32* %id.addr, align 4
  %cmp34 = icmp eq i32 %call33, %30
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  %31 = load i32*, i32** %guide_found.addr, align 8
  store i32 1, i32* %31, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.32
  br label %for.inc

for.inc:                                          ; preds = %if.end.36, %if.then.28
  %32 = load %struct._GList*, %struct._GList** %guides, align 8
  %tobool37 = icmp ne %struct._GList* %32, null
  br i1 %tobool37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %33 = load %struct._GList*, %struct._GList** %guides, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 1
  %34 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %34, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %guides, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._GimpGuide* null, %struct._GimpGuide** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.31, %if.else.14, %if.else.9
  %35 = load %struct._GimpGuide*, %struct._GimpGuide** %retval
  ret %struct._GimpGuide* %35
}

; Function Attrs: nounwind uwtable
define %struct._GimpGuide* @gimp_image_find_guide(%struct._GimpImage* %image, double %x, double %y, double %epsilon_x, double %epsilon_y) #0 {
entry:
  %retval = alloca %struct._GimpGuide*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %epsilon_x.addr = alloca double, align 8
  %epsilon_y.addr = alloca double, align 8
  %list = alloca %struct._GList*, align 8
  %ret = alloca %struct._GimpGuide*, align 8
  %mindist = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %guide = alloca %struct._GimpGuide*, align 8
  %position = alloca i32, align 4
  %dist = alloca double, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %epsilon_x, double* %epsilon_x.addr, align 8
  store double %epsilon_y, double* %epsilon_y.addr, align 8
  store %struct._GimpGuide* null, %struct._GimpGuide** %ret, align 8
  store double 0x7FEFFFFFFFFFFFFF, double* %mindist, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_find_guide, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpGuide* null, %struct._GimpGuide** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load double, double* %epsilon_x.addr, align 8
  %cmp12 = fcmp ogt double %13, 0.000000e+00
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load double, double* %epsilon_y.addr, align 8
  %cmp14 = fcmp ogt double %14, 0.000000e+00
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_find_guide, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GimpGuide* null, %struct._GimpGuide** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %16 = bitcast %struct._GimpImage* %15 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_image_get_type() #4
  %call20 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %16, i64 %call19)
  %17 = bitcast i8* %call20 to %struct._GimpImagePrivate*
  %guides = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %17, i32 0, i32 24
  %18 = load %struct._GList*, %struct._GList** %guides, align 8
  store %struct._GList* %18, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.78, %do.end.18
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool21 = icmp ne %struct._GList* %19, null
  br i1 %tobool21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %22 = bitcast i8* %21 to %struct._GimpGuide*
  store %struct._GimpGuide* %22, %struct._GimpGuide** %guide, align 8
  %23 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call24 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %23)
  store i32 %call24, i32* %position, align 4
  %24 = load i32, i32* %position, align 4
  %cmp26 = icmp slt i32 %24, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body
  br label %for.inc

if.end.28:                                        ; preds = %for.body
  %25 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call29 = call i32 @gimp_guide_get_orientation(%struct._GimpGuide* %25)
  switch i32 %call29, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.47
  ]

sw.bb:                                            ; preds = %if.end.28
  %26 = load i32, i32* %position, align 4
  %conv = sitofp i32 %26 to double
  %27 = load double, double* %y.addr, align 8
  %sub = fsub double %conv, %27
  %cmp30 = fcmp olt double %sub, 0.000000e+00
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %28 = load i32, i32* %position, align 4
  %conv32 = sitofp i32 %28 to double
  %29 = load double, double* %y.addr, align 8
  %sub33 = fsub double %conv32, %29
  %sub34 = fsub double -0.000000e+00, %sub33
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %30 = load i32, i32* %position, align 4
  %conv35 = sitofp i32 %30 to double
  %31 = load double, double* %y.addr, align 8
  %sub36 = fsub double %conv35, %31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub34, %cond.true ], [ %sub36, %cond.false ]
  store double %cond, double* %dist, align 8
  %32 = load double, double* %dist, align 8
  %33 = load double, double* %epsilon_y.addr, align 8
  %34 = load double, double* %mindist, align 8
  %cmp37 = fcmp olt double %33, %34
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.end
  %35 = load double, double* %epsilon_y.addr, align 8
  br label %cond.end.41

cond.false.40:                                    ; preds = %cond.end
  %36 = load double, double* %mindist, align 8
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.39
  %cond42 = phi double [ %35, %cond.true.39 ], [ %36, %cond.false.40 ]
  %cmp43 = fcmp olt double %32, %cond42
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %cond.end.41
  %37 = load double, double* %dist, align 8
  store double %37, double* %mindist, align 8
  %38 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  store %struct._GimpGuide* %38, %struct._GimpGuide** %ret, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %cond.end.41
  br label %sw.epilog

sw.bb.47:                                         ; preds = %if.end.28
  %39 = load i32, i32* %position, align 4
  %conv48 = sitofp i32 %39 to double
  %40 = load double, double* %x.addr, align 8
  %sub49 = fsub double %conv48, %40
  %cmp50 = fcmp olt double %sub49, 0.000000e+00
  br i1 %cmp50, label %cond.true.52, label %cond.false.56

cond.true.52:                                     ; preds = %sw.bb.47
  %41 = load i32, i32* %position, align 4
  %conv53 = sitofp i32 %41 to double
  %42 = load double, double* %x.addr, align 8
  %sub54 = fsub double %conv53, %42
  %sub55 = fsub double -0.000000e+00, %sub54
  br label %cond.end.59

cond.false.56:                                    ; preds = %sw.bb.47
  %43 = load i32, i32* %position, align 4
  %conv57 = sitofp i32 %43 to double
  %44 = load double, double* %x.addr, align 8
  %sub58 = fsub double %conv57, %44
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.56, %cond.true.52
  %cond60 = phi double [ %sub55, %cond.true.52 ], [ %sub58, %cond.false.56 ]
  store double %cond60, double* %dist, align 8
  %45 = load double, double* %dist, align 8
  %46 = load double, double* %epsilon_x.addr, align 8
  %47 = load double, double* %mindist, align 8
  %48 = load double, double* %epsilon_y.addr, align 8
  %div = fdiv double %47, %48
  %49 = load double, double* %epsilon_x.addr, align 8
  %mul = fmul double %div, %49
  %cmp61 = fcmp olt double %46, %mul
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.end.59
  %50 = load double, double* %epsilon_x.addr, align 8
  br label %cond.end.67

cond.false.64:                                    ; preds = %cond.end.59
  %51 = load double, double* %mindist, align 8
  %52 = load double, double* %epsilon_y.addr, align 8
  %div65 = fdiv double %51, %52
  %53 = load double, double* %epsilon_x.addr, align 8
  %mul66 = fmul double %div65, %53
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.64, %cond.true.63
  %cond68 = phi double [ %50, %cond.true.63 ], [ %mul66, %cond.false.64 ]
  %cmp69 = fcmp olt double %45, %cond68
  br i1 %cmp69, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %cond.end.67
  %54 = load double, double* %dist, align 8
  %55 = load double, double* %epsilon_y.addr, align 8
  %mul72 = fmul double %54, %55
  %56 = load double, double* %epsilon_x.addr, align 8
  %div73 = fdiv double %mul72, %56
  store double %div73, double* %mindist, align 8
  %57 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  store %struct._GimpGuide* %57, %struct._GimpGuide** %ret, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.71, %cond.end.67
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.28
  br label %for.inc

sw.epilog:                                        ; preds = %if.end.74, %if.end.46
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %sw.default, %if.then.27
  %58 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool75 = icmp ne %struct._GList* %58, null
  br i1 %tobool75, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %for.inc
  %59 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %59, i32 0, i32 1
  %60 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.78

cond.false.77:                                    ; preds = %for.inc
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.77, %cond.true.76
  %cond79 = phi %struct._GList* [ %60, %cond.true.76 ], [ null, %cond.false.77 ]
  store %struct._GList* %cond79, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %61 = load %struct._GimpGuide*, %struct._GimpGuide** %ret, align 8
  store %struct._GimpGuide* %61, %struct._GimpGuide** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.16, %if.else.9
  %62 = load %struct._GimpGuide*, %struct._GimpGuide** %retval
  ret %struct._GimpGuide* %62
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
