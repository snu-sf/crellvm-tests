; ModuleID = './app/core/gimpimage-sample-points.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpSamplePoint = type { i32, i32, i32, i32 }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
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
@__func__.gimp_image_add_sample_point_at_pos = private unnamed_addr constant [35 x i8] c"gimp_image_add_sample_point_at_pos\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"x >= 0 && x < gimp_image_get_width (image)\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"y >= 0 && y < gimp_image_get_height (image)\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"undo-type\04Add Sample Point\00", align 1
@__func__.gimp_image_add_sample_point = private unnamed_addr constant [28 x i8] c"gimp_image_add_sample_point\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"sample_point != NULL\00", align 1
@__func__.gimp_image_remove_sample_point = private unnamed_addr constant [31 x i8] c"gimp_image_remove_sample_point\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"undo-type\04Remove Sample Point\00", align 1
@__func__.gimp_image_move_sample_point = private unnamed_addr constant [29 x i8] c"gimp_image_move_sample_point\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"x >= 0\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"y >= 0\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"x < gimp_image_get_width (image)\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"y < gimp_image_get_height (image)\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"undo-type\04Move Sample Point\00", align 1
@__func__.gimp_image_get_sample_points = private unnamed_addr constant [29 x i8] c"gimp_image_get_sample_points\00", align 1
@__func__.gimp_image_find_sample_point = private unnamed_addr constant [29 x i8] c"gimp_image_find_sample_point\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"epsilon_x > 0 && epsilon_y > 0\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpSamplePoint* @gimp_image_add_sample_point_at_pos(%struct._GimpImage* %image, i32 %x, i32 %y, i32 %push_undo) #0 {
entry:
  %retval = alloca %struct._GimpSamplePoint*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %sample_point = alloca %struct._GimpSamplePoint*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_image_add_sample_point_at_pos, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpSamplePoint* null, %struct._GimpSamplePoint** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %x.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.17

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %x.addr, align 4
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call14 = call i32 @gimp_image_get_width(%struct._GimpImage* %15)
  %cmp15 = icmp slt i32 %14, %call14
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %land.lhs.true.13
  br label %if.end.18

if.else.17:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_image_add_sample_point_at_pos, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpSamplePoint* null, %struct._GimpSamplePoint** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load i32, i32* %y.addr, align 4
  %cmp21 = icmp sge i32 %16, 0
  br i1 %cmp21, label %land.lhs.true.22, label %if.else.26

land.lhs.true.22:                                 ; preds = %do.body.20
  %17 = load i32, i32* %y.addr, align 4
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call23 = call i32 @gimp_image_get_height(%struct._GimpImage* %18)
  %cmp24 = icmp slt i32 %17, %call23
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %land.lhs.true.22
  br label %if.end.27

if.else.26:                                       ; preds = %land.lhs.true.22, %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_image_add_sample_point_at_pos, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpSamplePoint* null, %struct._GimpSamplePoint** %retval
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %19, i32 0, i32 1
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %next_sample_point_ID = getelementptr inbounds %struct._Gimp, %struct._Gimp* %20, i32 0, i32 28
  %21 = load i32, i32* %next_sample_point_ID, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %next_sample_point_ID, align 4
  %call29 = call %struct._GimpSamplePoint* @gimp_sample_point_new(i32 %21)
  store %struct._GimpSamplePoint* %call29, %struct._GimpSamplePoint** %sample_point, align 8
  %22 = load i32, i32* %push_undo.addr, align 4
  %tobool30 = icmp ne i32 %22, 0
  br i1 %tobool30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %do.end.28
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call32 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i64 10)
  %24 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %call33 = call %struct._GimpUndo* @gimp_image_undo_push_sample_point(%struct._GimpImage* %23, i8* %call32, %struct._GimpSamplePoint* %24)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %do.end.28
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %26 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %27 = load i32, i32* %x.addr, align 4
  %28 = load i32, i32* %y.addr, align 4
  call void @gimp_image_add_sample_point(%struct._GimpImage* %25, %struct._GimpSamplePoint* %26, i32 %27, i32 %28)
  %29 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  call void @gimp_sample_point_unref(%struct._GimpSamplePoint* %29)
  %30 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  store %struct._GimpSamplePoint* %30, %struct._GimpSamplePoint** %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.else.26, %if.else.17, %if.else.9
  %31 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %retval
  ret %struct._GimpSamplePoint* %31
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare %struct._GimpSamplePoint* @gimp_sample_point_new(i32) #3

