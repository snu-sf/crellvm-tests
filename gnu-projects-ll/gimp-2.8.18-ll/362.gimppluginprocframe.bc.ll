; ModuleID = './app/plug-in/gimppluginprocframe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInProcFrame = type { i32, %struct._GimpContext*, %struct._GList*, %struct._GimpProcedure*, %struct._GMainLoop*, %struct._GValueArray*, %struct._GimpProgress*, i32, i64, i32, %struct._GList*, %struct._GList* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._Gimp = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GMainLoop = type opaque
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpImage = type opaque
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
%struct._GimpProgress = type opaque
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPlugIn = type { %struct._GimpObject, %struct._GimpPlugInManager*, i8*, i32, i8, i32, %struct._GIOChannel*, %struct._GIOChannel*, %struct._GIOChannel*, %struct._GIOChannel*, i32, [512 x i8], i32, %struct._GSList*, %struct._GMainLoop*, %struct._GimpPlugInProcFrame, %struct._GList*, %struct._GimpPlugInDef* }
%struct._GimpPlugInManager = type opaque
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GimpPlugInDef = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_plug_in_proc_frame_new = private unnamed_addr constant [28 x i8] c"gimp_plug_in_proc_frame_new\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GIMP_IS_PDB_CONTEXT (context)\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"GIMP_IS_PLUG_IN_PROCEDURE (procedure)\00", align 1
@__func__.gimp_plug_in_proc_frame_init = private unnamed_addr constant [29 x i8] c"gimp_plug_in_proc_frame_init\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"proc_frame != NULL\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"procedure == NULL || GIMP_IS_PLUG_IN_PROCEDURE (procedure)\00", align 1
@__func__.gimp_plug_in_proc_frame_dispose = private unnamed_addr constant [32 x i8] c"gimp_plug_in_proc_frame_dispose\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"GIMP_IS_PLUG_IN (plug_in)\00", align 1
@__func__.gimp_plug_in_proc_frame_ref = private unnamed_addr constant [28 x i8] c"gimp_plug_in_proc_frame_ref\00", align 1
@__func__.gimp_plug_in_proc_frame_unref = private unnamed_addr constant [30 x i8] c"gimp_plug_in_proc_frame_unref\00", align 1
@__func__.gimp_plug_in_proc_frame_get_return_values = private unnamed_addr constant [42 x i8] c"gimp_plug_in_proc_frame_get_return_values\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Procedure '%s' returned no return values\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpPlugInProcFrame* @gimp_plug_in_proc_frame_new(%struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GimpPlugInProcedure* %procedure) #0 {
entry:
  %retval = alloca %struct._GimpPlugInProcFrame*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %procedure.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %proc_frame = alloca %struct._GimpPlugInProcFrame*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %__inst42 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GimpPlugInProcedure* %procedure, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pdb_context_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_plug_in_proc_frame_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpPlugInProcFrame* null, %struct._GimpPlugInProcFrame** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp12 = icmp eq %struct._GimpProgress* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %15 = bitcast %struct._GimpProgress* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_progress_interface_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_plug_in_proc_frame_new, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpPlugInProcFrame* null, %struct._GimpPlugInProcFrame** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %28 = bitcast %struct._GimpPlugInProcedure* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst42, align 8
  %call45 = call i64 @gimp_plug_in_procedure_get_type() #6
  store i64 %call45, i64* %__t44, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %do.body.40
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %do.body.40
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %tobool52 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.58

land.lhs.true.53:                                 ; preds = %if.else.50
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %g_type55 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type55, align 8
  %35 = load i64, i64* %__t44, align 8
  %cmp56 = icmp eq i64 %34, %35
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.53
  store i32 1, i32* %__r47, align 4
  br label %if.end.60

if.else.58:                                       ; preds = %land.lhs.true.53, %if.else.50
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %37 = load i64, i64* %__t44, align 8
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #7
  store i32 %call59, i32* %__r47, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.49
  %38 = load i32, i32* %__r47, align 4
  store i32 %38, i32* %tmp62
  %39 = load i32, i32* %tmp62
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.61
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.61
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_plug_in_proc_frame_new, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpPlugInProcFrame* null, %struct._GimpPlugInProcFrame** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  %call68 = call noalias i8* @g_slice_alloc0(i64 96)
  %40 = bitcast i8* %call68 to %struct._GimpPlugInProcFrame*
  store %struct._GimpPlugInProcFrame* %40, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %41 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %ref_count = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %41, i32 0, i32 0
  store i32 1, i32* %ref_count, align 4
  %42 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  %43 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %44 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %45 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  call void @gimp_plug_in_proc_frame_init(%struct._GimpPlugInProcFrame* %42, %struct._GimpContext* %43, %struct._GimpProgress* %44, %struct._GimpPlugInProcedure* %45)
  %46 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame, align 8
  store %struct._GimpPlugInProcFrame* %46, %struct._GimpPlugInProcFrame** %retval
  br label %return

