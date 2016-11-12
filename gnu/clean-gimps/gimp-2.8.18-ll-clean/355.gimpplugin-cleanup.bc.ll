; ModuleID = './app/plug-in/gimpplugin-cleanup.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugIn = type { %struct._GimpObject, %struct._GimpPlugInManager*, i8*, i32, i8, i32, %struct._GIOChannel*, %struct._GIOChannel*, %struct._GIOChannel*, %struct._GIOChannel*, i32, [512 x i8], i32, %struct._GSList*, %struct._GMainLoop*, %struct._GimpPlugInProcFrame, %struct._GList*, %struct._GimpPlugInDef* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GMainLoop = type opaque
%struct._GimpPlugInProcFrame = type { i32, %struct._GimpContext*, %struct._GList*, %struct._GimpProcedure*, %struct._GMainLoop*, %struct._GValueArray*, %struct._GimpProgress*, i32, i64, i32, %struct._GList*, %struct._GList* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpPlugInDef = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpPlugInCleanupImage = type { %struct._GimpImage*, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpPlugInCleanupItem = type { %struct._GimpItem*, i32, i32 }
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_plug_in_cleanup_undo_group_start = private unnamed_addr constant [38 x i8] c"gimp_plug_in_cleanup_undo_group_start\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GIMP_IS_PLUG_IN (plug_in)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@__func__.gimp_plug_in_cleanup_undo_group_end = private unnamed_addr constant [36 x i8] c"gimp_plug_in_cleanup_undo_group_end\00", align 1
@__func__.gimp_plug_in_cleanup_add_shadow = private unnamed_addr constant [32 x i8] c"gimp_plug_in_cleanup_add_shadow\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@__func__.gimp_plug_in_cleanup_remove_shadow = private unnamed_addr constant [35 x i8] c"gimp_plug_in_cleanup_remove_shadow\00", align 1
@__func__.gimp_plug_in_cleanup = private unnamed_addr constant [21 x i8] c"gimp_plug_in_cleanup\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"proc_frame != NULL\00", align 1
@.str.5 = private unnamed_addr constant [78 x i8] c"Plug-In '%s' left image undo in inconsistent state, closing open undo groups.\00", align 1
@gimp_log_flags = external global i32, align 4
@__func__.gimp_plug_in_cleanup_item = private unnamed_addr constant [26 x i8] c"gimp_plug_in_cleanup_item\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"Freeing shadow tiles of drawable '%s' on behalf of '%s'.\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_cleanup_undo_group_start(%struct._GimpPlugIn* %plug_in, %struct._GimpImage* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %cleanup = alloca %struct._GimpPlugInCleanupImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_plug_in_cleanup_undo_group_start, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_image_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_plug_in_cleanup_undo_group_start, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call39 = call %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn* %26)
  store %struct._GimpPlugInProcFrame* %call39, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %27 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call40 = call %struct._GimpPlugInCleanupImage* @gimp_plug_in_cleanup_image_get(%struct._GimpPlugInProcFrame* %27, %struct._GimpImage* %28)
  store %struct._GimpPlugInCleanupImage* %call40, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  %29 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  %tobool41 = icmp ne %struct._GimpPlugInCleanupImage* %29, null
  br i1 %tobool41, label %if.end.47, label %if.then.42

if.then.42:                                       ; preds = %do.end.38
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call43 = call %struct._GimpPlugInCleanupImage* @gimp_plug_in_cleanup_image_new(%struct._GimpImage* %30)
  store %struct._GimpPlugInCleanupImage* %call43, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call44 = call i32 @gimp_image_get_undo_group_count(%struct._GimpImage* %31)
  %32 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  %undo_group_count = getelementptr inbounds %struct._GimpPlugInCleanupImage, %struct._GimpPlugInCleanupImage* %32, i32 0, i32 2
  store i32 %call44, i32* %undo_group_count, align 4
  %33 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %image_cleanups = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %33, i32 0, i32 10
  %34 = load %struct._GList*, %struct._GList** %image_cleanups, align 8
  %35 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  %36 = bitcast %struct._GimpPlugInCleanupImage* %35 to i8*
  %call45 = call %struct._GList* @g_list_prepend(%struct._GList* %34, i8* %36)
  %37 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %image_cleanups46 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %37, i32 0, i32 10
  store %struct._GList* %call45, %struct._GList** %image_cleanups46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.42, %do.end.38
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.else.36, %if.else.9
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

declare %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn*) #3

; Function Attrs: nounwind uwtable
define internal %struct._GimpPlugInCleanupImage* @gimp_plug_in_cleanup_image_get(%struct._GimpPlugInProcFrame* %proc_frame, %struct._GimpImage* %image) #0 {
entry:
  %retval = alloca %struct._GimpPlugInCleanupImage*, align 8
  %proc_frame.addr = alloca %struct._GimpPlugInProcFrame*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %list = alloca %struct._GList*, align 8
  %cleanup = alloca %struct._GimpPlugInCleanupImage*, align 8
  store %struct._GimpPlugInProcFrame* %proc_frame, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %image_cleanups = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %0, i32 0, i32 10
  %1 = load %struct._GList*, %struct._GList** %image_cleanups, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpPlugInCleanupImage*
  store %struct._GimpPlugInCleanupImage* %5, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  %6 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  %image1 = getelementptr inbounds %struct._GimpPlugInCleanupImage, %struct._GimpPlugInCleanupImage* %6, i32 0, i32 0
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image1, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp = icmp eq %struct._GimpImage* %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  store %struct._GimpPlugInCleanupImage* %9, %struct._GimpPlugInCleanupImage** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool2 = icmp ne %struct._GList* %10, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %12, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._GimpPlugInCleanupImage* null, %struct._GimpPlugInCleanupImage** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %retval
  ret %struct._GimpPlugInCleanupImage* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpPlugInCleanupImage* @gimp_plug_in_cleanup_image_new(%struct._GimpImage* %image) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %cleanup = alloca %struct._GimpPlugInCleanupImage*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 16)
  %0 = bitcast i8* %call to %struct._GimpPlugInCleanupImage*
  store %struct._GimpPlugInCleanupImage* %0, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %2 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  %image1 = getelementptr inbounds %struct._GimpPlugInCleanupImage, %struct._GimpPlugInCleanupImage* %2, i32 0, i32 0
  store %struct._GimpImage* %1, %struct._GimpImage** %image1, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call2 = call i32 @gimp_image_get_ID(%struct._GimpImage* %3)
  %4 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  %image_ID = getelementptr inbounds %struct._GimpPlugInCleanupImage, %struct._GimpPlugInCleanupImage* %4, i32 0, i32 1
  store i32 %call2, i32* %image_ID, align 4
  %5 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  ret %struct._GimpPlugInCleanupImage* %5
}