declare %struct._GimpUndo* @gimp_image_undo_push_sample_point(%struct._GimpImage*, i8*, %struct._GimpSamplePoint*) #3

declare i8* @g_dpgettext(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @gimp_image_add_sample_point(%struct._GimpImage* %image, %struct._GimpSamplePoint* %sample_point, i32 %x, i32 %y) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %sample_point.addr = alloca %struct._GimpSamplePoint*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %private = alloca %struct._GimpImagePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpSamplePoint* %sample_point, %struct._GimpSamplePoint** %sample_point.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_add_sample_point, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %cmp12 = icmp ne %struct._GimpSamplePoint* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_add_sample_point, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_image_get_type() #5
  %call18 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast i8* %call18 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %16, %struct._GimpImagePrivate** %private, align 8
  %17 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %sample_points = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %17, i32 0, i32 26
  %18 = load %struct._GList*, %struct._GList** %sample_points, align 8
  %19 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %20 = bitcast %struct._GimpSamplePoint* %19 to i8*
  %call19 = call %struct._GList* @g_list_append(%struct._GList* %18, i8* %20)
  %21 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %sample_points20 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %21, i32 0, i32 26
  store %struct._GList* %call19, %struct._GList** %sample_points20, align 8
  %22 = load i32, i32* %x.addr, align 4
  %23 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %x21 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %23, i32 0, i32 2
  store i32 %22, i32* %x21, align 4
  %24 = load i32, i32* %y.addr, align 4
  %25 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %y22 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %25, i32 0, i32 3
  store i32 %24, i32* %y22, align 4
  %26 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %call23 = call %struct._GimpSamplePoint* @gimp_sample_point_ref(%struct._GimpSamplePoint* %26)
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %28 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  call void @gimp_image_sample_point_added(%struct._GimpImage* %27, %struct._GimpSamplePoint* %28)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

declare void @gimp_sample_point_unref(%struct._GimpSamplePoint*) #3

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #3

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #3

declare %struct._GimpSamplePoint* @gimp_sample_point_ref(%struct._GimpSamplePoint*) #3

declare void @gimp_image_sample_point_added(%struct._GimpImage*, %struct._GimpSamplePoint*) #3

; Function Attrs: nounwind uwtable
define void @gimp_image_remove_sample_point(%struct._GimpImage* %image, %struct._GimpSamplePoint* %sample_point, i32 %push_undo) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %sample_point.addr = alloca %struct._GimpSamplePoint*, align 8
  %push_undo.addr = alloca i32, align 4
  %private = alloca %struct._GimpImagePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpSamplePoint* %sample_point, %struct._GimpSamplePoint** %sample_point.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_image_remove_sample_point, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %cmp12 = icmp ne %struct._GimpSamplePoint* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_image_remove_sample_point, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_image_get_type() #5
  %call18 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast i8* %call18 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %16, %struct._GimpImagePrivate** %private, align 8
  %17 = load i32, i32* %push_undo.addr, align 4
  %tobool19 = icmp ne i32 %17, 0
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %do.end.16
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call21 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i64 10)
  %19 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %call22 = call %struct._GimpUndo* @gimp_image_undo_push_sample_point(%struct._GimpImage* %18, i8* %call21, %struct._GimpSamplePoint* %19)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %do.end.16
  %20 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %sample_points = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %20, i32 0, i32 26
  %21 = load %struct._GList*, %struct._GList** %sample_points, align 8
  %22 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %23 = bitcast %struct._GimpSamplePoint* %22 to i8*
  %call24 = call %struct._GList* @g_list_remove(%struct._GList* %21, i8* %23)
  %24 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %sample_points25 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %24, i32 0, i32 26
  store %struct._GList* %call24, %struct._GList** %sample_points25, align 8
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %26 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  call void @gimp_image_sample_point_removed(%struct._GimpImage* %25, %struct._GimpSamplePoint* %26)
  %27 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %x = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %27, i32 0, i32 2
  store i32 -1, i32* %x, align 4
  %28 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %y = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %28, i32 0, i32 3
  store i32 -1, i32* %y, align 4
  %29 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  call void @gimp_sample_point_unref(%struct._GimpSamplePoint* %29)
  br label %return

