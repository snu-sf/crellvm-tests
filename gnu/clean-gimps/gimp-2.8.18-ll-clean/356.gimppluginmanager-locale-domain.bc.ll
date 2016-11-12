; ModuleID = './app/plug-in/gimppluginmanager-locale-domain.bc'
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
%struct._GimpPlugInLocaleDomain = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_plug_in_manager_locale_domain_exit = private unnamed_addr constant [40 x i8] c"gimp_plug_in_manager_locale_domain_exit\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"GIMP_IS_PLUG_IN_MANAGER (manager)\00", align 1
@__func__.gimp_plug_in_manager_add_locale_domain = private unnamed_addr constant [39 x i8] c"gimp_plug_in_manager_add_locale_domain\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"prog_name != NULL\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"domain_name != NULL\00", align 1
@__func__.gimp_plug_in_manager_get_locale_domain = private unnamed_addr constant [39 x i8] c"gimp_plug_in_manager_get_locale_domain\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@__func__.gimp_plug_in_manager_get_locale_domains = private unnamed_addr constant [40 x i8] c"gimp_plug_in_manager_get_locale_domains\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"locale_domains != NULL\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"locale_paths != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_plug_in_manager_locale_domain_exit(%struct._GimpPlugInManager* %manager) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %domain = alloca %struct._GimpPlugInLocaleDomain*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_plug_in_manager_locale_domain_exit, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %locale_domains = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %13, i32 0, i32 9
  %14 = load %struct._GSList*, %struct._GSList** %locale_domains, align 8
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
  %18 = bitcast i8* %17 to %struct._GimpPlugInLocaleDomain*
  store %struct._GimpPlugInLocaleDomain* %18, %struct._GimpPlugInLocaleDomain** %domain, align 8
  %19 = load %struct._GimpPlugInLocaleDomain*, %struct._GimpPlugInLocaleDomain** %domain, align 8
  %prog_name = getelementptr inbounds %struct._GimpPlugInLocaleDomain, %struct._GimpPlugInLocaleDomain* %19, i32 0, i32 0
  %20 = load i8*, i8** %prog_name, align 8
  call void @g_free(i8* %20)
  %21 = load %struct._GimpPlugInLocaleDomain*, %struct._GimpPlugInLocaleDomain** %domain, align 8
  %domain_name = getelementptr inbounds %struct._GimpPlugInLocaleDomain, %struct._GimpPlugInLocaleDomain* %21, i32 0, i32 1
  %22 = load i8*, i8** %domain_name, align 8
  call void @g_free(i8* %22)
  %23 = load %struct._GimpPlugInLocaleDomain*, %struct._GimpPlugInLocaleDomain** %domain, align 8
  %domain_path = getelementptr inbounds %struct._GimpPlugInLocaleDomain, %struct._GimpPlugInLocaleDomain* %23, i32 0, i32 2
  %24 = load i8*, i8** %domain_path, align 8
  call void @g_free(i8* %24)
  br label %do.body.13

