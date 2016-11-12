; ModuleID = './app/plug-in/gimppluginmanager-help-domain.bc'
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
%struct._GimpPlugInHelpDomain = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_plug_in_manager_help_domain_exit = private unnamed_addr constant [38 x i8] c"gimp_plug_in_manager_help_domain_exit\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"GIMP_IS_PLUG_IN_MANAGER (manager)\00", align 1
@__func__.gimp_plug_in_manager_add_help_domain = private unnamed_addr constant [37 x i8] c"gimp_plug_in_manager_add_help_domain\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"prog_name != NULL\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"domain_name != NULL\00", align 1
@__func__.gimp_plug_in_manager_get_help_domain = private unnamed_addr constant [37 x i8] c"gimp_plug_in_manager_get_help_domain\00", align 1
@__func__.gimp_plug_in_manager_get_help_domains = private unnamed_addr constant [38 x i8] c"gimp_plug_in_manager_get_help_domains\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"help_domains != NULL\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"help_uris != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_help_domain_exit(%struct._GimpPlugInManager* %manager) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %domain = alloca %struct._GimpPlugInHelpDomain*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_plug_in_manager_help_domain_exit, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %help_domains = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %13, i32 0, i32 10
  %14 = load %struct._GSList*, %struct._GSList** %help_domains, align 8
  store %struct._GSList* %14, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %15 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool11 = icmp ne %struct._GSList* %15, null
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct._GimpPlugInHelpDomain*
  store %struct._GimpPlugInHelpDomain* %18, %struct._GimpPlugInHelpDomain** %domain, align 8
  %19 = load %struct._GimpPlugInHelpDomain*, %struct._GimpPlugInHelpDomain** %domain, align 8
  %prog_name = getelementptr inbounds %struct._GimpPlugInHelpDomain, %struct._GimpPlugInHelpDomain* %19, i32 0, i32 0
  %20 = load i8*, i8** %prog_name, align 8
  call void @g_free(i8* %20)
  %21 = load %struct._GimpPlugInHelpDomain*, %struct._GimpPlugInHelpDomain** %domain, align 8
  %domain_name = getelementptr inbounds %struct._GimpPlugInHelpDomain, %struct._GimpPlugInHelpDomain* %21, i32 0, i32 1
  %22 = load i8*, i8** %domain_name, align 8
  call void @g_free(i8* %22)
  %23 = load %struct._GimpPlugInHelpDomain*, %struct._GimpPlugInHelpDomain** %domain, align 8
  %domain_uri = getelementptr inbounds %struct._GimpPlugInHelpDomain, %struct._GimpPlugInHelpDomain* %23, i32 0, i32 2
  %24 = load i8*, i8** %domain_uri, align 8
  call void @g_free(i8* %24)
  br label %do.body.13

do.body.13:                                       ; preds = %for.body
  %25 = load %struct._GimpPlugInHelpDomain*, %struct._GimpPlugInHelpDomain** %domain, align 8
  %26 = bitcast %struct._GimpPlugInHelpDomain* %25 to i8*
  call void @g_slice_free1(i64 24, i8* %26)
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.13
  br label %for.inc

for.inc:                                          ; preds = %do.end.14
  %27 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %27, i32 0, i32 1
  %28 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %28, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %help_domains15 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %29, i32 0, i32 10
  %30 = load %struct._GSList*, %struct._GSList** %help_domains15, align 8
  call void @g_slist_free(%struct._GSList* %30)
  %31 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %help_domains16 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %31, i32 0, i32 10
  store %struct._GSList* null, %struct._GSList** %help_domains16, align 8
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_manager_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare void @g_free(i8*) #3

declare void @g_slice_free1(i64, i8*) #3