return:                                           ; preds = %do.end.67, %if.else.65, %if.else.37, %if.else.9
  %47 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %retval
  ret %struct._GimpPlugInProcFrame* %47
}

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_context_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_procedure_get_type() #1

declare noalias i8* @g_slice_alloc0(i64) #3

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_proc_frame_init(%struct._GimpPlugInProcFrame* %proc_frame, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GimpPlugInProcedure* %procedure) #0 {
entry:
  %proc_frame.addr = alloca %struct._GimpPlugInProcFrame*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %procedure.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t22 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %__inst50 = alloca %struct._GTypeInstance*, align 8
  %__t52 = alloca i64, align 8
  %__r55 = alloca i32, align 4
  %tmp70 = alloca i32, align 4
  store %struct._GimpPlugInProcFrame* %proc_frame, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GimpPlugInProcedure* %procedure, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %cmp = icmp ne %struct._GimpPlugInProcFrame* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_proc_frame_init, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.90

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %2 = bitcast %struct._GimpContext* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pdb_context_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else.3, label %if.then.2

if.then.2:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.3:                                        ; preds = %do.body.1
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.3
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.3
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_proc_frame_init, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.90

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp18 = icmp eq %struct._GimpProgress* %14, null
  br i1 %cmp18, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.17
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %16 = bitcast %struct._GimpProgress* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst20, align 8
  %call23 = call i64 @gimp_progress_interface_get_type() #6
  store i64 %call23, i64* %__t22, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r25, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %lor.lhs.false
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else.28
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type33, align 8
  %23 = load i64, i64* %__t22, align 8
  %cmp34 = icmp eq i64 %22, %23
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r25, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else.28
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %25 = load i64, i64* %__t22, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #7
  store i32 %call37, i32* %__r25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %26 = load i32, i32* %__r25, align 4
  store i32 %26, i32* %tmp40
  %27 = load i32, i32* %tmp40
  %tobool41 = icmp ne i32 %27, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.end.39, %do.body.17
  br label %if.end.44

if.else.43:                                       ; preds = %if.end.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_proc_frame_init, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.90

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %28 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %cmp47 = icmp eq %struct._GimpPlugInProcedure* %28, null
  br i1 %cmp47, label %if.then.72, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %do.body.46
  %29 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %30 = bitcast %struct._GimpPlugInProcedure* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst50, align 8
  %call53 = call i64 @gimp_plug_in_procedure_get_type() #6
  store i64 %call53, i64* %__t52, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %tobool56 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool56, label %if.else.58, label %if.then.57

if.then.57:                                       ; preds = %lor.lhs.false.48
  store i32 0, i32* %__r55, align 4
  br label %if.end.69

if.else.58:                                       ; preds = %lor.lhs.false.48
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %g_class59 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class59, align 8
  %tobool60 = icmp ne %struct._GTypeClass* %33, null
  br i1 %tobool60, label %land.lhs.true.61, label %if.else.66

land.lhs.true.61:                                 ; preds = %if.else.58
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %g_class62 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class62, align 8
  %g_type63 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type63, align 8
  %37 = load i64, i64* %__t52, align 8
  %cmp64 = icmp eq i64 %36, %37
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %land.lhs.true.61
  store i32 1, i32* %__r55, align 4
  br label %if.end.68

if.else.66:                                       ; preds = %land.lhs.true.61, %if.else.58
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %39 = load i64, i64* %__t52, align 8
  %call67 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #7
  store i32 %call67, i32* %__r55, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.65
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.57
  %40 = load i32, i32* %__r55, align 4
  store i32 %40, i32* %tmp70
  %41 = load i32, i32* %tmp70
  %tobool71 = icmp ne i32 %41, 0
  br i1 %tobool71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %if.end.69, %do.body.46
  br label %if.end.74

