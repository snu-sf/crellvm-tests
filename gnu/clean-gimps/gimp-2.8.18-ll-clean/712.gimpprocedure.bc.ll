; ModuleID = './app/pdb/gimpprocedure.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
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
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpProgress = type opaque
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GError = type { i32, i32, i8* }

@gimp_procedure_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpProcedure\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Gimp-PDB\00", align 1
@__func__.gimp_procedure_new = private unnamed_addr constant [19 x i8] c"gimp_procedure_new\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"marshal_func != NULL\00", align 1
@__func__.gimp_procedure_set_strings = private unnamed_addr constant [27 x i8] c"gimp_procedure_set_strings\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"GIMP_IS_PROCEDURE (procedure)\00", align 1
@__func__.gimp_procedure_set_static_strings = private unnamed_addr constant [34 x i8] c"gimp_procedure_set_static_strings\00", align 1
@__func__.gimp_procedure_take_strings = private unnamed_addr constant [28 x i8] c"gimp_procedure_take_strings\00", align 1
@__func__.gimp_procedure_execute = private unnamed_addr constant [23 x i8] c"gimp_procedure_execute\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"args != NULL\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"%s: no return values, shouldn't happen\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Procedure '%s' returned no return values\00", align 1
@__func__.gimp_procedure_execute_async = private unnamed_addr constant [29 x i8] c"gimp_procedure_execute_async\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"display == NULL || GIMP_IS_OBJECT (display)\00", align 1
@__func__.gimp_procedure_get_arguments = private unnamed_addr constant [29 x i8] c"gimp_procedure_get_arguments\00", align 1
@__func__.gimp_procedure_get_return_values = private unnamed_addr constant [33 x i8] c"gimp_procedure_get_return_values\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"success == FALSE || GIMP_IS_PROCEDURE (procedure)\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"gimpprocedure.c\00", align 1
@__func__.gimp_procedure_add_argument = private unnamed_addr constant [28 x i8] c"gimp_procedure_add_argument\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"G_IS_PARAM_SPEC (pspec)\00", align 1
@__func__.gimp_procedure_add_return_value = private unnamed_addr constant [32 x i8] c"gimp_procedure_add_return_value\00", align 1
@gimp_procedure_parent_class = internal global i8* null, align 8
@GimpProcedure_private_offset = internal global i32 0, align 4
@__func__.gimp_procedure_real_execute = private unnamed_addr constant [28 x i8] c"gimp_procedure_real_execute\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"args->n_values >= procedure->num_args\00", align 1
@__func__.gimp_procedure_real_execute_async = private unnamed_addr constant [34 x i8] c"gimp_procedure_real_execute_async\00", align 1
@.str.16 = private unnamed_addr constant [93 x i8] c"Procedure '%s' returned a wrong value type for return value '%s' (#%d). Expected %s, got %s.\00", align 1
@.str.17 = private unnamed_addr constant [101 x i8] c"Procedure '%s' has been called with a wrong value type for argument '%s' (#%d). Expected %s, got %s.\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"<not transformable to string>\00", align 1
@.str.19 = private unnamed_addr constant [139 x i8] c"Procedure '%s' returned an invalid ID for argument '%s'. Most likely a plug-in is trying to work on a layer that doesn't exist any longer.\00", align 1
@.str.20 = private unnamed_addr constant [151 x i8] c"Procedure '%s' has been called with an invalid ID for argument '%s'. Most likely a plug-in is trying to work on a layer that doesn't exist any longer.\00", align 1
@.str.21 = private unnamed_addr constant [140 x i8] c"Procedure '%s' returned an invalid ID for argument '%s'. Most likely a plug-in is trying to work on an image that doesn't exist any longer.\00", align 1
@.str.22 = private unnamed_addr constant [152 x i8] c"Procedure '%s' has been called with an invalid ID for argument '%s'. Most likely a plug-in is trying to work on an image that doesn't exist any longer.\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.24 = private unnamed_addr constant [94 x i8] c"Procedure '%s' returned '%s' as return value '%s' (#%d, type %s). This value is out of range.\00", align 1
@.str.25 = private unnamed_addr constant [109 x i8] c"Procedure '%s' has been called with value '%s' for argument '%s' (#%d, type %s). This value is out of range.\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_procedure_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_procedure_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_procedure_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 176, void (i8*, i8*)* bitcast (void (i8*)* @gimp_procedure_class_intern_init to void (i8*, i8*)*), i32 136, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpProcedure*)* @gimp_procedure_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_procedure_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_procedure_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_procedure_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_procedure_parent_class, align 8
  %1 = load i32, i32* @GimpProcedure_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpProcedure_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpProcedureClass*
  call void @gimp_procedure_class_init(%struct._GimpProcedureClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_procedure_init(%struct._GimpProcedure* %procedure) #3 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %proc_type = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %0, i32 0, i32 1
  store i32 0, i32* %proc_type, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* %marshal_func) #3 {
entry:
  %retval = alloca %struct._GimpProcedure*, align 8
  %marshal_func.addr = alloca %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  store %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* %marshal_func, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)** %marshal_func.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)** %marshal_func.addr, align 8
  %cmp = icmp ne %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_procedure_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpProcedure* null, %struct._GimpProcedure** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i64 @gimp_procedure_get_type() #8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %1 = bitcast i8* %call1 to %struct._GimpProcedure*
  store %struct._GimpProcedure* %1, %struct._GimpProcedure** %procedure, align 8
  %2 = load %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)** %marshal_func.addr, align 8
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %marshal_func2 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %3, i32 0, i32 14
  store %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* %2, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)** %marshal_func2, align 8
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  store %struct._GimpProcedure* %4, %struct._GimpProcedure** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %retval
  ret %struct._GimpProcedure* %5
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_procedure_set_strings(%struct._GimpProcedure* %procedure, i8* %original_name, i8* %blurb, i8* %help, i8* %author, i8* %copyright, i8* %date, i8* %deprecated) #3 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %original_name.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %help.addr = alloca i8*, align 8
  %author.addr = alloca i8*, align 8
  %copyright.addr = alloca i8*, align 8
  %date.addr = alloca i8*, align 8
  %deprecated.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store i8* %original_name, i8** %original_name.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i8* %help, i8** %help.addr, align 8
  store i8* %author, i8** %author.addr, align 8
  store i8* %copyright, i8** %copyright.addr, align 8
  store i8* %date, i8** %date.addr, align 8
  store i8* %deprecated, i8** %deprecated.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_procedure_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_procedure_set_strings, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  call void @gimp_procedure_free_strings(%struct._GimpProcedure* %13)
  %14 = load i8*, i8** %original_name.addr, align 8
  %call11 = call noalias i8* @g_strdup(i8* %14)
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %original_name12 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %15, i32 0, i32 3
  store i8* %call11, i8** %original_name12, align 8
  %16 = load i8*, i8** %blurb.addr, align 8
  %call13 = call noalias i8* @g_strdup(i8* %16)
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %blurb14 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %17, i32 0, i32 4
  store i8* %call13, i8** %blurb14, align 8
  %18 = load i8*, i8** %help.addr, align 8
  %call15 = call noalias i8* @g_strdup(i8* %18)
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %help16 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %19, i32 0, i32 5
  store i8* %call15, i8** %help16, align 8
  %20 = load i8*, i8** %author.addr, align 8
  %call17 = call noalias i8* @g_strdup(i8* %20)
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %author18 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %21, i32 0, i32 6
  store i8* %call17, i8** %author18, align 8
  %22 = load i8*, i8** %copyright.addr, align 8
  %call19 = call noalias i8* @g_strdup(i8* %22)
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %copyright20 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %23, i32 0, i32 7
  store i8* %call19, i8** %copyright20, align 8
  %24 = load i8*, i8** %date.addr, align 8
  %call21 = call noalias i8* @g_strdup(i8* %24)
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %date22 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %25, i32 0, i32 8
  store i8* %call21, i8** %date22, align 8
  %26 = load i8*, i8** %deprecated.addr, align 8
  %call23 = call noalias i8* @g_strdup(i8* %26)
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %deprecated24 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %27, i32 0, i32 9
  store i8* %call23, i8** %deprecated24, align 8
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %static_strings = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %28, i32 0, i32 2
  store i32 0, i32* %static_strings, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_procedure_free_strings(%struct._GimpProcedure* %procedure) #3 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %static_strings = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %0, i32 0, i32 2
  %1 = load i32, i32* %static_strings, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %original_name = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %2, i32 0, i32 3
  %3 = load i8*, i8** %original_name, align 8
  call void @g_free(i8* %3)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %blurb = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %4, i32 0, i32 4
  %5 = load i8*, i8** %blurb, align 8
  call void @g_free(i8* %5)
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %help = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %6, i32 0, i32 5
  %7 = load i8*, i8** %help, align 8
  call void @g_free(i8* %7)
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %author = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %8, i32 0, i32 6
  %9 = load i8*, i8** %author, align 8
  call void @g_free(i8* %9)
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %copyright = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %10, i32 0, i32 7
  %11 = load i8*, i8** %copyright, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %date = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %12, i32 0, i32 8
  %13 = load i8*, i8** %date, align 8
  call void @g_free(i8* %13)
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %deprecated = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %14, i32 0, i32 9
  %15 = load i8*, i8** %deprecated, align 8
  call void @g_free(i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %original_name1 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %16, i32 0, i32 3
  store i8* null, i8** %original_name1, align 8
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %blurb2 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %17, i32 0, i32 4
  store i8* null, i8** %blurb2, align 8
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %help3 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %18, i32 0, i32 5
  store i8* null, i8** %help3, align 8
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %author4 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %19, i32 0, i32 6
  store i8* null, i8** %author4, align 8
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %copyright5 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %20, i32 0, i32 7
  store i8* null, i8** %copyright5, align 8
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %date6 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %21, i32 0, i32 8
  store i8* null, i8** %date6, align 8
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %deprecated7 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %22, i32 0, i32 9
  store i8* null, i8** %deprecated7, align 8
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %static_strings8 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %23, i32 0, i32 2
  store i32 0, i32* %static_strings8, align 4
  ret void
}

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_procedure_set_static_strings(%struct._GimpProcedure* %procedure, i8* %original_name, i8* %blurb, i8* %help, i8* %author, i8* %copyright, i8* %date, i8* %deprecated) #3 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %original_name.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %help.addr = alloca i8*, align 8
  %author.addr = alloca i8*, align 8
  %copyright.addr = alloca i8*, align 8
  %date.addr = alloca i8*, align 8
  %deprecated.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store i8* %original_name, i8** %original_name.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i8* %help, i8** %help.addr, align 8
  store i8* %author, i8** %author.addr, align 8
  store i8* %copyright, i8** %copyright.addr, align 8
  store i8* %date, i8** %date.addr, align 8
  store i8* %deprecated, i8** %deprecated.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_procedure_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_procedure_set_static_strings, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  call void @gimp_procedure_free_strings(%struct._GimpProcedure* %13)
  %14 = load i8*, i8** %original_name.addr, align 8
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %original_name11 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %15, i32 0, i32 3
  store i8* %14, i8** %original_name11, align 8
  %16 = load i8*, i8** %blurb.addr, align 8
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %blurb12 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %17, i32 0, i32 4
  store i8* %16, i8** %blurb12, align 8
  %18 = load i8*, i8** %help.addr, align 8
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %help13 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %19, i32 0, i32 5
  store i8* %18, i8** %help13, align 8
  %20 = load i8*, i8** %author.addr, align 8
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %author14 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %21, i32 0, i32 6
  store i8* %20, i8** %author14, align 8
  %22 = load i8*, i8** %copyright.addr, align 8
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %copyright15 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %23, i32 0, i32 7
  store i8* %22, i8** %copyright15, align 8
  %24 = load i8*, i8** %date.addr, align 8
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %date16 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %25, i32 0, i32 8
  store i8* %24, i8** %date16, align 8
  %26 = load i8*, i8** %deprecated.addr, align 8
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %deprecated17 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %27, i32 0, i32 9
  store i8* %26, i8** %deprecated17, align 8
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %static_strings = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %28, i32 0, i32 2
  store i32 1, i32* %static_strings, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_procedure_take_strings(%struct._GimpProcedure* %procedure, i8* %original_name, i8* %blurb, i8* %help, i8* %author, i8* %copyright, i8* %date, i8* %deprecated) #3 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %original_name.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %help.addr = alloca i8*, align 8
  %author.addr = alloca i8*, align 8
  %copyright.addr = alloca i8*, align 8
  %date.addr = alloca i8*, align 8
  %deprecated.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store i8* %original_name, i8** %original_name.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i8* %help, i8** %help.addr, align 8
  store i8* %author, i8** %author.addr, align 8
  store i8* %copyright, i8** %copyright.addr, align 8
  store i8* %date, i8** %date.addr, align 8
  store i8* %deprecated, i8** %deprecated.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_procedure_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_procedure_take_strings, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  call void @gimp_procedure_free_strings(%struct._GimpProcedure* %13)
  %14 = load i8*, i8** %original_name.addr, align 8
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %original_name11 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %15, i32 0, i32 3
  store i8* %14, i8** %original_name11, align 8
  %16 = load i8*, i8** %blurb.addr, align 8
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %blurb12 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %17, i32 0, i32 4
  store i8* %16, i8** %blurb12, align 8
  %18 = load i8*, i8** %help.addr, align 8
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %help13 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %19, i32 0, i32 5
  store i8* %18, i8** %help13, align 8
  %20 = load i8*, i8** %author.addr, align 8
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %author14 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %21, i32 0, i32 6
  store i8* %20, i8** %author14, align 8
  %22 = load i8*, i8** %copyright.addr, align 8
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %copyright15 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %23, i32 0, i32 7
  store i8* %22, i8** %copyright15, align 8
  %24 = load i8*, i8** %date.addr, align 8
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %date16 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %25, i32 0, i32 8
  store i8* %24, i8** %date16, align 8
  %26 = load i8*, i8** %deprecated.addr, align 8
  %27 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %deprecated17 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %27, i32 0, i32 9
  store i8* %26, i8** %deprecated17, align 8
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %static_strings = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %28, i32 0, i32 2
  store i32 0, i32* %static_strings, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GValueArray* @gimp_procedure_execute(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #3 {
entry:
  %retval = alloca %struct._GValueArray*, align 8
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %pdb_error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %__inst70 = alloca %struct._GTypeInstance*, align 8
  %__t72 = alloca i64, align 8
  %__r75 = alloca i32, align 4
  %tmp90 = alloca i32, align 4
  %__inst117 = alloca %struct._GTypeInstance*, align 8
  %__t119 = alloca i64, align 8
  %__r122 = alloca i32, align 4
  %tmp137 = alloca i32, align 4
  %__val = alloca %struct._GValue*, align 8
  %__t159 = alloca i64, align 8
  %__r161 = alloca i32, align 4
  %tmp172 = alloca i32, align 4
  %value = alloca %struct._GValue*, align 8
  %message = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GError* null, %struct._GError** %pdb_error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_procedure_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_procedure_execute, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %14 = bitcast %struct._Gimp* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_procedure_execute, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %27 = bitcast %struct._GimpContext* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_context_get_type() #8
  store i64 %call44, i64* %__t43, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %do.body.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %do.body.39
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type54, align 8
  %34 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %33, %34
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %36 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #9
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %37 = load i32, i32* %__r46, align 4
  store i32 %37, i32* %tmp61
  %38 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %38, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_procedure_execute, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %do.body.67

do.body.67:                                       ; preds = %do.end.66
  %39 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp68 = icmp eq %struct._GimpProgress* %39, null
  br i1 %cmp68, label %if.then.92, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.67
  %40 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %41 = bitcast %struct._GimpProgress* %40 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %41, %struct._GTypeInstance** %__inst70, align 8
  %call73 = call i64 @gimp_progress_interface_get_type() #8
  store i64 %call73, i64* %__t72, align 8
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %tobool76 = icmp ne %struct._GTypeInstance* %42, null
  br i1 %tobool76, label %if.else.78, label %if.then.77

if.then.77:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r75, align 4
  br label %if.end.89

if.else.78:                                       ; preds = %lor.lhs.false
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %g_class79 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class79, align 8
  %tobool80 = icmp ne %struct._GTypeClass* %44, null
  br i1 %tobool80, label %land.lhs.true.81, label %if.else.86

land.lhs.true.81:                                 ; preds = %if.else.78
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %g_class82 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class82, align 8
  %g_type83 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type83, align 8
  %48 = load i64, i64* %__t72, align 8
  %cmp84 = icmp eq i64 %47, %48
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %land.lhs.true.81
  store i32 1, i32* %__r75, align 4
  br label %if.end.88

if.else.86:                                       ; preds = %land.lhs.true.81, %if.else.78
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %50 = load i64, i64* %__t72, align 8
  %call87 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %49, i64 %50) #9
  store i32 %call87, i32* %__r75, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.86, %if.then.85
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.77
  %51 = load i32, i32* %__r75, align 4
  store i32 %51, i32* %tmp90
  %52 = load i32, i32* %tmp90
  %tobool91 = icmp ne i32 %52, 0
  br i1 %tobool91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %if.end.89, %do.body.67
  br label %if.end.94