do.body.13:                                       ; preds = %for.body
  %25 = load %struct._GimpPlugInLocaleDomain*, %struct._GimpPlugInLocaleDomain** %domain, align 8
  %26 = bitcast %struct._GimpPlugInLocaleDomain* %25 to i8*
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
  %locale_domains15 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %29, i32 0, i32 9
  %30 = load %struct._GSList*, %struct._GSList** %locale_domains15, align 8
  call void @g_slist_free(%struct._GSList* %30)
  %31 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %locale_domains16 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %31, i32 0, i32 9
  store %struct._GSList* null, %struct._GSList** %locale_domains16, align 8
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
define void @gimp_plug_in_manager_add_locale_domain(%struct._GimpPlugInManager* %manager, i8* %prog_name, i8* %domain_name, i8* %domain_path) #0 {
entry:
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %prog_name.addr = alloca i8*, align 8
  %domain_name.addr = alloca i8*, align 8
  %domain_path.addr = alloca i8*, align 8
  %domain = alloca %struct._GimpPlugInLocaleDomain*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store i8* %prog_name, i8** %prog_name.addr, align 8
  store i8* %domain_name, i8** %domain_name.addr, align 8
  store i8* %domain_path, i8** %domain_path.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_plug_in_manager_add_locale_domain, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_plug_in_manager_add_locale_domain, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_plug_in_manager_add_locale_domain, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %call23 = call noalias i8* @g_slice_alloc(i64 24)
  %15 = bitcast i8* %call23 to %struct._GimpPlugInLocaleDomain*
  store %struct._GimpPlugInLocaleDomain* %15, %struct._GimpPlugInLocaleDomain** %domain, align 8
  %16 = load i8*, i8** %prog_name.addr, align 8
  %call24 = call noalias i8* @g_strdup(i8* %16)
  %17 = load %struct._GimpPlugInLocaleDomain*, %struct._GimpPlugInLocaleDomain** %domain, align 8
  %prog_name25 = getelementptr inbounds %struct._GimpPlugInLocaleDomain, %struct._GimpPlugInLocaleDomain* %17, i32 0, i32 0
  store i8* %call24, i8** %prog_name25, align 8
  %18 = load i8*, i8** %domain_name.addr, align 8
  %call26 = call noalias i8* @g_strdup(i8* %18)
  %19 = load %struct._GimpPlugInLocaleDomain*, %struct._GimpPlugInLocaleDomain** %domain, align 8
  %domain_name27 = getelementptr inbounds %struct._GimpPlugInLocaleDomain, %struct._GimpPlugInLocaleDomain* %19, i32 0, i32 1
  store i8* %call26, i8** %domain_name27, align 8
  %20 = load i8*, i8** %domain_path.addr, align 8
  %call28 = call noalias i8* @g_strdup(i8* %20)
  %21 = load %struct._GimpPlugInLocaleDomain*, %struct._GimpPlugInLocaleDomain** %domain, align 8
  %domain_path29 = getelementptr inbounds %struct._GimpPlugInLocaleDomain, %struct._GimpPlugInLocaleDomain* %21, i32 0, i32 2
  store i8* %call28, i8** %domain_path29, align 8
  %22 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %locale_domains = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %22, i32 0, i32 9
  %23 = load %struct._GSList*, %struct._GSList** %locale_domains, align 8
  %24 = load %struct._GimpPlugInLocaleDomain*, %struct._GimpPlugInLocaleDomain** %domain, align 8
  %25 = bitcast %struct._GimpPlugInLocaleDomain* %24 to i8*
  %call30 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %23, i8* %25)
  %26 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %locale_domains31 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %26, i32 0, i32 9
  store %struct._GSList* %call30, %struct._GSList** %locale_domains31, align 8
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

declare noalias i8* @g_slice_alloc(i64) #3

declare noalias i8* @g_strdup(i8*) #3

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #3

; Function Attrs: nounwind uwtable
define i8* @gimp_plug_in_manager_get_locale_domain(%struct._GimpPlugInManager* %manager, i8* %prog_name, i8** %domain_path) #0 {
entry:
  %retval = alloca i8*, align 8
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %prog_name.addr = alloca i8*, align 8
  %domain_path.addr = alloca i8**, align 8
  %list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %domain = alloca %struct._GimpPlugInLocaleDomain*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store i8* %prog_name, i8** %prog_name.addr, align 8
  store i8** %domain_path, i8*** %domain_path.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_plug_in_manager_get_locale_domain, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i8**, i8*** %domain_path.addr, align 8
  %tobool11 = icmp ne i8** %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %call13 = call i8* @gimp_locale_directory() #4
  %14 = load i8**, i8*** %domain_path.addr, align 8
  store i8* %call13, i8** %14, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %15 = load i8*, i8** %prog_name.addr, align 8
  %tobool15 = icmp ne i8* %15, null
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.14
  store i8* null, i8** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.14
  %16 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %locale_domains = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %16, i32 0, i32 9
  %17 = load %struct._GSList*, %struct._GSList** %locale_domains, align 8
  store %struct._GSList* %17, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %18 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool18 = icmp ne %struct._GSList* %18, null
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  %21 = bitcast i8* %20 to %struct._GimpPlugInLocaleDomain*
  store %struct._GimpPlugInLocaleDomain* %21, %struct._GimpPlugInLocaleDomain** %domain, align 8
  %22 = load %struct._GimpPlugInLocaleDomain*, %struct._GimpPlugInLocaleDomain** %domain, align 8
  %tobool20 = icmp ne %struct._GimpPlugInLocaleDomain* %22, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.36

