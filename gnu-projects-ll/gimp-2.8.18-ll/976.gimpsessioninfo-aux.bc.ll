; ModuleID = './app/widgets/gimpsessioninfo-aux.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpSessionInfoAux = type { i8*, i8* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GString = type { i8*, i64, i64 }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpConfigWriter = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_session_info_aux_new = private unnamed_addr constant [26 x i8] c"gimp_session_info_aux_new\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"value != NULL\00", align 1
@__func__.gimp_session_info_aux_free = private unnamed_addr constant [27 x i8] c"gimp_session_info_aux_free\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"aux != NULL\00", align 1
@__func__.gimp_session_info_aux_new_from_props = private unnamed_addr constant [37 x i8] c"gimp_session_info_aux_new_from_props\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"G_IS_OBJECT (object)\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"%s: no property named '%s' for %s\00", align 1
@__func__.gimp_session_info_aux_set_props = private unnamed_addr constant [32 x i8] c"gimp_session_info_aux_set_props\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"%s: unknown enum value in '%s' for %s\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"%s: cannot convert property '%s' for %s\00", align 1
@__func__.gimp_session_info_aux_serialize = private unnamed_addr constant [32 x i8] c"gimp_session_info_aux_serialize\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"writer != NULL\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"aux_info != NULL\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"aux-info\00", align 1
@__func__.gimp_session_info_aux_deserialize = private unnamed_addr constant [34 x i8] c"gimp_session_info_aux_deserialize\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"scanner != NULL\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"aux_list != NULL\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpSessionInfoAux* @gimp_session_info_aux_new(i8* %name, i8* %value) #0 {
entry:
  %retval = alloca %struct._GimpSessionInfoAux*, align 8
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %aux = alloca %struct._GimpSessionInfoAux*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_session_info_aux_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpSessionInfoAux* null, %struct._GimpSessionInfoAux** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %value.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_session_info_aux_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpSessionInfoAux* null, %struct._GimpSessionInfoAux** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %call = call noalias i8* @g_slice_alloc0(i64 16)
  %2 = bitcast i8* %call to %struct._GimpSessionInfoAux*
  store %struct._GimpSessionInfoAux* %2, %struct._GimpSessionInfoAux** %aux, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %call7 = call noalias i8* @g_strdup(i8* %3)
  %4 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %name8 = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %4, i32 0, i32 0
  store i8* %call7, i8** %name8, align 8
  %5 = load i8*, i8** %value.addr, align 8
  %call9 = call noalias i8* @g_strdup(i8* %5)
  %6 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %value10 = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %6, i32 0, i32 1
  store i8* %call9, i8** %value10, align 8
  %7 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  store %struct._GimpSessionInfoAux* %7, %struct._GimpSessionInfoAux** %retval
  br label %return

return:                                           ; preds = %do.end.6, %if.else.4, %if.else
  %8 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %retval
  ret %struct._GimpSessionInfoAux* %8
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_slice_alloc0(i64) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_session_info_aux_free(%struct._GimpSessionInfoAux* %aux) #0 {
entry:
  %aux.addr = alloca %struct._GimpSessionInfoAux*, align 8
  store %struct._GimpSessionInfoAux* %aux, %struct._GimpSessionInfoAux** %aux.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux.addr, align 8
  %cmp = icmp ne %struct._GimpSessionInfoAux* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_session_info_aux_free, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  br label %do.end.2

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux.addr, align 8
  %name = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  call void @g_free(i8* %2)
  %3 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux.addr, align 8
  %value = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %3, i32 0, i32 1
  %4 = load i8*, i8** %value, align 8
  call void @g_free(i8* %4)
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %5 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux.addr, align 8
  %6 = bitcast %struct._GimpSessionInfoAux* %5 to i8*
  call void @g_slice_free1(i64 16, i8* %6)
  br label %do.end.2

do.end.2:                                         ; preds = %if.else, %do.body.1
  ret void
}

declare void @g_free(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_session_info_aux_new_from_props(%struct._GObject* %object, ...) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %object.addr = alloca %struct._GObject*, align 8
  %list = alloca %struct._GList*, align 8
  %prop_name = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %class = alloca %struct._GObjectClass*, align 8
  %pspec = alloca %struct._GParamSpec*, align 8
  %str = alloca %struct._GString*, align 8
  %value = alloca %struct._GValue, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GList* null, %struct._GList** %list, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_session_info_aux_new_from_props, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %do.end
  %2 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %2
  %3 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %4 = bitcast i8* %3 to i8**
  %5 = add i32 %gp_offset, 8
  store i32 %5, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %do.end
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %6 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %4, %vaarg.in_reg ], [ %6, %vaarg.in_mem ]
  %7 = load i8*, i8** %vaarg.addr
  store i8* %7, i8** %prop_name, align 8
  br label %for.cond

