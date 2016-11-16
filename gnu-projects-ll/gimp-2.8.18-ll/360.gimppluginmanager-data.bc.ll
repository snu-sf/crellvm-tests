; ModuleID = './app/plug-in/gimppluginmanager-data.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpPlugIn = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpPlugInData = type { i8*, i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_plug_in_manager_data_free = private unnamed_addr constant [31 x i8] c"gimp_plug_in_manager_data_free\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"GIMP_IS_PLUG_IN_MANAGER (manager)\00", align 1
@__func__.gimp_plug_in_manager_set_data = private unnamed_addr constant [30 x i8] c"gimp_plug_in_manager_set_data\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"identifier != NULL\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"bytes > 0\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@__func__.gimp_plug_in_manager_get_data = private unnamed_addr constant [30 x i8] c"gimp_plug_in_manager_get_data\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"bytes != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_data_free(%struct._GimpPlugInManager* %manager) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %data = alloca %struct._GimpPlugInData*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpPlugInManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_manager_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_plug_in_manager_data_free, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.24

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %data_list = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %13, i32 0, i32 19
  %14 = load %struct._GList*, %struct._GList** %data_list, align 8
  %tobool11 = icmp ne %struct._GList* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.24

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %data_list14 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %15, i32 0, i32 19
  %16 = load %struct._GList*, %struct._GList** %data_list14, align 8
  store %struct._GList* %16, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.12
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool15 = icmp ne %struct._GList* %17, null
  br i1 %tobool15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data17 = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data17, align 8
  %20 = bitcast i8* %19 to %struct._GimpPlugInData*
  store %struct._GimpPlugInData* %20, %struct._GimpPlugInData** %data, align 8
  %21 = load %struct._GimpPlugInData*, %struct._GimpPlugInData** %data, align 8
  %identifier = getelementptr inbounds %struct._GimpPlugInData, %struct._GimpPlugInData* %21, i32 0, i32 0
  %22 = load i8*, i8** %identifier, align 8
  call void @g_free(i8* %22)
  %23 = load %struct._GimpPlugInData*, %struct._GimpPlugInData** %data, align 8
  %data18 = getelementptr inbounds %struct._GimpPlugInData, %struct._GimpPlugInData* %23, i32 0, i32 2
  %24 = load i8*, i8** %data18, align 8
  call void @g_free(i8* %24)
  br label %do.body.19

do.body.19:                                       ; preds = %for.body
  %25 = load %struct._GimpPlugInData*, %struct._GimpPlugInData** %data, align 8
  %26 = bitcast %struct._GimpPlugInData* %25 to i8*
  call void @g_slice_free1(i64 24, i8* %26)
  br label %do.end.20

do.end.20:                                        ; preds = %do.body.19
  br label %for.inc

for.inc:                                          ; preds = %do.end.20
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool21 = icmp ne %struct._GList* %27, null
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 1
  %29 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %29, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %data_list22 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %30, i32 0, i32 19
  %31 = load %struct._GList*, %struct._GList** %data_list22, align 8
  call void @g_list_free(%struct._GList* %31)
  %32 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %data_list23 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %32, i32 0, i32 19
  store %struct._GList* null, %struct._GList** %data_list23, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.9, %for.end, %do.end
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_manager_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare void @g_free(i8*) #3

declare void @g_slice_free1(i64, i8*) #3

declare void @g_list_free(%struct._GList*) #3

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_set_data(%struct._GimpPlugInManager* %manager, i8* %identifier, i32 %bytes, i8* %data) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %identifier.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %plug_in_data = alloca %struct._GimpPlugInData*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpPlugInManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_manager_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_plug_in_manager_set_data, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %identifier.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_plug_in_manager_set_data, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i32, i32* %bytes.addr, align 4
  %cmp18 = icmp sgt i32 %14, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_plug_in_manager_set_data, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %15 = load i8*, i8** %data.addr, align 8
  %cmp24 = icmp ne i8* %15, null
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_plug_in_manager_set_data, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  %16 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %data_list = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %16, i32 0, i32 19
  %17 = load %struct._GList*, %struct._GList** %data_list, align 8
  store %struct._GList* %17, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.28
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool29 = icmp ne %struct._GList* %18, null
  br i1 %tobool29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %data30 = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 0
  %20 = load i8*, i8** %data30, align 8
  %21 = bitcast i8* %20 to %struct._GimpPlugInData*
  store %struct._GimpPlugInData* %21, %struct._GimpPlugInData** %plug_in_data, align 8
  %22 = load %struct._GimpPlugInData*, %struct._GimpPlugInData** %plug_in_data, align 8
  %identifier31 = getelementptr inbounds %struct._GimpPlugInData, %struct._GimpPlugInData* %22, i32 0, i32 0
  %23 = load i8*, i8** %identifier31, align 8
  %24 = load i8*, i8** %identifier.addr, align 8
  %call32 = call i32 @strcmp(i8* %23, i8* %24) #5
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %for.body
  br label %for.end

if.end.35:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool36 = icmp ne %struct._GList* %25, null
  br i1 %tobool36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 1
  %27 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %27, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.34, %for.cond
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %cmp37 = icmp eq %struct._GList* %28, null
  br i1 %cmp37, label %if.then.38, label %if.else.45