land.lhs.true.21:                                 ; preds = %for.body
  %23 = load %struct._GimpPlugInLocaleDomain*, %struct._GimpPlugInLocaleDomain** %domain, align 8
  %prog_name22 = getelementptr inbounds %struct._GimpPlugInLocaleDomain, %struct._GimpPlugInLocaleDomain* %23, i32 0, i32 0
  %24 = load i8*, i8** %prog_name22, align 8
  %tobool23 = icmp ne i8* %24, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.36

land.lhs.true.24:                                 ; preds = %land.lhs.true.21
  %25 = load %struct._GimpPlugInLocaleDomain*, %struct._GimpPlugInLocaleDomain** %domain, align 8
  %prog_name25 = getelementptr inbounds %struct._GimpPlugInLocaleDomain, %struct._GimpPlugInLocaleDomain* %25, i32 0, i32 0
  %26 = load i8*, i8** %prog_name25, align 8
  %27 = load i8*, i8** %prog_name.addr, align 8
  %call26 = call i32 @strcmp(i8* %26, i8* %27) #5
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.36, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true.24
  %28 = load i8**, i8*** %domain_path.addr, align 8
  %tobool29 = icmp ne i8** %28, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.35

land.lhs.true.30:                                 ; preds = %if.then.28
  %29 = load %struct._GimpPlugInLocaleDomain*, %struct._GimpPlugInLocaleDomain** %domain, align 8
  %domain_path31 = getelementptr inbounds %struct._GimpPlugInLocaleDomain, %struct._GimpPlugInLocaleDomain* %29, i32 0, i32 2
  %30 = load i8*, i8** %domain_path31, align 8
  %tobool32 = icmp ne i8* %30, null
  br i1 %tobool32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %land.lhs.true.30
  %31 = load %struct._GimpPlugInLocaleDomain*, %struct._GimpPlugInLocaleDomain** %domain, align 8
  %domain_path34 = getelementptr inbounds %struct._GimpPlugInLocaleDomain, %struct._GimpPlugInLocaleDomain* %31, i32 0, i32 2
  %32 = load i8*, i8** %domain_path34, align 8
  %33 = load i8**, i8*** %domain_path.addr, align 8
  store i8* %32, i8** %33, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %land.lhs.true.30, %if.then.28
  %34 = load %struct._GimpPlugInLocaleDomain*, %struct._GimpPlugInLocaleDomain** %domain, align 8
  %domain_name = getelementptr inbounds %struct._GimpPlugInLocaleDomain, %struct._GimpPlugInLocaleDomain* %34, i32 0, i32 1
  %35 = load i8*, i8** %domain_name, align 8
  store i8* %35, i8** %retval
  br label %return

if.end.36:                                        ; preds = %land.lhs.true.24, %land.lhs.true.21, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %36 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %36, i32 0, i32 1
  %37 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %37, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.35, %if.then.16, %if.else.9
  %38 = load i8*, i8** %retval
  ret i8* %38
}

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_manager_get_locale_domains(%struct._GimpPlugInManager* %manager, i8*** %locale_domains, i8*** %locale_paths) #0 {
entry:
  %retval = alloca i32, align 4
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %locale_domains.addr = alloca i8***, align 8
  %locale_paths.addr = alloca i8***, align 8
  %list = alloca %struct._GSList*, align 8
  %unique = alloca %struct._GSList*, align 8
  %n_domains = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %domain = alloca %struct._GimpPlugInLocaleDomain*, align 8
  %tmp27 = alloca %struct._GSList*, align 8
  %domain58 = alloca %struct._GimpPlugInLocaleDomain*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store i8*** %locale_domains, i8**** %locale_domains.addr, align 8
  store i8*** %locale_paths, i8**** %locale_paths.addr, align 8
  store %struct._GSList* null, %struct._GSList** %unique, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_plug_in_manager_get_locale_domains, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8***, i8**** %locale_domains.addr, align 8
  %cmp12 = icmp ne i8*** %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_plug_in_manager_get_locale_domains, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8***, i8**** %locale_paths.addr, align 8
  %cmp18 = icmp ne i8*** %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_plug_in_manager_get_locale_domains, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %locale_domains23 = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %15, i32 0, i32 9
  %16 = load %struct._GSList*, %struct._GSList** %locale_domains23, align 8
  store %struct._GSList* %16, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %do.end.22
  %17 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool24 = icmp ne %struct._GSList* %17, null
  br i1 %tobool24, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpPlugInLocaleDomain*
  store %struct._GimpPlugInLocaleDomain* %20, %struct._GimpPlugInLocaleDomain** %domain, align 8
  %21 = load %struct._GSList*, %struct._GSList** %unique, align 8
  store %struct._GSList* %21, %struct._GSList** %tmp27, align 8
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %for.body
  %22 = load %struct._GSList*, %struct._GSList** %tmp27, align 8
  %tobool29 = icmp ne %struct._GSList* %22, null
  br i1 %tobool29, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.28
  %23 = load %struct._GimpPlugInLocaleDomain*, %struct._GimpPlugInLocaleDomain** %domain, align 8
  %domain_name = getelementptr inbounds %struct._GimpPlugInLocaleDomain, %struct._GimpPlugInLocaleDomain* %23, i32 0, i32 1
  %24 = load i8*, i8** %domain_name, align 8
  %25 = load %struct._GSList*, %struct._GSList** %tmp27, align 8
  %data31 = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 0
  %26 = load i8*, i8** %data31, align 8
  %call32 = call i32 @strcmp(i8* %24, i8* %26) #5
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %for.body.30
  br label %for.end

