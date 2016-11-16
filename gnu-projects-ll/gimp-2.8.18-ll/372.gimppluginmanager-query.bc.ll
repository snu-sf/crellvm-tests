; ModuleID = './app/plug-in/gimppluginmanager-query.bc'
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
%struct._GRegex = type opaque
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GimpContext = type opaque
%struct._GimpProgress = type opaque
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }
%struct._GMatchInfo = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.gimp_plug_in_manager_query = private unnamed_addr constant [27 x i8] c"gimp_plug_in_manager_query\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"GIMP_IS_PLUG_IN_MANAGER (manager)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"menu_strs != NULL\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"accel_strs != NULL\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"prog_strs != NULL\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"types_strs != NULL\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"realname_strs != NULL\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"time_ints != NULL\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_plug_in_manager_query(%struct._GimpPlugInManager* %manager, i8* %search_str, i8*** %menu_strs, i8*** %accel_strs, i8*** %prog_strs, i8*** %types_strs, i8*** %realname_strs, i32** %time_ints) #0 {
entry:
  %retval = alloca i32, align 4
  %manager.addr = alloca %struct._GimpPlugInManager*, align 8
  %search_str.addr = alloca i8*, align 8
  %menu_strs.addr = alloca i8***, align 8
  %accel_strs.addr = alloca i8***, align 8
  %prog_strs.addr = alloca i8***, align 8
  %types_strs.addr = alloca i8***, align 8
  %realname_strs.addr = alloca i8***, align 8
  %time_ints.addr = alloca i32**, align 8
  %num_plugins = alloca i32, align 4
  %list = alloca %struct._GSList*, align 8
  %matched = alloca %struct._GSList*, align 8
  %i = alloca i32, align 4
  %sregex = alloca %struct._GRegex*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  %name = alloca i8*, align 8
  %proc106 = alloca %struct._GimpPlugInProcedure*, align 8
  %name109 = alloca i8*, align 8
  store %struct._GimpPlugInManager* %manager, %struct._GimpPlugInManager** %manager.addr, align 8
  store i8* %search_str, i8** %search_str.addr, align 8
  store i8*** %menu_strs, i8**** %menu_strs.addr, align 8
  store i8*** %accel_strs, i8**** %accel_strs.addr, align 8
  store i8*** %prog_strs, i8**** %prog_strs.addr, align 8
  store i8*** %types_strs, i8**** %types_strs.addr, align 8
  store i8*** %realname_strs, i8**** %realname_strs.addr, align 8
  store i32** %time_ints, i32*** %time_ints.addr, align 8
  store i32 0, i32* %num_plugins, align 4
  store %struct._GSList* null, %struct._GSList** %matched, align 8
  store i32 0, i32* %i, align 4
  store %struct._GRegex* null, %struct._GRegex** %sregex, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_plug_in_manager_query, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8***, i8**** %menu_strs.addr, align 8
  %cmp12 = icmp ne i8*** %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_plug_in_manager_query, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8***, i8**** %accel_strs.addr, align 8
  %cmp18 = icmp ne i8*** %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_plug_in_manager_query, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %15 = load i8***, i8**** %prog_strs.addr, align 8
  %cmp24 = icmp ne i8*** %15, null
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_plug_in_manager_query, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %16 = load i8***, i8**** %types_strs.addr, align 8
  %cmp30 = icmp ne i8*** %16, null
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.29
  br label %if.end.33

if.else.32:                                       ; preds = %do.body.29
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_plug_in_manager_query, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %do.body.35

do.body.35:                                       ; preds = %do.end.34
  %17 = load i8***, i8**** %realname_strs.addr, align 8
  %cmp36 = icmp ne i8*** %17, null
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.35
  br label %if.end.39

if.else.38:                                       ; preds = %do.body.35
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_plug_in_manager_query, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.then.37
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %18 = load i32**, i32*** %time_ints.addr, align 8
  %cmp42 = icmp ne i32** %18, null
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.41
  br label %if.end.45