declare i32 @gimp_image_get_undo_group_count(%struct._GimpImage*) #3

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_cleanup_undo_group_end(%struct._GimpPlugIn* %plug_in, %struct._GimpImage* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %cleanup = alloca %struct._GimpPlugInCleanupImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_plug_in_cleanup_undo_group_end, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_image_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_plug_in_cleanup_undo_group_end, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call39 = call %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn* %26)
  store %struct._GimpPlugInProcFrame* %call39, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %27 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call40 = call %struct._GimpPlugInCleanupImage* @gimp_plug_in_cleanup_image_get(%struct._GimpPlugInProcFrame* %27, %struct._GimpImage* %28)
  store %struct._GimpPlugInCleanupImage* %call40, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  %29 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  %tobool41 = icmp ne %struct._GimpPlugInCleanupImage* %29, null
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %do.end.38
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %do.end.38
  %30 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  %undo_group_count = getelementptr inbounds %struct._GimpPlugInCleanupImage, %struct._GimpPlugInCleanupImage* %30, i32 0, i32 2
  %31 = load i32, i32* %undo_group_count, align 4
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call44 = call i32 @gimp_image_get_undo_group_count(%struct._GimpImage* %32)
  %sub = sub nsw i32 %call44, 1
  %cmp45 = icmp eq i32 %31, %sub
  br i1 %cmp45, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.end.43
  %33 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %image_cleanups = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %33, i32 0, i32 10
  %34 = load %struct._GList*, %struct._GList** %image_cleanups, align 8
  %35 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  %36 = bitcast %struct._GimpPlugInCleanupImage* %35 to i8*
  %call47 = call %struct._GList* @g_list_remove(%struct._GList* %34, i8* %36)
  %37 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %image_cleanups48 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %37, i32 0, i32 10
  store %struct._GList* %call47, %struct._GList** %image_cleanups48, align 8
  %38 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  call void @gimp_plug_in_cleanup_image_free(%struct._GimpPlugInCleanupImage* %38)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.end.43
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then.42, %if.else.36, %if.else.9
  %39 = load i32, i32* %retval
  ret i32 %39
}

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_cleanup_image_free(%struct._GimpPlugInCleanupImage* %cleanup) #0 {
entry:
  %cleanup.addr = alloca %struct._GimpPlugInCleanupImage*, align 8
  store %struct._GimpPlugInCleanupImage* %cleanup, %struct._GimpPlugInCleanupImage** %cleanup.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %cleanup.addr, align 8
  %1 = bitcast %struct._GimpPlugInCleanupImage* %0 to i8*
  call void @g_slice_free1(i64 16, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_cleanup_add_shadow(%struct._GimpPlugIn* %plug_in, %struct._GimpDrawable* %drawable) #0 {
entry:
  %retval = alloca i32, align 4
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %cleanup = alloca %struct._GimpPlugInCleanupItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_plug_in_cleanup_add_shadow, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_drawable_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_plug_in_cleanup_add_shadow, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call39 = call %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn* %26)
  store %struct._GimpPlugInProcFrame* %call39, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %27 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %29 = bitcast %struct._GimpDrawable* %28 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call40)
  %30 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call %struct._GimpPlugInCleanupItem* @gimp_plug_in_cleanup_item_get(%struct._GimpPlugInProcFrame* %27, %struct._GimpItem* %30)
  store %struct._GimpPlugInCleanupItem* %call42, %struct._GimpPlugInCleanupItem** %cleanup, align 8
  %31 = load %struct._GimpPlugInCleanupItem*, %struct._GimpPlugInCleanupItem** %cleanup, align 8
  %tobool43 = icmp ne %struct._GimpPlugInCleanupItem* %31, null
  br i1 %tobool43, label %if.end.50, label %if.then.44