if.end.35:                                        ; preds = %for.body.30
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %27 = load %struct._GSList*, %struct._GSList** %tmp27, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %27, i32 0, i32 1
  %28 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %28, %struct._GSList** %tmp27, align 8
  br label %for.cond.28

for.end:                                          ; preds = %if.then.34, %for.cond.28
  %29 = load %struct._GSList*, %struct._GSList** %tmp27, align 8
  %tobool36 = icmp ne %struct._GSList* %29, null
  br i1 %tobool36, label %if.end.39, label %if.then.37

if.then.37:                                       ; preds = %for.end
  %30 = load %struct._GSList*, %struct._GSList** %unique, align 8
  %31 = load %struct._GimpPlugInLocaleDomain*, %struct._GimpPlugInLocaleDomain** %domain, align 8
  %32 = bitcast %struct._GimpPlugInLocaleDomain* %31 to i8*
  %call38 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %30, i8* %32)
  store %struct._GSList* %call38, %struct._GSList** %unique, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %for.end
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %33 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next41 = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 1
  %34 = load %struct._GSList*, %struct._GSList** %next41, align 8
  store %struct._GSList* %34, %struct._GSList** %list, align 8
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  %35 = load %struct._GSList*, %struct._GSList** %unique, align 8
  %call43 = call %struct._GSList* @g_slist_reverse(%struct._GSList* %35)
  store %struct._GSList* %call43, %struct._GSList** %unique, align 8
  %36 = load %struct._GSList*, %struct._GSList** %unique, align 8
  %call44 = call i32 @g_slist_length(%struct._GSList* %36)
  %add = add i32 %call44, 1
  store i32 %add, i32* %n_domains, align 4
  %37 = load i32, i32* %n_domains, align 4
  %add45 = add nsw i32 %37, 1
  %conv = sext i32 %add45 to i64
  %call46 = call noalias i8* @g_malloc0_n(i64 %conv, i64 8)
  %38 = bitcast i8* %call46 to i8**
  %39 = load i8***, i8**** %locale_domains.addr, align 8
  store i8** %38, i8*** %39, align 8
  %40 = load i32, i32* %n_domains, align 4
  %add47 = add nsw i32 %40, 1
  %conv48 = sext i32 %add47 to i64
  %call49 = call noalias i8* @g_malloc0_n(i64 %conv48, i64 8)
  %41 = bitcast i8* %call49 to i8**
  %42 = load i8***, i8**** %locale_paths.addr, align 8
  store i8** %41, i8*** %42, align 8
  %call50 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  %43 = load i8***, i8**** %locale_domains.addr, align 8
  %44 = load i8**, i8*** %43, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %44, i64 0
  store i8* %call50, i8** %arrayidx, align 8
  %call51 = call i8* @gimp_locale_directory() #4
  %call52 = call noalias i8* @g_strdup(i8* %call51)
  %45 = load i8***, i8**** %locale_paths.addr, align 8
  %46 = load i8**, i8*** %45, align 8
  %arrayidx53 = getelementptr inbounds i8*, i8** %46, i64 0
  store i8* %call52, i8** %arrayidx53, align 8
  %47 = load %struct._GSList*, %struct._GSList** %unique, align 8
  store %struct._GSList* %47, %struct._GSList** %list, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.70, %for.end.42
  %48 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool55 = icmp ne %struct._GSList* %48, null
  br i1 %tobool55, label %for.body.56, label %for.end.72