for.cond:                                         ; preds = %vaarg.end.32, %vaarg.end
  %8 = load i8*, i8** %prop_name, align 8
  %tobool3 = icmp ne i8* %8, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %10 = bitcast %struct._GObject* %9 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %12 = bitcast %struct._GTypeClass* %11 to %struct._GObjectClass*
  store %struct._GObjectClass* %12, %struct._GObjectClass** %class, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %class, align 8
  %14 = load i8*, i8** %prop_name, align 8
  %call4 = call %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass* %13, i8* %14)
  store %struct._GParamSpec* %call4, %struct._GParamSpec** %pspec, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %tobool5 = icmp ne %struct._GParamSpec* %15, null
  br i1 %tobool5, label %if.then.6, label %if.else.19

if.then.6:                                        ; preds = %for.body
  %call7 = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call7, %struct._GString** %str, align 8
  %16 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 24, i32 8, i1 false)
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 3
  %18 = load i64, i64* %value_type, align 8
  %call8 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %18)
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %20, i32 0, i32 1
  %21 = load i8*, i8** %name, align 8
  call void @g_object_get_property(%struct._GObject* %19, i8* %21, %struct._GValue* %value)
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call9 = call i32 @g_param_value_defaults(%struct._GParamSpec* %22, %struct._GValue* %value)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.6
  %23 = load %struct._GString*, %struct._GString** %str, align 8
  %call11 = call i32 @gimp_config_serialize_value(%struct._GValue* %value, %struct._GString* %23, i32 1)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %land.lhs.true
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %25 = load i8*, i8** %prop_name, align 8
  %26 = load %struct._GString*, %struct._GString** %str, align 8
  %str14 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0
  %27 = load i8*, i8** %str14, align 8
  %call15 = call %struct._GimpSessionInfoAux* @gimp_session_info_aux_new(i8* %25, i8* %27)
  %28 = bitcast %struct._GimpSessionInfoAux* %call15 to i8*
  %call16 = call %struct._GList* @g_list_prepend(%struct._GList* %24, i8* %28)
  store %struct._GList* %call16, %struct._GList** %list, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %land.lhs.true, %if.then.6
  call void @g_value_unset(%struct._GValue* %value)
  %29 = load %struct._GString*, %struct._GString** %str, align 8
  %call18 = call i8* @g_string_free(%struct._GString* %29, i32 1)
  br label %if.end.21

if.else.19:                                       ; preds = %for.body
  %30 = load i8*, i8** %prop_name, align 8
  %31 = load %struct._GObjectClass*, %struct._GObjectClass** %class, align 8
  %32 = bitcast %struct._GObjectClass* %31 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type, align 8
  %call20 = call i8* @g_type_name(i64 %33)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_session_info_aux_new_from_props, i32 0, i32 0), i8* %30, i8* %call20)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.end.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %arraydecay22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay22, i32 0, i32 0
  %gp_offset24 = load i32, i32* %gp_offset_p23
  %fits_in_gp25 = icmp ule i32 %gp_offset24, 40
  br i1 %fits_in_gp25, label %vaarg.in_reg.26, label %vaarg.in_mem.28

vaarg.in_reg.26:                                  ; preds = %for.inc
  %34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay22, i32 0, i32 3
  %reg_save_area27 = load i8*, i8** %34
  %35 = getelementptr i8, i8* %reg_save_area27, i32 %gp_offset24
  %36 = bitcast i8* %35 to i8**
  %37 = add i32 %gp_offset24, 8
  store i32 %37, i32* %gp_offset_p23
  br label %vaarg.end.32

vaarg.in_mem.28:                                  ; preds = %for.inc
  %overflow_arg_area_p29 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay22, i32 0, i32 2
  %overflow_arg_area30 = load i8*, i8** %overflow_arg_area_p29
  %38 = bitcast i8* %overflow_arg_area30 to i8**
  %overflow_arg_area.next31 = getelementptr i8, i8* %overflow_arg_area30, i32 8
  store i8* %overflow_arg_area.next31, i8** %overflow_arg_area_p29
  br label %vaarg.end.32