if.then.38:                                       ; preds = %for.end
  %call39 = call noalias i8* @g_slice_alloc0(i64 24)
  %29 = bitcast i8* %call39 to %struct._GimpPlugInData*
  store %struct._GimpPlugInData* %29, %struct._GimpPlugInData** %plug_in_data, align 8
  %30 = load i8*, i8** %identifier.addr, align 8
  %call40 = call noalias i8* @g_strdup(i8* %30)
  %31 = load %struct._GimpPlugInData*, %struct._GimpPlugInData** %plug_in_data, align 8
  %identifier41 = getelementptr inbounds %struct._GimpPlugInData, %struct._GimpPlugInData* %31, i32 0, i32 0
  store i8* %call40, i8** %identifier41, align 8
  %32 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %data_list42 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %32, i32 0, i32 19
  %33 = load %struct._GList*, %struct._GList** %data_list42, align 8
  %34 = load %struct._GimpPlugInData*, %struct._GimpPlugInData** %plug_in_data, align 8
  %35 = bitcast %struct._GimpPlugInData* %34 to i8*
  %call43 = call %struct._GList* @g_list_prepend(%struct._GList* %33, i8* %35)
  %36 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %data_list44 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %36, i32 0, i32 19
  store %struct._GList* %call43, %struct._GList** %data_list44, align 8
  br label %if.end.47

if.else.45:                                       ; preds = %for.end
  %37 = load %struct._GimpPlugInData*, %struct._GimpPlugInData** %plug_in_data, align 8
  %data46 = getelementptr inbounds %struct._GimpPlugInData, %struct._GimpPlugInData* %37, i32 0, i32 2
  %38 = load i8*, i8** %data46, align 8
  call void @g_free(i8* %38)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.45, %if.then.38
  %39 = load i32, i32* %bytes.addr, align 4
  %40 = load %struct._GimpPlugInData*, %struct._GimpPlugInData** %plug_in_data, align 8
  %bytes48 = getelementptr inbounds %struct._GimpPlugInData, %struct._GimpPlugInData* %40, i32 0, i32 1
  store i32 %39, i32* %bytes48, align 4
  %41 = load i8*, i8** %data.addr, align 8
  %42 = load i32, i32* %bytes.addr, align 4
  %call49 = call noalias i8* @g_memdup(i8* %41, i32 %42)
  %43 = load %struct._GimpPlugInData*, %struct._GimpPlugInData** %plug_in_data, align 8
  %data50 = getelementptr inbounds %struct._GimpPlugInData, %struct._GimpPlugInData* %43, i32 0, i32 2
  store i8* %call49, i8** %data50, align 8
  br label %return

return:                                           ; preds = %if.end.47, %if.else.26, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare noalias i8* @g_slice_alloc0(i64) #3

declare noalias i8* @g_strdup(i8*) #3

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #3

declare noalias i8* @g_memdup(i8*, i32) #3

; Function Attrs: nounwind uwtable
define i8* @gimp_plug_in_manager_get_data(%struct._GimpPlugInManager* %manager, i8* %identifier, i32* %bytes) #0 {
entry:
  %retval = alloca i8*, align 8
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %identifier.addr = alloca i8*, align 8
  %bytes.addr = alloca i32*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %plug_in_data = alloca %struct._GimpPlugInData*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
  store i32* %bytes, i32** %bytes.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpPlugInManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_plug_in_manager_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_plug_in_manager_get_data, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %identifier.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_plug_in_manager_get_data, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i32*, i32** %bytes.addr, align 8
  %cmp18 = icmp ne i32* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_plug_in_manager_get_data, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load i32*, i32** %bytes.addr, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %data_list = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %16, i32 0, i32 19
  %17 = load %struct._GList*, %struct._GList** %data_list, align 8
  store %struct._GList* %17, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.22
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool23 = icmp ne %struct._GList* %18, null
  br i1 %tobool23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  %21 = bitcast i8* %20 to %struct._GimpPlugInData*
  store %struct._GimpPlugInData* %21, %struct._GimpPlugInData** %plug_in_data, align 8
  %22 = load %struct._GimpPlugInData*, %struct._GimpPlugInData** %plug_in_data, align 8
  %identifier25 = getelementptr inbounds %struct._GimpPlugInData, %struct._GimpPlugInData* %22, i32 0, i32 0
  %23 = load i8*, i8** %identifier25, align 8
  %24 = load i8*, i8** %identifier.addr, align 8
  %call26 = call i32 @strcmp(i8* %23, i8* %24) #5
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.31, label %if.then.28

if.then.28:                                       ; preds = %for.body
  %25 = load %struct._GimpPlugInData*, %struct._GimpPlugInData** %plug_in_data, align 8
  %bytes29 = getelementptr inbounds %struct._GimpPlugInData, %struct._GimpPlugInData* %25, i32 0, i32 1
  %26 = load i32, i32* %bytes29, align 4
  %27 = load i32*, i32** %bytes.addr, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct._GimpPlugInData*, %struct._GimpPlugInData** %plug_in_data, align 8
  %data30 = getelementptr inbounds %struct._GimpPlugInData, %struct._GimpPlugInData* %28, i32 0, i32 2
  %29 = load i8*, i8** %data30, align 8
  store i8* %29, i8** %retval
  br label %return

if.end.31:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool32 = icmp ne %struct._GList* %30, null
  br i1 %tobool32, label %cond.true, label %cond.false

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
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.28, %if.else.20, %if.else.14, %if.else.9
  %33 = load i8*, i8** %retval
  ret i8* %33
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