if.else.73:                                       ; preds = %if.end.69
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_plug_in_proc_frame_init, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.90

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  %42 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %43 = bitcast %struct._GimpContext* %42 to i8*
  %call76 = call i8* @g_object_ref(i8* %43)
  %44 = bitcast i8* %call76 to %struct._GimpContext*
  %45 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %main_context = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %45, i32 0, i32 1
  store %struct._GimpContext* %44, %struct._GimpContext** %main_context, align 8
  %46 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %context_stack = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %46, i32 0, i32 2
  store %struct._GList* null, %struct._GList** %context_stack, align 8
  %47 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %tobool77 = icmp ne %struct._GimpPlugInProcedure* %47, null
  br i1 %tobool77, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.75
  %48 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %49 = bitcast %struct._GimpPlugInProcedure* %48 to i8*
  %call78 = call i8* @g_object_ref(i8* %49)
  br label %cond.end

cond.false:                                       ; preds = %do.end.75
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call78, %cond.true ], [ null, %cond.false ]
  %50 = bitcast i8* %cond to %struct._GimpProcedure*
  %51 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %procedure79 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %51, i32 0, i32 3
  store %struct._GimpProcedure* %50, %struct._GimpProcedure** %procedure79, align 8
  %52 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %main_loop = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %52, i32 0, i32 4
  store %struct._GMainLoop* null, %struct._GMainLoop** %main_loop, align 8
  %53 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %return_vals = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %53, i32 0, i32 5
  store %struct._GValueArray* null, %struct._GValueArray** %return_vals, align 8
  %54 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool80 = icmp ne %struct._GimpProgress* %54, null
  br i1 %tobool80, label %cond.true.81, label %cond.false.83

cond.true.81:                                     ; preds = %cond.end
  %55 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %56 = bitcast %struct._GimpProgress* %55 to i8*
  %call82 = call i8* @g_object_ref(i8* %56)
  br label %cond.end.84

cond.false.83:                                    ; preds = %cond.end
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.83, %cond.true.81
  %cond85 = phi i8* [ %call82, %cond.true.81 ], [ null, %cond.false.83 ]
  %57 = bitcast i8* %cond85 to %struct._GimpProgress*
  %58 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress86 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %58, i32 0, i32 6
  store %struct._GimpProgress* %57, %struct._GimpProgress** %progress86, align 8
  %59 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress_created = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %59, i32 0, i32 7
  store i32 0, i32* %progress_created, align 4
  %60 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress_cancel_id = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %60, i32 0, i32 8
  store i64 0, i64* %progress_cancel_id, align 8
  %61 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %error_handler = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %61, i32 0, i32 9
  store i32 0, i32* %error_handler, align 4
  %62 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool87 = icmp ne %struct._GimpProgress* %62, null
  br i1 %tobool87, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %cond.end.84
  %63 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call89 = call i32 @gimp_plug_in_progress_attach(%struct._GimpProgress* %63)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else, %if.else.14, %if.else.43, %if.else.73, %if.then.88, %cond.end.84
  ret void
}

declare i8* @g_object_ref(i8*) #3

declare i32 @gimp_plug_in_progress_attach(%struct._GimpProgress*) #3

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_proc_frame_dispose(%struct._GimpPlugInProcFrame* %proc_frame, %struct._GimpPlugIn* %plug_in) #0 {
entry:
  %proc_frame.addr = alloca %struct._GimpPlugInProcFrame*, align 8
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInProcFrame* %proc_frame, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %cmp = icmp ne %struct._GimpPlugInProcFrame* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_plug_in_proc_frame_dispose, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.54

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %2 = bitcast %struct._GimpPlugIn* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else.3, label %if.then.2