if.else.44:                                       ; preds = %do.body.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_plug_in_manager_query, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %19 = load i8***, i8**** %menu_strs.addr, align 8
  store i8** null, i8*** %19, align 8
  %20 = load i8***, i8**** %accel_strs.addr, align 8
  store i8** null, i8*** %20, align 8
  %21 = load i8***, i8**** %prog_strs.addr, align 8
  store i8** null, i8*** %21, align 8
  %22 = load i8***, i8**** %types_strs.addr, align 8
  store i8** null, i8*** %22, align 8
  %23 = load i8***, i8**** %realname_strs.addr, align 8
  store i8** null, i8*** %23, align 8
  %24 = load i32**, i32*** %time_ints.addr, align 8
  store i32* null, i32** %24, align 8
  %25 = load i8*, i8** %search_str.addr, align 8
  %tobool47 = icmp ne i8* %25, null
  br i1 %tobool47, label %land.lhs.true.48, label %if.end.52

land.lhs.true.48:                                 ; preds = %do.end.46
  %26 = load i8*, i8** %search_str.addr, align 8
  %call49 = call i64 @strlen(i8* %26) #5
  %tobool50 = icmp ne i64 %call49, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %land.lhs.true.48
  store i8* null, i8** %search_str.addr, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %land.lhs.true.48, %do.end.46
  %27 = load i8*, i8** %search_str.addr, align 8
  %tobool53 = icmp ne i8* %27, null
  br i1 %tobool53, label %if.then.54, label %if.end.59

if.then.54:                                       ; preds = %if.end.52
  %28 = load i8*, i8** %search_str.addr, align 8
  %call55 = call %struct._GRegex* @g_regex_new(i8* %28, i32 8193, i32 0, %struct._GError** null)
  store %struct._GRegex* %call55, %struct._GRegex** %sregex, align 8
  %29 = load %struct._GRegex*, %struct._GRegex** %sregex, align 8
  %tobool56 = icmp ne %struct._GRegex* %29, null
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.then.54
  store i32 0, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.then.54
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.52
  %30 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %manager.addr, align 8
  %plug_in_procedures = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %30, i32 0, i32 4
  %31 = load %struct._GSList*, %struct._GSList** %plug_in_procedures, align 8
  store %struct._GSList* %31, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.59
  %32 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool60 = icmp ne %struct._GSList* %32, null
  br i1 %tobool60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 0
  %34 = load i8*, i8** %data, align 8
  %35 = bitcast i8* %34 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %35, %struct._GimpPlugInProcedure** %proc, align 8
  %36 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %36, i32 0, i32 1
  %37 = load i8*, i8** %prog, align 8
  %tobool62 = icmp ne i8* %37, null
  br i1 %tobool62, label %land.lhs.true.63, label %if.end.88

land.lhs.true.63:                                 ; preds = %for.body
  %38 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_paths = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %38, i32 0, i32 5
  %39 = load %struct._GList*, %struct._GList** %menu_paths, align 8
  %tobool64 = icmp ne %struct._GList* %39, null
  br i1 %tobool64, label %if.then.65, label %if.end.88

if.then.65:                                       ; preds = %land.lhs.true.63
  %40 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %40, i32 0, i32 4
  %41 = load i8*, i8** %menu_label, align 8
  %tobool67 = icmp ne i8* %41, null
  br i1 %tobool67, label %if.then.68, label %if.else.70

if.then.68:                                       ; preds = %if.then.65
  %42 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_label69 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %42, i32 0, i32 4
  %43 = load i8*, i8** %menu_label69, align 8
  store i8* %43, i8** %name, align 8
  br label %if.end.80

if.else.70:                                       ; preds = %if.then.65
  %44 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_paths71 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %44, i32 0, i32 5
  %45 = load %struct._GList*, %struct._GList** %menu_paths71, align 8
  %data72 = getelementptr inbounds %struct._GList, %struct._GList* %45, i32 0, i32 0
  %46 = load i8*, i8** %data72, align 8
  %call73 = call i8* @strrchr(i8* %46, i32 47) #5
  store i8* %call73, i8** %name, align 8
  %47 = load i8*, i8** %name, align 8
  %tobool74 = icmp ne i8* %47, null
  br i1 %tobool74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %if.else.70
  %48 = load i8*, i8** %name, align 8
  %add.ptr = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %add.ptr, i8** %name, align 8
  br label %if.end.79

