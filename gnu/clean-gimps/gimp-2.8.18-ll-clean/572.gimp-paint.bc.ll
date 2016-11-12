; ModuleID = './app/paint/gimp-paint.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { {}*, {}*, {}*, {}*, {}*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, {}* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i8*, %struct._GimpPaintOptions* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }
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

@gimp_paint_init.register_funcs = private unnamed_addr constant [11 x void (%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*)*] [void (%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*)* @gimp_dodge_burn_register, void (%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*)* @gimp_smudge_register, void (%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*)* @gimp_convolve_register, void (%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*)* @gimp_perspective_clone_register, void (%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*)* @gimp_heal_register, void (%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*)* @gimp_clone_register, void (%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*)* @gimp_ink_register, void (%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*)* @gimp_airbrush_register, void (%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*)* @gimp_eraser_register, void (%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*)* @gimp_paintbrush_register, void (%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*)* @gimp_pencil_register], align 16
@.str = private unnamed_addr constant [11 x i8] c"Gimp-Paint\00", align 1
@__func__.gimp_paint_init = private unnamed_addr constant [16 x i8] c"gimp_paint_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"paint infos\00", align 1
@__func__.gimp_paint_exit = private unnamed_addr constant [16 x i8] c"gimp_paint_exit\00", align 1
@__func__.gimp_paint_register = private unnamed_addr constant [20 x i8] c"gimp_paint_register\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"g_type_is_a (paint_type, GIMP_TYPE_PAINT_CORE)\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"g_type_is_a (paint_options_type, GIMP_TYPE_PAINT_OPTIONS)\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"identifier != NULL\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"blurb != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_paint_init(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %register_funcs = alloca [11 x void (%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*)*], align 16
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = bitcast [11 x void (%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*)*]* %register_funcs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([11 x void (%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*)*]* @gimp_paint_init.register_funcs to i8*), i64 88, i32 16, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %2 = bitcast %struct._Gimp* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_paint_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_paint_info_get_type() #5
  %call12 = call %struct._GimpContainer* @gimp_list_new(i64 %call11, i32 0)
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %paint_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 21
  store %struct._GimpContainer* %call12, %struct._GimpContainer** %paint_info_list, align 8
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %paint_info_list13 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 21
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_info_list13, align 8
  %17 = bitcast %struct._GimpContainer* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_object_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %paint_info_list16 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 21
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_info_list16, align 8
  call void @gimp_container_freeze(%struct._GimpContainer* %20)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %21 = load i32, i32* %i, align 4
  %conv = sext i32 %21 to i64
  %cmp17 = icmp ult i64 %conv, 11
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds [11 x void (%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*)*], [11 x void (%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*)*]* %register_funcs, i32 0, i64 %idxprom
  %23 = load void (%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*)*, void (%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*)** %arrayidx, align 8
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void %23(%struct._Gimp* %24, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* @gimp_paint_register)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %paint_info_list19 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %26, i32 0, i32 21
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_info_list19, align 8
  call void @gimp_container_thaw(%struct._GimpContainer* %27)
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  ret void
}

declare void @gimp_dodge_burn_register(%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*) #1

declare void @gimp_smudge_register(%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*) #1

declare void @gimp_convolve_register(%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*) #1

declare void @gimp_perspective_clone_register(%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*) #1

declare void @gimp_heal_register(%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*) #1

declare void @gimp_clone_register(%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*) #1

declare void @gimp_ink_register(%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*) #1

declare void @gimp_airbrush_register(%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*) #1

declare void @gimp_eraser_register(%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*) #1

declare void @gimp_paintbrush_register(%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*) #1