if.else.93:                                       ; preds = %if.end.89
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_procedure_execute, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.94:                                        ; preds = %if.then.92
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  br label %do.body.96

do.body.96:                                       ; preds = %do.end.95
  %53 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %cmp97 = icmp ne %struct._GValueArray* %53, null
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.96
  br label %if.end.100

if.else.99:                                       ; preds = %do.body.96
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_procedure_execute, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.100:                                       ; preds = %if.then.98
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %do.body.102

do.body.102:                                      ; preds = %do.end.101
  %54 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp103 = icmp eq %struct._GError** %54, null
  br i1 %cmp103, label %if.then.106, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %do.body.102
  %55 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %56 = load %struct._GError*, %struct._GError** %55, align 8
  %cmp105 = icmp eq %struct._GError* %56, null
  br i1 %cmp105, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %lor.lhs.false.104, %do.body.102
  br label %if.end.108

if.else.107:                                      ; preds = %lor.lhs.false.104
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_procedure_execute, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.108:                                       ; preds = %if.then.106
  br label %do.end.109

do.end.109:                                       ; preds = %if.end.108
  %57 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %args110 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %58, i32 0, i32 11
  %59 = load %struct._GParamSpec**, %struct._GParamSpec*** %args110, align 8
  %60 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %60, i32 0, i32 10
  %61 = load i32, i32* %num_args, align 4
  %62 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %call111 = call i32 @gimp_procedure_validate_args(%struct._GimpProcedure* %57, %struct._GParamSpec** %59, i32 %61, %struct._GValueArray* %62, i32 0, %struct._GError** %pdb_error)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.end.115, label %if.then.113

if.then.113:                                      ; preds = %do.end.109
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %64 = load %struct._GError*, %struct._GError** %pdb_error, align 8
  %call114 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %63, i32 0, %struct._GError* %64)
  store %struct._GValueArray* %call114, %struct._GValueArray** %return_vals, align 8
  %65 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %66 = load %struct._GError*, %struct._GError** %pdb_error, align 8
  call void @g_propagate_error(%struct._GError** %65, %struct._GError* %66)
  %67 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  store %struct._GValueArray* %67, %struct._GValueArray** %retval
  br label %return

if.end.115:                                       ; preds = %do.end.109
  %68 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %69 = bitcast %struct._GimpContext* %68 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %69, %struct._GTypeInstance** %__inst117, align 8
  %call120 = call i64 @gimp_pdb_context_get_type() #8
  store i64 %call120, i64* %__t119, align 8
  %70 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst117, align 8
  %tobool123 = icmp ne %struct._GTypeInstance* %70, null
  br i1 %tobool123, label %if.else.125, label %if.then.124

if.then.124:                                      ; preds = %if.end.115
  store i32 0, i32* %__r122, align 4
  br label %if.end.136

if.else.125:                                      ; preds = %if.end.115
  %71 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst117, align 8
  %g_class126 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %71, i32 0, i32 0
  %72 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class126, align 8
  %tobool127 = icmp ne %struct._GTypeClass* %72, null
  br i1 %tobool127, label %land.lhs.true.128, label %if.else.133

land.lhs.true.128:                                ; preds = %if.else.125
  %73 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst117, align 8
  %g_class129 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %73, i32 0, i32 0
  %74 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class129, align 8
  %g_type130 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %74, i32 0, i32 0
  %75 = load i64, i64* %g_type130, align 8
  %76 = load i64, i64* %__t119, align 8
  %cmp131 = icmp eq i64 %75, %76
  br i1 %cmp131, label %if.then.132, label %if.else.133