vaarg.end.32:                                     ; preds = %vaarg.in_mem.28, %vaarg.in_reg.26
  %vaarg.addr33 = phi i8** [ %36, %vaarg.in_reg.26 ], [ %38, %vaarg.in_mem.28 ]
  %39 = load i8*, i8** %vaarg.addr33
  store i8* %39, i8** %prop_name, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay34 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay3435 = bitcast %struct.__va_list_tag* %arraydecay34 to i8*
  call void @llvm.va_end(i8* %arraydecay3435)
  %40 = load %struct._GList*, %struct._GList** %list, align 8
  %call36 = call %struct._GList* @g_list_reverse(%struct._GList* %40)
  store %struct._GList* %call36, %struct._GList** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else
  %41 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %41
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass*, i8*) #1

declare %struct._GString* @g_string_new(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #1

declare void @g_object_get_property(%struct._GObject*, i8*, %struct._GValue*) #1

declare i32 @g_param_value_defaults(%struct._GParamSpec*, %struct._GValue*) #1

declare i32 @gimp_config_serialize_value(%struct._GValue*, %struct._GString*, i32) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare void @g_value_unset(%struct._GValue*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define void @gimp_session_info_aux_set_props(%struct._GObject* %object, %struct._GList* %auxs, ...) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %auxs.addr = alloca %struct._GList*, align 8
  %prop_name = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %list = alloca %struct._GList*, align 8
  %aux = alloca %struct._GimpSessionInfoAux*, align 8
  %class = alloca %struct._GObjectClass*, align 8
  %pspec = alloca %struct._GParamSpec*, align 8
  %value = alloca %struct._GValue, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %enum_class = alloca %struct._GEnumClass*, align 8
  %enum_value = alloca %struct._GEnumValue*, align 8
  %str_value = alloca %struct._GValue, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GList* %auxs, %struct._GList** %auxs.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_session_info_aux_set_props, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %do.end
  %2 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %2
  %3 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %4 = bitcast i8* %3 to i8**
  %5 = add i32 %gp_offset, 8
  store i32 %5, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %do.end
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %6 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %4, %vaarg.in_reg ], [ %6, %vaarg.in_mem ]
  %7 = load i8*, i8** %vaarg.addr
  store i8* %7, i8** %prop_name, align 8
  br label %for.cond

for.cond:                                         ; preds = %vaarg.end.68, %vaarg.end
  %8 = load i8*, i8** %prop_name, align 8
  %tobool3 = icmp ne i8* %8, null
  br i1 %tobool3, label %for.body, label %for.end.70

for.body:                                         ; preds = %for.cond
  %9 = load %struct._GList*, %struct._GList** %auxs.addr, align 8
  store %struct._GList* %9, %struct._GList** %list, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %cond.end, %for.body
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %10, null
  br i1 %tobool5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8
  %13 = bitcast i8* %12 to %struct._GimpSessionInfoAux*
  store %struct._GimpSessionInfoAux* %13, %struct._GimpSessionInfoAux** %aux, align 8
  %14 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %name = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %14, i32 0, i32 0
  %15 = load i8*, i8** %name, align 8
  %16 = load i8*, i8** %prop_name, align 8
  %call7 = call i32 @strcmp(i8* %15, i8* %16) #4
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.then.8, label %if.end.55

if.then.8:                                        ; preds = %for.body.6
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %20 = bitcast %struct._GTypeClass* %19 to %struct._GObjectClass*
  store %struct._GObjectClass* %20, %struct._GObjectClass** %class, align 8
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %class, align 8
  %22 = load i8*, i8** %prop_name, align 8
  %call9 = call %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass* %21, i8* %22)
  store %struct._GParamSpec* %call9, %struct._GParamSpec** %pspec, align 8
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %tobool10 = icmp ne %struct._GParamSpec* %23, null
  br i1 %tobool10, label %if.then.11, label %if.else.51

if.then.11:                                       ; preds = %if.then.8
  %24 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 24, i32 8, i1 false)
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %25, i32 0, i32 3
  %26 = load i64, i64* %value_type, align 8
  %call12 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %26)
  store %struct._GValue* %value, %struct._GValue** %__val, align 8
  store i64 48, i64* %__t, align 8
  %27 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool13 = icmp ne %struct._GValue* %27, null
  br i1 %tobool13, label %if.else.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.11
  store i32 0, i32* %__r, align 4
  br label %if.end.21