if.else.76:                                       ; preds = %if.else.70
  %49 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_paths77 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %49, i32 0, i32 5
  %50 = load %struct._GList*, %struct._GList** %menu_paths77, align 8
  %data78 = getelementptr inbounds %struct._GList, %struct._GList* %50, i32 0, i32 0
  %51 = load i8*, i8** %data78, align 8
  store i8* %51, i8** %name, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.then.75
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.68
  %52 = load i8*, i8** %name, align 8
  %call81 = call noalias i8* @gimp_strip_uline(i8* %52)
  store i8* %call81, i8** %name, align 8
  %53 = load i8*, i8** %search_str.addr, align 8
  %tobool82 = icmp ne i8* %53, null
  br i1 %tobool82, label %lor.lhs.false, label %if.then.85

lor.lhs.false:                                    ; preds = %if.end.80
  %54 = load %struct._GRegex*, %struct._GRegex** %sregex, align 8
  %55 = load i8*, i8** %name, align 8
  %call83 = call i32 @match_string(%struct._GRegex* %54, i8* %55)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %lor.lhs.false, %if.end.80
  %56 = load i32, i32* %num_plugins, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %num_plugins, align 4
  %57 = load %struct._GSList*, %struct._GSList** %matched, align 8
  %58 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %59 = bitcast %struct._GimpPlugInProcedure* %58 to i8*
  %call86 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %57, i8* %59)
  store %struct._GSList* %call86, %struct._GSList** %matched, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %lor.lhs.false
  %60 = load i8*, i8** %name, align 8
  call void @g_free(i8* %60)
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %land.lhs.true.63, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.88
  %61 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool89 = icmp ne %struct._GSList* %61, null
  br i1 %tobool89, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %62 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %62, i32 0, i32 1
  %63 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %63, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %64 = load i32, i32* %num_plugins, align 4
  %conv = sext i32 %64 to i64
  %call90 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %65 = bitcast i8* %call90 to i8**
  %66 = load i8***, i8**** %menu_strs.addr, align 8
  store i8** %65, i8*** %66, align 8
  %67 = load i32, i32* %num_plugins, align 4
  %conv91 = sext i32 %67 to i64
  %call92 = call noalias i8* @g_malloc_n(i64 %conv91, i64 8)
  %68 = bitcast i8* %call92 to i8**
  %69 = load i8***, i8**** %accel_strs.addr, align 8
  store i8** %68, i8*** %69, align 8
  %70 = load i32, i32* %num_plugins, align 4
  %conv93 = sext i32 %70 to i64
  %call94 = call noalias i8* @g_malloc_n(i64 %conv93, i64 8)
  %71 = bitcast i8* %call94 to i8**
  %72 = load i8***, i8**** %prog_strs.addr, align 8
  store i8** %71, i8*** %72, align 8
  %73 = load i32, i32* %num_plugins, align 4
  %conv95 = sext i32 %73 to i64
  %call96 = call noalias i8* @g_malloc_n(i64 %conv95, i64 8)
  %74 = bitcast i8* %call96 to i8**
  %75 = load i8***, i8**** %types_strs.addr, align 8
  store i8** %74, i8*** %75, align 8
  %76 = load i32, i32* %num_plugins, align 4
  %conv97 = sext i32 %76 to i64
  %call98 = call noalias i8* @g_malloc_n(i64 %conv97, i64 8)
  %77 = bitcast i8* %call98 to i8**
  %78 = load i8***, i8**** %realname_strs.addr, align 8
  store i8** %77, i8*** %78, align 8
  %79 = load i32, i32* %num_plugins, align 4
  %conv99 = sext i32 %79 to i64
  %call100 = call noalias i8* @g_malloc_n(i64 %conv99, i64 4)
  %80 = bitcast i8* %call100 to i32*
  %81 = load i32**, i32*** %time_ints.addr, align 8
  store i32* %80, i32** %81, align 8
  %82 = load %struct._GSList*, %struct._GSList** %matched, align 8
  %call101 = call %struct._GSList* @g_slist_reverse(%struct._GSList* %82)
  store %struct._GSList* %call101, %struct._GSList** %matched, align 8
  %83 = load %struct._GSList*, %struct._GSList** %matched, align 8
  store %struct._GSList* %83, %struct._GSList** %list, align 8
  br label %for.cond.102