if.then.132:                                      ; preds = %land.lhs.true.128
  store i32 1, i32* %__r122, align 4
  br label %if.end.135

if.else.133:                                      ; preds = %land.lhs.true.128, %if.else.125
  %77 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst117, align 8
  %78 = load i64, i64* %__t119, align 8
  %call134 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %77, i64 %78) #9
  store i32 %call134, i32* %__r122, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.133, %if.then.132
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.124
  %79 = load i32, i32* %__r122, align 4
  store i32 %79, i32* %tmp137
  %80 = load i32, i32* %tmp137
  %tobool138 = icmp ne i32 %80, 0
  br i1 %tobool138, label %if.then.139, label %if.else.141

if.then.139:                                      ; preds = %if.end.136
  %81 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %82 = bitcast %struct._GimpContext* %81 to i8*
  %call140 = call i8* @g_object_ref(i8* %82)
  %83 = bitcast i8* %call140 to %struct._GimpContext*
  store %struct._GimpContext* %83, %struct._GimpContext** %context.addr, align 8
  br label %if.end.143

if.else.141:                                      ; preds = %if.end.136
  %84 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %85 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call142 = call %struct._GimpContext* @gimp_pdb_context_new(%struct._Gimp* %84, %struct._GimpContext* %85, i32 1)
  store %struct._GimpContext* %call142, %struct._GimpContext** %context.addr, align 8
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.141, %if.then.139
  %86 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %87 = bitcast %struct._GimpProcedure* %86 to %struct._GTypeInstance*
  %g_class144 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %87, i32 0, i32 0
  %88 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class144, align 8
  %89 = bitcast %struct._GTypeClass* %88 to %struct._GimpProcedureClass*
  %execute = getelementptr inbounds %struct._GimpProcedureClass, %struct._GimpProcedureClass* %89, i32 0, i32 1
  %90 = load %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)** %execute, align 8
  %91 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %92 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %93 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %94 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %95 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %96 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call145 = call %struct._GValueArray* %90(%struct._GimpProcedure* %91, %struct._Gimp* %92, %struct._GimpContext* %93, %struct._GimpProgress* %94, %struct._GValueArray* %95, %struct._GError** %96)
  store %struct._GValueArray* %call145, %struct._GValueArray** %return_vals, align 8
  %97 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %98 = bitcast %struct._GimpContext* %97 to i8*
  call void @g_object_unref(i8* %98)
  %99 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %tobool146 = icmp ne %struct._GValueArray* %99, null
  br i1 %tobool146, label %if.then.147, label %if.else.185

if.then.147:                                      ; preds = %if.end.143
  %100 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %100, i32 0, i32 1
  %101 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %101, i64 0
  %call148 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx)
  switch i32 %call148, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.147, %if.then.147
  %102 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool149 = icmp ne %struct._GError** %102, null
  br i1 %tobool149, label %land.lhs.true.150, label %if.end.184

land.lhs.true.150:                                ; preds = %sw.bb
  %103 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %104 = load %struct._GError*, %struct._GError** %103, align 8
  %cmp151 = icmp eq %struct._GError* %104, null
  br i1 %cmp151, label %land.lhs.true.152, label %if.end.184

land.lhs.true.152:                                ; preds = %land.lhs.true.150
  %105 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %105, i32 0, i32 0
  %106 = load i32, i32* %n_values, align 4
  %cmp153 = icmp ugt i32 %106, 1
  br i1 %cmp153, label %land.lhs.true.154, label %if.end.184

land.lhs.true.154:                                ; preds = %land.lhs.true.152
  %107 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values156 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %107, i32 0, i32 1
  %108 = load %struct._GValue*, %struct._GValue** %values156, align 8
  %arrayidx157 = getelementptr inbounds %struct._GValue, %struct._GValue* %108, i64 1
  store %struct._GValue* %arrayidx157, %struct._GValue** %__val, align 8
  store i64 64, i64* %__t159, align 8
  %109 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool162 = icmp ne %struct._GValue* %109, null
  br i1 %tobool162, label %if.else.164, label %if.then.163

if.then.163:                                      ; preds = %land.lhs.true.154
  store i32 0, i32* %__r161, align 4
  br label %if.end.171

if.else.164:                                      ; preds = %land.lhs.true.154
  %110 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type165 = getelementptr inbounds %struct._GValue, %struct._GValue* %110, i32 0, i32 0
  %111 = load i64, i64* %g_type165, align 8
  %112 = load i64, i64* %__t159, align 8
  %cmp166 = icmp eq i64 %111, %112
  br i1 %cmp166, label %if.then.167, label %if.else.168

if.then.167:                                      ; preds = %if.else.164
  store i32 1, i32* %__r161, align 4
  br label %if.end.170

if.else.168:                                      ; preds = %if.else.164
  %113 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %114 = load i64, i64* %__t159, align 8
  %call169 = call i32 @g_type_check_value_holds(%struct._GValue* %113, i64 %114) #9
  store i32 %call169, i32* %__r161, align 4
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.168, %if.then.167
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.then.163
  %115 = load i32, i32* %__r161, align 4
  store i32 %115, i32* %tmp172
  %116 = load i32, i32* %tmp172
  %tobool173 = icmp ne i32 %116, 0
  br i1 %tobool173, label %if.then.174, label %if.end.184

if.then.174:                                      ; preds = %if.end.171
  %117 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values176 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %117, i32 0, i32 1
  %118 = load %struct._GValue*, %struct._GValue** %values176, align 8
  %arrayidx177 = getelementptr inbounds %struct._GValue, %struct._GValue* %118, i64 1
  store %struct._GValue* %arrayidx177, %struct._GValue** %value, align 8
  %119 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call179 = call i8* @g_value_get_string(%struct._GValue* %119)
  store i8* %call179, i8** %message, align 8
  %120 = load i8*, i8** %message, align 8
  %tobool180 = icmp ne i8* %120, null
  br i1 %tobool180, label %if.then.181, label %if.end.183

if.then.181:                                      ; preds = %if.then.174
  %121 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call182 = call i32 @gimp_pdb_error_quark() #8
  %122 = load i8*, i8** %message, align 8
  call void @g_set_error_literal(%struct._GError** %121, i32 %call182, i32 0, i8* %122)
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.181, %if.then.174
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.end.171, %land.lhs.true.152, %land.lhs.true.150, %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.147
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.184
  br label %if.end.197

if.else.185:                                      ; preds = %if.end.143
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_procedure_execute, i32 0, i32 0))
  %call186 = call i32 @gimp_pdb_error_quark() #8
  %call187 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0)) #6
  %123 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %124 = bitcast %struct._GimpProcedure* %123 to i8*
  %call188 = call i8* @gimp_object_get_name(i8* %124)
  %call189 = call %struct._GError* (i32, i32, i8*, ...) @g_error_new(i32 %call186, i32 4, i8* %call187, i8* %call188)
  store %struct._GError* %call189, %struct._GError** %pdb_error, align 8
  %125 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %126 = load %struct._GError*, %struct._GError** %pdb_error, align 8
  %call190 = call %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %125, i32 0, %struct._GError* %126)
  store %struct._GValueArray* %call190, %struct._GValueArray** %return_vals, align 8
  %127 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool191 = icmp ne %struct._GError** %127, null
  br i1 %tobool191, label %land.lhs.true.192, label %if.else.195

land.lhs.true.192:                                ; preds = %if.else.185
  %128 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %129 = load %struct._GError*, %struct._GError** %128, align 8
  %cmp193 = icmp eq %struct._GError* %129, null
  br i1 %cmp193, label %if.then.194, label %if.else.195

if.then.194:                                      ; preds = %land.lhs.true.192
  %130 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %131 = load %struct._GError*, %struct._GError** %pdb_error, align 8
  call void @g_propagate_error(%struct._GError** %130, %struct._GError* %131)
  br label %if.end.196

if.else.195:                                      ; preds = %land.lhs.true.192, %if.else.185
  %132 = load %struct._GError*, %struct._GError** %pdb_error, align 8
  call void @g_error_free(%struct._GError* %132)
  br label %if.end.196

if.end.196:                                       ; preds = %if.else.195, %if.then.194
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %sw.epilog
  %133 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  store %struct._GValueArray* %133, %struct._GValueArray** %retval
  br label %return

return:                                           ; preds = %if.end.197, %if.then.113, %if.else.107, %if.else.99, %if.else.93, %if.else.64, %if.else.36, %if.else.9
  %134 = load %struct._GValueArray*, %struct._GValueArray** %retval
  ret %struct._GValueArray* %134
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_procedure_validate_args(%struct._GimpProcedure* %procedure, %struct._GParamSpec** %param_specs, i32 %n_param_specs, %struct._GValueArray* %args, i32 %return_vals, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %param_specs.addr = alloca %struct._GParamSpec**, align 8
  %n_param_specs.addr = alloca i32, align 4
  %args.addr = alloca %struct._GValueArray*, align 8
  %return_vals.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %i = alloca i32, align 4
  %arg = alloca %struct._GValue*, align 8
  %pspec = alloca %struct._GParamSpec*, align 8
  %arg_type = alloca i64, align 8
  %spec_type = alloca i64, align 8
  %string_value = alloca %struct._GValue, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst65 = alloca %struct._GTypeInstance*, align 8
  %__t67 = alloca i64, align 8
  %__r70 = alloca i32, align 4
  %tmp85 = alloca i32, align 4
  %value = alloca i8*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._GParamSpec** %param_specs, %struct._GParamSpec*** %param_specs.addr, align 8
  store i32 %n_param_specs, i32* %n_param_specs.addr, align 4
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store i32 %return_vals, i32* %return_vals.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %1, i32 0, i32 0
  %2 = load i32, i32* %n_values, align 4
  %3 = load i32, i32* %n_param_specs.addr, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %4 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %n_values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %4, i32 0, i32 0
  %5 = load i32, i32* %n_values1, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %6 = load i32, i32* %n_param_specs.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %6, %cond.false ]
  %cmp2 = icmp ult i32 %0, %cond
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %8, i32 0, i32 1
  %9 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %9, i64 %idxprom
  store %struct._GValue* %arrayidx, %struct._GValue** %arg, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct._GParamSpec**, %struct._GParamSpec*** %param_specs.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %11, i64 %idxprom3
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx4, align 8
  store %struct._GParamSpec* %12, %struct._GParamSpec** %pspec, align 8
  %13 = load %struct._GValue*, %struct._GValue** %arg, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  store i64 %14, i64* %arg_type, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %16 = bitcast %struct._GParamSpec* %15 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 76)
  %17 = bitcast %struct._GTypeInstance* %call to %struct._GParamSpec*
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 3
  %18 = load i64, i64* %value_type, align 8
  store i64 %18, i64* %spec_type, align 8
  %19 = load i64, i64* %arg_type, align 8
  %20 = load i64, i64* %spec_type, align 8
  %cmp5 = icmp ne i64 %19, %20
  br i1 %cmp5, label %if.then, label %if.else.20