if.else.15:                                       ; preds = %if.then.11
  %28 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type, align 8
  %30 = load i64, i64* %__t, align 8
  %cmp16 = icmp eq i64 %29, %30
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else.15
  store i32 1, i32* %__r, align 4
  br label %if.end.20

if.else.18:                                       ; preds = %if.else.15
  %31 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %32 = load i64, i64* %__t, align 8
  %call19 = call i32 @g_type_check_value_holds(%struct._GValue* %31, i64 %32) #4
  store i32 %call19, i32* %__r, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.then.17
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.14
  %33 = load i32, i32* %__r, align 4
  store i32 %33, i32* %tmp
  %34 = load i32, i32* %tmp
  %tobool22 = icmp ne i32 %34, 0
  br i1 %tobool22, label %if.then.23, label %if.else.38

if.then.23:                                       ; preds = %if.end.21
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %value_type26 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %35, i32 0, i32 3
  %36 = load i64, i64* %value_type26, align 8
  %call27 = call i8* @g_type_class_peek(i64 %36)
  %37 = bitcast i8* %call27 to %struct._GEnumClass*
  store %struct._GEnumClass* %37, %struct._GEnumClass** %enum_class, align 8
  %38 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %39 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %value28 = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %39, i32 0, i32 1
  %40 = load i8*, i8** %value28, align 8
  %call29 = call %struct._GEnumValue* @g_enum_get_value_by_nick(%struct._GEnumClass* %38, i8* %40)
  store %struct._GEnumValue* %call29, %struct._GEnumValue** %enum_value, align 8
  %41 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %tobool30 = icmp ne %struct._GEnumValue* %41, null
  br i1 %tobool30, label %if.then.31, label %if.else.34

if.then.31:                                       ; preds = %if.then.23
  %42 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value32 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %42, i32 0, i32 0
  %43 = load i32, i32* %value32, align 4
  call void @g_value_set_enum(%struct._GValue* %value, i32 %43)
  %44 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %45 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %name33 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %45, i32 0, i32 1
  %46 = load i8*, i8** %name33, align 8
  call void @g_object_set_property(%struct._GObject* %44, i8* %46, %struct._GValue* %value)
  br label %if.end.37

if.else.34:                                       ; preds = %if.then.23
  %47 = load i8*, i8** %prop_name, align 8
  %48 = load %struct._GObjectClass*, %struct._GObjectClass** %class, align 8
  %49 = bitcast %struct._GObjectClass* %48 to %struct._GTypeClass*
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %49, i32 0, i32 0
  %50 = load i64, i64* %g_type35, align 8
  %call36 = call i8* @g_type_name(i64 %50)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_session_info_aux_set_props, i32 0, i32 0), i8* %47, i8* %call36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.31
  br label %if.end.50

if.else.38:                                       ; preds = %if.end.21
  %51 = bitcast %struct._GValue* %str_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %51, i8 0, i64 24, i32 8, i1 false)
  %call40 = call %struct._GValue* @g_value_init(%struct._GValue* %str_value, i64 64)
  %52 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %value41 = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %52, i32 0, i32 1
  %53 = load i8*, i8** %value41, align 8
  call void @g_value_set_static_string(%struct._GValue* %str_value, i8* %53)
  %call42 = call i32 @g_value_transform(%struct._GValue* %str_value, %struct._GValue* %value)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %if.else.38
  %54 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %55 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %name45 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %55, i32 0, i32 1
  %56 = load i8*, i8** %name45, align 8
  call void @g_object_set_property(%struct._GObject* %54, i8* %56, %struct._GValue* %value)
  br label %if.end.49

if.else.46:                                       ; preds = %if.else.38
  %57 = load i8*, i8** %prop_name, align 8
  %58 = load %struct._GObjectClass*, %struct._GObjectClass** %class, align 8
  %59 = bitcast %struct._GObjectClass* %58 to %struct._GTypeClass*
  %g_type47 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %59, i32 0, i32 0
  %60 = load i64, i64* %g_type47, align 8
  %call48 = call i8* @g_type_name(i64 %60)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_session_info_aux_set_props, i32 0, i32 0), i8* %57, i8* %call48)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.44
  call void @g_value_unset(%struct._GValue* %str_value)
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.37
  call void @g_value_unset(%struct._GValue* %value)
  br label %if.end.54

