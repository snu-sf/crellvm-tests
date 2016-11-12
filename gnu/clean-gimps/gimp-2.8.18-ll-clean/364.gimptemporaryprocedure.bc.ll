; ModuleID = './app/plug-in/gimptemporaryprocedure.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTemporaryProcedureClass = type { %struct._GimpPlugInProcedureClass }
%struct._GimpPlugInProcedureClass = type { %struct._GimpProcedureClass, i8* (%struct._GimpPlugInProcedure*)*, void (%struct._GimpPlugInProcedure*, i8*)* }
%struct._GimpProcedureClass = type { %struct._GimpObjectClass, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*, void (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GimpObject*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpImage = type opaque
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
%struct._GimpProgress = type opaque
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpTemporaryProcedure = type { %struct._GimpPlugInProcedure, %struct._GimpPlugIn* }
%struct._GimpPlugIn = type { %struct._GimpObject, %struct._GimpPlugInManager*, i8*, i32, i8, i32, %struct._GIOChannel*, %struct._GIOChannel*, %struct._GIOChannel*, %struct._GIOChannel*, i32, [512 x i8], i32, %struct._GSList*, %struct._GMainLoop*, %struct._GimpPlugInProcFrame, %struct._GList*, %struct._GimpPlugInDef* }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GMainLoop = type opaque
%struct._GimpPlugInProcFrame = type { i32, %struct._GimpContext*, %struct._GList*, %struct._GimpProcedure*, %struct._GMainLoop*, %struct._GValueArray*, %struct._GimpProgress*, i32, i64, i32, %struct._GList*, %struct._GList* }
%struct._GimpPlugInDef = type opaque

@gimp_temporary_procedure_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"GimpTemporaryProcedure\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_temporary_procedure_new = private unnamed_addr constant [29 x i8] c"gimp_temporary_procedure_new\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_PLUG_IN (plug_in)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@gimp_temporary_procedure_parent_class = internal global i8* null, align 8
@GimpTemporaryProcedure_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_temporary_procedure_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_temporary_procedure_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_temporary_procedure_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i64 @gimp_plug_in_procedure_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 192, void (i8*, i8*)* bitcast (void (i8*)* @gimp_temporary_procedure_class_intern_init to void (i8*, i8*)*), i32 296, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTemporaryProcedure*)* @gimp_temporary_procedure_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_temporary_procedure_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_temporary_procedure_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_procedure_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_temporary_procedure_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_temporary_procedure_parent_class, align 8
  %1 = load i32, i32* @GimpTemporaryProcedure_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTemporaryProcedure_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTemporaryProcedureClass*
  call void @gimp_temporary_procedure_class_init(%struct._GimpTemporaryProcedureClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_temporary_procedure_init(%struct._GimpTemporaryProcedure* %proc) #3 {
entry:
  %proc.addr = alloca %struct._GimpTemporaryProcedure*, align 8
  store %struct._GimpTemporaryProcedure* %proc, %struct._GimpTemporaryProcedure** %proc.addr, align 8
  %0 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %proc.addr, align 8
  %1 = bitcast %struct._GimpTemporaryProcedure* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_procedure_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProcedure*
  %proc_type = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %2, i32 0, i32 1
  store i32 3, i32* %proc_type, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_temporary_procedure_get_progname(%struct._GimpPlugInProcedure* %procedure) #3 {
entry:
  %procedure.addr = alloca %struct._GimpPlugInProcedure*, align 8
  store %struct._GimpPlugInProcedure* %procedure, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %0 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure.addr, align 8
  %1 = bitcast %struct._GimpPlugInProcedure* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_temporary_procedure_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTemporaryProcedure*
  %plug_in = getelementptr inbounds %struct._GimpTemporaryProcedure, %struct._GimpTemporaryProcedure* %2, i32 0, i32 1
  %3 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  %prog = getelementptr inbounds %struct._GimpPlugIn, %struct._GimpPlugIn* %3, i32 0, i32 2
  %4 = load i8*, i8** %prog, align 8
  ret i8* %4
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpProcedure* @gimp_temporary_procedure_new(%struct._GimpPlugIn* %plug_in) #3 {
entry:
  %retval = alloca %struct._GimpProcedure*, align 8
  %plug_in.addr = alloca %struct._GimpPlugIn*, align 8
  %proc = alloca %struct._GimpTemporaryProcedure*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugIn* %plug_in, %struct._GimpPlugIn** %plug_in.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_temporary_procedure_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpProcedure* null, %struct._GimpProcedure** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_temporary_procedure_get_type() #5
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* null)
  %13 = bitcast i8* %call12 to %struct._GimpTemporaryProcedure*
  store %struct._GimpTemporaryProcedure* %13, %struct._GimpTemporaryProcedure** %proc, align 8
  %14 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in.addr, align 8
  %15 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %proc, align 8
  %plug_in13 = getelementptr inbounds %struct._GimpTemporaryProcedure, %struct._GimpTemporaryProcedure* %15, i32 0, i32 1
  store %struct._GimpPlugIn* %14, %struct._GimpPlugIn** %plug_in13, align 8
  %call14 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %16 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %proc, align 8
  %17 = bitcast %struct._GimpTemporaryProcedure* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_plug_in_procedure_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpPlugInProcedure*
  %prog = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %18, i32 0, i32 1
  store i8* %call14, i8** %prog, align 8
  %19 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %proc, align 8
  %20 = bitcast %struct._GimpTemporaryProcedure* %19 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_procedure_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call17)
  %21 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpProcedure*
  store %struct._GimpProcedure* %21, %struct._GimpProcedure** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %retval
  ret %struct._GimpProcedure* %22
}

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_procedure_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_temporary_procedure_class_init(%struct._GimpTemporaryProcedureClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpTemporaryProcedureClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %proc_class = alloca %struct._GimpProcedureClass*, align 8
  %plug_class = alloca %struct._GimpPlugInProcedureClass*, align 8
  store %struct._GimpTemporaryProcedureClass* %klass, %struct._GimpTemporaryProcedureClass** %klass.addr, align 8
  %0 = load %struct._GimpTemporaryProcedureClass*, %struct._GimpTemporaryProcedureClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTemporaryProcedureClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpTemporaryProcedureClass*, %struct._GimpTemporaryProcedureClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpTemporaryProcedureClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_procedure_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpProcedureClass*
  store %struct._GimpProcedureClass* %5, %struct._GimpProcedureClass** %proc_class, align 8
  %6 = load %struct._GimpTemporaryProcedureClass*, %struct._GimpTemporaryProcedureClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpTemporaryProcedureClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_plug_in_procedure_get_type() #5
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpPlugInProcedureClass*
  store %struct._GimpPlugInProcedureClass* %8, %struct._GimpPlugInProcedureClass** %plug_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_temporary_procedure_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GimpProcedureClass*, %struct._GimpProcedureClass** %proc_class, align 8
  %execute = getelementptr inbounds %struct._GimpProcedureClass, %struct._GimpProcedureClass* %10, i32 0, i32 1
  store %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gimp_temporary_procedure_execute, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)** %execute, align 8
  %11 = load %struct._GimpProcedureClass*, %struct._GimpProcedureClass** %proc_class, align 8
  %execute_async = getelementptr inbounds %struct._GimpProcedureClass, %struct._GimpProcedureClass* %11, i32 0, i32 2
  store void (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GimpObject*)* @gimp_temporary_procedure_execute_async, void (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GimpObject*)** %execute_async, align 8
  %12 = load %struct._GimpPlugInProcedureClass*, %struct._GimpPlugInProcedureClass** %plug_class, align 8
  %get_progname = getelementptr inbounds %struct._GimpPlugInProcedureClass, %struct._GimpPlugInProcedureClass* %12, i32 0, i32 1
  store i8* (%struct._GimpPlugInProcedure*)* @gimp_temporary_procedure_get_progname, i8* (%struct._GimpPlugInProcedure*)** %get_progname, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_temporary_procedure_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_temporary_procedure_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 6
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %3(%struct._GObject* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gimp_temporary_procedure_execute(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #3 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 25
  %1 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %3 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %5 = bitcast %struct._GimpProcedure* %4 to %struct._GTypeInstance*
  %call = call i64 @gimp_temporary_procedure_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTemporaryProcedure*
  %7 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %call2 = call %struct._GValueArray* @gimp_plug_in_manager_call_run_temp(%struct._GimpPlugInManager* %1, %struct._GimpContext* %2, %struct._GimpProgress* %3, %struct._GimpTemporaryProcedure* %6, %struct._GValueArray* %7)
  ret %struct._GValueArray* %call2
}

; Function Attrs: nounwind uwtable
define internal void @gimp_temporary_procedure_execute_async(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GimpObject* %display) #3 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %display.addr = alloca %struct._GimpObject*, align 8
  %temp_procedure = alloca %struct._GimpTemporaryProcedure*, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GimpObject* %display, %struct._GimpObject** %display.addr, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_temporary_procedure_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTemporaryProcedure*
  store %struct._GimpTemporaryProcedure* %2, %struct._GimpTemporaryProcedure** %temp_procedure, align 8
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 25
  %4 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %7 = load %struct._GimpTemporaryProcedure*, %struct._GimpTemporaryProcedure** %temp_procedure, align 8
  %8 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %call2 = call %struct._GValueArray* @gimp_plug_in_manager_call_run_temp(%struct._GimpPlugInManager* %4, %struct._GimpContext* %5, %struct._GimpProgress* %6, %struct._GimpTemporaryProcedure* %7, %struct._GValueArray* %8)
  store %struct._GValueArray* %call2, %struct._GValueArray** %return_vals, align 8
  %9 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %tobool = icmp ne %struct._GValueArray* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %11 = bitcast %struct._GimpProcedure* %10 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_plug_in_procedure_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call3)
  %12 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %12, %struct._GimpPlugInProcedure** %proc, align 8
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %16 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  call void @gimp_plug_in_procedure_handle_return_values(%struct._GimpPlugInProcedure* %13, %struct._Gimp* %14, %struct._GimpProgress* %15, %struct._GValueArray* %16)
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  call void @g_value_array_free(%struct._GValueArray* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GValueArray* @gimp_plug_in_manager_call_run_temp(%struct._GimpPlugInManager*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpTemporaryProcedure*, %struct._GValueArray*) #1

declare void @gimp_plug_in_procedure_handle_return_values(%struct._GimpPlugInProcedure*, %struct._Gimp*, %struct._GimpProgress*, %struct._GValueArray*) #1

declare void @g_value_array_free(%struct._GValueArray*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