if.then:                                          ; preds = %for.body
  %21 = load i32, i32* %return_vals.addr, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_pdb_error_quark() #8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.16, i32 0, i32 0)) #6
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %24 = bitcast %struct._GimpProcedure* %23 to i8*
  %call9 = call i8* @gimp_object_get_name(i8* %24)
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call10 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %25)
  %26 = load i32, i32* %i, align 4
  %add = add nsw i32 %26, 1
  %27 = load i64, i64* %spec_type, align 8
  %call11 = call i8* @g_type_name(i64 %27)
  %28 = load i64, i64* %arg_type, align 8
  %call12 = call i8* @g_type_name(i64 %28)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %22, i32 %call7, i32 4, i8* %call8, i8* %call9, i8* %call10, i32 %add, i8* %call11, i8* %call12)
  br label %if.end

if.else:                                          ; preds = %if.then
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_pdb_error_quark() #8
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.17, i32 0, i32 0)) #6
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %31 = bitcast %struct._GimpProcedure* %30 to i8*
  %call15 = call i8* @gimp_object_get_name(i8* %31)
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call16 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %32)
  %33 = load i32, i32* %i, align 4
  %add17 = add nsw i32 %33, 1
  %34 = load i64, i64* %spec_type, align 8
  %call18 = call i8* @g_type_name(i64 %34)
  %35 = load i64, i64* %arg_type, align 8
  %call19 = call i8* @g_type_name(i64 %35)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %29, i32 %call13, i32 3, i8* %call14, i8* %call15, i8* %call16, i32 %add17, i8* %call18, i8* %call19)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  store i32 0, i32* %retval
  br label %return

if.else.20:                                       ; preds = %for.body
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %36, i32 0, i32 2
  %37 = load i32, i32* %flags, align 4
  %and = and i32 %37, 16384
  %tobool21 = icmp ne i32 %and, 0
  br i1 %tobool21, label %if.end.128, label %if.then.22

if.then.22:                                       ; preds = %if.else.20
  %38 = bitcast %struct._GValue* %string_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 24, i32 8, i1 false)
  %call23 = call %struct._GValue* @g_value_init(%struct._GValue* %string_value, i64 64)
  %39 = load i64, i64* %arg_type, align 8
  %call24 = call i32 @g_value_type_transformable(i64 %39, i64 64)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.then.22
  %40 = load %struct._GValue*, %struct._GValue** %arg, align 8
  %call27 = call i32 @g_value_transform(%struct._GValue* %40, %struct._GValue* %string_value)
  br label %if.end.29

if.else.28:                                       ; preds = %if.then.22
  call void @g_value_set_static_string(%struct._GValue* %string_value, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.26
  %41 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %42 = load %struct._GValue*, %struct._GValue** %arg, align 8
  %call30 = call i32 @g_param_value_validate(%struct._GParamSpec* %41, %struct._GValue* %42)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.127

if.then.32:                                       ; preds = %if.end.29
  %43 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %44 = bitcast %struct._GParamSpec* %43 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %44, %struct._GTypeInstance** %__inst, align 8
  %call33 = call i64 @gimp_param_drawable_id_get_type() #8
  store i64 %call33, i64* %__t, align 8
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool34 = icmp ne %struct._GTypeInstance* %45, null
  br i1 %tobool34, label %if.else.36, label %if.then.35

if.then.35:                                       ; preds = %if.then.32
  store i32 0, i32* %__r, align 4
  br label %if.end.45

if.else.36:                                       ; preds = %if.then.32
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %46, i32 0, i32 0
  %47 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool37 = icmp ne %struct._GTypeClass* %47, null
  br i1 %tobool37, label %land.lhs.true, label %if.else.42

land.lhs.true:                                    ; preds = %if.else.36
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class38 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %48, i32 0, i32 0
  %49 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class38, align 8
  %g_type39 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %49, i32 0, i32 0
  %50 = load i64, i64* %g_type39, align 8
  %51 = load i64, i64* %__t, align 8
  %cmp40 = icmp eq i64 %50, %51
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.44

if.else.42:                                       ; preds = %land.lhs.true, %if.else.36
  %52 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %53 = load i64, i64* %__t, align 8
  %call43 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %52, i64 %53) #9
  store i32 %call43, i32* %__r, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.41
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.35
  %54 = load i32, i32* %__r, align 4
  store i32 %54, i32* %tmp
  %55 = load i32, i32* %tmp
  %tobool46 = icmp ne i32 %55, 0
  br i1 %tobool46, label %land.lhs.true.47, label %if.else.63

land.lhs.true.47:                                 ; preds = %if.end.45
  %56 = load %struct._GValue*, %struct._GValue** %arg, align 8
  %call48 = call i32 @g_value_get_int(%struct._GValue* %56)
  %cmp49 = icmp eq i32 %call48, -1
  br i1 %cmp49, label %if.then.50, label %if.else.63

if.then.50:                                       ; preds = %land.lhs.true.47
  %57 = load i32, i32* %return_vals.addr, align 4
  %tobool51 = icmp ne i32 %57, 0
  br i1 %tobool51, label %if.then.52, label %if.else.57

if.then.52:                                       ; preds = %if.then.50
  %58 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call53 = call i32 @gimp_pdb_error_quark() #8
  %call54 = call i8* @gettext(i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.19, i32 0, i32 0)) #6
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %60 = bitcast %struct._GimpProcedure* %59 to i8*
  %call55 = call i8* @gimp_object_get_name(i8* %60)
  %61 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call56 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %61)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %58, i32 %call53, i32 4, i8* %call54, i8* %call55, i8* %call56)
  br label %if.end.62

if.else.57:                                       ; preds = %if.then.50
  %62 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call58 = call i32 @gimp_pdb_error_quark() #8
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.20, i32 0, i32 0)) #6
  %63 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %64 = bitcast %struct._GimpProcedure* %63 to i8*
  %call60 = call i8* @gimp_object_get_name(i8* %64)
  %65 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call61 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %65)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %62, i32 %call58, i32 3, i8* %call59, i8* %call60, i8* %call61)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.57, %if.then.52
  br label %if.end.126

if.else.63:                                       ; preds = %land.lhs.true.47, %if.end.45
  %66 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %67 = bitcast %struct._GParamSpec* %66 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %67, %struct._GTypeInstance** %__inst65, align 8
  %call68 = call i64 @gimp_param_image_id_get_type() #8
  store i64 %call68, i64* %__t67, align 8
  %68 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst65, align 8
  %tobool71 = icmp ne %struct._GTypeInstance* %68, null
  br i1 %tobool71, label %if.else.73, label %if.then.72

if.then.72:                                       ; preds = %if.else.63
  store i32 0, i32* %__r70, align 4
  br label %if.end.84

if.else.73:                                       ; preds = %if.else.63
  %69 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst65, align 8
  %g_class74 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %69, i32 0, i32 0
  %70 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class74, align 8
  %tobool75 = icmp ne %struct._GTypeClass* %70, null
  br i1 %tobool75, label %land.lhs.true.76, label %if.else.81

land.lhs.true.76:                                 ; preds = %if.else.73
  %71 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst65, align 8
  %g_class77 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %71, i32 0, i32 0
  %72 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class77, align 8
  %g_type78 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %72, i32 0, i32 0
  %73 = load i64, i64* %g_type78, align 8
  %74 = load i64, i64* %__t67, align 8
  %cmp79 = icmp eq i64 %73, %74
  br i1 %cmp79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %land.lhs.true.76
  store i32 1, i32* %__r70, align 4
  br label %if.end.83

if.else.81:                                       ; preds = %land.lhs.true.76, %if.else.73
  %75 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst65, align 8
  %76 = load i64, i64* %__t67, align 8
  %call82 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %75, i64 %76) #9
  store i32 %call82, i32* %__r70, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.81, %if.then.80
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.72
  %77 = load i32, i32* %__r70, align 4
  store i32 %77, i32* %tmp85
  %78 = load i32, i32* %tmp85
  %tobool86 = icmp ne i32 %78, 0
  br i1 %tobool86, label %land.lhs.true.87, label %if.else.103

land.lhs.true.87:                                 ; preds = %if.end.84
  %79 = load %struct._GValue*, %struct._GValue** %arg, align 8
  %call88 = call i32 @g_value_get_int(%struct._GValue* %79)
  %cmp89 = icmp eq i32 %call88, -1
  br i1 %cmp89, label %if.then.90, label %if.else.103

if.then.90:                                       ; preds = %land.lhs.true.87
  %80 = load i32, i32* %return_vals.addr, align 4
  %tobool91 = icmp ne i32 %80, 0
  br i1 %tobool91, label %if.then.92, label %if.else.97

if.then.92:                                       ; preds = %if.then.90
  %81 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call93 = call i32 @gimp_pdb_error_quark() #8
  %call94 = call i8* @gettext(i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.21, i32 0, i32 0)) #6
  %82 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %83 = bitcast %struct._GimpProcedure* %82 to i8*
  %call95 = call i8* @gimp_object_get_name(i8* %83)
  %84 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call96 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %84)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %81, i32 %call93, i32 4, i8* %call94, i8* %call95, i8* %call96)
  br label %if.end.102

if.else.97:                                       ; preds = %if.then.90
  %85 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call98 = call i32 @gimp_pdb_error_quark() #8
  %call99 = call i8* @gettext(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.22, i32 0, i32 0)) #6
  %86 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %87 = bitcast %struct._GimpProcedure* %86 to i8*
  %call100 = call i8* @gimp_object_get_name(i8* %87)
  %88 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call101 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %88)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %85, i32 %call98, i32 3, i8* %call99, i8* %call100, i8* %call101)
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.97, %if.then.92
  br label %if.end.125

if.else.103:                                      ; preds = %land.lhs.true.87, %if.end.84
  %call105 = call i8* @g_value_get_string(%struct._GValue* %string_value)
  store i8* %call105, i8** %value, align 8
  %89 = load i8*, i8** %value, align 8
  %cmp106 = icmp eq i8* %89, null
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.else.103
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8** %value, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %if.else.103
  %90 = load i32, i32* %return_vals.addr, align 4
  %tobool109 = icmp ne i32 %90, 0
  br i1 %tobool109, label %if.then.110, label %if.else.117