return:                                           ; preds = %if.end.23, %if.else.14, %if.else.9
  ret void
}

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #3

declare void @gimp_image_sample_point_removed(%struct._GimpImage*, %struct._GimpSamplePoint*) #3

; Function Attrs: nounwind uwtable
define void @gimp_image_move_sample_point(%struct._GimpImage* %image, %struct._GimpSamplePoint* %sample_point, i32 %x, i32 %y, i32 %push_undo) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %sample_point.addr = alloca %struct._GimpSamplePoint*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpSamplePoint* %sample_point, %struct._GimpSamplePoint** %sample_point.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_move_sample_point, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %cmp12 = icmp ne %struct._GimpSamplePoint* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_move_sample_point, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i32, i32* %x.addr, align 4
  %cmp18 = icmp sge i32 %14, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_move_sample_point, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %15 = load i32, i32* %y.addr, align 4
  %cmp24 = icmp sge i32 %15, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_move_sample_point, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %16 = load i32, i32* %x.addr, align 4
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call30 = call i32 @gimp_image_get_width(%struct._GimpImage* %17)
  %cmp31 = icmp slt i32 %16, %call30
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.29
  br label %if.end.34

if.else.33:                                       ; preds = %do.body.29
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_move_sample_point, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.34:                                        ; preds = %if.then.32
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %do.body.36

do.body.36:                                       ; preds = %do.end.35
  %18 = load i32, i32* %y.addr, align 4
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call37 = call i32 @gimp_image_get_height(%struct._GimpImage* %19)
  %cmp38 = icmp slt i32 %18, %call37
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.36
  br label %if.end.41

if.else.40:                                       ; preds = %do.body.36
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_move_sample_point, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.41:                                        ; preds = %if.then.39
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  %20 = load i32, i32* %push_undo.addr, align 4
  %tobool43 = icmp ne i32 %20, 0
  br i1 %tobool43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %do.end.42
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call45 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i64 10)
  %22 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %call46 = call %struct._GimpUndo* @gimp_image_undo_push_sample_point(%struct._GimpImage* %21, i8* %call45, %struct._GimpSamplePoint* %22)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %do.end.42
  %23 = load i32, i32* %x.addr, align 4
  %24 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %x48 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %24, i32 0, i32 2
  store i32 %23, i32* %x48, align 4
  %25 = load i32, i32* %y.addr, align 4
  %26 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %y49 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %26, i32 0, i32 3
  store i32 %25, i32* %y49, align 4
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %28 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  call void @gimp_image_sample_point_moved(%struct._GimpImage* %27, %struct._GimpSamplePoint* %28)
  br label %return

return:                                           ; preds = %if.end.47, %if.else.40, %if.else.33, %if.else.26, %if.else.20, %if.else.14, %if.else.9
  ret void
}

declare void @gimp_image_sample_point_moved(%struct._GimpImage*, %struct._GimpSamplePoint*) #3

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage* %image) #0 {
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
  %call = call i64 @gimp_image_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_get_sample_points, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_get_type() #5
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImagePrivate*
  %sample_points = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %15, i32 0, i32 26
  %16 = load %struct._GList*, %struct._GList** %sample_points, align 8
  store %struct._GList* %16, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %17
}

; Function Attrs: nounwind uwtable
define %struct._GimpSamplePoint* @gimp_image_find_sample_point(%struct._GimpImage* %image, double %x, double %y, double %epsilon_x, double %epsilon_y) #0 {
entry:
  %retval = alloca %struct._GimpSamplePoint*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %epsilon_x.addr = alloca double, align 8
  %epsilon_y.addr = alloca double, align 8
  %list = alloca %struct._GList*, align 8
  %ret = alloca %struct._GimpSamplePoint*, align 8
  %mindist = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %sample_point = alloca %struct._GimpSamplePoint*, align 8
  %dist = alloca double, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %epsilon_x, double* %epsilon_x.addr, align 8
  store double %epsilon_y, double* %epsilon_y.addr, align 8
  store %struct._GimpSamplePoint* null, %struct._GimpSamplePoint** %ret, align 8
  store double 0x7FEFFFFFFFFFFFFF, double* %mindist, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_find_sample_point, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpSamplePoint* null, %struct._GimpSamplePoint** %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_find_sample_point, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GimpSamplePoint* null, %struct._GimpSamplePoint** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %15 = load double, double* %x.addr, align 8
  %cmp19 = fcmp olt double %15, 0.000000e+00
  br i1 %cmp19, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.18
  %16 = load double, double* %x.addr, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call20 = call i32 @gimp_image_get_width(%struct._GimpImage* %17)
  %conv = sitofp i32 %call20 to double
  %cmp21 = fcmp oge double %16, %conv
  br i1 %cmp21, label %if.then.31, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false
  %18 = load double, double* %y.addr, align 8
  %cmp24 = fcmp olt double %18, 0.000000e+00
  br i1 %cmp24, label %if.then.31, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.23
  %19 = load double, double* %y.addr, align 8
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call27 = call i32 @gimp_image_get_height(%struct._GimpImage* %20)
  %conv28 = sitofp i32 %call27 to double
  %cmp29 = fcmp oge double %19, %conv28
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false.26, %lor.lhs.false.23, %lor.lhs.false, %do.end.18
  store %struct._GimpSamplePoint* null, %struct._GimpSamplePoint** %retval
  br label %return