if.then.2:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.3:                                        ; preds = %do.body.1
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.3
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.3
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_plug_in_proc_frame_dispose, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.54

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %14, i32 0, i32 6
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool17 = icmp ne %struct._GimpProgress* %15, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.end.16
  %16 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %17 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  call void @gimp_plug_in_progress_end(%struct._GimpPlugIn* %16, %struct._GimpPlugInProcFrame* %17)
  %18 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress19 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %18, i32 0, i32 6
  %19 = load %struct._GimpProgress*, %struct._GimpProgress** %progress19, align 8
  %tobool20 = icmp ne %struct._GimpProgress* %19, null
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.then.18
  %20 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress22 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %20, i32 0, i32 6
  %21 = load %struct._GimpProgress*, %struct._GimpProgress** %progress22, align 8
  %22 = bitcast %struct._GimpProgress* %21 to i8*
  call void @g_object_unref(i8* %22)
  %23 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %progress23 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %23, i32 0, i32 6
  store %struct._GimpProgress* null, %struct._GimpProgress** %progress23, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.then.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.end.16
  %24 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %context_stack = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %24, i32 0, i32 2
  %25 = load %struct._GList*, %struct._GList** %context_stack, align 8
  %tobool26 = icmp ne %struct._GList* %25, null
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.end.25
  %26 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %context_stack28 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %26, i32 0, i32 2
  %27 = load %struct._GList*, %struct._GList** %context_stack28, align 8
  call void @g_list_free_full(%struct._GList* %27, void (i8*)* @g_object_unref)
  %28 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %context_stack29 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %28, i32 0, i32 2
  store %struct._GList* null, %struct._GList** %context_stack29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.end.25
  %29 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %main_context = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %29, i32 0, i32 1
  %30 = load %struct._GimpContext*, %struct._GimpContext** %main_context, align 8
  %tobool31 = icmp ne %struct._GimpContext* %30, null
  br i1 %tobool31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.30
  %31 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %main_context33 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %31, i32 0, i32 1
  %32 = load %struct._GimpContext*, %struct._GimpContext** %main_context33, align 8
  %33 = bitcast %struct._GimpContext* %32 to i8*
  call void @g_object_unref(i8* %33)
  %34 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %main_context34 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %34, i32 0, i32 1
  store %struct._GimpContext* null, %struct._GimpContext** %main_context34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.30
  %35 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %return_vals = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %35, i32 0, i32 5
  %36 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %tobool36 = icmp ne %struct._GValueArray* %36, null
  br i1 %tobool36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.end.35
  %37 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %return_vals38 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %37, i32 0, i32 5
  %38 = load %struct._GValueArray*, %struct._GValueArray** %return_vals38, align 8
  call void @g_value_array_free(%struct._GValueArray* %38)
  %39 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %return_vals39 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %39, i32 0, i32 5
  store %struct._GValueArray* null, %struct._GValueArray** %return_vals39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %if.end.35
  %40 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %main_loop = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %40, i32 0, i32 4
  %41 = load %struct._GMainLoop*, %struct._GMainLoop** %main_loop, align 8
  %tobool41 = icmp ne %struct._GMainLoop* %41, null
  br i1 %tobool41, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %if.end.40
  %42 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %main_loop43 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %42, i32 0, i32 4
  %43 = load %struct._GMainLoop*, %struct._GMainLoop** %main_loop43, align 8
  call void @g_main_loop_unref(%struct._GMainLoop* %43)
  %44 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %main_loop44 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %44, i32 0, i32 4
  store %struct._GMainLoop* null, %struct._GMainLoop** %main_loop44, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %if.end.40
  %45 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %image_cleanups = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %45, i32 0, i32 10
  %46 = load %struct._GList*, %struct._GList** %image_cleanups, align 8
  %tobool46 = icmp ne %struct._GList* %46, null
  br i1 %tobool46, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.45
  %47 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %item_cleanups = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %47, i32 0, i32 11
  %48 = load %struct._GList*, %struct._GList** %item_cleanups, align 8
  %tobool47 = icmp ne %struct._GList* %48, null
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %lor.lhs.false, %if.end.45
  %49 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %50 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  call void @gimp_plug_in_cleanup(%struct._GimpPlugIn* %49, %struct._GimpPlugInProcFrame* %50)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %lor.lhs.false
  %51 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %procedure = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %51, i32 0, i32 3
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %tobool50 = icmp ne %struct._GimpProcedure* %52, null
  br i1 %tobool50, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %if.end.49
  %53 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %procedure52 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %53, i32 0, i32 3
  %54 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure52, align 8
  %55 = bitcast %struct._GimpProcedure* %54 to i8*
  call void @g_object_unref(i8* %55)
  %56 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %procedure53 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %56, i32 0, i32 3
  store %struct._GimpProcedure* null, %struct._GimpProcedure** %procedure53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.else, %if.else.14, %if.then.51, %if.end.49
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_get_type() #1