if.then.44:                                       ; preds = %do.end.38
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %33 = bitcast %struct._GimpDrawable* %32 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_item_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call45)
  %34 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpItem*
  %call47 = call %struct._GimpPlugInCleanupItem* @gimp_plug_in_cleanup_item_new(%struct._GimpItem* %34)
  store %struct._GimpPlugInCleanupItem* %call47, %struct._GimpPlugInCleanupItem** %cleanup, align 8
  %35 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %item_cleanups = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %35, i32 0, i32 11
  %36 = load %struct._GList*, %struct._GList** %item_cleanups, align 8
  %37 = load %struct._GimpPlugInCleanupItem*, %struct._GimpPlugInCleanupItem** %cleanup, align 8
  %38 = bitcast %struct._GimpPlugInCleanupItem* %37 to i8*
  %call48 = call %struct._GList* @g_list_prepend(%struct._GList* %36, i8* %38)
  %39 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %item_cleanups49 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %39, i32 0, i32 11
  store %struct._GList* %call48, %struct._GList** %item_cleanups49, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.44, %do.end.38
  %40 = load %struct._GimpPlugInCleanupItem*, %struct._GimpPlugInCleanupItem** %cleanup, align 8
  %shadow_tiles = getelementptr inbounds %struct._GimpPlugInCleanupItem, %struct._GimpPlugInCleanupItem* %40, i32 0, i32 2
  store i32 1, i32* %shadow_tiles, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.else.36, %if.else.9
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpPlugInCleanupItem* @gimp_plug_in_cleanup_item_get(%struct._GimpPlugInProcFrame* %proc_frame, %struct._GimpItem* %item) #0 {
entry:
  %retval = alloca %struct._GimpPlugInCleanupItem*, align 8
  %proc_frame.addr = alloca %struct._GimpPlugInProcFrame*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %list = alloca %struct._GList*, align 8
  %cleanup = alloca %struct._GimpPlugInCleanupItem*, align 8
  store %struct._GimpPlugInProcFrame* %proc_frame, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %item_cleanups = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %0, i32 0, i32 11
  %1 = load %struct._GList*, %struct._GList** %item_cleanups, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpPlugInCleanupItem*
  store %struct._GimpPlugInCleanupItem* %5, %struct._GimpPlugInCleanupItem** %cleanup, align 8
  %6 = load %struct._GimpPlugInCleanupItem*, %struct._GimpPlugInCleanupItem** %cleanup, align 8
  %item1 = getelementptr inbounds %struct._GimpPlugInCleanupItem, %struct._GimpPlugInCleanupItem* %6, i32 0, i32 0
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item1, align 8
  %8 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %cmp = icmp eq %struct._GimpItem* %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %struct._GimpPlugInCleanupItem*, %struct._GimpPlugInCleanupItem** %cleanup, align 8
  store %struct._GimpPlugInCleanupItem* %9, %struct._GimpPlugInCleanupItem** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool2 = icmp ne %struct._GList* %10, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %12, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._GimpPlugInCleanupItem* null, %struct._GimpPlugInCleanupItem** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load %struct._GimpPlugInCleanupItem*, %struct._GimpPlugInCleanupItem** %retval
  ret %struct._GimpPlugInCleanupItem* %13
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpPlugInCleanupItem* @gimp_plug_in_cleanup_item_new(%struct._GimpItem* %item) #0 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %cleanup = alloca %struct._GimpPlugInCleanupItem*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 16)
  %0 = bitcast i8* %call to %struct._GimpPlugInCleanupItem*
  store %struct._GimpPlugInCleanupItem* %0, %struct._GimpPlugInCleanupItem** %cleanup, align 8
  %1 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %2 = load %struct._GimpPlugInCleanupItem*, %struct._GimpPlugInCleanupItem** %cleanup, align 8
  %item1 = getelementptr inbounds %struct._GimpPlugInCleanupItem, %struct._GimpPlugInCleanupItem* %2, i32 0, i32 0
  store %struct._GimpItem* %1, %struct._GimpItem** %item1, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call2 = call i32 @gimp_item_get_ID(%struct._GimpItem* %3)
  %4 = load %struct._GimpPlugInCleanupItem*, %struct._GimpPlugInCleanupItem** %cleanup, align 8
  %item_ID = getelementptr inbounds %struct._GimpPlugInCleanupItem, %struct._GimpPlugInCleanupItem* %4, i32 0, i32 1
  store i32 %call2, i32* %item_ID, align 4
  %5 = load %struct._GimpPlugInCleanupItem*, %struct._GimpPlugInCleanupItem** %cleanup, align 8
  ret %struct._GimpPlugInCleanupItem* %5
}

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_cleanup_remove_shadow(%struct._GimpPlugIn* %plug_in, %struct._GimpDrawable* %drawable) #0 {
entry:
  %retval = alloca i32, align 4
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %cleanup = alloca %struct._GimpPlugInCleanupItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_plug_in_cleanup_remove_shadow, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_drawable_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_plug_in_cleanup_remove_shadow, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %call39 = call %struct._GimpPlugInProcFrame* @gimp_plug_in_get_proc_frame(%struct._GimpPlugIn* %26)
  store %struct._GimpPlugInProcFrame* %call39, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %27 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %29 = bitcast %struct._GimpDrawable* %28 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call40)
  %30 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call %struct._GimpPlugInCleanupItem* @gimp_plug_in_cleanup_item_get(%struct._GimpPlugInProcFrame* %27, %struct._GimpItem* %30)
  store %struct._GimpPlugInCleanupItem* %call42, %struct._GimpPlugInCleanupItem** %cleanup, align 8
  %31 = load %struct._GimpPlugInCleanupItem*, %struct._GimpPlugInCleanupItem** %cleanup, align 8
  %tobool43 = icmp ne %struct._GimpPlugInCleanupItem* %31, null
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %do.end.38
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %do.end.38
  %32 = load %struct._GimpPlugInCleanupItem*, %struct._GimpPlugInCleanupItem** %cleanup, align 8
  %shadow_tiles = getelementptr inbounds %struct._GimpPlugInCleanupItem, %struct._GimpPlugInCleanupItem* %32, i32 0, i32 2
  %33 = load i32, i32* %shadow_tiles, align 4
  %tobool46 = icmp ne i32 %33, 0
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.end.45
  store i32 0, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.end.45
  %34 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %item_cleanups = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %34, i32 0, i32 11
  %35 = load %struct._GList*, %struct._GList** %item_cleanups, align 8
  %36 = load %struct._GimpPlugInCleanupItem*, %struct._GimpPlugInCleanupItem** %cleanup, align 8
  %37 = bitcast %struct._GimpPlugInCleanupItem* %36 to i8*
  %call49 = call %struct._GList* @g_list_remove(%struct._GList* %35, i8* %37)
  %38 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %item_cleanups50 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %38, i32 0, i32 11
  store %struct._GList* %call49, %struct._GList** %item_cleanups50, align 8
  %39 = load %struct._GimpPlugInCleanupItem*, %struct._GimpPlugInCleanupItem** %cleanup, align 8
  call void @gimp_plug_in_cleanup_item_free(%struct._GimpPlugInCleanupItem* %39)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.then.47, %if.then.44, %if.else.36, %if.else.9
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_cleanup_item_free(%struct._GimpPlugInCleanupItem* %cleanup) #0 {
entry:
  %cleanup.addr = alloca %struct._GimpPlugInCleanupItem*, align 8
  store %struct._GimpPlugInCleanupItem* %cleanup, %struct._GimpPlugInCleanupItem** %cleanup.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInCleanupItem*, %struct._GimpPlugInCleanupItem** %cleanup.addr, align 8
  %1 = bitcast %struct._GimpPlugInCleanupItem* %0 to i8*
  call void @g_slice_free1(i64 16, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_cleanup(%struct._GimpPlugIn* %plug_in, %struct._GimpPlugInProcFrame* %proc_frame) #0 {
entry:
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %proc_frame.addr = alloca %struct._GimpPlugInProcFrame*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup = alloca %struct._GimpPlugInCleanupImage*, align 8
  %cleanup30 = alloca %struct._GimpPlugInCleanupItem*, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  store %struct._GimpPlugInProcFrame* %proc_frame, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %1 = bitcast %struct._GimpPlugIn* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_plug_in_cleanup, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %cmp12 = icmp ne %struct._GimpPlugInProcFrame* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_plug_in_cleanup, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %image_cleanups = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %14, i32 0, i32 10
  %15 = load %struct._GList*, %struct._GList** %image_cleanups, align 8
  store %struct._GList* %15, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.16
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %16, null
  br i1 %tobool17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GimpPlugInCleanupImage*
  store %struct._GimpPlugInCleanupImage* %19, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  %20 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %20, i32 0, i32 1
  %21 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %21, i32 0, i32 1
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %23 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  %image_ID = getelementptr inbounds %struct._GimpPlugInCleanupImage, %struct._GimpPlugInCleanupImage* %23, i32 0, i32 1
  %24 = load i32, i32* %image_ID, align 4
  %call19 = call %struct._GimpImage* @gimp_image_get_by_ID(%struct._Gimp* %22, i32 %24)
  %25 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  %image = getelementptr inbounds %struct._GimpPlugInCleanupImage, %struct._GimpPlugInCleanupImage* %25, i32 0, i32 0
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp20 = icmp eq %struct._GimpImage* %call19, %26
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body
  %27 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %28 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  call void @gimp_plug_in_cleanup_image(%struct._GimpPlugInProcFrame* %27, %struct._GimpPlugInCleanupImage* %28)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %for.body
  %29 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %cleanup, align 8
  call void @gimp_plug_in_cleanup_image_free(%struct._GimpPlugInCleanupImage* %29)
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool23 = icmp ne %struct._GList* %30, null
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 1
  %32 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %32, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %image_cleanups24 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %33, i32 0, i32 10
  %34 = load %struct._GList*, %struct._GList** %image_cleanups24, align 8
  call void @g_list_free(%struct._GList* %34)
  %35 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %image_cleanups25 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %35, i32 0, i32 10
  store %struct._GList* null, %struct._GList** %image_cleanups25, align 8
  %36 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %item_cleanups = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %36, i32 0, i32 11
  %37 = load %struct._GList*, %struct._GList** %item_cleanups, align 8
  store %struct._GList* %37, %struct._GList** %list, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %cond.end.43, %for.end
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool27 = icmp ne %struct._GList* %38, null
  br i1 %tobool27, label %for.body.28, label %for.end.45

for.body.28:                                      ; preds = %for.cond.26
  %39 = load %struct._GList*, %struct._GList** %list, align 8
  %data31 = getelementptr inbounds %struct._GList, %struct._GList* %39, i32 0, i32 0
  %40 = load i8*, i8** %data31, align 8
  %41 = bitcast i8* %40 to %struct._GimpPlugInCleanupItem*
  store %struct._GimpPlugInCleanupItem* %41, %struct._GimpPlugInCleanupItem** %cleanup30, align 8
  %42 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %manager32 = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %42, i32 0, i32 1
  %43 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager32, align 8
  %gimp33 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %43, i32 0, i32 1
  %44 = load %struct._Gimp*, %struct._Gimp** %gimp33, align 8
  %45 = load %struct._GimpPlugInCleanupItem*, %struct._GimpPlugInCleanupItem** %cleanup30, align 8
  %item_ID = getelementptr inbounds %struct._GimpPlugInCleanupItem, %struct._GimpPlugInCleanupItem* %45, i32 0, i32 1
  %46 = load i32, i32* %item_ID, align 4
  %call34 = call %struct._GimpItem* @gimp_item_get_by_ID(%struct._Gimp* %44, i32 %46)
  %47 = load %struct._GimpPlugInCleanupItem*, %struct._GimpPlugInCleanupItem** %cleanup30, align 8
  %item = getelementptr inbounds %struct._GimpPlugInCleanupItem, %struct._GimpPlugInCleanupItem* %47, i32 0, i32 0
  %48 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %cmp35 = icmp eq %struct._GimpItem* %call34, %48
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %for.body.28
  %49 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %50 = load %struct._GimpPlugInCleanupItem*, %struct._GimpPlugInCleanupItem** %cleanup30, align 8
  call void @gimp_plug_in_cleanup_item(%struct._GimpPlugInProcFrame* %49, %struct._GimpPlugInCleanupItem* %50)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %for.body.28
  %51 = load %struct._GimpPlugInCleanupItem*, %struct._GimpPlugInCleanupItem** %cleanup30, align 8
  call void @gimp_plug_in_cleanup_item_free(%struct._GimpPlugInCleanupItem* %51)
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %52 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool39 = icmp ne %struct._GList* %52, null
  br i1 %tobool39, label %cond.true.40, label %cond.false.42

cond.true.40:                                     ; preds = %for.inc.38
  %53 = load %struct._GList*, %struct._GList** %list, align 8
  %next41 = getelementptr inbounds %struct._GList, %struct._GList* %53, i32 0, i32 1
  %54 = load %struct._GList*, %struct._GList** %next41, align 8
  br label %cond.end.43

cond.false.42:                                    ; preds = %for.inc.38
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.40
  %cond44 = phi %struct._GList* [ %54, %cond.true.40 ], [ null, %cond.false.42 ]
  store %struct._GList* %cond44, %struct._GList** %list, align 8
  br label %for.cond.26

for.end.45:                                       ; preds = %for.cond.26
  %55 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %item_cleanups46 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %55, i32 0, i32 11
  %56 = load %struct._GList*, %struct._GList** %item_cleanups46, align 8
  call void @g_list_free(%struct._GList* %56)
  %57 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %item_cleanups47 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %57, i32 0, i32 11
  store %struct._GList* null, %struct._GList** %item_cleanups47, align 8
  br label %return

return:                                           ; preds = %for.end.45, %if.else.14, %if.else.9
  ret void
}