declare void @g_slist_free(%struct._GSList*) #3

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_add_help_domain(%struct._GimpPlugInManager* %manager, i8* %prog_name, i8* %domain_name, i8* %domain_uri) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %prog_name.addr = alloca i8*, align 8
  %domain_name.addr = alloca i8*, align 8
  %domain_uri.addr = alloca i8*, align 8
  %domain = alloca %struct._GimpPlugInHelpDomain*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store i8* %prog_name, i8** %prog_name.addr, align 8
  store i8* %domain_name, i8** %domain_name.addr, align 8
  store i8* %domain_uri, i8** %domain_uri.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_plug_in_manager_add_help_domain, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %prog_name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_plug_in_manager_add_help_domain, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %domain_name.addr, align 8
  %cmp18 = icmp ne i8* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_plug_in_manager_add_help_domain, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %call23 = call noalias i8* @g_slice_alloc(i64 24)
  %15 = bitcast i8* %call23 to %struct._GimpPlugInHelpDomain*
  store %struct._GimpPlugInHelpDomain* %15, %struct._GimpPlugInHelpDomain** %domain, align 8
  %16 = load i8*, i8** %prog_name.addr, align 8
  %call24 = call noalias i8* @g_strdup(i8* %16)
  %17 = load %struct._GimpPlugInHelpDomain*, %struct._GimpPlugInHelpDomain** %domain, align 8
  %prog_name25 = getelementptr inbounds %struct._GimpPlugInHelpDomain, %struct._GimpPlugInHelpDomain* %17, i32 0, i32 0
  store i8* %call24, i8** %prog_name25, align 8
  %18 = load i8*, i8** %domain_name.addr, align 8
  %call26 = call noalias i8* @g_strdup(i8* %18)
  %19 = load %struct._GimpPlugInHelpDomain*, %struct._GimpPlugInHelpDomain** %domain, align 8
  %domain_name27 = getelementptr inbounds %struct._GimpPlugInHelpDomain, %struct._GimpPlugInHelpDomain* %19, i32 0, i32 1
  store i8* %call26, i8** %domain_name27, align 8
  %20 = load i8*, i8** %domain_uri.addr, align 8
  %call28 = call noalias i8* @g_strdup(i8* %20)
  %21 = load %struct._GimpPlugInHelpDomain*, %struct._GimpPlugInHelpDomain** %domain, align 8
  %domain_uri29 = getelementptr inbounds %struct._GimpPlugInHelpDomain, %struct._GimpPlugInHelpDomain* %21, i32 0, i32 2
  store i8* %call28, i8** %domain_uri29, align 8
  %22 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %help_domains = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %22, i32 0, i32 10
  %23 = load %struct._GSList*, %struct._GSList** %help_domains, align 8
  %24 = load %struct._GimpPlugInHelpDomain*, %struct._GimpPlugInHelpDomain** %domain, align 8
  %25 = bitcast %struct._GimpPlugInHelpDomain* %24 to i8*
  %call30 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %23, i8* %25)
  %26 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %help_domains31 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %26, i32 0, i32 10
  store %struct._GSList* %call30, %struct._GSList** %help_domains31, align 8
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

declare noalias i8* @g_slice_alloc(i64) #3

declare noalias i8* @g_strdup(i8*) #3

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #3

; Function Attrs: nounwind uwtable
define i8* @gimp_plug_in_manager_get_help_domain(%struct._GimpPlugInManager* %manager, i8* %prog_name, i8** %domain_uri) #0 {
entry:
  %retval = alloca i8*, align 8
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %prog_name.addr = alloca i8*, align 8
  %domain_uri.addr = alloca i8**, align 8
  %list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %domain = alloca %struct._GimpPlugInHelpDomain*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store i8* %prog_name, i8** %prog_name.addr, align 8
  store i8** %domain_uri, i8*** %domain_uri.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_plug_in_manager_get_help_domain, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i8**, i8*** %domain_uri.addr, align 8
  %tobool11 = icmp ne i8** %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  %14 = load i8**, i8*** %domain_uri.addr, align 8
  store i8* null, i8** %14, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %do.end
  %15 = load i8*, i8** %prog_name.addr, align 8
  %tobool14 = icmp ne i8* %15, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.13
  store i8* null, i8** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.13
  %16 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %help_domains = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %16, i32 0, i32 10
  %17 = load %struct._GSList*, %struct._GSList** %help_domains, align 8
  store %struct._GSList* %17, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %18 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool17 = icmp ne %struct._GSList* %18, null
  br i1 %tobool17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  %21 = bitcast i8* %20 to %struct._GimpPlugInHelpDomain*
  store %struct._GimpPlugInHelpDomain* %21, %struct._GimpPlugInHelpDomain** %domain, align 8
  %22 = load %struct._GimpPlugInHelpDomain*, %struct._GimpPlugInHelpDomain** %domain, align 8
  %tobool19 = icmp ne %struct._GimpPlugInHelpDomain* %22, null
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.35