if.else.51:                                       ; preds = %if.then.8
  %61 = load i8*, i8** %prop_name, align 8
  %62 = load %struct._GObjectClass*, %struct._GObjectClass** %class, align 8
  %63 = bitcast %struct._GObjectClass* %62 to %struct._GTypeClass*
  %g_type52 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %63, i32 0, i32 0
  %64 = load i64, i64* %g_type52, align 8
  %call53 = call i8* @g_type_name(i64 %64)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_session_info_aux_set_props, i32 0, i32 0), i8* %61, i8* %call53)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.end.50
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %65 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool56 = icmp ne %struct._GList* %65, null
  br i1 %tobool56, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %66 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %66, i32 0, i32 1
  %67 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %67, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.end
  %arraydecay58 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p59 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay58, i32 0, i32 0
  %gp_offset60 = load i32, i32* %gp_offset_p59
  %fits_in_gp61 = icmp ule i32 %gp_offset60, 40
  br i1 %fits_in_gp61, label %vaarg.in_reg.62, label %vaarg.in_mem.64

vaarg.in_reg.62:                                  ; preds = %for.inc.57
  %68 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay58, i32 0, i32 3
  %reg_save_area63 = load i8*, i8** %68
  %69 = getelementptr i8, i8* %reg_save_area63, i32 %gp_offset60
  %70 = bitcast i8* %69 to i8**
  %71 = add i32 %gp_offset60, 8
  store i32 %71, i32* %gp_offset_p59
  br label %vaarg.end.68

vaarg.in_mem.64:                                  ; preds = %for.inc.57
  %overflow_arg_area_p65 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay58, i32 0, i32 2
  %overflow_arg_area66 = load i8*, i8** %overflow_arg_area_p65
  %72 = bitcast i8* %overflow_arg_area66 to i8**
  %overflow_arg_area.next67 = getelementptr i8, i8* %overflow_arg_area66, i32 8
  store i8* %overflow_arg_area.next67, i8** %overflow_arg_area_p65
  br label %vaarg.end.68

vaarg.end.68:                                     ; preds = %vaarg.in_mem.64, %vaarg.in_reg.62
  %vaarg.addr69 = phi i8** [ %70, %vaarg.in_reg.62 ], [ %72, %vaarg.in_mem.64 ]
  %73 = load i8*, i8** %vaarg.addr69
  store i8* %73, i8** %prop_name, align 8
  br label %for.cond

for.end.70:                                       ; preds = %for.cond
  %arraydecay71 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay7172 = bitcast %struct.__va_list_tag* %arraydecay71 to i8*
  call void @llvm.va_end(i8* %arraydecay7172)
  br label %return

return:                                           ; preds = %for.end.70, %if.else
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_value_holds(%struct._GValue*, i64) #2

declare i8* @g_type_class_peek(i64) #1

declare %struct._GEnumValue* @g_enum_get_value_by_nick(%struct._GEnumClass*, i8*) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_object_set_property(%struct._GObject*, i8*, %struct._GValue*) #1

declare void @g_value_set_static_string(%struct._GValue*, i8*) #1

declare i32 @g_value_transform(%struct._GValue*, %struct._GValue*) #1

; Function Attrs: nounwind uwtable
define void @gimp_session_info_aux_serialize(%struct._GimpConfigWriter* %writer, %struct._GList* %aux_info) #0 {
entry:
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %aux_info.addr = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %aux = alloca %struct._GimpSessionInfoAux*, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store %struct._GList* %aux_info, %struct._GList** %aux_info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %cmp = icmp ne %struct._GimpConfigWriter* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_session_info_aux_serialize, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GList*, %struct._GList** %aux_info.addr, align 8
  %cmp2 = icmp ne %struct._GList* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_session_info_aux_serialize, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0))
  %3 = load %struct._GList*, %struct._GList** %aux_info.addr, align 8
  store %struct._GList* %3, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.6
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GimpSessionInfoAux*
  store %struct._GimpSessionInfoAux* %7, %struct._GimpSessionInfoAux** %aux, align 8
  %8 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %9 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %name = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %9, i32 0, i32 0
  %10 = load i8*, i8** %name, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %8, i8* %10)
  %11 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %12 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %value = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %12, i32 0, i32 1
  %13 = load i8*, i8** %value, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %11, i8* %13)
  %14 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %15, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 1
  %17 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %17, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %18)
  br label %return