if.then.110:                                      ; preds = %if.end.108
  %91 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call111 = call i32 @gimp_pdb_error_quark() #8
  %call112 = call i8* @gettext(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.24, i32 0, i32 0)) #6
  %92 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %93 = bitcast %struct._GimpProcedure* %92 to i8*
  %call113 = call i8* @gimp_object_get_name(i8* %93)
  %94 = load i8*, i8** %value, align 8
  %95 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call114 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %95)
  %96 = load i32, i32* %i, align 4
  %add115 = add nsw i32 %96, 1
  %97 = load i64, i64* %spec_type, align 8
  %call116 = call i8* @g_type_name(i64 %97)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %91, i32 %call111, i32 4, i8* %call112, i8* %call113, i8* %94, i8* %call114, i32 %add115, i8* %call116)
  br label %if.end.124

if.else.117:                                      ; preds = %if.end.108
  %98 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call118 = call i32 @gimp_pdb_error_quark() #8
  %call119 = call i8* @gettext(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.25, i32 0, i32 0)) #6
  %99 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %100 = bitcast %struct._GimpProcedure* %99 to i8*
  %call120 = call i8* @gimp_object_get_name(i8* %100)
  %101 = load i8*, i8** %value, align 8
  %102 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call121 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %102)
  %103 = load i32, i32* %i, align 4
  %add122 = add nsw i32 %103, 1
  %104 = load i64, i64* %spec_type, align 8
  %call123 = call i8* @g_type_name(i64 %104)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %98, i32 %call118, i32 3, i8* %call119, i8* %call120, i8* %101, i8* %call121, i32 %add122, i8* %call123)
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.117, %if.then.110
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.end.102
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.62
  call void @g_value_unset(%struct._GValue* %string_value)
  store i32 0, i32* %retval
  br label %return

if.end.127:                                       ; preds = %if.end.29
  call void @g_value_unset(%struct._GValue* %string_value)
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.else.20
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128
  br label %for.inc

for.inc:                                          ; preds = %if.end.129
  %105 = load i32, i32* %i, align 4
  %inc = add nsw i32 %105, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.126, %if.end
  %106 = load i32, i32* %retval
  ret i32 %106
}

; Function Attrs: nounwind uwtable
define %struct._GValueArray* @gimp_procedure_get_return_values(%struct._GimpProcedure* %procedure, i32 %success, %struct._GError* %error) #3 {
entry:
  %retval = alloca %struct._GValueArray*, align 8
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %success.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError*, align 8
  %args = alloca %struct._GValueArray*, align 8
  %value = alloca %struct._GValue, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store i32 %success, i32* %success.addr, align 4
  store %struct._GError* %error, %struct._GError** %error.addr, align 8
  %0 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i32, i32* %success.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %3 = bitcast %struct._GimpProcedure* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_procedure_get_type() #8
  store i64 %call, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %9, %10
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #9
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %14, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_procedure_get_return_values, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %15 = load i32, i32* %success.addr, align 4
  %tobool12 = icmp ne i32 %15, 0
  br i1 %tobool12, label %if.then.13, label %if.else.23

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %num_values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %16, i32 0, i32 12
  %17 = load i32, i32* %num_values, align 4
  %add = add nsw i32 %17, 1
  %call14 = call %struct._GValueArray* @g_value_array_new(i32 %add)
  store %struct._GValueArray* %call14, %struct._GValueArray** %args, align 8
  %call15 = call i64 @gimp_pdb_status_type_get_type() #8
  %call16 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %call15)
  call void @g_value_set_enum(%struct._GValue* %value, i32 3)
  %18 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %call17 = call %struct._GValueArray* @g_value_array_append(%struct._GValueArray* %18, %struct._GValue* %value)
  call void @g_value_unset(%struct._GValue* %value)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %19 = load i32, i32* %i, align 4
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %num_values18 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %20, i32 0, i32 12
  %21 = load i32, i32* %num_values18, align 4
  %cmp19 = icmp slt i32 %19, %21
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %23, i32 0, i32 13
  %24 = load %struct._GParamSpec**, %struct._GParamSpec*** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %24, i64 %idxprom
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %26 = bitcast %struct._GParamSpec* %25 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 76)
  %27 = bitcast %struct._GTypeInstance* %call20 to %struct._GParamSpec*
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %27, i32 0, i32 3
  %28 = load i64, i64* %value_type, align 8
  %call21 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %28)
  %29 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %call22 = call %struct._GValueArray* @g_value_array_append(%struct._GValueArray* %29, %struct._GValue* %value)
  call void @g_value_unset(%struct._GValue* %value)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.49

if.else.23:                                       ; preds = %do.end
  %31 = load %struct._GError*, %struct._GError** %error.addr, align 8
  %tobool24 = icmp ne %struct._GError* %31, null
  br i1 %tobool24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else.23
  %32 = load %struct._GError*, %struct._GError** %error.addr, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %32, i32 0, i32 2
  %33 = load i8*, i8** %message, align 8
  %tobool25 = icmp ne i8* %33, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else.23
  %34 = phi i1 [ false, %if.else.23 ], [ %tobool25, %land.rhs ]
  %cond = select i1 %34, i32 2, i32 1
  %call26 = call %struct._GValueArray* @g_value_array_new(i32 %cond)
  store %struct._GValueArray* %call26, %struct._GValueArray** %args, align 8
  %call27 = call i64 @gimp_pdb_status_type_get_type() #8
  %call28 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %call27)
  %35 = load %struct._GError*, %struct._GError** %error.addr, align 8
  %tobool29 = icmp ne %struct._GError* %35, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.37

land.lhs.true.30:                                 ; preds = %land.end
  %36 = load %struct._GError*, %struct._GError** %error.addr, align 8
  %domain = getelementptr inbounds %struct._GError, %struct._GError* %36, i32 0, i32 0
  %37 = load i32, i32* %domain, align 4
  %call31 = call i32 @gimp_pdb_error_quark() #8
  %cmp32 = icmp eq i32 %37, %call31
  br i1 %cmp32, label %if.then.33, label %if.else.37

if.then.33:                                       ; preds = %land.lhs.true.30
  %38 = load %struct._GError*, %struct._GError** %error.addr, align 8
  %code = getelementptr inbounds %struct._GError, %struct._GError* %38, i32 0, i32 1
  %39 = load i32, i32* %code, align 4
  switch i32 %39, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 1, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %if.then.33, %if.then.33, %if.then.33, %if.then.33, %if.then.33
  call void @g_value_set_enum(%struct._GValue* %value, i32 1)
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.then.33
  call void @g_value_set_enum(%struct._GValue* %value, i32 4)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.33
  br label %do.body.35

do.body.35:                                       ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i32 496, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_procedure_get_return_values, i32 0, i32 0), i8* null) #10
  unreachable

do.end.36:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.36, %sw.bb.34, %sw.bb
  br label %if.end.38

if.else.37:                                       ; preds = %land.lhs.true.30, %land.end
  call void @g_value_set_enum(%struct._GValue* %value, i32 0)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %sw.epilog
  %40 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %call39 = call %struct._GValueArray* @g_value_array_append(%struct._GValueArray* %40, %struct._GValue* %value)
  call void @g_value_unset(%struct._GValue* %value)
  %41 = load %struct._GError*, %struct._GError** %error.addr, align 8
  %tobool40 = icmp ne %struct._GError* %41, null
  br i1 %tobool40, label %land.lhs.true.41, label %if.end.48

land.lhs.true.41:                                 ; preds = %if.end.38
  %42 = load %struct._GError*, %struct._GError** %error.addr, align 8
  %message42 = getelementptr inbounds %struct._GError, %struct._GError* %42, i32 0, i32 2
  %43 = load i8*, i8** %message42, align 8
  %tobool43 = icmp ne i8* %43, null
  br i1 %tobool43, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %land.lhs.true.41
  %call45 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 64)
  %44 = load %struct._GError*, %struct._GError** %error.addr, align 8
  %message46 = getelementptr inbounds %struct._GError, %struct._GError* %44, i32 0, i32 2
  %45 = load i8*, i8** %message46, align 8
  call void @g_value_set_string(%struct._GValue* %value, i8* %45)
  %46 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %call47 = call %struct._GValueArray* @g_value_array_append(%struct._GValueArray* %46, %struct._GValue* %value)
  call void @g_value_unset(%struct._GValue* %value)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.44, %land.lhs.true.41, %if.end.38
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %for.end
  %47 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  store %struct._GValueArray* %47, %struct._GValueArray** %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.else.10
  %48 = load %struct._GValueArray*, %struct._GValueArray** %retval
  ret %struct._GValueArray* %48
}