if.end.32:                                        ; preds = %lor.lhs.false.26
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %22 = bitcast %struct._GimpImage* %21 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_image_get_type() #5
  %call34 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %22, i64 %call33)
  %23 = bitcast i8* %call34 to %struct._GimpImagePrivate*
  %sample_points = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %23, i32 0, i32 26
  %24 = load %struct._GList*, %struct._GList** %sample_points, align 8
  store %struct._GList* %24, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.63, %if.end.32
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool35 = icmp ne %struct._GList* %25, null
  br i1 %tobool35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8
  %28 = bitcast i8* %27 to %struct._GimpSamplePoint*
  store %struct._GimpSamplePoint* %28, %struct._GimpSamplePoint** %sample_point, align 8
  %29 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x38 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %29, i32 0, i32 2
  %30 = load i32, i32* %x38, align 4
  %cmp39 = icmp slt i32 %30, 0
  br i1 %cmp39, label %if.then.45, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %for.body
  %31 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y42 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %31, i32 0, i32 3
  %32 = load i32, i32* %y42, align 4
  %cmp43 = icmp slt i32 %32, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %lor.lhs.false.41, %for.body
  br label %for.inc

if.end.46:                                        ; preds = %lor.lhs.false.41
  %33 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x47 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %33, i32 0, i32 2
  %34 = load i32, i32* %x47, align 4
  %conv48 = sitofp i32 %34 to double
  %add = fadd double %conv48, 5.000000e-01
  %35 = load double, double* %x.addr, align 8
  %sub = fsub double %add, %35
  %36 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y49 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %36, i32 0, i32 3
  %37 = load i32, i32* %y49, align 4
  %conv50 = sitofp i32 %37 to double
  %add51 = fadd double %conv50, 5.000000e-01
  %38 = load double, double* %y.addr, align 8
  %sub52 = fsub double %add51, %38
  %call53 = call double @hypot(double %sub, double %sub52) #7
  store double %call53, double* %dist, align 8
  %39 = load double, double* %dist, align 8
  %40 = load double, double* %epsilon_y.addr, align 8
  %41 = load double, double* %mindist, align 8
  %cmp54 = fcmp olt double %40, %41
  br i1 %cmp54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.46
  %42 = load double, double* %epsilon_y.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.46
  %43 = load double, double* %mindist, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %42, %cond.true ], [ %43, %cond.false ]
  %cmp56 = fcmp olt double %39, %cond
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %cond.end
  %44 = load double, double* %dist, align 8
  store double %44, double* %mindist, align 8
  %45 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  store %struct._GimpSamplePoint* %45, %struct._GimpSamplePoint** %ret, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.59, %if.then.45
  %46 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool60 = icmp ne %struct._GList* %46, null
  br i1 %tobool60, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %for.inc
  %47 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %47, i32 0, i32 1
  %48 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.63

cond.false.62:                                    ; preds = %for.inc
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.61
  %cond64 = phi %struct._GList* [ %48, %cond.true.61 ], [ null, %cond.false.62 ]
  store %struct._GList* %cond64, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %ret, align 8
  store %struct._GimpSamplePoint* %49, %struct._GimpSamplePoint** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.31, %if.else.16, %if.else.9
  %50 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %retval
  ret %struct._GimpSamplePoint* %50
}

; Function Attrs: nounwind
declare double @hypot(double, double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