declare void @gimp_plug_in_progress_end(%struct._GimpPlugIn*, %struct._GimpPlugInProcFrame*) #3

declare void @g_object_unref(i8*) #3

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #3

declare void @g_value_array_free(%struct._GValueArray*) #3

declare void @g_main_loop_unref(%struct._GMainLoop*) #3

declare void @gimp_plug_in_cleanup(%struct._GimpPlugIn*, %struct._GimpPlugInProcFrame*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpPlugInProcFrame* @gimp_plug_in_proc_frame_ref(%struct._GimpPlugInProcFrame* %proc_frame) #0 {
entry:
  %retval = alloca %struct._GimpPlugInProcFrame*, align 8
  %proc_frame.addr = alloca %struct._GimpPlugInProcFrame*, align 8
  store %struct._GimpPlugInProcFrame* %proc_frame, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %cmp = icmp ne %struct._GimpPlugInProcFrame* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_plug_in_proc_frame_ref, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpPlugInProcFrame* null, %struct._GimpPlugInProcFrame** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %ref_count = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %1, i32 0, i32 0
  %2 = load i32, i32* %ref_count, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %ref_count, align 4
  %3 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  store %struct._GimpPlugInProcFrame* %3, %struct._GimpPlugInProcFrame** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %4 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %retval
  ret %struct._GimpPlugInProcFrame* %4
}

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_proc_frame_unref(%struct._GimpPlugInProcFrame* %proc_frame, %struct._GimpPlugIn* %plug_in) #0 {
entry:
  %proc_frame.addr = alloca %struct._GimpPlugInProcFrame*, align 8
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInProcFrame* %proc_frame, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %cmp = icmp ne %struct._GimpPlugInProcFrame* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_plug_in_proc_frame_unref, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.22

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %2 = bitcast %struct._GimpPlugIn* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else.3, label %if.then.2

if.then.2:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.3:                                        ; preds = %do.body.1
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.3
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.3
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_plug_in_proc_frame_unref, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.22

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %ref_count = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %14, i32 0, i32 0
  %15 = load i32, i32* %ref_count, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %ref_count, align 4
  %16 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %ref_count17 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %16, i32 0, i32 0
  %17 = load i32, i32* %ref_count17, align 4
  %cmp18 = icmp slt i32 %17, 1
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %do.end.16
  %18 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %19 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  call void @gimp_plug_in_proc_frame_dispose(%struct._GimpPlugInProcFrame* %18, %struct._GimpPlugIn* %19)
  br label %do.body.20

do.body.20:                                       ; preds = %if.then.19
  %20 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %21 = bitcast %struct._GimpPlugInProcFrame* %20 to i8*
  call void @g_slice_free1(i64 96, i8* %21)
  br label %do.end.21

do.end.21:                                        ; preds = %do.body.20
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.else.14, %do.end.21, %do.end.16
  ret void
}

declare void @g_slice_free1(i64, i8*) #3

; Function Attrs: nounwind uwtable
define %struct._GValueArray* @gimp_plug_in_proc_frame_get_return_values(%struct._GimpPlugInProcFrame* %proc_frame) #0 {
entry:
  %retval = alloca %struct._GValueArray*, align 8
  %proc_frame.addr = alloca %struct._GimpPlugInProcFrame*, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %procedure23 = alloca %struct._GimpProcedure*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GimpPlugInProcFrame* %proc_frame, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %cmp = icmp ne %struct._GimpPlugInProcFrame* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_plug_in_proc_frame_get_return_values, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %return_vals1 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %1, i32 0, i32 5
  %2 = load %struct._GValueArray*, %struct._GValueArray** %return_vals1, align 8
  %tobool = icmp ne %struct._GValueArray* %2, null
  br i1 %tobool, label %if.then.2, label %if.else.22

if.then.2:                                        ; preds = %do.end
  %3 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %return_vals3 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %3, i32 0, i32 5
  %4 = load %struct._GValueArray*, %struct._GValueArray** %return_vals3, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 0
  %5 = load i32, i32* %n_values, align 4
  %6 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %procedure = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %6, i32 0, i32 3
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %7, i32 0, i32 12
  %8 = load i32, i32* %num_values, align 4
  %add = add nsw i32 %8, 1
  %cmp4 = icmp uge i32 %5, %add
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.then.2
  %9 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %return_vals6 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %9, i32 0, i32 5
  %10 = load %struct._GValueArray*, %struct._GValueArray** %return_vals6, align 8
  store %struct._GValueArray* %10, %struct._GValueArray** %return_vals, align 8
  br label %if.end.20