declare void @g_propagate_error(%struct._GError**, %struct._GError*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_context_get_type() #2

declare i8* @g_object_ref(i8*) #1

declare %struct._GimpContext* @gimp_pdb_context_new(%struct._Gimp*, %struct._GimpContext*, i32) #1

declare void @g_object_unref(i8*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_value_holds(%struct._GValue*, i64) #4

declare i8* @g_value_get_string(%struct._GValue*) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_pdb_error_quark() #2

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare %struct._GError* @g_error_new(i32, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare i8* @gimp_object_get_name(i8*) #1

declare void @g_error_free(%struct._GError*) #1

; Function Attrs: nounwind uwtable
define void @gimp_procedure_execute_async(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GimpObject* %display, %struct._GError** %error) #3 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %display.addr = alloca %struct._GimpObject*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %__inst70 = alloca %struct._GTypeInstance*, align 8
  %__t72 = alloca i64, align 8
  %__r75 = alloca i32, align 4
  %tmp90 = alloca i32, align 4
  %__inst106 = alloca %struct._GTypeInstance*, align 8
  %__t108 = alloca i64, align 8
  %__r111 = alloca i32, align 4
  %tmp126 = alloca i32, align 4
  %__inst145 = alloca %struct._GTypeInstance*, align 8
  %__t147 = alloca i64, align 8
  %__r150 = alloca i32, align 4
  %tmp165 = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GimpObject* %display, %struct._GimpObject** %display.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_procedure_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_procedure_execute_async, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.173

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %14 = bitcast %struct._Gimp* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_procedure_execute_async, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.173

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %27 = bitcast %struct._GimpContext* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_context_get_type() #8
  store i64 %call44, i64* %__t43, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %do.body.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %do.body.39
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type54, align 8
  %34 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %33, %34
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %36 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #9
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %37 = load i32, i32* %__r46, align 4
  store i32 %37, i32* %tmp61
  %38 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %38, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_procedure_execute_async, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.173

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %do.body.67

do.body.67:                                       ; preds = %do.end.66
  %39 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp68 = icmp eq %struct._GimpProgress* %39, null
  br i1 %cmp68, label %if.then.92, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.67
  %40 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %41 = bitcast %struct._GimpProgress* %40 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %41, %struct._GTypeInstance** %__inst70, align 8
  %call73 = call i64 @gimp_progress_interface_get_type() #8
  store i64 %call73, i64* %__t72, align 8
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %tobool76 = icmp ne %struct._GTypeInstance* %42, null
  br i1 %tobool76, label %if.else.78, label %if.then.77

if.then.77:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r75, align 4
  br label %if.end.89

if.else.78:                                       ; preds = %lor.lhs.false
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %g_class79 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class79, align 8
  %tobool80 = icmp ne %struct._GTypeClass* %44, null
  br i1 %tobool80, label %land.lhs.true.81, label %if.else.86

land.lhs.true.81:                                 ; preds = %if.else.78
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %g_class82 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class82, align 8
  %g_type83 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type83, align 8
  %48 = load i64, i64* %__t72, align 8
  %cmp84 = icmp eq i64 %47, %48
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %land.lhs.true.81
  store i32 1, i32* %__r75, align 4
  br label %if.end.88

if.else.86:                                       ; preds = %land.lhs.true.81, %if.else.78
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %50 = load i64, i64* %__t72, align 8
  %call87 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %49, i64 %50) #9
  store i32 %call87, i32* %__r75, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.86, %if.then.85
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.77
  %51 = load i32, i32* %__r75, align 4
  store i32 %51, i32* %tmp90
  %52 = load i32, i32* %tmp90
  %tobool91 = icmp ne i32 %52, 0
  br i1 %tobool91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %if.end.89, %do.body.67
  br label %if.end.94

if.else.93:                                       ; preds = %if.end.89
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_procedure_execute_async, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.173

if.end.94:                                        ; preds = %if.then.92
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  br label %do.body.96

do.body.96:                                       ; preds = %do.end.95
  %53 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %cmp97 = icmp ne %struct._GValueArray* %53, null
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.96
  br label %if.end.100

if.else.99:                                       ; preds = %do.body.96
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_procedure_execute_async, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.173

if.end.100:                                       ; preds = %if.then.98
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %do.body.102

do.body.102:                                      ; preds = %do.end.101
  %54 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %cmp103 = icmp eq %struct._GimpObject* %54, null
  br i1 %cmp103, label %if.then.128, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %do.body.102
  %55 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %56 = bitcast %struct._GimpObject* %55 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %56, %struct._GTypeInstance** %__inst106, align 8
  %call109 = call i64 @gimp_object_get_type() #8
  store i64 %call109, i64* %__t108, align 8
  %57 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst106, align 8
  %tobool112 = icmp ne %struct._GTypeInstance* %57, null
  br i1 %tobool112, label %if.else.114, label %if.then.113

if.then.113:                                      ; preds = %lor.lhs.false.104
  store i32 0, i32* %__r111, align 4
  br label %if.end.125

if.else.114:                                      ; preds = %lor.lhs.false.104
  %58 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst106, align 8
  %g_class115 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %58, i32 0, i32 0
  %59 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class115, align 8
  %tobool116 = icmp ne %struct._GTypeClass* %59, null
  br i1 %tobool116, label %land.lhs.true.117, label %if.else.122

land.lhs.true.117:                                ; preds = %if.else.114
  %60 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst106, align 8
  %g_class118 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %60, i32 0, i32 0
  %61 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class118, align 8
  %g_type119 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %61, i32 0, i32 0
  %62 = load i64, i64* %g_type119, align 8
  %63 = load i64, i64* %__t108, align 8
  %cmp120 = icmp eq i64 %62, %63
  br i1 %cmp120, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %land.lhs.true.117
  store i32 1, i32* %__r111, align 4
  br label %if.end.124

if.else.122:                                      ; preds = %land.lhs.true.117, %if.else.114
  %64 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst106, align 8
  %65 = load i64, i64* %__t108, align 8
  %call123 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %64, i64 %65) #9
  store i32 %call123, i32* %__r111, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.122, %if.then.121
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.then.113
  %66 = load i32, i32* %__r111, align 4
  store i32 %66, i32* %tmp126
  %67 = load i32, i32* %tmp126
  %tobool127 = icmp ne i32 %67, 0
  br i1 %tobool127, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %if.end.125, %do.body.102
  br label %if.end.130

if.else.129:                                      ; preds = %if.end.125
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_procedure_execute_async, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.173

if.end.130:                                       ; preds = %if.then.128
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  br label %do.body.132

do.body.132:                                      ; preds = %do.end.131
  %68 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp133 = icmp eq %struct._GError** %68, null
  br i1 %cmp133, label %if.then.136, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %do.body.132
  %69 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %70 = load %struct._GError*, %struct._GError** %69, align 8
  %cmp135 = icmp eq %struct._GError* %70, null
  br i1 %cmp135, label %if.then.136, label %if.else.137

if.then.136:                                      ; preds = %lor.lhs.false.134, %do.body.132
  br label %if.end.138

if.else.137:                                      ; preds = %lor.lhs.false.134
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_procedure_execute_async, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.173

if.end.138:                                       ; preds = %if.then.136
  br label %do.end.139

do.end.139:                                       ; preds = %if.end.138
  %71 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %72 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %args140 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %72, i32 0, i32 11
  %73 = load %struct._GParamSpec**, %struct._GParamSpec*** %args140, align 8
  %74 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %74, i32 0, i32 10
  %75 = load i32, i32* %num_args, align 4
  %76 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %77 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call141 = call i32 @gimp_procedure_validate_args(%struct._GimpProcedure* %71, %struct._GParamSpec** %73, i32 %75, %struct._GValueArray* %76, i32 0, %struct._GError** %77)
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.then.143, label %if.end.173

if.then.143:                                      ; preds = %do.end.139
  %78 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %79 = bitcast %struct._GimpContext* %78 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %79, %struct._GTypeInstance** %__inst145, align 8
  %call148 = call i64 @gimp_pdb_context_get_type() #8
  store i64 %call148, i64* %__t147, align 8
  %80 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst145, align 8
  %tobool151 = icmp ne %struct._GTypeInstance* %80, null
  br i1 %tobool151, label %if.else.153, label %if.then.152

if.then.152:                                      ; preds = %if.then.143
  store i32 0, i32* %__r150, align 4
  br label %if.end.164

if.else.153:                                      ; preds = %if.then.143
  %81 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst145, align 8
  %g_class154 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %81, i32 0, i32 0
  %82 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class154, align 8
  %tobool155 = icmp ne %struct._GTypeClass* %82, null
  br i1 %tobool155, label %land.lhs.true.156, label %if.else.161

land.lhs.true.156:                                ; preds = %if.else.153
  %83 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst145, align 8
  %g_class157 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %83, i32 0, i32 0
  %84 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class157, align 8
  %g_type158 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %84, i32 0, i32 0
  %85 = load i64, i64* %g_type158, align 8
  %86 = load i64, i64* %__t147, align 8
  %cmp159 = icmp eq i64 %85, %86
  br i1 %cmp159, label %if.then.160, label %if.else.161

if.then.160:                                      ; preds = %land.lhs.true.156
  store i32 1, i32* %__r150, align 4
  br label %if.end.163

if.else.161:                                      ; preds = %land.lhs.true.156, %if.else.153
  %87 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst145, align 8
  %88 = load i64, i64* %__t147, align 8
  %call162 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %87, i64 %88) #9
  store i32 %call162, i32* %__r150, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.161, %if.then.160
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.then.152
  %89 = load i32, i32* %__r150, align 4
  store i32 %89, i32* %tmp165
  %90 = load i32, i32* %tmp165
  %tobool166 = icmp ne i32 %90, 0
  br i1 %tobool166, label %if.then.167, label %if.else.169

if.then.167:                                      ; preds = %if.end.164
  %91 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %92 = bitcast %struct._GimpContext* %91 to i8*
  %call168 = call i8* @g_object_ref(i8* %92)
  %93 = bitcast i8* %call168 to %struct._GimpContext*
  store %struct._GimpContext* %93, %struct._GimpContext** %context.addr, align 8
  br label %if.end.171

if.else.169:                                      ; preds = %if.end.164
  %94 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %95 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call170 = call %struct._GimpContext* @gimp_pdb_context_new(%struct._Gimp* %94, %struct._GimpContext* %95, i32 1)
  store %struct._GimpContext* %call170, %struct._GimpContext** %context.addr, align 8
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.169, %if.then.167
  %96 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %97 = bitcast %struct._GimpProcedure* %96 to %struct._GTypeInstance*
  %g_class172 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %97, i32 0, i32 0
  %98 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class172, align 8
  %99 = bitcast %struct._GTypeClass* %98 to %struct._GimpProcedureClass*
  %execute_async = getelementptr inbounds %struct._GimpProcedureClass, %struct._GimpProcedureClass* %99, i32 0, i32 2
  %100 = load void (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GimpObject*)*, void (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GimpObject*)** %execute_async, align 8
  %101 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %102 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %103 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %104 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %105 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %106 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  call void %100(%struct._GimpProcedure* %101, %struct._Gimp* %102, %struct._GimpContext* %103, %struct._GimpProgress* %104, %struct._GValueArray* %105, %struct._GimpObject* %106)
  %107 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %108 = bitcast %struct._GimpContext* %107 to i8*
  call void @g_object_unref(i8* %108)
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.9, %if.else.36, %if.else.64, %if.else.93, %if.else.99, %if.else.129, %if.else.137, %if.end.171, %do.end.139
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GValueArray* @gimp_procedure_get_arguments(%struct._GimpProcedure* %procedure) #3 {
entry:
  %retval = alloca %struct._GValueArray*, align 8
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %args = alloca %struct._GValueArray*, align 8
  %value = alloca %struct._GValue, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  %0 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %2 = bitcast %struct._GimpProcedure* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_procedure_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_procedure_get_arguments, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %14, i32 0, i32 10
  %15 = load i32, i32* %num_args, align 4
  %call11 = call %struct._GValueArray* @g_value_array_new(i32 %15)
  store %struct._GValueArray* %call11, %struct._GValueArray** %args, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %16 = load i32, i32* %i, align 4
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %num_args12 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %17, i32 0, i32 10
  %18 = load i32, i32* %num_args12, align 4
  %cmp13 = icmp slt i32 %16, %18
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %args14 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %20, i32 0, i32 11
  %21 = load %struct._GParamSpec**, %struct._GParamSpec*** %args14, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %21, i64 %idxprom
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %23 = bitcast %struct._GParamSpec* %22 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 76)
  %24 = bitcast %struct._GTypeInstance* %call15 to %struct._GParamSpec*
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %24, i32 0, i32 3
  %25 = load i64, i64* %value_type, align 8
  %call16 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %25)
  %26 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %call17 = call %struct._GValueArray* @g_value_array_append(%struct._GValueArray* %26, %struct._GValue* %value)
  call void @g_value_unset(%struct._GValue* %value)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  store %struct._GValueArray* %28, %struct._GValueArray** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  %29 = load %struct._GValueArray*, %struct._GValueArray** %retval
  ret %struct._GValueArray* %29
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare %struct._GValueArray* @g_value_array_new(i32) #1

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GValueArray* @g_value_array_append(%struct._GValueArray*, %struct._GValue*) #1