return:                                           ; preds = %for.end, %if.else.4, %if.else
  ret void
}

declare void @gimp_config_writer_open(%struct._GimpConfigWriter*, i8*) #1

declare void @gimp_config_writer_string(%struct._GimpConfigWriter*, i8*) #1

declare void @gimp_config_writer_close(%struct._GimpConfigWriter*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_session_info_aux_deserialize(%struct._GScanner* %scanner, %struct._GList** %aux_list) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %aux_list.addr = alloca %struct._GList**, align 8
  %aux_info = alloca %struct._GimpSessionInfoAux*, align 8
  %token = alloca i32, align 4
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store %struct._GList** %aux_list, %struct._GList*** %aux_list.addr, align 8
  store %struct._GimpSessionInfoAux* null, %struct._GimpSessionInfoAux** %aux_info, align 8
  store i32 40, i32* %token, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %cmp = icmp ne %struct._GScanner* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_session_info_aux_deserialize, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0))
  store i32 40, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GList**, %struct._GList*** %aux_list.addr, align 8
  %cmp2 = icmp ne %struct._GList** %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_session_info_aux_deserialize, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0))
  store i32 40, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %do.end.6
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_peek_next_token(%struct._GScanner* %2)
  %3 = load i32, i32* %token, align 4
  %cmp7 = icmp eq i32 %call, %3
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call8 = call i32 @g_scanner_get_next_token(%struct._GScanner* %4)
  store i32 %call8, i32* %token, align 4
  %5 = load i32, i32* %token, align 4
  switch i32 %5, label %sw.default [
    i32 40, label %sw.bb
    i32 266, label %sw.bb.9
    i32 41, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %while.body
  store i32 266, i32* %token, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %while.body
  %call10 = call noalias i8* @g_slice_alloc0(i64 16)
  %6 = bitcast i8* %call10 to %struct._GimpSessionInfoAux*
  store %struct._GimpSessionInfoAux* %6, %struct._GimpSessionInfoAux** %aux_info, align 8
  %7 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %7, i32 0, i32 7
  %v_identifier = bitcast %union._GTokenValue* %value to i8**
  %8 = load i8*, i8** %v_identifier, align 8
  %call11 = call noalias i8* @g_strdup(i8* %8)
  %9 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux_info, align 8
  %name = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %9, i32 0, i32 0
  store i8* %call11, i8** %name, align 8
  store i32 264, i32* %token, align 4
  %10 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call12 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %10)
  %11 = load i32, i32* %token, align 4
  %cmp13 = icmp ne i32 %call12, %11
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %sw.bb.9
  br label %error

if.end.15:                                        ; preds = %sw.bb.9
  %12 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %13 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux_info, align 8
  %value16 = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %13, i32 0, i32 1
  %call17 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %12, i8** %value16)
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.15
  br label %error

if.end.19:                                        ; preds = %if.end.15
  %14 = load %struct._GList**, %struct._GList*** %aux_list.addr, align 8
  %15 = load %struct._GList*, %struct._GList** %14, align 8
  %16 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux_info, align 8
  %17 = bitcast %struct._GimpSessionInfoAux* %16 to i8*
  %call20 = call %struct._GList* @g_list_append(%struct._GList* %15, i8* %17)
  %18 = load %struct._GList**, %struct._GList*** %aux_list.addr, align 8
  store %struct._GList* %call20, %struct._GList** %18, align 8
  store %struct._GimpSessionInfoAux* null, %struct._GimpSessionInfoAux** %aux_info, align 8
  store i32 41, i32* %token, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %while.body
  store i32 40, i32* %token, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.21, %if.end.19, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %token, align 4
  store i32 %19, i32* %retval
  br label %return

error:                                            ; preds = %if.then.18, %if.then.14
  %20 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux_info, align 8
  %tobool22 = icmp ne %struct._GimpSessionInfoAux* %20, null
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %error
  %21 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux_info, align 8
  call void @gimp_session_info_aux_free(%struct._GimpSessionInfoAux* %21)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %error
  %22 = load i32, i32* %token, align 4
  store i32 %22, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %while.end, %if.else.4, %if.else
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @g_scanner_peek_next_token(%struct._GScanner*) #1

declare i32 @g_scanner_get_next_token(%struct._GScanner*) #1

declare i32 @gimp_scanner_parse_string(%struct._GScanner*, i8**) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