if.else.7:                                        ; preds = %if.then.2
  %11 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %procedure8 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %11, i32 0, i32 3
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure8, align 8
  %call = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %12, i32 1, %struct._GError* null)
  store %struct._GValueArray* %call, %struct._GValueArray** %return_vals, align 8
  %13 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 1
  %14 = load %struct._GValue*, %struct._GValue** %values, align 8
  %15 = bitcast %struct._GValue* %14 to i8*
  %16 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %return_vals9 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %16, i32 0, i32 5
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals9, align 8
  %values10 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values10, align 8
  %19 = bitcast %struct._GValue* %18 to i8*
  %20 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %return_vals11 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %20, i32 0, i32 5
  %21 = load %struct._GValueArray*, %struct._GValueArray** %return_vals11, align 8
  %n_values12 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 0
  %22 = load i32, i32* %n_values12, align 4
  %conv = zext i32 %22 to i64
  %mul = mul i64 24, %conv
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %19, i64 %mul, i32 8, i1 false)
  %23 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %return_vals13 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %23, i32 0, i32 5
  %24 = load %struct._GValueArray*, %struct._GValueArray** %return_vals13, align 8
  %values14 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %24, i32 0, i32 1
  %25 = load %struct._GValue*, %struct._GValue** %values14, align 8
  %26 = bitcast %struct._GValue* %25 to i8*
  call void @g_free(i8* %26)
  %27 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %return_vals15 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %27, i32 0, i32 5
  %28 = load %struct._GValueArray*, %struct._GValueArray** %return_vals15, align 8
  %values16 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %28, i32 0, i32 1
  store %struct._GValue* null, %struct._GValue** %values16, align 8
  %29 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %return_vals17 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %29, i32 0, i32 5
  %30 = load %struct._GValueArray*, %struct._GValueArray** %return_vals17, align 8
  %n_values18 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %30, i32 0, i32 0
  store i32 0, i32* %n_values18, align 4
  %31 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %return_vals19 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %31, i32 0, i32 5
  %32 = load %struct._GValueArray*, %struct._GValueArray** %return_vals19, align 8
  call void @g_value_array_free(%struct._GValueArray* %32)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.7, %if.then.5
  %33 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %return_vals21 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %33, i32 0, i32 5
  store %struct._GValueArray* null, %struct._GValueArray** %return_vals21, align 8
  br label %if.end.30

if.else.22:                                       ; preds = %do.end
  %34 = load %struct._GimpPlugInProcFrame*, %struct._GimpPlugInProcFrame** %proc_frame.addr, align 8
  %procedure24 = getelementptr inbounds %struct._GimpPlugInProcFrame, %struct._GimpPlugInProcFrame* %34, i32 0, i32 3
  %35 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure24, align 8
  store %struct._GimpProcedure* %35, %struct._GimpProcedure** %procedure23, align 8
  %call25 = call i32 @gimp_pdb_error_quark() #6
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0)) #4
  %36 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure23, align 8
  %37 = bitcast %struct._GimpProcedure* %36 to i8*
  %call27 = call i8* @gimp_object_get_name(i8* %37)
  %call28 = call %struct._GError* (i32, i32, i8*, ...) @g_error_new(i32 %call25, i32 4, i8* %call26, i8* %call27)
  store %struct._GError* %call28, %struct._GError** %error, align 8
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure23, align 8
  %39 = load %struct._GError*, %struct._GError** %error, align 8
  %call29 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %38, i32 0, %struct._GError* %39)
  store %struct._GValueArray* %call29, %struct._GValueArray** %return_vals, align 8
  %40 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %40)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.22, %if.end.20
  %41 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  store %struct._GValueArray* %41, %struct._GValueArray** %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.else
  %42 = load %struct._GValueArray*, %struct._GValueArray** %retval
  ret %struct._GValueArray* %42
}

declare %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure*, i32, %struct._GError*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @g_free(i8*) #3

declare %struct._GError* @g_error_new(i32, i32, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i32 @gimp_pdb_error_quark() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare i8* @gimp_object_get_name(i8*) #3

declare void @g_error_free(%struct._GError*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