for.cond.102:                                     ; preds = %cond.end.145, %for.end
  %84 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool103 = icmp ne %struct._GSList* %84, null
  br i1 %tobool103, label %for.body.104, label %for.end.147

for.body.104:                                     ; preds = %for.cond.102
  %85 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data107 = getelementptr inbounds %struct._GSList, %struct._GSList* %85, i32 0, i32 0
  %86 = load i8*, i8** %data107, align 8
  %87 = bitcast i8* %86 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %87, %struct._GimpPlugInProcedure** %proc106, align 8
  %88 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc106, align 8
  %menu_label110 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %88, i32 0, i32 4
  %89 = load i8*, i8** %menu_label110, align 8
  %tobool111 = icmp ne i8* %89, null
  br i1 %tobool111, label %if.then.112, label %if.else.117

if.then.112:                                      ; preds = %for.body.104
  %90 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc106, align 8
  %menu_paths113 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %90, i32 0, i32 5
  %91 = load %struct._GList*, %struct._GList** %menu_paths113, align 8
  %data114 = getelementptr inbounds %struct._GList, %struct._GList* %91, i32 0, i32 0
  %92 = load i8*, i8** %data114, align 8
  %93 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc106, align 8
  %menu_label115 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %93, i32 0, i32 4
  %94 = load i8*, i8** %menu_label115, align 8
  %call116 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* %92, i8* %94)
  store i8* %call116, i8** %name109, align 8
  br label %if.end.121

if.else.117:                                      ; preds = %for.body.104
  %95 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc106, align 8
  %menu_paths118 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %95, i32 0, i32 5
  %96 = load %struct._GList*, %struct._GList** %menu_paths118, align 8
  %data119 = getelementptr inbounds %struct._GList, %struct._GList* %96, i32 0, i32 0
  %97 = load i8*, i8** %data119, align 8
  %call120 = call noalias i8* @g_strdup(i8* %97)
  store i8* %call120, i8** %name109, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.117, %if.then.112
  %98 = load i8*, i8** %name109, align 8
  %call122 = call noalias i8* @gimp_strip_uline(i8* %98)
  %99 = load i32, i32* %i, align 4
  %idxprom = sext i32 %99 to i64
  %100 = load i8***, i8**** %menu_strs.addr, align 8
  %101 = load i8**, i8*** %100, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %101, i64 %idxprom
  store i8* %call122, i8** %arrayidx, align 8
  %102 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %102 to i64
  %103 = load i8***, i8**** %accel_strs.addr, align 8
  %104 = load i8**, i8*** %103, align 8
  %arrayidx124 = getelementptr inbounds i8*, i8** %104, i64 %idxprom123
  store i8* null, i8** %arrayidx124, align 8
  %105 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc106, align 8
  %prog125 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %105, i32 0, i32 1
  %106 = load i8*, i8** %prog125, align 8
  %call126 = call noalias i8* @g_strdup(i8* %106)
  %107 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %107 to i64
  %108 = load i8***, i8**** %prog_strs.addr, align 8
  %109 = load i8**, i8*** %108, align 8
  %arrayidx128 = getelementptr inbounds i8*, i8** %109, i64 %idxprom127
  store i8* %call126, i8** %arrayidx128, align 8
  %110 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc106, align 8
  %image_types = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %110, i32 0, i32 10
  %111 = load i8*, i8** %image_types, align 8
  %call129 = call noalias i8* @g_strdup(i8* %111)
  %112 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %112 to i64
  %113 = load i8***, i8**** %types_strs.addr, align 8
  %114 = load i8**, i8*** %113, align 8
  %arrayidx131 = getelementptr inbounds i8*, i8** %114, i64 %idxprom130
  store i8* %call129, i8** %arrayidx131, align 8
  %115 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc106, align 8
  %116 = bitcast %struct._GimpPlugInProcedure* %115 to i8*
  %call132 = call i8* @gimp_object_get_name(i8* %116)
  %call133 = call noalias i8* @g_strdup(i8* %call132)
  %117 = load i32, i32* %i, align 4
  %idxprom134 = sext i32 %117 to i64
  %118 = load i8***, i8**** %realname_strs.addr, align 8
  %119 = load i8**, i8*** %118, align 8
  %arrayidx135 = getelementptr inbounds i8*, i8** %119, i64 %idxprom134
  store i8* %call133, i8** %arrayidx135, align 8
  %120 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc106, align 8
  %mtime = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %120, i32 0, i32 12
  %121 = load i64, i64* %mtime, align 8
  %conv136 = trunc i64 %121 to i32
  %122 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %122 to i64
  %123 = load i32**, i32*** %time_ints.addr, align 8
  %124 = load i32*, i32** %123, align 8
  %arrayidx138 = getelementptr inbounds i32, i32* %124, i64 %idxprom137
  store i32 %conv136, i32* %arrayidx138, align 4
  %125 = load i8*, i8** %name109, align 8
  call void @g_free(i8* %125)
  %126 = load i32, i32* %i, align 4
  %inc139 = add nsw i32 %126, 1
  store i32 %inc139, i32* %i, align 4
  br label %for.inc.140