declare %struct._GimpImage* @gimp_image_get_by_ID(%struct._Gimp*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_cleanup_image(%struct._GimpPlugInProcFrame* %proc_frame, %struct._GimpPlugInCleanupImage* %cleanup) #0 {
entry:
  %proc_frame.addr = alloca %struct._GimpPlugInProcFrame*, align 8
  %cleanup.addr = alloca %struct._GimpPlugInCleanupImage*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %proc = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPlugInProcFrame* %proc_frame, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  store %struct._GimpPlugInCleanupImage* %cleanup, %struct._GimpPlugInCleanupImage** %cleanup.addr, align 8
  %0 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %cleanup.addr, align 8
  %image1 = getelementptr inbounds %struct._GimpPlugInCleanupImage, %struct._GimpPlugInCleanupImage* %0, i32 0, i32 0
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image1, align 8
  store %struct._GimpImage* %1, %struct._GimpImage** %image, align 8
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call = call i32 @gimp_image_get_undo_group_count(%struct._GimpImage* %2)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.14

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %cleanup.addr, align 8
  %undo_group_count = getelementptr inbounds %struct._GimpPlugInCleanupImage, %struct._GimpPlugInCleanupImage* %3, i32 0, i32 2
  %4 = load i32, i32* %undo_group_count, align 4
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call i32 @gimp_image_get_undo_group_count(%struct._GimpImage* %5)
  %cmp3 = icmp ne i32 %4, %call2
  br i1 %cmp3, label %if.then.4, label %if.end.14

if.then.4:                                        ; preds = %if.end
  %6 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %procedure = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %6, i32 0, i32 3
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  store %struct._GimpProcedure* %7, %struct._GimpProcedure** %proc, align 8
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %proc, align 8
  %9 = bitcast %struct._GimpProcedure* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_plug_in_procedure_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpPlugInProcedure*
  %call7 = call i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure* %10)
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5, i32 0, i32 0), i8* %call7)
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %if.then.4
  %11 = load %struct._GimpPlugInCleanupImage*, %struct._GimpPlugInCleanupImage** %cleanup.addr, align 8
  %undo_group_count8 = getelementptr inbounds %struct._GimpPlugInCleanupImage, %struct._GimpPlugInCleanupImage* %11, i32 0, i32 2
  %12 = load i32, i32* %undo_group_count8, align 4
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call i32 @gimp_image_get_undo_group_count(%struct._GimpImage* %13)
  %cmp10 = icmp slt i32 %12, %call9
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call11 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %14)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %while.body
  br label %while.end