declare void @gimp_pencil_register(%struct._Gimp*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #3

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GimpContainer* @gimp_list_new(i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_info_get_type() #3

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #3

declare void @gimp_container_freeze(%struct._GimpContainer*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_register(%struct._Gimp* %gimp, i64 %paint_type, i64 %paint_options_type, i8* %identifier, i8* %blurb, i8* %stock_id) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %paint_type.addr = alloca i64, align 8
  %paint_options_type.addr = alloca i64, align 8
  %identifier.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %paint_info = alloca %struct._GimpPaintInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i64 %paint_type, i64* %paint_type.addr, align 8
  store i64 %paint_options_type, i64* %paint_options_type.addr, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_paint_register, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.46

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i64, i64* %paint_type.addr, align 8
  %call12 = call i64 @gimp_paint_core_get_type() #5
  %call13 = call i32 @g_type_is_a(i64 %13, i64 %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.11
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_paint_register, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.46

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %14 = load i64, i64* %paint_options_type.addr, align 8
  %call20 = call i64 @gimp_paint_options_get_type() #5
  %call21 = call i32 @g_type_is_a(i64 %14, i64 %call20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.19
  br label %if.end.25

if.else.24:                                       ; preds = %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_paint_register, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.46

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %15 = load i8*, i8** %identifier.addr, align 8
  %cmp28 = icmp ne i8* %15, null
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.27
  br label %if.end.31

if.else.30:                                       ; preds = %do.body.27
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_paint_register, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.46

if.end.31:                                        ; preds = %if.then.29
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %do.body.33

do.body.33:                                       ; preds = %do.end.32
  %16 = load i8*, i8** %blurb.addr, align 8
  %cmp34 = icmp ne i8* %16, null
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.33
  br label %if.end.37

if.else.36:                                       ; preds = %do.body.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_paint_register, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.46

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %18 = load i64, i64* %paint_type.addr, align 8
  %19 = load i64, i64* %paint_options_type.addr, align 8
  %20 = load i8*, i8** %identifier.addr, align 8
  %21 = load i8*, i8** %blurb.addr, align 8
  %22 = load i8*, i8** %stock_id.addr, align 8
  %call39 = call %struct._GimpPaintInfo* @gimp_paint_info_new(%struct._Gimp* %17, i64 %18, i64 %19, i8* %20, i8* %21, i8* %22)
  store %struct._GimpPaintInfo* %call39, %struct._GimpPaintInfo** %paint_info, align 8
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %paint_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %23, i32 0, i32 21
  %24 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_info_list, align 8
  %25 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %26 = bitcast %struct._GimpPaintInfo* %25 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_object_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call40)
  %27 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpObject*
  %call42 = call i32 @gimp_container_add(%struct._GimpContainer* %24, %struct._GimpObject* %27)
  %28 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %29 = bitcast %struct._GimpPaintInfo* %28 to i8*
  call void @g_object_unref(i8* %29)
  %30 = load i64, i64* %paint_type.addr, align 8
  %call43 = call i64 @gimp_paintbrush_get_type() #5
  %cmp44 = icmp eq i64 %30, %call43
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %do.end.38
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %32 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  call void @gimp_paint_info_set_standard(%struct._Gimp* %31, %struct._GimpPaintInfo* %32)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.9, %if.else.16, %if.else.24, %if.else.30, %if.else.36, %if.then.45, %do.end.38
  ret void
}

declare void @gimp_container_thaw(%struct._GimpContainer*) #1

; Function Attrs: nounwind uwtable
define void @gimp_paint_exit(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_paint_exit, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.16

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_paint_info_set_standard(%struct._Gimp* %13, %struct._GimpPaintInfo* null)
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %paint_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 21
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_info_list, align 8
  %tobool11 = icmp ne %struct._GimpContainer* %15, null
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %do.end
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %paint_info_list13 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %16, i32 0, i32 21
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_info_list13, align 8
  call void @gimp_container_foreach(%struct._GimpContainer* %17, void (i8*, i8*)* bitcast (void (%struct._GObject*)* @g_object_run_dispose to void (i8*, i8*)*), i8* null)
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %paint_info_list14 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 21
  %19 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_info_list14, align 8
  %20 = bitcast %struct._GimpContainer* %19 to i8*
  call void @g_object_unref(i8* %20)
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %paint_info_list15 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %21, i32 0, i32 21
  store %struct._GimpContainer* null, %struct._GimpContainer** %paint_info_list15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

declare void @gimp_paint_info_set_standard(%struct._Gimp*, %struct._GimpPaintInfo*) #1

declare void @gimp_container_foreach(%struct._GimpContainer*, void (i8*, i8*)*, i8*) #1

declare void @g_object_run_dispose(%struct._GObject*) #1

declare void @g_object_unref(i8*) #1

declare i32 @g_type_is_a(i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_core_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_options_get_type() #3

declare %struct._GimpPaintInfo* @gimp_paint_info_new(%struct._Gimp*, i64, i64, i8*, i8*, i8*) #1

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paintbrush_get_type() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
