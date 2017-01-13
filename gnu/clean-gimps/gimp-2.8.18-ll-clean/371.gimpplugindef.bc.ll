; ModuleID = './app/plug-in/gimpplugindef.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPlugInDefClass = type { %struct._GimpObjectClass }
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
%struct._GimpPlugInDef = type { %struct._GimpObject, i8*, %struct._GSList*, i8*, i8*, i8*, i8*, i64, i32, i32 }
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._Gimp = type opaque
%struct._GimpContext = type opaque
%struct._GimpProgress = type opaque
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }

@gimp_plug_in_def_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpPlugInDef\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_plug_in_def_new = private unnamed_addr constant [21 x i8] c"gimp_plug_in_def_new\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"prog != NULL\00", align 1
@__func__.gimp_plug_in_def_add_procedure = private unnamed_addr constant [31 x i8] c"gimp_plug_in_def_add_procedure\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"GIMP_IS_PLUG_IN_DEF (plug_in_def)\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"GIMP_IS_PLUG_IN_PROCEDURE (proc)\00", align 1
@__func__.gimp_plug_in_def_remove_procedure = private unnamed_addr constant [34 x i8] c"gimp_plug_in_def_remove_procedure\00", align 1
@__func__.gimp_plug_in_def_set_locale_domain = private unnamed_addr constant [35 x i8] c"gimp_plug_in_def_set_locale_domain\00", align 1
@__func__.gimp_plug_in_def_set_help_domain = private unnamed_addr constant [33 x i8] c"gimp_plug_in_def_set_help_domain\00", align 1
@__func__.gimp_plug_in_def_set_mtime = private unnamed_addr constant [27 x i8] c"gimp_plug_in_def_set_mtime\00", align 1
@__func__.gimp_plug_in_def_set_needs_query = private unnamed_addr constant [33 x i8] c"gimp_plug_in_def_set_needs_query\00", align 1
@__func__.gimp_plug_in_def_set_has_init = private unnamed_addr constant [30 x i8] c"gimp_plug_in_def_set_has_init\00", align 1
@gimp_plug_in_def_parent_class = internal global i8* null, align 8
@GimpPlugInDef_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_plug_in_def_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_plug_in_def_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_plug_in_def_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 160, void (i8*, i8*)* bitcast (void (i8*)* @gimp_plug_in_def_class_intern_init to void (i8*, i8*)*), i32 96, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPlugInDef*)* @gimp_plug_in_def_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_plug_in_def_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_plug_in_def_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_def_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_plug_in_def_parent_class, align 8
  %1 = load i32, i32* @GimpPlugInDef_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPlugInDef_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPlugInDefClass*
  call void @gimp_plug_in_def_class_init(%struct._GimpPlugInDefClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_def_init(%struct._GimpPlugInDef* %def) #3 {
entry:
  %def.addr = alloca %struct._GimpPlugInDef*, align 8
  store %struct._GimpPlugInDef* %def, %struct._GimpPlugInDef** %def.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpPlugInDef* @gimp_plug_in_def_new(i8* %prog) #3 {
entry:
  %retval = alloca %struct._GimpPlugInDef*, align 8
  %prog.addr = alloca i8*, align 8
  %plug_in_def = alloca %struct._GimpPlugInDef*, align 8
  store i8* %prog, i8** %prog.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %prog.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_plug_in_def_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpPlugInDef* null, %struct._GimpPlugInDef** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i64 @gimp_plug_in_def_get_type() #5
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %1 = bitcast i8* %call1 to %struct._GimpPlugInDef*
  store %struct._GimpPlugInDef* %1, %struct._GimpPlugInDef** %plug_in_def, align 8
  %2 = load i8*, i8** %prog.addr, align 8
  %call2 = call noalias i8* @g_strdup(i8* %2)
  %3 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %prog3 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %3, i32 0, i32 1
  store i8* %call2, i8** %prog3, align 8
  %4 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  store %struct._GimpPlugInDef* %4, %struct._GimpPlugInDef** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %5 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %retval
  ret %struct._GimpPlugInDef* %5
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_def_add_procedure(%struct._GimpPlugInDef* %plug_in_def, %struct._GimpPlugInProcedure* %proc) #3 {
entry:
  %plug_in_def.addr = alloca %struct._GimpPlugInDef*, align 8
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %overridden = alloca %struct._GimpPlugInProcedure*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPlugInDef* %plug_in_def, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %1 = bitcast %struct._GimpPlugInDef* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_def_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_plug_in_def_add_procedure, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %14 = bitcast %struct._GimpPlugInProcedure* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_plug_in_procedure_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_plug_in_def_add_procedure, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %procedures = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %26, i32 0, i32 2
  %27 = load %struct._GSList*, %struct._GSList** %procedures, align 8
  %28 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %29 = bitcast %struct._GimpPlugInProcedure* %28 to i8*
  %call39 = call i8* @gimp_object_get_name(i8* %29)
  %call40 = call %struct._GimpPlugInProcedure* @gimp_plug_in_procedure_find(%struct._GSList* %27, i8* %call39)
  store %struct._GimpPlugInProcedure* %call40, %struct._GimpPlugInProcedure** %overridden, align 8
  %30 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %overridden, align 8
  %tobool41 = icmp ne %struct._GimpPlugInProcedure* %30, null
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %do.end.38
  %31 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %32 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %overridden, align 8
  call void @gimp_plug_in_def_remove_procedure(%struct._GimpPlugInDef* %31, %struct._GimpPlugInProcedure* %32)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %do.end.38
  %33 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %mtime = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %33, i32 0, i32 7
  %34 = load i64, i64* %mtime, align 8
  %35 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %mtime44 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %35, i32 0, i32 12
  store i64 %34, i64* %mtime44, align 8
  %36 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %37 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %locale_domain_name = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %37, i32 0, i32 3
  %38 = load i8*, i8** %locale_domain_name, align 8
  call void @gimp_plug_in_procedure_set_locale_domain(%struct._GimpPlugInProcedure* %36, i8* %38)
  %39 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %40 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %help_domain_name = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %40, i32 0, i32 5
  %41 = load i8*, i8** %help_domain_name, align 8
  call void @gimp_plug_in_procedure_set_help_domain(%struct._GimpPlugInProcedure* %39, i8* %41)
  %42 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %procedures45 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %42, i32 0, i32 2
  %43 = load %struct._GSList*, %struct._GSList** %procedures45, align 8
  %44 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %45 = bitcast %struct._GimpPlugInProcedure* %44 to i8*
  %call46 = call i8* @g_object_ref(i8* %45)
  %call47 = call %struct._GSList* @g_slist_append(%struct._GSList* %43, i8* %call46)
  %46 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %procedures48 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %46, i32 0, i32 2
  store %struct._GSList* %call47, %struct._GSList** %procedures48, align 8
  br label %return

return:                                           ; preds = %if.end.43, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_procedure_get_type() #2

declare %struct._GimpPlugInProcedure* @gimp_plug_in_procedure_find(%struct._GSList*, i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_def_remove_procedure(%struct._GimpPlugInDef* %plug_in_def, %struct._GimpPlugInProcedure* %proc) #3 {
entry:
  %plug_in_def.addr = alloca %struct._GimpPlugInDef*, align 8
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPlugInDef* %plug_in_def, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %1 = bitcast %struct._GimpPlugInDef* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_def_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_plug_in_def_remove_procedure, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %14 = bitcast %struct._GimpPlugInProcedure* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_plug_in_procedure_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_plug_in_def_remove_procedure, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %procedures = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %26, i32 0, i32 2
  %27 = load %struct._GSList*, %struct._GSList** %procedures, align 8
  %28 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %29 = bitcast %struct._GimpPlugInProcedure* %28 to i8*
  %call39 = call %struct._GSList* @g_slist_remove(%struct._GSList* %27, i8* %29)
  %30 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %procedures40 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %30, i32 0, i32 2
  store %struct._GSList* %call39, %struct._GSList** %procedures40, align 8
  %31 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %32 = bitcast %struct._GimpPlugInProcedure* %31 to i8*
  call void @g_object_unref(i8* %32)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

declare void @gimp_plug_in_procedure_set_locale_domain(%struct._GimpPlugInProcedure*, i8*) #1

declare void @gimp_plug_in_procedure_set_help_domain(%struct._GimpPlugInProcedure*, i8*) #1

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

declare i8* @g_object_ref(i8*) #1

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_def_set_locale_domain(%struct._GimpPlugInDef* %plug_in_def, i8* %domain_name, i8* %domain_path) #3 {
entry:
  %plug_in_def.addr = alloca %struct._GimpPlugInDef*, align 8
  %domain_name.addr = alloca i8*, align 8
  %domain_path.addr = alloca i8*, align 8
  %list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %procedure = alloca %struct._GimpPlugInProcedure*, align 8
  store %struct._GimpPlugInDef* %plug_in_def, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  store i8* %domain_name, i8** %domain_name.addr, align 8
  store i8* %domain_path, i8** %domain_path.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %1 = bitcast %struct._GimpPlugInDef* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_def_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_plug_in_def_set_locale_domain, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %locale_domain_name = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %13, i32 0, i32 3
  %14 = load i8*, i8** %locale_domain_name, align 8
  %tobool11 = icmp ne i8* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %locale_domain_name13 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %15, i32 0, i32 3
  %16 = load i8*, i8** %locale_domain_name13, align 8
  call void @g_free(i8* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %17 = load i8*, i8** %domain_name.addr, align 8
  %call15 = call noalias i8* @g_strdup(i8* %17)
  %18 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %locale_domain_name16 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %18, i32 0, i32 3
  store i8* %call15, i8** %locale_domain_name16, align 8
  %19 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %locale_domain_path = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %19, i32 0, i32 4
  %20 = load i8*, i8** %locale_domain_path, align 8
  %tobool17 = icmp ne i8* %20, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.14
  %21 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %locale_domain_path19 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %21, i32 0, i32 4
  %22 = load i8*, i8** %locale_domain_path19, align 8
  call void @g_free(i8* %22)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.14
  %23 = load i8*, i8** %domain_path.addr, align 8
  %call21 = call noalias i8* @g_strdup(i8* %23)
  %24 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %locale_domain_path22 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %24, i32 0, i32 4
  store i8* %call21, i8** %locale_domain_path22, align 8
  %25 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %procedures = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %25, i32 0, i32 2
  %26 = load %struct._GSList*, %struct._GSList** %procedures, align 8
  store %struct._GSList* %26, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.20
  %27 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool23 = icmp ne %struct._GSList* %27, null
  br i1 %tobool23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %28, i32 0, i32 0
  %29 = load i8*, i8** %data, align 8
  %30 = bitcast i8* %29 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %30, %struct._GimpPlugInProcedure** %procedure, align 8
  %31 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure, align 8
  %32 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %locale_domain_name25 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %32, i32 0, i32 3
  %33 = load i8*, i8** %locale_domain_name25, align 8
  call void @gimp_plug_in_procedure_set_locale_domain(%struct._GimpPlugInProcedure* %31, i8* %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool26 = icmp ne %struct._GSList* %34, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %35 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 1
  %36 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %36, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %for.cond
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_def_set_help_domain(%struct._GimpPlugInDef* %plug_in_def, i8* %domain_name, i8* %domain_uri) #3 {
entry:
  %plug_in_def.addr = alloca %struct._GimpPlugInDef*, align 8
  %domain_name.addr = alloca i8*, align 8
  %domain_uri.addr = alloca i8*, align 8
  %list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %procedure = alloca %struct._GimpPlugInProcedure*, align 8
  store %struct._GimpPlugInDef* %plug_in_def, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  store i8* %domain_name, i8** %domain_name.addr, align 8
  store i8* %domain_uri, i8** %domain_uri.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %1 = bitcast %struct._GimpPlugInDef* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_def_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_plug_in_def_set_help_domain, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %help_domain_name = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %13, i32 0, i32 5
  %14 = load i8*, i8** %help_domain_name, align 8
  %tobool11 = icmp ne i8* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %help_domain_name13 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %15, i32 0, i32 5
  %16 = load i8*, i8** %help_domain_name13, align 8
  call void @g_free(i8* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %17 = load i8*, i8** %domain_name.addr, align 8
  %call15 = call noalias i8* @g_strdup(i8* %17)
  %18 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %help_domain_name16 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %18, i32 0, i32 5
  store i8* %call15, i8** %help_domain_name16, align 8
  %19 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %help_domain_uri = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %19, i32 0, i32 6
  %20 = load i8*, i8** %help_domain_uri, align 8
  %tobool17 = icmp ne i8* %20, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.14
  %21 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %help_domain_uri19 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %21, i32 0, i32 6
  %22 = load i8*, i8** %help_domain_uri19, align 8
  call void @g_free(i8* %22)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.14
  %23 = load i8*, i8** %domain_uri.addr, align 8
  %call21 = call noalias i8* @g_strdup(i8* %23)
  %24 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %help_domain_uri22 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %24, i32 0, i32 6
  store i8* %call21, i8** %help_domain_uri22, align 8
  %25 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %procedures = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %25, i32 0, i32 2
  %26 = load %struct._GSList*, %struct._GSList** %procedures, align 8
  store %struct._GSList* %26, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.20
  %27 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool23 = icmp ne %struct._GSList* %27, null
  br i1 %tobool23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %28, i32 0, i32 0
  %29 = load i8*, i8** %data, align 8
  %30 = bitcast i8* %29 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %30, %struct._GimpPlugInProcedure** %procedure, align 8
  %31 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %procedure, align 8
  %32 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %help_domain_name25 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %32, i32 0, i32 5
  %33 = load i8*, i8** %help_domain_name25, align 8
  call void @gimp_plug_in_procedure_set_help_domain(%struct._GimpPlugInProcedure* %31, i8* %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool26 = icmp ne %struct._GSList* %34, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %35 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 1
  %36 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %36, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_def_set_mtime(%struct._GimpPlugInDef* %plug_in_def, i64 %mtime) #3 {
entry:
  %plug_in_def.addr = alloca %struct._GimpPlugInDef*, align 8
  %mtime.addr = alloca i64, align 8
  %list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  store %struct._GimpPlugInDef* %plug_in_def, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  store i64 %mtime, i64* %mtime.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %1 = bitcast %struct._GimpPlugInDef* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_def_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_plug_in_def_set_mtime, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i64, i64* %mtime.addr, align 8
  %14 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %mtime11 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %14, i32 0, i32 7
  store i64 %13, i64* %mtime11, align 8
  %15 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %procedures = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %15, i32 0, i32 2
  %16 = load %struct._GSList*, %struct._GSList** %procedures, align 8
  store %struct._GSList* %16, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %17 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool12 = icmp ne %struct._GSList* %17, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %20, %struct._GimpPlugInProcedure** %proc, align 8
  %21 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %mtime14 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %21, i32 0, i32 7
  %22 = load i64, i64* %mtime14, align 8
  %23 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %mtime15 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %23, i32 0, i32 12
  store i64 %22, i64* %mtime15, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool16 = icmp ne %struct._GSList* %24, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %25 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 1
  %26 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %26, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_def_set_needs_query(%struct._GimpPlugInDef* %plug_in_def, i32 %needs_query) #3 {
entry:
  %plug_in_def.addr = alloca %struct._GimpPlugInDef*, align 8
  %needs_query.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInDef* %plug_in_def, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  store i32 %needs_query, i32* %needs_query.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %1 = bitcast %struct._GimpPlugInDef* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_def_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_plug_in_def_set_needs_query, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %needs_query.addr, align 4
  %tobool11 = icmp ne i32 %13, 0
  %cond = select i1 %tobool11, i32 1, i32 0
  %14 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %needs_query12 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %14, i32 0, i32 8
  store i32 %cond, i32* %needs_query12, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_def_set_has_init(%struct._GimpPlugInDef* %plug_in_def, i32 %has_init) #3 {
entry:
  %plug_in_def.addr = alloca %struct._GimpPlugInDef*, align 8
  %has_init.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInDef* %plug_in_def, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  store i32 %has_init, i32* %has_init.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %1 = bitcast %struct._GimpPlugInDef* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_def_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_plug_in_def_set_has_init, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %has_init.addr, align 4
  %tobool11 = icmp ne i32 %13, 0
  %cond = select i1 %tobool11, i32 1, i32 0
  %14 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %has_init12 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %14, i32 0, i32 9
  store i32 %cond, i32* %has_init12, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_def_class_init(%struct._GimpPlugInDefClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPlugInDefClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  store %struct._GimpPlugInDefClass* %klass, %struct._GimpPlugInDefClass** %klass.addr, align 8
  %0 = load %struct._GimpPlugInDefClass*, %struct._GimpPlugInDefClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPlugInDefClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpPlugInDefClass*, %struct._GimpPlugInDefClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPlugInDefClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_plug_in_def_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %7, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_plug_in_def_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_plug_in_def_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %plug_in_def = alloca %struct._GimpPlugInDef*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_plug_in_def_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPlugInDef*
  store %struct._GimpPlugInDef* %2, %struct._GimpPlugInDef** %plug_in_def, align 8
  %3 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %3, i32 0, i32 1
  %4 = load i8*, i8** %prog, align 8
  call void @g_free(i8* %4)
  %5 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %locale_domain_name = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %5, i32 0, i32 3
  %6 = load i8*, i8** %locale_domain_name, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %locale_domain_path = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %7, i32 0, i32 4
  %8 = load i8*, i8** %locale_domain_path, align 8
  call void @g_free(i8* %8)
  %9 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %help_domain_name = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %9, i32 0, i32 5
  %10 = load i8*, i8** %help_domain_name, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %help_domain_uri = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %11, i32 0, i32 6
  %12 = load i8*, i8** %help_domain_uri, align 8
  call void @g_free(i8* %12)
  %13 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %procedures = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %13, i32 0, i32 2
  %14 = load %struct._GSList*, %struct._GSList** %procedures, align 8
  call void @g_slist_free_full(%struct._GSList* %14, void (i8*)* @g_object_unref)
  %15 = load i8*, i8** @gimp_plug_in_def_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 80)
  %17 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 6
  %18 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %18(%struct._GObject* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_plug_in_def_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %plug_in_def = alloca %struct._GimpPlugInDef*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_plug_in_def_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPlugInDef*
  store %struct._GimpPlugInDef* %2, %struct._GimpPlugInDef** %plug_in_def, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %3, i32 0, i32 1
  %4 = load i8*, i8** %prog, align 8
  %call2 = call i64 @gimp_string_get_memsize(i8* %4)
  %5 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %5, %call2
  store i64 %add, i64* %memsize, align 8
  %6 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %locale_domain_name = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %6, i32 0, i32 3
  %7 = load i8*, i8** %locale_domain_name, align 8
  %call3 = call i64 @gimp_string_get_memsize(i8* %7)
  %8 = load i64, i64* %memsize, align 8
  %add4 = add nsw i64 %8, %call3
  store i64 %add4, i64* %memsize, align 8
  %9 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %locale_domain_path = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %9, i32 0, i32 4
  %10 = load i8*, i8** %locale_domain_path, align 8
  %call5 = call i64 @gimp_string_get_memsize(i8* %10)
  %11 = load i64, i64* %memsize, align 8
  %add6 = add nsw i64 %11, %call5
  store i64 %add6, i64* %memsize, align 8
  %12 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %help_domain_name = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %12, i32 0, i32 5
  %13 = load i8*, i8** %help_domain_name, align 8
  %call7 = call i64 @gimp_string_get_memsize(i8* %13)
  %14 = load i64, i64* %memsize, align 8
  %add8 = add nsw i64 %14, %call7
  store i64 %add8, i64* %memsize, align 8
  %15 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %help_domain_uri = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %15, i32 0, i32 6
  %16 = load i8*, i8** %help_domain_uri, align 8
  %call9 = call i64 @gimp_string_get_memsize(i8* %16)
  %17 = load i64, i64* %memsize, align 8
  %add10 = add nsw i64 %17, %call9
  store i64 %add10, i64* %memsize, align 8
  %18 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %procedures = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %18, i32 0, i32 2
  %19 = load %struct._GSList*, %struct._GSList** %procedures, align 8
  %call11 = call i64 @gimp_g_slist_get_memsize(%struct._GSList* %19, i64 0)
  %20 = load i64, i64* %memsize, align 8
  %add12 = add nsw i64 %20, %call11
  store i64 %add12, i64* %memsize, align 8
  %21 = load i64, i64* %memsize, align 8
  %22 = load i8*, i8** @gimp_plug_in_def_parent_class, align 8
  %23 = bitcast i8* %22 to %struct._GTypeClass*
  %call13 = call i64 @gimp_object_get_type() #5
  %call14 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %23, i64 %call13)
  %24 = bitcast %struct._GTypeClass* %call14 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %24, i32 0, i32 3
  %25 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %26 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %27 = load i64*, i64** %gui_size.addr, align 8
  %call15 = call i64 %25(%struct._GimpObject* %26, i64* %27)
  %add16 = add nsw i64 %21, %call15
  ret i64 %add16
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_slist_free_full(%struct._GSList*, void (i8*)*) #1

declare i64 @gimp_string_get_memsize(i8*) #1

declare i64 @gimp_g_slist_get_memsize(%struct._GSList*, i64) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