declare void @g_value_unset(%struct._GValue*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_status_type_get_type() #2

declare void @g_value_set_enum(%struct._GValue*, i32) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #7

declare void @g_value_set_string(%struct._GValue*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_procedure_add_argument(%struct._GimpProcedure* %procedure, %struct._GParamSpec* %pspec) #3 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_procedure_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_procedure_add_argument, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %call12 = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %14, i64 76) #9
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_procedure_add_argument, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %15, i32 0, i32 11
  %16 = load %struct._GParamSpec**, %struct._GParamSpec*** %args, align 8
  %17 = bitcast %struct._GParamSpec** %16 to i8*
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %18, i32 0, i32 10
  %19 = load i32, i32* %num_args, align 4
  %add = add nsw i32 %19, 1
  %conv = sext i32 %add to i64
  %call18 = call i8* @g_realloc_n(i8* %17, i64 %conv, i64 8)
  %20 = bitcast i8* %call18 to %struct._GParamSpec**
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %args19 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %21, i32 0, i32 11
  store %struct._GParamSpec** %20, %struct._GParamSpec*** %args19, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %num_args20 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %23, i32 0, i32 10
  %24 = load i32, i32* %num_args20, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %args21 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %25, i32 0, i32 11
  %26 = load %struct._GParamSpec**, %struct._GParamSpec*** %args21, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %26, i64 %idxprom
  store %struct._GParamSpec* %22, %struct._GParamSpec** %arrayidx, align 8
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call22 = call %struct._GParamSpec* @g_param_spec_ref_sink(%struct._GParamSpec* %27)
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %num_args23 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %28, i32 0, i32 10
  %29 = load i32, i32* %num_args23, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %num_args23, align 4
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance*, i64) #4

declare i8* @g_realloc_n(i8*, i64, i64) #1

declare %struct._GParamSpec* @g_param_spec_ref_sink(%struct._GParamSpec*) #1

; Function Attrs: nounwind uwtable
define void @gimp_procedure_add_return_value(%struct._GimpProcedure* %procedure, %struct._GParamSpec* %pspec) #3 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %1 = bitcast %struct._GimpProcedure* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_procedure_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_procedure_add_return_value, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %call12 = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %14, i64 76) #9
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_procedure_add_return_value, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %15, i32 0, i32 13
  %16 = load %struct._GParamSpec**, %struct._GParamSpec*** %values, align 8
  %17 = bitcast %struct._GParamSpec** %16 to i8*
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %num_values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %18, i32 0, i32 12
  %19 = load i32, i32* %num_values, align 4
  %add = add nsw i32 %19, 1
  %conv = sext i32 %add to i64
  %call18 = call i8* @g_realloc_n(i8* %17, i64 %conv, i64 8)
  %20 = bitcast i8* %call18 to %struct._GParamSpec**
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %values19 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %21, i32 0, i32 13
  store %struct._GParamSpec** %20, %struct._GParamSpec*** %values19, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %num_values20 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %23, i32 0, i32 12
  %24 = load i32, i32* %num_values20, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %values21 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %25, i32 0, i32 13
  %26 = load %struct._GParamSpec**, %struct._GParamSpec*** %values21, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %26, i64 %idxprom
  store %struct._GParamSpec* %22, %struct._GParamSpec** %arrayidx, align 8
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call22 = call %struct._GParamSpec* @g_param_spec_ref_sink(%struct._GParamSpec* %27)
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %num_values23 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %28, i32 0, i32 12
  %29 = load i32, i32* %num_values23, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %num_values23, align 4
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpProcedure* @gimp_procedure_create_override(%struct._GimpProcedure* %procedure, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* %new_marshal_func) #3 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %new_marshal_func.addr = alloca %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*, align 8
  %new_procedure = alloca %struct._GimpProcedure*, align 8
  %name = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* %new_marshal_func, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)** %new_marshal_func.addr, align 8
  store %struct._GimpProcedure* null, %struct._GimpProcedure** %new_procedure, align 8
  store i8* null, i8** %name, align 8
  store i32 0, i32* %i, align 4
  %0 = load %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)** %new_marshal_func.addr, align 8
  %call = call %struct._GimpProcedure* @gimp_procedure_new(%struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* %0)
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %new_procedure, align 8
  %1 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %2 = bitcast %struct._GimpProcedure* %1 to i8*
  %call1 = call i8* @gimp_object_get_name(i8* %2)
  store i8* %call1, i8** %name, align 8
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %new_procedure, align 8
  %4 = bitcast %struct._GimpProcedure* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_object_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpObject*
  %6 = load i8*, i8** %name, align 8
  call void @gimp_object_set_static_name(%struct._GimpObject* %5, i8* %6)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %8, i32 0, i32 10
  %9 = load i32, i32* %num_args, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %new_procedure, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %12, i32 0, i32 11
  %13 = load %struct._GParamSpec**, %struct._GParamSpec*** %args, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %13, i64 %idxprom
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %10, %struct._GParamSpec* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.9, %for.end
  %16 = load i32, i32* %i, align 4
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %num_values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %17, i32 0, i32 12
  %18 = load i32, i32* %num_values, align 4
  %cmp5 = icmp slt i32 %16, %18
  br i1 %cmp5, label %for.body.6, label %for.end.11

for.body.6:                                       ; preds = %for.cond.4
  %19 = load %struct._GimpProcedure*, %struct._GimpProcedure** %new_procedure, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %20 to i64
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %21, i32 0, i32 13
  %22 = load %struct._GParamSpec**, %struct._GParamSpec*** %values, align 8
  %arrayidx8 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %22, i64 %idxprom7
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx8, align 8
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %19, %struct._GParamSpec* %23)
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.6
  %24 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %24, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond.4