for.inc.140:                                      ; preds = %if.end.121
  %127 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool141 = icmp ne %struct._GSList* %127, null
  br i1 %tobool141, label %cond.true.142, label %cond.false.144

cond.true.142:                                    ; preds = %for.inc.140
  %128 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next143 = getelementptr inbounds %struct._GSList, %struct._GSList* %128, i32 0, i32 1
  %129 = load %struct._GSList*, %struct._GSList** %next143, align 8
  br label %cond.end.145

cond.false.144:                                   ; preds = %for.inc.140
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.false.144, %cond.true.142
  %cond146 = phi %struct._GSList* [ %129, %cond.true.142 ], [ null, %cond.false.144 ]
  store %struct._GSList* %cond146, %struct._GSList** %list, align 8
  br label %for.cond.102

for.end.147:                                      ; preds = %for.cond.102
  %130 = load %struct._GSList*, %struct._GSList** %matched, align 8
  call void @g_slist_free(%struct._GSList* %130)
  %131 = load %struct._GRegex*, %struct._GRegex** %sregex, align 8
  %tobool148 = icmp ne %struct._GRegex* %131, null
  br i1 %tobool148, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %for.end.147
  %132 = load %struct._GRegex*, %struct._GRegex** %sregex, align 8
  call void @g_regex_unref(%struct._GRegex* %132)
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %for.end.147
  %133 = load i32, i32* %num_plugins, align 4
  store i32 %133, i32* %retval
  br label %return

return:                                           ; preds = %if.end.150, %if.then.57, %if.else.44, %if.else.38, %if.else.32, %if.else.26, %if.else.20, %if.else.14, %if.else.9
  %134 = load i32, i32* %retval
  ret i32 %134
}

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_manager_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare %struct._GRegex* @g_regex_new(i8*, i32, i32, %struct._GError**) #3

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

declare noalias i8* @gimp_strip_uline(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @match_string(%struct._GRegex* %regex, i8* %string) #0 {
entry:
  %regex.addr = alloca %struct._GRegex*, align 8
  %string.addr = alloca i8*, align 8
  store %struct._GRegex* %regex, %struct._GRegex** %regex.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load %struct._GRegex*, %struct._GRegex** %regex.addr, align 8
  %1 = load i8*, i8** %string.addr, align 8
  %call = call i32 @g_regex_match(%struct._GRegex* %0, i8* %1, i32 0, %struct._GMatchInfo** null)
  ret i32 %call
}

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #3

declare void @g_free(i8*) #3

declare noalias i8* @g_malloc_n(i64, i64) #3

declare %struct._GSList* @g_slist_reverse(%struct._GSList*) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare noalias i8* @g_strdup(i8*) #3

declare i8* @gimp_object_get_name(i8*) #3

declare void @g_slist_free(%struct._GSList*) #3

declare void @g_regex_unref(%struct._GRegex*) #3

declare i32 @g_regex_match(%struct._GRegex*, i8*, i32, %struct._GMatchInfo**) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