land.lhs.true.20:                                 ; preds = %for.body
  %23 = load %struct._GimpPlugInHelpDomain*, %struct._GimpPlugInHelpDomain** %domain, align 8
  %prog_name21 = getelementptr inbounds %struct._GimpPlugInHelpDomain, %struct._GimpPlugInHelpDomain* %23, i32 0, i32 0
  %24 = load i8*, i8** %prog_name21, align 8
  %tobool22 = icmp ne i8* %24, null
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.35

land.lhs.true.23:                                 ; preds = %land.lhs.true.20
  %25 = load %struct._GimpPlugInHelpDomain*, %struct._GimpPlugInHelpDomain** %domain, align 8
  %prog_name24 = getelementptr inbounds %struct._GimpPlugInHelpDomain, %struct._GimpPlugInHelpDomain* %25, i32 0, i32 0
  %26 = load i8*, i8** %prog_name24, align 8
  %27 = load i8*, i8** %prog_name.addr, align 8
  %call25 = call i32 @strcmp(i8* %26, i8* %27) #5
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.35, label %if.then.27

if.then.27:                                       ; preds = %land.lhs.true.23
  %28 = load i8**, i8*** %domain_uri.addr, align 8
  %tobool28 = icmp ne i8** %28, null
  br i1 %tobool28, label %land.lhs.true.29, label %if.end.34

land.lhs.true.29:                                 ; preds = %if.then.27
  %29 = load %struct._GimpPlugInHelpDomain*, %struct._GimpPlugInHelpDomain** %domain, align 8
  %domain_uri30 = getelementptr inbounds %struct._GimpPlugInHelpDomain, %struct._GimpPlugInHelpDomain* %29, i32 0, i32 2
  %30 = load i8*, i8** %domain_uri30, align 8
  %tobool31 = icmp ne i8* %30, null
  br i1 %tobool31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %land.lhs.true.29
  %31 = load %struct._GimpPlugInHelpDomain*, %struct._GimpPlugInHelpDomain** %domain, align 8
  %domain_uri33 = getelementptr inbounds %struct._GimpPlugInHelpDomain, %struct._GimpPlugInHelpDomain* %31, i32 0, i32 2
  %32 = load i8*, i8** %domain_uri33, align 8
  %33 = load i8**, i8*** %domain_uri.addr, align 8
  store i8* %32, i8** %33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %land.lhs.true.29, %if.then.27
  %34 = load %struct._GimpPlugInHelpDomain*, %struct._GimpPlugInHelpDomain** %domain, align 8
  %domain_name = getelementptr inbounds %struct._GimpPlugInHelpDomain, %struct._GimpPlugInHelpDomain* %34, i32 0, i32 1
  %35 = load i8*, i8** %domain_name, align 8
  store i8* %35, i8** %retval
  br label %return

if.end.35:                                        ; preds = %land.lhs.true.23, %land.lhs.true.20, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %36 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %36, i32 0, i32 1
  %37 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %37, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.34, %if.then.15, %if.else.9
  %38 = load i8*, i8** %retval
  ret i8* %38
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_manager_get_help_domains(%struct._GimpPlugInManager* %manager, i8*** %help_domains, i8*** %help_uris) #0 {
entry:
  %retval = alloca i32, align 4
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %help_domains.addr = alloca i8***, align 8
  %help_uris.addr = alloca i8***, align 8
  %n_domains = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %list = alloca %struct._GSList*, align 8
  %i = alloca i32, align 4
  %domain = alloca %struct._GimpPlugInHelpDomain*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store i8*** %help_domains, i8**** %help_domains.addr, align 8
  store i8*** %help_uris, i8**** %help_uris.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_plug_in_manager_get_help_domains, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8***, i8**** %help_domains.addr, align 8
  %cmp12 = icmp ne i8*** %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_plug_in_manager_get_help_domains, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8***, i8**** %help_uris.addr, align 8
  %cmp18 = icmp ne i8*** %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_plug_in_manager_get_help_domains, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %help_domains23 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %15, i32 0, i32 10
  %16 = load %struct._GSList*, %struct._GSList** %help_domains23, align 8
  %call24 = call i32 @g_slist_length(%struct._GSList* %16)
  store i32 %call24, i32* %n_domains, align 4
  %17 = load i32, i32* %n_domains, align 4
  %cmp25 = icmp sgt i32 %17, 0
  br i1 %cmp25, label %if.then.26, label %if.else.40