if.end.13:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.12, %while.cond
  br label %if.end.14

if.end.14:                                        ; preds = %if.then, %while.end, %if.end
  ret void
}

declare void @g_list_free(%struct._GList*) #3

declare %struct._GimpItem* @gimp_item_get_by_ID(%struct._Gimp*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_cleanup_item(%struct._GimpPlugInProcFrame* %proc_frame, %struct._GimpPlugInCleanupItem* %cleanup) #0 {
entry:
  %proc_frame.addr = alloca %struct._GimpPlugInProcFrame*, align 8
  %cleanup.addr = alloca %struct._GimpPlugInCleanupItem*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %proc = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpPlugInProcFrame* %proc_frame, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  store %struct._GimpPlugInCleanupItem* %cleanup, %struct._GimpPlugInCleanupItem** %cleanup.addr, align 8
  %0 = load %struct._GimpPlugInCleanupItem*, %struct._GimpPlugInCleanupItem** %cleanup.addr, align 8
  %item1 = getelementptr inbounds %struct._GimpPlugInCleanupItem, %struct._GimpPlugInCleanupItem* %0, i32 0, i32 0
  %1 = load %struct._GimpItem*, %struct._GimpItem** %item1, align 8
  store %struct._GimpItem* %1, %struct._GimpItem** %item, align 8
  %2 = load %struct._GimpPlugInCleanupItem*, %struct._GimpPlugInCleanupItem** %cleanup.addr, align 8
  %shadow_tiles = getelementptr inbounds %struct._GimpPlugInCleanupItem, %struct._GimpPlugInCleanupItem* %2, i32 0, i32 2
  %3 = load i32, i32* %shadow_tiles, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %procedure = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %4, i32 0, i32 3
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  store %struct._GimpProcedure* %5, %struct._GimpProcedure** %proc, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %6 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %6, 256
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %do.body
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %8 = bitcast %struct._GimpItem* %7 to i8*
  %call = call i8* @gimp_object_get_name(i8* %8)
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %proc, align 8
  %10 = bitcast %struct._GimpProcedure* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_plug_in_procedure_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpPlugInProcedure*
  %call6 = call i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure* %11)
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_plug_in_cleanup_item, i32 0, i32 0), i32 342, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i32 0, i32 0), i8* %call, i8* %call6)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %13 = bitcast %struct._GimpItem* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_drawable_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpDrawable*
  call void @gimp_drawable_free_shadow_tiles(%struct._GimpDrawable* %14)
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %entry
  ret void
}

declare noalias i8* @g_slice_alloc0(i64) #3

declare i32 @gimp_image_get_ID(%struct._GimpImage*) #3

declare void @g_slice_free1(i64, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @gimp_plug_in_procedure_get_label(%struct._GimpPlugInProcedure*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_procedure_get_type() #1

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare i32 @gimp_item_get_ID(%struct._GimpItem*) #3

declare void @gimp_log(i32, i8*, i32, i8*, ...) #3

declare i8* @gimp_object_get_name(i8*) #3

declare void @gimp_drawable_free_shadow_tiles(%struct._GimpDrawable*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