for.end.11:                                       ; preds = %for.cond.4
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %new_procedure, align 8
  ret %struct._GimpProcedure* %25
}

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_procedure_name_compare(%struct._GimpProcedure* %proc1, %struct._GimpProcedure* %proc2) #3 {
entry:
  %proc1.addr = alloca %struct._GimpProcedure*, align 8
  %proc2.addr = alloca %struct._GimpProcedure*, align 8
  store %struct._GimpProcedure* %proc1, %struct._GimpProcedure** %proc1.addr, align 8
  store %struct._GimpProcedure* %proc2, %struct._GimpProcedure** %proc2.addr, align 8
  %0 = load %struct._GimpProcedure*, %struct._GimpProcedure** %proc1.addr, align 8
  %original_name = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %0, i32 0, i32 3
  %1 = load i8*, i8** %original_name, align 8
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %proc2.addr, align 8
  %original_name1 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %2, i32 0, i32 3
  %3 = load i8*, i8** %original_name1, align 8
  %call = call i32 @strcmp(i8* %1, i8* %3) #9
  ret i32 %call
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_procedure_class_init(%struct._GimpProcedureClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpProcedureClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  store %struct._GimpProcedureClass* %klass, %struct._GimpProcedureClass** %klass.addr, align 8
  %0 = load %struct._GimpProcedureClass*, %struct._GimpProcedureClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpProcedureClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpProcedureClass*, %struct._GimpProcedureClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpProcedureClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #8
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_procedure_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %7, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_procedure_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %8 = load %struct._GimpProcedureClass*, %struct._GimpProcedureClass** %klass.addr, align 8
  %execute = getelementptr inbounds %struct._GimpProcedureClass, %struct._GimpProcedureClass* %8, i32 0, i32 1
  store %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* @gimp_procedure_real_execute, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)** %execute, align 8
  %9 = load %struct._GimpProcedureClass*, %struct._GimpProcedureClass** %klass.addr, align 8
  %execute_async = getelementptr inbounds %struct._GimpProcedureClass, %struct._GimpProcedureClass* %9, i32 0, i32 2
  store void (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GimpObject*)* @gimp_procedure_real_execute_async, void (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GimpObject*)** %execute_async, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_procedure_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %i = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_procedure_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProcedure*
  store %struct._GimpProcedure* %2, %struct._GimpProcedure** %procedure, align 8
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  call void @gimp_procedure_free_strings(%struct._GimpProcedure* %3)
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %4, i32 0, i32 11
  %5 = load %struct._GParamSpec**, %struct._GParamSpec*** %args, align 8
  %tobool = icmp ne %struct._GParamSpec** %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %7, i32 0, i32 10
  %8 = load i32, i32* %num_args, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args2 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %10, i32 0, i32 11
  %11 = load %struct._GParamSpec**, %struct._GParamSpec*** %args2, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %11, i64 %idxprom
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  call void @g_param_spec_unref(%struct._GParamSpec* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args3 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %14, i32 0, i32 11
  %15 = load %struct._GParamSpec**, %struct._GParamSpec*** %args3, align 8
  %16 = bitcast %struct._GParamSpec** %15 to i8*
  call void @g_free(i8* %16)
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args4 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %17, i32 0, i32 11
  store %struct._GParamSpec** null, %struct._GParamSpec*** %args4, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %18, i32 0, i32 13
  %19 = load %struct._GParamSpec**, %struct._GParamSpec*** %values, align 8
  %tobool5 = icmp ne %struct._GParamSpec** %19, null
  br i1 %tobool5, label %if.then.6, label %if.end.18

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.13, %if.then.6
  %20 = load i32, i32* %i, align 4
  %21 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %21, i32 0, i32 12
  %22 = load i32, i32* %num_values, align 4
  %cmp8 = icmp slt i32 %20, %22
  br i1 %cmp8, label %for.body.9, label %for.end.15

for.body.9:                                       ; preds = %for.cond.7
  %23 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %23 to i64
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %values11 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %24, i32 0, i32 13
  %25 = load %struct._GParamSpec**, %struct._GParamSpec*** %values11, align 8
  %arrayidx12 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %25, i64 %idxprom10
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx12, align 8
  call void @g_param_spec_unref(%struct._GParamSpec* %26)
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.9
  %27 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %27, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond.7

for.end.15:                                       ; preds = %for.cond.7
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %values16 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %28, i32 0, i32 13
  %29 = load %struct._GParamSpec**, %struct._GParamSpec*** %values16, align 8
  %30 = bitcast %struct._GParamSpec** %29 to i8*
  call void @g_free(i8* %30)
  %31 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %values17 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %31, i32 0, i32 13
  store %struct._GParamSpec** null, %struct._GParamSpec*** %values17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %for.end.15, %if.end
  %32 = load i8*, i8** @gimp_procedure_parent_class, align 8
  %33 = bitcast i8* %32 to %struct._GTypeClass*
  %call19 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %33, i64 80)
  %34 = bitcast %struct._GTypeClass* %call19 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %34, i32 0, i32 6
  %35 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %36 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %35(%struct._GObject* %36)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_procedure_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %memsize = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_procedure_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProcedure*
  store %struct._GimpProcedure* %2, %struct._GimpProcedure** %procedure, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %static_strings = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %3, i32 0, i32 2
  %4 = load i32, i32* %static_strings, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %original_name = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %5, i32 0, i32 3
  %6 = load i8*, i8** %original_name, align 8
  %call2 = call i64 @gimp_string_get_memsize(i8* %6)
  %7 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %7, %call2
  store i64 %add, i64* %memsize, align 8
  %8 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %blurb = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %8, i32 0, i32 4
  %9 = load i8*, i8** %blurb, align 8
  %call3 = call i64 @gimp_string_get_memsize(i8* %9)
  %10 = load i64, i64* %memsize, align 8
  %add4 = add nsw i64 %10, %call3
  store i64 %add4, i64* %memsize, align 8
  %11 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %help = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %11, i32 0, i32 5
  %12 = load i8*, i8** %help, align 8
  %call5 = call i64 @gimp_string_get_memsize(i8* %12)
  %13 = load i64, i64* %memsize, align 8
  %add6 = add nsw i64 %13, %call5
  store i64 %add6, i64* %memsize, align 8
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %author = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %14, i32 0, i32 6
  %15 = load i8*, i8** %author, align 8
  %call7 = call i64 @gimp_string_get_memsize(i8* %15)
  %16 = load i64, i64* %memsize, align 8
  %add8 = add nsw i64 %16, %call7
  store i64 %add8, i64* %memsize, align 8
  %17 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %copyright = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %17, i32 0, i32 7
  %18 = load i8*, i8** %copyright, align 8
  %call9 = call i64 @gimp_string_get_memsize(i8* %18)
  %19 = load i64, i64* %memsize, align 8
  %add10 = add nsw i64 %19, %call9
  store i64 %add10, i64* %memsize, align 8
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %date = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %20, i32 0, i32 8
  %21 = load i8*, i8** %date, align 8
  %call11 = call i64 @gimp_string_get_memsize(i8* %21)
  %22 = load i64, i64* %memsize, align 8
  %add12 = add nsw i64 %22, %call11
  store i64 %add12, i64* %memsize, align 8
  %23 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %deprecated = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %23, i32 0, i32 9
  %24 = load i8*, i8** %deprecated, align 8
  %call13 = call i64 @gimp_string_get_memsize(i8* %24)
  %25 = load i64, i64* %memsize, align 8
  %add14 = add nsw i64 %25, %call13
  store i64 %add14, i64* %memsize, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %26 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %26, i32 0, i32 10
  %27 = load i32, i32* %num_args, align 4
  %conv = sext i32 %27 to i64
  %mul = mul i64 %conv, 8
  %28 = load i64, i64* %memsize, align 8
  %add15 = add i64 %28, %mul
  store i64 %add15, i64* %memsize, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %29 = load i32, i32* %i, align 4
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args16 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %30, i32 0, i32 10
  %31 = load i32, i32* %num_args16, align 4
  %cmp = icmp slt i32 %29, %31
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %i, align 4
  %idxprom = sext i32 %32 to i64
  %33 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %33, i32 0, i32 11
  %34 = load %struct._GParamSpec**, %struct._GParamSpec*** %args, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %34, i64 %idxprom
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %call18 = call i64 @gimp_g_param_spec_get_memsize(%struct._GParamSpec* %35)
  %36 = load i64, i64* %memsize, align 8
  %add19 = add nsw i64 %36, %call18
  store i64 %add19, i64* %memsize, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %38, i32 0, i32 12
  %39 = load i32, i32* %num_values, align 4
  %conv20 = sext i32 %39 to i64
  %mul21 = mul i64 %conv20, 8
  %40 = load i64, i64* %memsize, align 8
  %add22 = add i64 %40, %mul21
  store i64 %add22, i64* %memsize, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.32, %for.end
  %41 = load i32, i32* %i, align 4
  %42 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_values24 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %42, i32 0, i32 12
  %43 = load i32, i32* %num_values24, align 4
  %cmp25 = icmp slt i32 %41, %43
  br i1 %cmp25, label %for.body.27, label %for.end.34

for.body.27:                                      ; preds = %for.cond.23
  %44 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %44 to i64
  %45 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %45, i32 0, i32 13
  %46 = load %struct._GParamSpec**, %struct._GParamSpec*** %values, align 8
  %arrayidx29 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %46, i64 %idxprom28
  %47 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx29, align 8
  %call30 = call i64 @gimp_g_param_spec_get_memsize(%struct._GParamSpec* %47)
  %48 = load i64, i64* %memsize, align 8
  %add31 = add nsw i64 %48, %call30
  store i64 %add31, i64* %memsize, align 8
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.27
  %49 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %49, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond.23

for.end.34:                                       ; preds = %for.cond.23
  %50 = load i64, i64* %memsize, align 8
  %51 = load i8*, i8** @gimp_procedure_parent_class, align 8
  %52 = bitcast i8* %51 to %struct._GTypeClass*
  %call35 = call i64 @gimp_object_get_type() #8
  %call36 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %52, i64 %call35)
  %53 = bitcast %struct._GTypeClass* %call36 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %53, i32 0, i32 3
  %54 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %55 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %56 = load i64*, i64** %gui_size.addr, align 8
  %call37 = call i64 %54(%struct._GimpObject* %55, i64* %56)
  %add38 = add nsw i64 %50, %call37
  ret i64 %add38
}

; Function Attrs: nounwind uwtable
define internal %struct._GValueArray* @gimp_procedure_real_execute(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GError** %error) #3 {
entry:
  %retval = alloca %struct._GValueArray*, align 8
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
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 0
  %1 = load i32, i32* %n_values, align 4
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %2, i32 0, i32 10
  %3 = load i32, i32* %num_args, align 4
  %cmp = icmp uge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_procedure_real_execute, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %marshal_func = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %4, i32 0, i32 14
  %5 = load %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)** %marshal_func, align 8
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %10 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call %struct._GValueArray* %5(%struct._GimpProcedure* %6, %struct._Gimp* %7, %struct._GimpContext* %8, %struct._GimpProgress* %9, %struct._GValueArray* %10, %struct._GError** %11)
  store %struct._GValueArray* %call, %struct._GValueArray** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %12 = load %struct._GValueArray*, %struct._GValueArray** %retval
  ret %struct._GValueArray* %12
}

; Function Attrs: nounwind uwtable
define internal void @gimp_procedure_real_execute_async(%struct._GimpProcedure* %procedure, %struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GValueArray* %args, %struct._GimpObject* %display) #3 {
entry:
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %display.addr = alloca %struct._GimpObject*, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store %struct._GimpObject* %display, %struct._GimpObject** %display.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %0, i32 0, i32 0
  %1 = load i32, i32* %n_values, align 4
  %2 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %2, i32 0, i32 10
  %3 = load i32, i32* %num_args, align 4
  %cmp = icmp uge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_procedure_real_execute_async, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.3

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %5 = bitcast %struct._GimpProcedure* %4 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %7 = bitcast %struct._GTypeClass* %6 to %struct._GimpProcedureClass*
  %execute = getelementptr inbounds %struct._GimpProcedureClass, %struct._GimpProcedureClass* %7, i32 0, i32 1
  %8 = load %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)*, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)** %execute, align 8
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %12 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %13 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %call = call %struct._GValueArray* %8(%struct._GimpProcedure* %9, %struct._Gimp* %10, %struct._GimpContext* %11, %struct._GimpProgress* %12, %struct._GValueArray* %13, %struct._GError** %error)
  store %struct._GValueArray* %call, %struct._GValueArray** %return_vals, align 8
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  call void @g_value_array_free(%struct._GValueArray* %14)
  %15 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %15, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %do.end
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %17 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %18 = bitcast %struct._GimpProgress* %17 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 80)
  %19 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %20 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %20, i32 0, i32 2
  %21 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %16, %struct._GObject* %19, i32 2, i8* %21)
  %22 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %22)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.1, %do.end
  ret void
}

declare void @g_param_spec_unref(%struct._GParamSpec*) #1

declare void @g_free(i8*) #1

declare i64 @gimp_string_get_memsize(i8*) #1

declare i64 @gimp_g_param_spec_get_memsize(%struct._GParamSpec*) #1

declare void @g_value_array_free(%struct._GValueArray*) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i8* @g_param_spec_get_name(%struct._GParamSpec*) #1

declare i8* @g_type_name(i64) #1

declare i32 @g_value_type_transformable(i64, i64) #1

declare i32 @g_value_transform(%struct._GValue*, %struct._GValue*) #1

declare void @g_value_set_static_string(%struct._GValue*, i8*) #1

declare i32 @g_param_value_validate(%struct._GParamSpec*, %struct._GValue*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_drawable_id_get_type() #2

declare i32 @g_value_get_int(%struct._GValue*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_image_id_get_type() #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