if.then.26:                                       ; preds = %do.end.22
  %18 = load i32, i32* %n_domains, align 4
  %add = add nsw i32 %18, 1
  %conv = sext i32 %add to i64
  %call29 = call noalias i8* @g_malloc0_n(i64 %conv, i64 8)
  %19 = bitcast i8* %call29 to i8**
  %20 = load i8***, i8**** %help_domains.addr, align 8
  store i8** %19, i8*** %20, align 8
  %21 = load i32, i32* %n_domains, align 4
  %add30 = add nsw i32 %21, 1
  %conv31 = sext i32 %add30 to i64
  %call32 = call noalias i8* @g_malloc0_n(i64 %conv31, i64 8)
  %22 = bitcast i8* %call32 to i8**
  %23 = load i8***, i8**** %help_uris.addr, align 8
  store i8** %22, i8*** %23, align 8
  %24 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %help_domains33 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %24, i32 0, i32 10
  %25 = load %struct._GSList*, %struct._GSList** %help_domains33, align 8
  store %struct._GSList* %25, %struct._GSList** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.26
  %26 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool34 = icmp ne %struct._GSList* %26, null
  br i1 %tobool34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %27, i32 0, i32 0
  %28 = load i8*, i8** %data, align 8
  %29 = bitcast i8* %28 to %struct._GimpPlugInHelpDomain*
  store %struct._GimpPlugInHelpDomain* %29, %struct._GimpPlugInHelpDomain** %domain, align 8
  %30 = load %struct._GimpPlugInHelpDomain*, %struct._GimpPlugInHelpDomain** %domain, align 8
  %domain_name = getelementptr inbounds %struct._GimpPlugInHelpDomain, %struct._GimpPlugInHelpDomain* %30, i32 0, i32 1
  %31 = load i8*, i8** %domain_name, align 8
  %call36 = call noalias i8* @g_strdup(i8* %31)
  %32 = load i32, i32* %i, align 4
  %idxprom = sext i32 %32 to i64
  %33 = load i8***, i8**** %help_domains.addr, align 8
  %34 = load i8**, i8*** %33, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %34, i64 %idxprom
  store i8* %call36, i8** %arrayidx, align 8
  %35 = load %struct._GimpPlugInHelpDomain*, %struct._GimpPlugInHelpDomain** %domain, align 8
  %domain_uri = getelementptr inbounds %struct._GimpPlugInHelpDomain, %struct._GimpPlugInHelpDomain* %35, i32 0, i32 2
  %36 = load i8*, i8** %domain_uri, align 8
  %call37 = call noalias i8* @g_strdup(i8* %36)
  %37 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %37 to i64
  %38 = load i8***, i8**** %help_uris.addr, align 8
  %39 = load i8**, i8*** %38, align 8
  %arrayidx39 = getelementptr inbounds i8*, i8** %39, i64 %idxprom38
  store i8* %call37, i8** %arrayidx39, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %40, i32 0, i32 1
  %41 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %41, %struct._GSList** %list, align 8
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.41

if.else.40:                                       ; preds = %do.end.22
  %43 = load i8***, i8**** %help_domains.addr, align 8
  store i8** null, i8*** %43, align 8
  %44 = load i8***, i8**** %help_uris.addr, align 8
  store i8** null, i8*** %44, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %for.end
  %45 = load i32, i32* %n_domains, align 4
  store i32 %45, i32* %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.else.20, %if.else.14, %if.else.9
  %46 = load i32, i32* %retval
  ret i32 %46
}

declare i32 @g_slist_length(%struct._GSList*) #3

declare noalias i8* @g_malloc0_n(i64, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