for.body.56:                                      ; preds = %for.cond.54
  %49 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data59 = getelementptr inbounds %struct._GSList, %struct._GSList* %49, i32 0, i32 0
  %50 = load i8*, i8** %data59, align 8
  %51 = bitcast i8* %50 to %struct._GimpPlugInLocaleDomain*
  store %struct._GimpPlugInLocaleDomain* %51, %struct._GimpPlugInLocaleDomain** %domain58, align 8
  %52 = load %struct._GimpPlugInLocaleDomain*, %struct._GimpPlugInLocaleDomain** %domain58, align 8
  %domain_name60 = getelementptr inbounds %struct._GimpPlugInLocaleDomain, %struct._GimpPlugInLocaleDomain* %52, i32 0, i32 1
  %53 = load i8*, i8** %domain_name60, align 8
  %call61 = call noalias i8* @g_strdup(i8* %53)
  %54 = load i32, i32* %i, align 4
  %idxprom = sext i32 %54 to i64
  %55 = load i8***, i8**** %locale_domains.addr, align 8
  %56 = load i8**, i8*** %55, align 8
  %arrayidx62 = getelementptr inbounds i8*, i8** %56, i64 %idxprom
  store i8* %call61, i8** %arrayidx62, align 8
  %57 = load %struct._GimpPlugInLocaleDomain*, %struct._GimpPlugInLocaleDomain** %domain58, align 8
  %domain_path = getelementptr inbounds %struct._GimpPlugInLocaleDomain, %struct._GimpPlugInLocaleDomain* %57, i32 0, i32 2
  %58 = load i8*, i8** %domain_path, align 8
  %tobool63 = icmp ne i8* %58, null
  br i1 %tobool63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.56
  %59 = load %struct._GimpPlugInLocaleDomain*, %struct._GimpPlugInLocaleDomain** %domain58, align 8
  %domain_path64 = getelementptr inbounds %struct._GimpPlugInLocaleDomain, %struct._GimpPlugInLocaleDomain* %59, i32 0, i32 2
  %60 = load i8*, i8** %domain_path64, align 8
  %call65 = call noalias i8* @g_strdup(i8* %60)
  br label %cond.end

cond.false:                                       ; preds = %for.body.56
  %call66 = call i8* @gimp_locale_directory() #4
  %call67 = call noalias i8* @g_strdup(i8* %call66)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call65, %cond.true ], [ %call67, %cond.false ]
  %61 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %61 to i64
  %62 = load i8***, i8**** %locale_paths.addr, align 8
  %63 = load i8**, i8*** %62, align 8
  %arrayidx69 = getelementptr inbounds i8*, i8** %63, i64 %idxprom68
  store i8* %cond, i8** %arrayidx69, align 8
  br label %for.inc.70

for.inc.70:                                       ; preds = %cond.end
  %64 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next71 = getelementptr inbounds %struct._GSList, %struct._GSList* %64, i32 0, i32 1
  %65 = load %struct._GSList*, %struct._GSList** %next71, align 8
  store %struct._GSList* %65, %struct._GSList** %list, align 8
  %66 = load i32, i32* %i, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.54

for.end.72:                                       ; preds = %for.cond.54
  %67 = load %struct._GSList*, %struct._GSList** %unique, align 8
  call void @g_slist_free(%struct._GSList* %67)
  %68 = load i32, i32* %n_domains, align 4
  store i32 %68, i32* %retval
  br label %return

return:                                           ; preds = %for.end.72, %if.else.20, %if.else.14, %if.else.9
  %69 = load i32, i32* %retval
  ret i32 %69
}

declare %struct._GSList* @g_slist_reverse(%struct._GSList*) #3

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
