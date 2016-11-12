; ModuleID = './app/plug-in/plug-in-rc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
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
%struct._GError = type { i32, i32, i8* }
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpPlugInDef = type { %struct._GimpObject, i8*, %struct._GSList*, i8*, i8*, i8*, i8*, i64, i32, i32 }
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpConfigWriter = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.plug_in_rc_parse = private unnamed_addr constant [17 x i8] c"plug_in_rc_parse\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"protocol-version\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"plug-in-def\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"proc-def\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"locale-def\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"help-def\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"has-init\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"proc-arg\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"menu-path\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"icon\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"load-proc\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"save-proc\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"extension\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"mime-type\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"thumb-loader\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Skipping '%s': wrong GIMP protocol version.\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"fatal parse error\00", align 1
@.str.22 = private unnamed_addr constant [120 x i8] c"GIMP pluginrc\0A\0AThis file can safely be removed and will be automatically regenerated by querying the installed plugins.\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"\22%s\22 %d\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"end of pluginrc\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"invalid value '%s' for icon type\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"invalid value '%ld' for icon type\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GSList* @plug_in_rc_parse(%struct._Gimp* %gimp, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GSList*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %scanner = alloca %struct._GScanner*, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  %plug_in_defs = alloca %struct._GSList*, align 8
  %version = alloca i32, align 4
  %token = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GSList* null, %struct._GSList** %plug_in_defs, align 8
  store i32 20, i32* %version, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.plug_in_rc_parse, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GSList* null, %struct._GSList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %filename.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.plug_in_rc_parse, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GSList* null, %struct._GSList** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp18 = icmp eq %struct._GError** %14, null
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.17
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  %cmp19 = icmp eq %struct._GError* %16, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %lor.lhs.false, %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.plug_in_rc_parse, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GSList* null, %struct._GSList** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %17 = load i8*, i8** %filename.addr, align 8
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call24 = call %struct._GScanner* @gimp_scanner_new_file(i8* %17, %struct._GError** %18)
  store %struct._GScanner* %call24, %struct._GScanner** %scanner, align 8
  %19 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %tobool25 = icmp ne %struct._GScanner* %19, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %do.end.23
  store %struct._GSList* null, %struct._GSList** %retval
  br label %return

if.end.27:                                        ; preds = %do.end.23
  %call28 = call i64 @gimp_icon_type_get_type() #5
  %call29 = call i8* @g_type_class_ref(i64 %call28)
  %20 = bitcast i8* %call29 to %struct._GEnumClass*
  store %struct._GEnumClass* %20, %struct._GEnumClass** %enum_class, align 8
  %21 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %21, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  %22 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %22, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* inttoptr (i64 2 to i8*))
  %23 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %23, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* inttoptr (i64 3 to i8*))
  %24 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %24, i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* inttoptr (i64 4 to i8*))
  %25 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %25, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* inttoptr (i64 5 to i8*))
  %26 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %26, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* inttoptr (i64 6 to i8*))
  %27 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %27, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* inttoptr (i64 7 to i8*))
  %28 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %28, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* inttoptr (i64 8 to i8*))
  %29 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %29, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* inttoptr (i64 9 to i8*))
  %30 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %30, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* inttoptr (i64 10 to i8*))
  %31 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %31, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* inttoptr (i64 11 to i8*))
  %32 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %32, i32 10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* inttoptr (i64 12 to i8*))
  %33 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %33, i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* inttoptr (i64 13 to i8*))
  %34 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %34, i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* inttoptr (i64 14 to i8*))
  %35 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %35, i32 10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* inttoptr (i64 15 to i8*))
  %36 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %36, i32 10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* inttoptr (i64 16 to i8*))
  %37 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %37, i32 11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* inttoptr (i64 12 to i8*))
  %38 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %38, i32 11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* inttoptr (i64 13 to i8*))
  %39 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %39, i32 11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* inttoptr (i64 15 to i8*))
  store i32 40, i32* %token, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.46, %if.end.27
  %40 = load i32, i32* %version, align 4
  %cmp30 = icmp eq i32 %40, 20
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %41 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call31 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %41)
  %42 = load i32, i32* %token, align 4
  %cmp32 = icmp eq i32 %call31, %42
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %43 = phi i1 [ false, %while.cond ], [ %cmp32, %land.rhs ]
  br i1 %43, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %44 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call33 = call i32 @g_scanner_get_next_token(%struct._GScanner* %44)
  store i32 %call33, i32* %token, align 4
  %45 = load i32, i32* %token, align 4
  switch i32 %45, label %sw.default.45 [
    i32 40, label %sw.bb
    i32 265, label %sw.bb.34
    i32 41, label %sw.bb.44
  ]

sw.bb:                                            ; preds = %while.body
  store i32 265, i32* %token, align 4
  br label %sw.epilog.46

sw.bb.34:                                         ; preds = %while.body
  %46 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %46, i32 0, i32 7
  %v_symbol = bitcast %union._GTokenValue* %value to i8**
  %47 = load i8*, i8** %v_symbol, align 8
  %48 = ptrtoint i8* %47 to i64
  %conv = trunc i64 %48 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb.35
    i32 2, label %sw.bb.40
  ]

sw.bb.35:                                         ; preds = %sw.bb.34
  store i32 261, i32* %token, align 4
  %49 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call36 = call i32 @gimp_scanner_parse_int(%struct._GScanner* %49, i32* %version)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %sw.bb.35
  store i32 41, i32* %token, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %sw.bb.35
  br label %sw.epilog

sw.bb.40:                                         ; preds = %sw.bb.34
  %50 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call41 = call i32 @g_scanner_set_scope(%struct._GScanner* %50, i32 2)
  %51 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %52 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call42 = call i32 @plug_in_def_deserialize(%struct._Gimp* %51, %struct._GScanner* %52, %struct._GSList** %plug_in_defs)
  store i32 %call42, i32* %token, align 4
  %53 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call43 = call i32 @g_scanner_set_scope(%struct._GScanner* %53, i32 0)
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.34
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.40, %if.end.39
  br label %sw.epilog.46

sw.bb.44:                                         ; preds = %while.body
  store i32 40, i32* %token, align 4
  br label %sw.epilog.46

sw.default.45:                                    ; preds = %while.body
  br label %sw.epilog.46

sw.epilog.46:                                     ; preds = %sw.default.45, %sw.bb.44, %sw.epilog, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %land.end
  %54 = load i32, i32* %version, align 4
  %cmp47 = icmp ne i32 %54, 20
  br i1 %cmp47, label %if.then.52, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %while.end
  %55 = load i32, i32* %token, align 4
  %cmp50 = icmp ne i32 %55, 40
  br i1 %cmp50, label %if.then.52, label %if.end.63

if.then.52:                                       ; preds = %lor.lhs.false.49, %while.end
  %56 = load i32, i32* %version, align 4
  %cmp53 = icmp ne i32 %56, 20
  br i1 %cmp53, label %if.then.55, label %if.else.59

if.then.55:                                       ; preds = %if.then.52
  %57 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call56 = call i32 @gimp_config_error_quark() #5
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i32 0, i32 0)) #7
  %58 = load i8*, i8** %filename.addr, align 8
  %call58 = call i8* @gimp_filename_to_utf8(i8* %58)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %57, i32 %call56, i32 4, i8* %call57, i8* %call58)
  br label %if.end.62

if.else.59:                                       ; preds = %if.then.52
  %59 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call60 = call i32 @g_scanner_get_next_token(%struct._GScanner* %59)
  %60 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %61 = load i32, i32* %token, align 4
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0)) #7
  call void @g_scanner_unexp_token(%struct._GScanner* %60, i32 %61, i8* null, i8* null, i8* null, i8* %call61, i32 1)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.55
  %62 = load %struct._GSList*, %struct._GSList** %plug_in_defs, align 8
  call void @g_slist_free_full(%struct._GSList* %62, void (i8*)* @g_object_unref)
  store %struct._GSList* null, %struct._GSList** %plug_in_defs, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %lor.lhs.false.49
  %63 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %64 = bitcast %struct._GEnumClass* %63 to i8*
  call void @g_type_class_unref(i8* %64)
  %65 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @gimp_scanner_destroy(%struct._GScanner* %65)
  %66 = load %struct._GSList*, %struct._GSList** %plug_in_defs, align 8
  %call64 = call %struct._GSList* @g_slist_reverse(%struct._GSList* %66)
  store %struct._GSList* %call64, %struct._GSList** %retval
  br label %return

return:                                           ; preds = %if.end.63, %if.then.26, %if.else.21, %if.else.14, %if.else.9
  %67 = load %struct._GSList*, %struct._GSList** %retval
  ret %struct._GSList* %67
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GScanner* @gimp_scanner_new_file(i8*, %struct._GError**) #3

declare i8* @g_type_class_ref(i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_icon_type_get_type() #1

declare void @g_scanner_scope_add_symbol(%struct._GScanner*, i32, i8*, i8*) #3

declare i32 @g_scanner_peek_next_token(%struct._GScanner*) #3

declare i32 @g_scanner_get_next_token(%struct._GScanner*) #3

declare i32 @gimp_scanner_parse_int(%struct._GScanner*, i32*) #3

declare i32 @g_scanner_set_scope(%struct._GScanner*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @plug_in_def_deserialize(%struct._Gimp* %gimp, %struct._GScanner* %scanner, %struct._GSList** %plug_in_defs) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %plug_in_defs.addr = alloca %struct._GSList**, align 8
  %plug_in_def = alloca %struct._GimpPlugInDef*, align 8
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  %name = alloca i8*, align 8
  %path = alloca i8*, align 8
  %mtime = alloca i32, align 4
  %token = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store %struct._GSList** %plug_in_defs, %struct._GSList*** %plug_in_defs.addr, align 8
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %proc, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @gimp_scanner_parse_string(%struct._GScanner* %0, i8** %name)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 264, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %name, align 8
  %call1 = call noalias i8* @gimp_config_path_expand(i8* %1, i32 1, %struct._GError** null)
  store i8* %call1, i8** %path, align 8
  %2 = load i8*, i8** %name, align 8
  call void @g_free(i8* %2)
  %3 = load i8*, i8** %path, align 8
  %call2 = call %struct._GimpPlugInDef* @gimp_plug_in_def_new(i8* %3)
  store %struct._GimpPlugInDef* %call2, %struct._GimpPlugInDef** %plug_in_def, align 8
  %4 = load i8*, i8** %path, align 8
  call void @g_free(i8* %4)
  %5 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call3 = call i32 @gimp_scanner_parse_int(%struct._GScanner* %5, i32* %mtime)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %6 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %7 = bitcast %struct._GimpPlugInDef* %6 to i8*
  call void @g_object_unref(i8* %7)
  store i32 261, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %8 = load i32, i32* %mtime, align 4
  %conv = sext i32 %8 to i64
  %9 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %mtime7 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %9, i32 0, i32 7
  store i64 %conv, i64* %mtime7, align 8
  store i32 40, i32* %token, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.30, %if.end.6
  %10 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call8 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %10)
  %11 = load i32, i32* %token, align 4
  %cmp = icmp eq i32 %call8, %11
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call10 = call i32 @g_scanner_get_next_token(%struct._GScanner* %12)
  store i32 %call10, i32* %token, align 4
  %13 = load i32, i32* %token, align 4
  switch i32 %13, label %sw.default.29 [
    i32 40, label %sw.bb
    i32 265, label %sw.bb.11
    i32 41, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %while.body
  store i32 265, i32* %token, align 4
  br label %sw.epilog.30

sw.bb.11:                                         ; preds = %while.body
  %14 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %14, i32 0, i32 7
  %v_symbol = bitcast %union._GTokenValue* %value to i8**
  %15 = load i8*, i8** %v_symbol, align 8
  %16 = ptrtoint i8* %15 to i64
  %conv12 = trunc i64 %16 to i32
  switch i32 %conv12, label %sw.default [
    i32 3, label %sw.bb.13
    i32 4, label %sw.bb.22
    i32 5, label %sw.bb.24
    i32 6, label %sw.bb.26
  ]

sw.bb.13:                                         ; preds = %sw.bb.11
  %17 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %19 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %19, i32 0, i32 1
  %20 = load i8*, i8** %prog, align 8
  %call14 = call i32 @plug_in_procedure_deserialize(%struct._GScanner* %17, %struct._Gimp* %18, i8* %20, %struct._GimpPlugInProcedure** %proc)
  store i32 %call14, i32* %token, align 4
  %21 = load i32, i32* %token, align 4
  %cmp15 = icmp eq i32 %21, 40
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %sw.bb.13
  %22 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %23 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  call void @gimp_plug_in_def_add_procedure(%struct._GimpPlugInDef* %22, %struct._GimpPlugInProcedure* %23)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %sw.bb.13
  %24 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %tobool19 = icmp ne %struct._GimpPlugInProcedure* %24, null
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %25 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %26 = bitcast %struct._GimpPlugInProcedure* %25 to i8*
  call void @g_object_unref(i8* %26)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.18
  br label %sw.epilog

sw.bb.22:                                         ; preds = %sw.bb.11
  %27 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %28 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %call23 = call i32 @plug_in_locale_def_deserialize(%struct._GScanner* %27, %struct._GimpPlugInDef* %28)
  store i32 %call23, i32* %token, align 4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %sw.bb.11
  %29 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %30 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %call25 = call i32 @plug_in_help_def_deserialize(%struct._GScanner* %29, %struct._GimpPlugInDef* %30)
  store i32 %call25, i32* %token, align 4
  br label %sw.epilog

sw.bb.26:                                         ; preds = %sw.bb.11
  %31 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %32 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %call27 = call i32 @plug_in_has_init_deserialize(%struct._GScanner* %31, %struct._GimpPlugInDef* %32)
  store i32 %call27, i32* %token, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.26, %sw.bb.24, %sw.bb.22, %if.end.21
  br label %sw.epilog.30

sw.bb.28:                                         ; preds = %while.body
  store i32 40, i32* %token, align 4
  br label %sw.epilog.30

sw.default.29:                                    ; preds = %while.body
  br label %sw.epilog.30

sw.epilog.30:                                     ; preds = %sw.default.29, %sw.bb.28, %sw.epilog, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load i32, i32* %token, align 4
  %cmp31 = icmp eq i32 %33, 40
  br i1 %cmp31, label %if.then.33, label %if.end.39

if.then.33:                                       ; preds = %while.end
  store i32 41, i32* %token, align 4
  %34 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %35 = load i32, i32* %token, align 4
  %call34 = call i32 @gimp_scanner_parse_token(%struct._GScanner* %34, i32 %35)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.then.33
  %36 = load %struct._GSList**, %struct._GSList*** %plug_in_defs.addr, align 8
  %37 = load %struct._GSList*, %struct._GSList** %36, align 8
  %38 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %39 = bitcast %struct._GimpPlugInDef* %38 to i8*
  %call37 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %37, i8* %39)
  %40 = load %struct._GSList**, %struct._GSList*** %plug_in_defs.addr, align 8
  store %struct._GSList* %call37, %struct._GSList** %40, align 8
  store i32 40, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.33
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %while.end
  %41 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %42 = bitcast %struct._GimpPlugInDef* %41 to i8*
  call void @g_object_unref(i8* %42)
  %43 = load i32, i32* %token, align 4
  store i32 %43, i32* %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.36, %if.then.5, %if.then
  %44 = load i32, i32* %retval
  ret i32 %44
}

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i32 @gimp_config_error_quark() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @gimp_filename_to_utf8(i8*) #3

declare void @g_scanner_unexp_token(%struct._GScanner*, i32, i8*, i8*, i8*, i8*, i32) #3

declare void @g_slist_free_full(%struct._GSList*, void (i8*)*) #3

declare void @g_object_unref(i8*) #3

declare void @g_type_class_unref(i8*) #3

declare void @gimp_scanner_destroy(%struct._GScanner*) #3

declare %struct._GSList* @g_slist_reverse(%struct._GSList*) #3

; Function Attrs: nounwind uwtable
define i32 @plug_in_rc_write(%struct._GSList* %plug_in_defs, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %plug_in_defs.addr = alloca %struct._GSList*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %writer = alloca %struct._GimpConfigWriter*, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  %list = alloca %struct._GSList*, align 8
  %plug_in_def = alloca %struct._GimpPlugInDef*, align 8
  %list2 = alloca %struct._GSList*, align 8
  %utf8 = alloca i8*, align 8
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %enum_value = alloca %struct._GEnumValue*, align 8
  %list3 = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  %pspec = alloca %struct._GParamSpec*, align 8
  %pspec81 = alloca %struct._GParamSpec*, align 8
  store %struct._GSList* %plug_in_defs, %struct._GSList** %plug_in_defs.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call %struct._GimpConfigWriter* @gimp_config_writer_new_file(i8* %0, i32 0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.22, i32 0, i32 0), %struct._GError** %1)
  store %struct._GimpConfigWriter* %call, %struct._GimpConfigWriter** %writer, align 8
  %2 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %tobool = icmp ne %struct._GimpConfigWriter* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i64 @gimp_icon_type_get_type() #5
  %call2 = call i8* @g_type_class_ref(i64 %call1)
  %3 = bitcast i8* %call2 to %struct._GEnumClass*
  store %struct._GEnumClass* %3, %struct._GEnumClass** %enum_class, align 8
  %4 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  %5 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void (%struct._GimpConfigWriter*, i8*, ...) @gimp_config_writer_printf(%struct._GimpConfigWriter* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i32 20)
  %6 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %6)
  %7 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %7)
  %8 = load %struct._GSList*, %struct._GSList** %plug_in_defs.addr, align 8
  store %struct._GSList* %8, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.115, %if.end
  %9 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool3 = icmp ne %struct._GSList* %9, null
  br i1 %tobool3, label %for.body, label %for.end.117

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %10, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8
  %12 = bitcast i8* %11 to %struct._GimpPlugInDef*
  store %struct._GimpPlugInDef* %12, %struct._GimpPlugInDef** %plug_in_def, align 8
  %13 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %procedures = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %13, i32 0, i32 2
  %14 = load %struct._GSList*, %struct._GSList** %procedures, align 8
  %tobool4 = icmp ne %struct._GSList* %14, null
  br i1 %tobool4, label %if.then.5, label %if.end.114

if.then.5:                                        ; preds = %for.body
  %15 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %prog = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %15, i32 0, i32 1
  %16 = load i8*, i8** %prog, align 8
  %call6 = call noalias i8* @g_filename_to_utf8(i8* %16, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call6, i8** %utf8, align 8
  %17 = load i8*, i8** %utf8, align 8
  %tobool7 = icmp ne i8* %17, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.then.5
  br label %for.inc.115

if.end.9:                                         ; preds = %if.then.5
  %18 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  %19 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %20 = load i8*, i8** %utf8, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %19, i8* %20)
  %21 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %22 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %mtime = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %22, i32 0, i32 7
  %23 = load i64, i64* %mtime, align 8
  call void (%struct._GimpConfigWriter*, i8*, ...) @gimp_config_writer_printf(%struct._GimpConfigWriter* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i64 %23)
  %24 = load i8*, i8** %utf8, align 8
  call void @g_free(i8* %24)
  %25 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %procedures10 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %25, i32 0, i32 2
  %26 = load %struct._GSList*, %struct._GSList** %procedures10, align 8
  store %struct._GSList* %26, %struct._GSList** %list2, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.92, %if.end.9
  %27 = load %struct._GSList*, %struct._GSList** %list2, align 8
  %tobool12 = icmp ne %struct._GSList* %27, null
  br i1 %tobool12, label %for.body.13, label %for.end.94

for.body.13:                                      ; preds = %for.cond.11
  %28 = load %struct._GSList*, %struct._GSList** %list2, align 8
  %data14 = getelementptr inbounds %struct._GSList, %struct._GSList* %28, i32 0, i32 0
  %29 = load i8*, i8** %data14, align 8
  %30 = bitcast i8* %29 to %struct._GimpPlugInProcedure*
  store %struct._GimpPlugInProcedure* %30, %struct._GimpPlugInProcedure** %proc, align 8
  %31 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %32 = bitcast %struct._GimpPlugInProcedure* %31 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_procedure_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call15)
  %33 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpProcedure*
  store %struct._GimpProcedure* %33, %struct._GimpProcedure** %procedure, align 8
  %34 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %installed_during_init = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %34, i32 0, i32 13
  %35 = load i32, i32* %installed_during_init, align 4
  %tobool17 = icmp ne i32 %35, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body.13
  br label %for.inc.92

if.end.19:                                        ; preds = %for.body.13
  %36 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  %37 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %38 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %original_name = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %38, i32 0, i32 3
  %39 = load i8*, i8** %original_name, align 8
  %40 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %proc_type = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %40, i32 0, i32 1
  %41 = load i32, i32* %proc_type, align 4
  call void (%struct._GimpConfigWriter*, i8*, ...) @gimp_config_writer_printf(%struct._GimpConfigWriter* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* %39, i32 %41)
  %42 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %42)
  %43 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %44 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %blurb = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %44, i32 0, i32 4
  %45 = load i8*, i8** %blurb, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %43, i8* %45)
  %46 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %46)
  %47 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %48 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %help = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %48, i32 0, i32 5
  %49 = load i8*, i8** %help, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %47, i8* %49)
  %50 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %50)
  %51 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %52 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %author = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %52, i32 0, i32 6
  %53 = load i8*, i8** %author, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %51, i8* %53)
  %54 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %54)
  %55 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %56 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %copyright = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %56, i32 0, i32 7
  %57 = load i8*, i8** %copyright, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %55, i8* %57)
  %58 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %58)
  %59 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %60 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %date = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %60, i32 0, i32 8
  %61 = load i8*, i8** %date, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %59, i8* %61)
  %62 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %62)
  %63 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %64 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %64, i32 0, i32 4
  %65 = load i8*, i8** %menu_label, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %63, i8* %65)
  %66 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %66)
  %67 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %68 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_paths = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %68, i32 0, i32 5
  %69 = load %struct._GList*, %struct._GList** %menu_paths, align 8
  %call20 = call i32 @g_list_length(%struct._GList* %69)
  call void (%struct._GimpConfigWriter*, i8*, ...) @gimp_config_writer_printf(%struct._GimpConfigWriter* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i32 %call20)
  %70 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %menu_paths21 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %70, i32 0, i32 5
  %71 = load %struct._GList*, %struct._GList** %menu_paths21, align 8
  store %struct._GList* %71, %struct._GList** %list3, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %if.end.19
  %72 = load %struct._GList*, %struct._GList** %list3, align 8
  %tobool23 = icmp ne %struct._GList* %72, null
  br i1 %tobool23, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.22
  %73 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0))
  %74 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %75 = load %struct._GList*, %struct._GList** %list3, align 8
  %data25 = getelementptr inbounds %struct._GList, %struct._GList* %75, i32 0, i32 0
  %76 = load i8*, i8** %data25, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %74, i8* %76)
  %77 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %77)
  br label %for.inc

for.inc:                                          ; preds = %for.body.24
  %78 = load %struct._GList*, %struct._GList** %list3, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %78, i32 0, i32 1
  %79 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %79, %struct._GList** %list3, align 8
  br label %for.cond.22

for.end:                                          ; preds = %for.cond.22
  %80 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0))
  %81 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %82 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %icon_type = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %82, i32 0, i32 7
  %83 = load i32, i32* %icon_type, align 4
  %call26 = call %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass* %81, i32 %83)
  store %struct._GEnumValue* %call26, %struct._GEnumValue** %enum_value, align 8
  %84 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %85 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value_nick = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %85, i32 0, i32 2
  %86 = load i8*, i8** %value_nick, align 8
  call void @gimp_config_writer_identifier(%struct._GimpConfigWriter* %84, i8* %86)
  %87 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %88 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %icon_data_length = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %88, i32 0, i32 8
  %89 = load i32, i32* %icon_data_length, align 4
  call void (%struct._GimpConfigWriter*, i8*, ...) @gimp_config_writer_printf(%struct._GimpConfigWriter* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i32 %89)
  %90 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %icon_type27 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %90, i32 0, i32 7
  %91 = load i32, i32* %icon_type27, align 4
  switch i32 %91, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %for.end, %for.end
  %92 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %93 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %icon_data = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %93, i32 0, i32 9
  %94 = load i8*, i8** %icon_data, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %92, i8* %94)
  br label %sw.epilog

sw.bb.28:                                         ; preds = %for.end
  %95 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %96 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %icon_data_length29 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %96, i32 0, i32 8
  %97 = load i32, i32* %icon_data_length29, align 4
  %98 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %icon_data30 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %98, i32 0, i32 9
  %99 = load i8*, i8** %icon_data30, align 8
  call void @gimp_config_writer_data(%struct._GimpConfigWriter* %95, i32 %97, i8* %99)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %sw.bb.28, %sw.bb
  %100 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %100)
  %101 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %file_proc = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %101, i32 0, i32 14
  %102 = load i32, i32* %file_proc, align 4
  %tobool31 = icmp ne i32 %102, 0
  br i1 %tobool31, label %if.then.32, label %if.end.64

if.then.32:                                       ; preds = %sw.epilog
  %103 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %104 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %image_types = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %104, i32 0, i32 10
  %105 = load i8*, i8** %image_types, align 8
  %tobool33 = icmp ne i8* %105, null
  %cond = select i1 %tobool33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0)
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %103, i8* %cond)
  %106 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %extensions = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %106, i32 0, i32 15
  %107 = load i8*, i8** %extensions, align 8
  %tobool34 = icmp ne i8* %107, null
  br i1 %tobool34, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %if.then.32
  %108 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %extensions35 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %108, i32 0, i32 15
  %109 = load i8*, i8** %extensions35, align 8
  %110 = load i8, i8* %109, align 1
  %conv = sext i8 %110 to i32
  %tobool36 = icmp ne i32 %conv, 0
  br i1 %tobool36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %land.lhs.true
  %111 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0))
  %112 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %113 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %extensions38 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %113, i32 0, i32 15
  %114 = load i8*, i8** %extensions38, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %112, i8* %114)
  %115 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %115)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %land.lhs.true, %if.then.32
  %116 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %prefixes = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %116, i32 0, i32 16
  %117 = load i8*, i8** %prefixes, align 8
  %tobool40 = icmp ne i8* %117, null
  br i1 %tobool40, label %land.lhs.true.41, label %if.end.47

land.lhs.true.41:                                 ; preds = %if.end.39
  %118 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %prefixes42 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %118, i32 0, i32 16
  %119 = load i8*, i8** %prefixes42, align 8
  %120 = load i8, i8* %119, align 1
  %conv43 = sext i8 %120 to i32
  %tobool44 = icmp ne i32 %conv43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %land.lhs.true.41
  %121 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0))
  %122 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %123 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %prefixes46 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %123, i32 0, i32 16
  %124 = load i8*, i8** %prefixes46, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %122, i8* %124)
  %125 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %125)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %land.lhs.true.41, %if.end.39
  %126 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %magics = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %126, i32 0, i32 17
  %127 = load i8*, i8** %magics, align 8
  %tobool48 = icmp ne i8* %127, null
  br i1 %tobool48, label %land.lhs.true.49, label %if.end.55

land.lhs.true.49:                                 ; preds = %if.end.47
  %128 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %magics50 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %128, i32 0, i32 17
  %129 = load i8*, i8** %magics50, align 8
  %130 = load i8, i8* %129, align 1
  %conv51 = sext i8 %130 to i32
  %tobool52 = icmp ne i32 %conv51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %land.lhs.true.49
  %131 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0))
  %132 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %133 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %magics54 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %133, i32 0, i32 17
  %134 = load i8*, i8** %magics54, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %132, i8* %134)
  %135 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %135)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %land.lhs.true.49, %if.end.47
  %136 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %mime_type = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %136, i32 0, i32 18
  %137 = load i8*, i8** %mime_type, align 8
  %tobool56 = icmp ne i8* %137, null
  br i1 %tobool56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.55
  %138 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %138, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0))
  %139 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %140 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %mime_type58 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %140, i32 0, i32 18
  %141 = load i8*, i8** %mime_type58, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %139, i8* %141)
  %142 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %142)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.55
  %143 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %thumb_loader = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %143, i32 0, i32 22
  %144 = load i8*, i8** %thumb_loader, align 8
  %tobool60 = icmp ne i8* %144, null
  br i1 %tobool60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.59
  %145 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %145, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0))
  %146 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %147 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %thumb_loader62 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %147, i32 0, i32 22
  %148 = load i8*, i8** %thumb_loader62, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %146, i8* %148)
  %149 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %149)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.end.59
  %150 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %150)
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %sw.epilog
  %151 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %151)
  %152 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %153 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %image_types65 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %153, i32 0, i32 10
  %154 = load i8*, i8** %image_types65, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %152, i8* %154)
  %155 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %155)
  %156 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %157 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %157, i32 0, i32 10
  %158 = load i32, i32* %num_args, align 4
  %159 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %159, i32 0, i32 12
  %160 = load i32, i32* %num_values, align 4
  call void (%struct._GimpConfigWriter*, i8*, ...) @gimp_config_writer_printf(%struct._GimpConfigWriter* %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %158, i32 %160)
  store i32 0, i32* %i, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.74, %if.end.64
  %161 = load i32, i32* %i, align 4
  %162 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_args67 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %162, i32 0, i32 10
  %163 = load i32, i32* %num_args67, align 4
  %cmp = icmp slt i32 %161, %163
  br i1 %cmp, label %for.body.69, label %for.end.75

for.body.69:                                      ; preds = %for.cond.66
  %164 = load i32, i32* %i, align 4
  %idxprom = sext i32 %164 to i64
  %165 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %args = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %165, i32 0, i32 11
  %166 = load %struct._GParamSpec**, %struct._GParamSpec*** %args, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %166, i64 %idxprom
  %167 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  store %struct._GParamSpec* %167, %struct._GParamSpec** %pspec, align 8
  %168 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0))
  %169 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %170 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %171 = bitcast %struct._GParamSpec* %170 to %struct._GTypeInstance*
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 76)
  %172 = bitcast %struct._GTypeInstance* %call70 to %struct._GParamSpec*
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %172, i32 0, i32 3
  %173 = load i64, i64* %value_type, align 8
  %call71 = call i32 @gimp_pdb_compat_arg_type_from_gtype(i64 %173)
  call void (%struct._GimpConfigWriter*, i8*, ...) @gimp_config_writer_printf(%struct._GimpConfigWriter* %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i32 %call71)
  %174 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %175 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call72 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %175)
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %174, i8* %call72)
  %176 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %177 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call73 = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %177)
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %176, i8* %call73)
  %178 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %178)
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.69
  %179 = load i32, i32* %i, align 4
  %inc = add nsw i32 %179, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.66

for.end.75:                                       ; preds = %for.cond.66
  store i32 0, i32* %i, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.89, %for.end.75
  %180 = load i32, i32* %i, align 4
  %181 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %num_values77 = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %181, i32 0, i32 12
  %182 = load i32, i32* %num_values77, align 4
  %cmp78 = icmp slt i32 %180, %182
  br i1 %cmp78, label %for.body.80, label %for.end.91

for.body.80:                                      ; preds = %for.cond.76
  %183 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %183 to i64
  %184 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %values = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %184, i32 0, i32 13
  %185 = load %struct._GParamSpec**, %struct._GParamSpec*** %values, align 8
  %arrayidx83 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %185, i64 %idxprom82
  %186 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx83, align 8
  store %struct._GParamSpec* %186, %struct._GParamSpec** %pspec81, align 8
  %187 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %187, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0))
  %188 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %189 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec81, align 8
  %190 = bitcast %struct._GParamSpec* %189 to %struct._GTypeInstance*
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %190, i64 76)
  %191 = bitcast %struct._GTypeInstance* %call84 to %struct._GParamSpec*
  %value_type85 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %191, i32 0, i32 3
  %192 = load i64, i64* %value_type85, align 8
  %call86 = call i32 @gimp_pdb_compat_arg_type_from_gtype(i64 %192)
  call void (%struct._GimpConfigWriter*, i8*, ...) @gimp_config_writer_printf(%struct._GimpConfigWriter* %188, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i32 %call86)
  %193 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %194 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec81, align 8
  %call87 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %194)
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %193, i8* %call87)
  %195 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %196 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec81, align 8
  %call88 = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %196)
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %195, i8* %call88)
  %197 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %197)
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.body.80
  %198 = load i32, i32* %i, align 4
  %inc90 = add nsw i32 %198, 1
  store i32 %inc90, i32* %i, align 4
  br label %for.cond.76

for.end.91:                                       ; preds = %for.cond.76
  %199 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %199)
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.end.91, %if.then.18
  %200 = load %struct._GSList*, %struct._GSList** %list2, align 8
  %next93 = getelementptr inbounds %struct._GSList, %struct._GSList* %200, i32 0, i32 1
  %201 = load %struct._GSList*, %struct._GSList** %next93, align 8
  store %struct._GSList* %201, %struct._GSList** %list2, align 8
  br label %for.cond.11

for.end.94:                                       ; preds = %for.cond.11
  %202 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %locale_domain_name = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %202, i32 0, i32 3
  %203 = load i8*, i8** %locale_domain_name, align 8
  %tobool95 = icmp ne i8* %203, null
  br i1 %tobool95, label %if.then.96, label %if.end.102

if.then.96:                                       ; preds = %for.end.94
  %204 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %204, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0))
  %205 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %206 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %locale_domain_name97 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %206, i32 0, i32 3
  %207 = load i8*, i8** %locale_domain_name97, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %205, i8* %207)
  %208 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %locale_domain_path = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %208, i32 0, i32 4
  %209 = load i8*, i8** %locale_domain_path, align 8
  %tobool98 = icmp ne i8* %209, null
  br i1 %tobool98, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %if.then.96
  %210 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %211 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %locale_domain_path100 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %211, i32 0, i32 4
  %212 = load i8*, i8** %locale_domain_path100, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %210, i8* %212)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %if.then.96
  %213 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %213)
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %for.end.94
  %214 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %help_domain_name = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %214, i32 0, i32 5
  %215 = load i8*, i8** %help_domain_name, align 8
  %tobool103 = icmp ne i8* %215, null
  br i1 %tobool103, label %if.then.104, label %if.end.110

if.then.104:                                      ; preds = %if.end.102
  %216 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %216, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  %217 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %218 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %help_domain_name105 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %218, i32 0, i32 5
  %219 = load i8*, i8** %help_domain_name105, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %217, i8* %219)
  %220 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %help_domain_uri = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %220, i32 0, i32 6
  %221 = load i8*, i8** %help_domain_uri, align 8
  %tobool106 = icmp ne i8* %221, null
  br i1 %tobool106, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %if.then.104
  %222 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %223 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %help_domain_uri108 = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %223, i32 0, i32 6
  %224 = load i8*, i8** %help_domain_uri108, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %222, i8* %224)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %if.then.104
  %225 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %225)
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.end.102
  %226 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def, align 8
  %has_init = getelementptr inbounds %struct._GimpPlugInDef, %struct._GimpPlugInDef* %226, i32 0, i32 9
  %227 = load i32, i32* %has_init, align 4
  %tobool111 = icmp ne i32 %227, 0
  br i1 %tobool111, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.end.110
  %228 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %228, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0))
  %229 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %229)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %if.end.110
  %230 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %230)
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %for.body
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.114, %if.then.8
  %231 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next116 = getelementptr inbounds %struct._GSList, %struct._GSList* %231, i32 0, i32 1
  %232 = load %struct._GSList*, %struct._GSList** %next116, align 8
  store %struct._GSList* %232, %struct._GSList** %list, align 8
  br label %for.cond

for.end.117:                                      ; preds = %for.cond
  %233 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %234 = bitcast %struct._GEnumClass* %233 to i8*
  call void @g_type_class_unref(i8* %234)
  %235 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %236 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call118 = call i32 @gimp_config_writer_finish(%struct._GimpConfigWriter* %235, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), %struct._GError** %236)
  store i32 %call118, i32* %retval
  br label %return

return:                                           ; preds = %for.end.117, %if.then
  %237 = load i32, i32* %retval
  ret i32 %237
}

declare %struct._GimpConfigWriter* @gimp_config_writer_new_file(i8*, i32, i8*, %struct._GError**) #3

declare void @gimp_config_writer_open(%struct._GimpConfigWriter*, i8*) #3

declare void @gimp_config_writer_printf(%struct._GimpConfigWriter*, i8*, ...) #3

declare void @gimp_config_writer_close(%struct._GimpConfigWriter*) #3

declare void @gimp_config_writer_linefeed(%struct._GimpConfigWriter*) #3

declare noalias i8* @g_filename_to_utf8(i8*, i64, i64*, i64*, %struct._GError**) #3

declare void @gimp_config_writer_string(%struct._GimpConfigWriter*, i8*) #3

declare void @g_free(i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_procedure_get_type() #1

declare i32 @g_list_length(%struct._GList*) #3

declare %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass*, i32) #3

declare void @gimp_config_writer_identifier(%struct._GimpConfigWriter*, i8*) #3

declare void @gimp_config_writer_data(%struct._GimpConfigWriter*, i32, i8*) #3

declare i32 @gimp_pdb_compat_arg_type_from_gtype(i64) #3

declare i8* @g_param_spec_get_name(%struct._GParamSpec*) #3

declare i8* @g_param_spec_get_blurb(%struct._GParamSpec*) #3

declare i32 @gimp_config_writer_finish(%struct._GimpConfigWriter*, i8*, %struct._GError**) #3

declare i32 @gimp_scanner_parse_string(%struct._GScanner*, i8**) #3

declare noalias i8* @gimp_config_path_expand(i8*, i32, %struct._GError**) #3

declare %struct._GimpPlugInDef* @gimp_plug_in_def_new(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @plug_in_procedure_deserialize(%struct._GScanner* %scanner, %struct._Gimp* %gimp, i8* %prog, %struct._GimpPlugInProcedure** %proc) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %prog.addr = alloca i8*, align 8
  %proc.addr = alloca %struct._GimpPlugInProcedure**, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %token = alloca i32, align 4
  %str = alloca i8*, align 8
  %proc_type = alloca i32, align 4
  %n_args = alloca i32, align 4
  %n_return_vals = alloca i32, align 4
  %n_menu_paths = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %prog, i8** %prog.addr, align 8
  store %struct._GimpPlugInProcedure** %proc, %struct._GimpPlugInProcedure*** %proc.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @gimp_scanner_parse_string(%struct._GScanner* %0, i8** %str)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 264, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @gimp_scanner_parse_int(%struct._GScanner* %1, i32* %proc_type)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %2 = load i8*, i8** %str, align 8
  call void @g_free(i8* %2)
  store i32 261, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i32, i32* %proc_type, align 4
  %4 = load i8*, i8** %prog.addr, align 8
  %call5 = call %struct._GimpProcedure* @gimp_plug_in_procedure_new(i32 %3, i8* %4)
  store %struct._GimpProcedure* %call5, %struct._GimpProcedure** %procedure, align 8
  %5 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %6 = bitcast %struct._GimpProcedure* %5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_plug_in_procedure_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call6)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpPlugInProcedure*
  %8 = load %struct._GimpPlugInProcedure**, %struct._GimpPlugInProcedure*** %proc.addr, align 8
  store %struct._GimpPlugInProcedure* %7, %struct._GimpPlugInProcedure** %8, align 8
  %9 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %10 = bitcast %struct._GimpProcedure* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_object_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpObject*
  %12 = load i8*, i8** %str, align 8
  %call10 = call noalias i8* @gimp_canonicalize_identifier(i8* %12)
  call void @gimp_object_take_name(%struct._GimpObject* %11, i8* %call10)
  %13 = load i8*, i8** %str, align 8
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %original_name = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %14, i32 0, i32 3
  store i8* %13, i8** %original_name, align 8
  %15 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %blurb = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %16, i32 0, i32 4
  %call11 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %15, i8** %blurb)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.4
  store i32 264, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.4
  %17 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %18 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %help = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %18, i32 0, i32 5
  %call15 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %17, i8** %help)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  store i32 264, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  %19 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %20 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %author = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %20, i32 0, i32 6
  %call19 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %19, i8** %author)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.18
  store i32 264, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.18
  %21 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %22 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %copyright = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %22, i32 0, i32 7
  %call23 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %21, i8** %copyright)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  store i32 264, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.22
  %23 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %24 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %date = getelementptr inbounds %struct._GimpProcedure, %struct._GimpProcedure* %24, i32 0, i32 8
  %call27 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %23, i8** %date)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.end.26
  store i32 264, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.26
  %25 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %26 = load %struct._GimpPlugInProcedure**, %struct._GimpPlugInProcedure*** %proc.addr, align 8
  %27 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %26, align 8
  %menu_label = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %27, i32 0, i32 4
  %call31 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %25, i8** %menu_label)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.30
  store i32 264, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.end.30
  %28 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call35 = call i32 @gimp_scanner_parse_int(%struct._GScanner* %28, i32* %n_menu_paths)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.end.34
  store i32 261, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.end.34
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.38
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %n_menu_paths, align 4
  %cmp = icmp slt i32 %29, %30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %32 = load %struct._GimpPlugInProcedure**, %struct._GimpPlugInProcedure*** %proc.addr, align 8
  %33 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %32, align 8
  %call39 = call i32 @plug_in_menu_path_deserialize(%struct._GScanner* %31, %struct._GimpPlugInProcedure* %33)
  store i32 %call39, i32* %token, align 4
  %34 = load i32, i32* %token, align 4
  %cmp40 = icmp ne i32 %34, 40
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.body
  %35 = load i32, i32* %token, align 4
  store i32 %35, i32* %retval
  br label %return

if.end.42:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %38 = load %struct._GimpPlugInProcedure**, %struct._GimpPlugInProcedure*** %proc.addr, align 8
  %39 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %38, align 8
  %call43 = call i32 @plug_in_icon_deserialize(%struct._GScanner* %37, %struct._GimpPlugInProcedure* %39)
  store i32 %call43, i32* %token, align 4
  %40 = load i32, i32* %token, align 4
  %cmp44 = icmp ne i32 %40, 40
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %for.end
  %41 = load i32, i32* %token, align 4
  store i32 %41, i32* %retval
  br label %return

if.end.46:                                        ; preds = %for.end
  %42 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %43 = load %struct._GimpPlugInProcedure**, %struct._GimpPlugInProcedure*** %proc.addr, align 8
  %44 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %43, align 8
  %call47 = call i32 @plug_in_file_proc_deserialize(%struct._GScanner* %42, %struct._GimpPlugInProcedure* %44)
  store i32 %call47, i32* %token, align 4
  %45 = load i32, i32* %token, align 4
  %cmp48 = icmp ne i32 %45, 40
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.46
  %46 = load i32, i32* %token, align 4
  store i32 %46, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.46
  %47 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call51 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %47, i8** %str)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %if.end.50
  store i32 264, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.end.50
  %48 = load %struct._GimpPlugInProcedure**, %struct._GimpPlugInProcedure*** %proc.addr, align 8
  %49 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %48, align 8
  %50 = load i8*, i8** %str, align 8
  call void @gimp_plug_in_procedure_set_image_types(%struct._GimpPlugInProcedure* %49, i8* %50)
  %51 = load i8*, i8** %str, align 8
  call void @g_free(i8* %51)
  %52 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call55 = call i32 @gimp_scanner_parse_int(%struct._GScanner* %52, i32* %n_args)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.end.54
  store i32 261, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.end.54
  %53 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call59 = call i32 @gimp_scanner_parse_int(%struct._GScanner* %53, i32* %n_return_vals)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.end.62, label %if.then.61

if.then.61:                                       ; preds = %if.end.58
  store i32 261, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.end.58
  store i32 0, i32* %i, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.70, %if.end.62
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %n_args, align 4
  %cmp64 = icmp slt i32 %54, %55
  br i1 %cmp64, label %for.body.65, label %for.end.72

for.body.65:                                      ; preds = %for.cond.63
  %56 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %57 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %58 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call66 = call i32 @plug_in_proc_arg_deserialize(%struct._GScanner* %56, %struct._Gimp* %57, %struct._GimpProcedure* %58, i32 0)
  store i32 %call66, i32* %token, align 4
  %59 = load i32, i32* %token, align 4
  %cmp67 = icmp ne i32 %59, 40
  br i1 %cmp67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %for.body.65
  %60 = load i32, i32* %token, align 4
  store i32 %60, i32* %retval
  br label %return

if.end.69:                                        ; preds = %for.body.65
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.69
  %61 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %61, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond.63

for.end.72:                                       ; preds = %for.cond.63
  store i32 0, i32* %i, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.80, %for.end.72
  %62 = load i32, i32* %i, align 4
  %63 = load i32, i32* %n_return_vals, align 4
  %cmp74 = icmp slt i32 %62, %63
  br i1 %cmp74, label %for.body.75, label %for.end.82

for.body.75:                                      ; preds = %for.cond.73
  %64 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %65 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %66 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call76 = call i32 @plug_in_proc_arg_deserialize(%struct._GScanner* %64, %struct._Gimp* %65, %struct._GimpProcedure* %66, i32 1)
  store i32 %call76, i32* %token, align 4
  %67 = load i32, i32* %token, align 4
  %cmp77 = icmp ne i32 %67, 40
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %for.body.75
  %68 = load i32, i32* %token, align 4
  store i32 %68, i32* %retval
  br label %return

if.end.79:                                        ; preds = %for.body.75
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end.79
  %69 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %69, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond.73

for.end.82:                                       ; preds = %for.cond.73
  %70 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call83 = call i32 @gimp_scanner_parse_token(%struct._GScanner* %70, i32 41)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %for.end.82
  store i32 41, i32* %retval
  br label %return

if.end.86:                                        ; preds = %for.end.82
  store i32 40, i32* %retval
  br label %return

return:                                           ; preds = %if.end.86, %if.then.85, %if.then.78, %if.then.68, %if.then.61, %if.then.57, %if.then.53, %if.then.49, %if.then.45, %if.then.41, %if.then.37, %if.then.33, %if.then.29, %if.then.25, %if.then.21, %if.then.17, %if.then.13, %if.then.3, %if.then
  %71 = load i32, i32* %retval
  ret i32 %71
}

declare void @gimp_plug_in_def_add_procedure(%struct._GimpPlugInDef*, %struct._GimpPlugInProcedure*) #3

; Function Attrs: nounwind uwtable
define internal i32 @plug_in_locale_def_deserialize(%struct._GScanner* %scanner, %struct._GimpPlugInDef* %plug_in_def) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %plug_in_def.addr = alloca %struct._GimpPlugInDef*, align 8
  %domain_name = alloca i8*, align 8
  %domain_path = alloca i8*, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store %struct._GimpPlugInDef* %plug_in_def, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @gimp_scanner_parse_string(%struct._GScanner* %0, i8** %domain_name)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 264, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %1, i8** %domain_path)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i8* null, i8** %domain_path, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %2 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %3 = load i8*, i8** %domain_name, align 8
  %4 = load i8*, i8** %domain_path, align 8
  call void @gimp_plug_in_def_set_locale_domain(%struct._GimpPlugInDef* %2, i8* %3, i8* %4)
  %5 = load i8*, i8** %domain_name, align 8
  call void @g_free(i8* %5)
  %6 = load i8*, i8** %domain_path, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call5 = call i32 @gimp_scanner_parse_token(%struct._GScanner* %7, i32 41)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  store i32 41, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  store i32 40, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @plug_in_help_def_deserialize(%struct._GScanner* %scanner, %struct._GimpPlugInDef* %plug_in_def) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %plug_in_def.addr = alloca %struct._GimpPlugInDef*, align 8
  %domain_name = alloca i8*, align 8
  %domain_uri = alloca i8*, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store %struct._GimpPlugInDef* %plug_in_def, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @gimp_scanner_parse_string(%struct._GScanner* %0, i8** %domain_name)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 264, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %1, i8** %domain_uri)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i8* null, i8** %domain_uri, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %2 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %3 = load i8*, i8** %domain_name, align 8
  %4 = load i8*, i8** %domain_uri, align 8
  call void @gimp_plug_in_def_set_help_domain(%struct._GimpPlugInDef* %2, i8* %3, i8* %4)
  %5 = load i8*, i8** %domain_name, align 8
  call void @g_free(i8* %5)
  %6 = load i8*, i8** %domain_uri, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call5 = call i32 @gimp_scanner_parse_token(%struct._GScanner* %7, i32 41)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  store i32 41, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  store i32 40, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @plug_in_has_init_deserialize(%struct._GScanner* %scanner, %struct._GimpPlugInDef* %plug_in_def) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %plug_in_def.addr = alloca %struct._GimpPlugInDef*, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store %struct._GimpPlugInDef* %plug_in_def, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  %0 = load %struct._GimpPlugInDef*, %struct._GimpPlugInDef** %plug_in_def.addr, align 8
  call void @gimp_plug_in_def_set_has_init(%struct._GimpPlugInDef* %0, i32 1)
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @gimp_scanner_parse_token(%struct._GScanner* %1, i32 41)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 41, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 40, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare i32 @gimp_scanner_parse_token(%struct._GScanner*, i32) #3

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #3

declare %struct._GimpProcedure* @gimp_plug_in_procedure_new(i32, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_plug_in_procedure_get_type() #1

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare noalias i8* @gimp_canonicalize_identifier(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @plug_in_menu_path_deserialize(%struct._GScanner* %scanner, %struct._GimpPlugInProcedure* %proc) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %menu_path = alloca i8*, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @gimp_scanner_parse_token(%struct._GScanner* %0, i32 40)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 40, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @gimp_scanner_parse_token(%struct._GScanner* %1, i32 265)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %lor.lhs.false, label %if.then.4

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %2, i32 0, i32 7
  %v_symbol = bitcast %union._GTokenValue* %value to i8**
  %3 = load i8*, i8** %v_symbol, align 8
  %4 = ptrtoint i8* %3 to i64
  %conv = trunc i64 %4 to i32
  %cmp = icmp ne i32 %conv, 8
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  store i32 265, i32* %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %5 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call6 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %5, i8** %menu_path)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  store i32 264, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %6 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %menu_paths = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %6, i32 0, i32 5
  %7 = load %struct._GList*, %struct._GList** %menu_paths, align 8
  %8 = load i8*, i8** %menu_path, align 8
  %call10 = call %struct._GList* @g_list_append(%struct._GList* %7, i8* %8)
  %9 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %menu_paths11 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %9, i32 0, i32 5
  store %struct._GList* %call10, %struct._GList** %menu_paths11, align 8
  %10 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call12 = call i32 @gimp_scanner_parse_token(%struct._GScanner* %10, i32 41)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.9
  store i32 41, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.9
  store i32 40, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then.8, %if.then.4, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @plug_in_icon_deserialize(%struct._GScanner* %scanner, %struct._GimpPlugInProcedure* %proc) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  %enum_value = alloca %struct._GEnumValue*, align 8
  %icon_type = alloca i32, align 4
  %icon_data_length = alloca i32, align 4
  %icon_name = alloca i8*, align 8
  %icon_data = alloca i8*, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @gimp_scanner_parse_token(%struct._GScanner* %0, i32 40)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 40, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @gimp_scanner_parse_token(%struct._GScanner* %1, i32 265)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %lor.lhs.false, label %if.then.4

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %2, i32 0, i32 7
  %v_symbol = bitcast %union._GTokenValue* %value to i8**
  %3 = load i8*, i8** %v_symbol, align 8
  %4 = ptrtoint i8* %3 to i64
  %conv = trunc i64 %4 to i32
  %cmp = icmp ne i32 %conv, 9
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  store i32 265, i32* %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %call6 = call i64 @gimp_icon_type_get_type() #5
  %call7 = call i8* @g_type_class_peek(i64 %call6)
  %5 = bitcast i8* %call7 to %struct._GEnumClass*
  store %struct._GEnumClass* %5, %struct._GEnumClass** %enum_class, align 8
  %6 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call8 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %6)
  switch i32 %call8, label %sw.default [
    i32 266, label %sw.bb
    i32 261, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %if.end.5
  %7 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call9 = call i32 @g_scanner_get_next_token(%struct._GScanner* %7)
  %8 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %9 = bitcast %struct._GEnumClass* %8 to %struct._GTypeClass*
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 48)
  %10 = bitcast %struct._GTypeClass* %call10 to %struct._GEnumClass*
  %11 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value11 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %11, i32 0, i32 7
  %v_identifier = bitcast %union._GTokenValue* %value11 to i8**
  %12 = load i8*, i8** %v_identifier, align 8
  %call12 = call %struct._GEnumValue* @g_enum_get_value_by_nick(%struct._GEnumClass* %10, i8* %12)
  store %struct._GEnumValue* %call12, %struct._GEnumValue** %enum_value, align 8
  %13 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %tobool13 = icmp ne %struct._GEnumValue* %13, null
  br i1 %tobool13, label %if.end.19, label %if.then.14

if.then.14:                                       ; preds = %sw.bb
  %14 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %15 = bitcast %struct._GEnumClass* %14 to %struct._GTypeClass*
  %call15 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %15, i64 48)
  %16 = bitcast %struct._GTypeClass* %call15 to %struct._GEnumClass*
  %17 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value16 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %17, i32 0, i32 7
  %v_identifier17 = bitcast %union._GTokenValue* %value16 to i8**
  %18 = load i8*, i8** %v_identifier17, align 8
  %call18 = call %struct._GEnumValue* @g_enum_get_value_by_name(%struct._GEnumClass* %16, i8* %18)
  store %struct._GEnumValue* %call18, %struct._GEnumValue** %enum_value, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %sw.bb
  %19 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %tobool20 = icmp ne %struct._GEnumValue* %19, null
  br i1 %tobool20, label %if.end.25, label %if.then.21

if.then.21:                                       ; preds = %if.end.19
  %20 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i32 0, i32 0)) #7
  %21 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value23 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %21, i32 0, i32 7
  %v_identifier24 = bitcast %union._GTokenValue* %value23 to i8**
  %22 = load i8*, i8** %v_identifier24, align 8
  call void (%struct._GScanner*, i8*, ...) @g_scanner_error(%struct._GScanner* %20, i8* %call22, i8* %22)
  store i32 256, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.19
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end.5
  %23 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call27 = call i32 @g_scanner_get_next_token(%struct._GScanner* %23)
  %24 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %25 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value28 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %25, i32 0, i32 7
  %v_int64 = bitcast %union._GTokenValue* %value28 to i64*
  %26 = load i64, i64* %v_int64, align 8
  %conv29 = trunc i64 %26 to i32
  %call30 = call %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass* %24, i32 %conv29)
  store %struct._GEnumValue* %call30, %struct._GEnumValue** %enum_value, align 8
  %27 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %tobool31 = icmp ne %struct._GEnumValue* %27, null
  br i1 %tobool31, label %if.end.36, label %if.then.32

if.then.32:                                       ; preds = %sw.bb.26
  %28 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0)) #7
  %29 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value34 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %29, i32 0, i32 7
  %v_int6435 = bitcast %union._GTokenValue* %value34 to i64*
  %30 = load i64, i64* %v_int6435, align 8
  call void (%struct._GScanner*, i8*, ...) @g_scanner_error(%struct._GScanner* %28, i8* %call33, i64 %30)
  store i32 256, i32* %retval
  br label %return

if.end.36:                                        ; preds = %sw.bb.26
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.5
  store i32 266, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.36, %if.end.25
  %31 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value37 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %31, i32 0, i32 0
  %32 = load i32, i32* %value37, align 4
  store i32 %32, i32* %icon_type, align 4
  %33 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call38 = call i32 @gimp_scanner_parse_int(%struct._GScanner* %33, i32* %icon_data_length)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %sw.epilog
  store i32 261, i32* %retval
  br label %return

if.end.41:                                        ; preds = %sw.epilog
  %34 = load i32, i32* %icon_type, align 4
  switch i32 %34, label %sw.epilog.56 [
    i32 0, label %sw.bb.42
    i32 2, label %sw.bb.42
    i32 1, label %sw.bb.47
  ]

sw.bb.42:                                         ; preds = %if.end.41, %if.end.41
  store i32 -1, i32* %icon_data_length, align 4
  %35 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call43 = call i32 @gimp_scanner_parse_string_no_validate(%struct._GScanner* %35, i8** %icon_name)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %sw.bb.42
  store i32 264, i32* %retval
  br label %return

if.end.46:                                        ; preds = %sw.bb.42
  %36 = load i8*, i8** %icon_name, align 8
  store i8* %36, i8** %icon_data, align 8
  br label %sw.epilog.56

sw.bb.47:                                         ; preds = %if.end.41
  %37 = load i32, i32* %icon_data_length, align 4
  %cmp48 = icmp slt i32 %37, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %sw.bb.47
  store i32 264, i32* %retval
  br label %return

if.end.51:                                        ; preds = %sw.bb.47
  %38 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %39 = load i32, i32* %icon_data_length, align 4
  %call52 = call i32 @gimp_scanner_parse_data(%struct._GScanner* %38, i32 %39, i8** %icon_data)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %if.end.51
  store i32 264, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.end.51
  br label %sw.epilog.56

sw.epilog.56:                                     ; preds = %if.end.41, %if.end.55, %if.end.46
  %40 = load i32, i32* %icon_type, align 4
  %41 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %icon_type57 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %41, i32 0, i32 7
  store i32 %40, i32* %icon_type57, align 4
  %42 = load i32, i32* %icon_data_length, align 4
  %43 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %icon_data_length58 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %43, i32 0, i32 8
  store i32 %42, i32* %icon_data_length58, align 4
  %44 = load i8*, i8** %icon_data, align 8
  %45 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %icon_data59 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %45, i32 0, i32 9
  store i8* %44, i8** %icon_data59, align 8
  %46 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call60 = call i32 @gimp_scanner_parse_token(%struct._GScanner* %46, i32 41)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %sw.epilog.56
  store i32 41, i32* %retval
  br label %return

if.end.63:                                        ; preds = %sw.epilog.56
  store i32 40, i32* %retval
  br label %return

return:                                           ; preds = %if.end.63, %if.then.62, %if.then.54, %if.then.50, %if.then.45, %if.then.40, %sw.default, %if.then.32, %if.then.21, %if.then.4, %if.then
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @plug_in_file_proc_deserialize(%struct._GScanner* %scanner, %struct._GimpPlugInProcedure* %proc) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %token = alloca i32, align 4
  %symbol = alloca i32, align 4
  %value = alloca i8*, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store %struct._GimpPlugInProcedure* %proc, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @gimp_scanner_parse_token(%struct._GScanner* %0, i32 40)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 40, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @gimp_scanner_parse_token(%struct._GScanner* %1, i32 265)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 265, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value5 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %2, i32 0, i32 7
  %v_symbol = bitcast %union._GTokenValue* %value5 to i8**
  %3 = load i8*, i8** %v_symbol, align 8
  %4 = ptrtoint i8* %3 to i64
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %symbol, align 4
  %5 = load i32, i32* %symbol, align 4
  %cmp = icmp ne i32 %5, 10
  br i1 %cmp, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end.4
  %6 = load i32, i32* %symbol, align 4
  %cmp7 = icmp ne i32 %6, 11
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  store i32 265, i32* %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true, %if.end.4
  %7 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %file_proc = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %7, i32 0, i32 14
  store i32 1, i32* %file_proc, align 4
  %8 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %9 = load i32, i32* %symbol, align 4
  %call11 = call i32 @g_scanner_set_scope(%struct._GScanner* %8, i32 %9)
  br label %while.cond

while.cond:                                       ; preds = %if.end.49, %if.end.10
  %10 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call12 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %10)
  %cmp13 = icmp eq i32 %call12, 40
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call15 = call i32 @g_scanner_get_next_token(%struct._GScanner* %11)
  store i32 %call15, i32* %token, align 4
  %12 = load i32, i32* %token, align 4
  %cmp16 = icmp ne i32 %12, 40
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %while.body
  %13 = load i32, i32* %token, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.19:                                        ; preds = %while.body
  %14 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call20 = call i32 @gimp_scanner_parse_token(%struct._GScanner* %14, i32 265)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.19
  store i32 265, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.19
  %15 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value24 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %15, i32 0, i32 7
  %v_symbol25 = bitcast %union._GTokenValue* %value24 to i8**
  %16 = load i8*, i8** %v_symbol25, align 8
  %17 = ptrtoint i8* %16 to i64
  %conv26 = trunc i64 %17 to i32
  store i32 %conv26, i32* %symbol, align 4
  %18 = load i32, i32* %symbol, align 4
  %cmp27 = icmp eq i32 %18, 14
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.end.23
  %19 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call30 = call i32 @gimp_scanner_parse_string_no_validate(%struct._GScanner* %19, i8** %value)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.then.29
  store i32 264, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.then.29
  br label %if.end.38

if.else:                                          ; preds = %if.end.23
  %20 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call34 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %20, i8** %value)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.else
  store i32 264, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.else
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.33
  %21 = load i32, i32* %symbol, align 4
  switch i32 %21, label %sw.default [
    i32 12, label %sw.bb
    i32 13, label %sw.bb.40
    i32 14, label %sw.bb.42
    i32 15, label %sw.bb.44
    i32 16, label %sw.bb.45
  ]

sw.bb:                                            ; preds = %if.end.38
  %22 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %extensions = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %22, i32 0, i32 15
  %23 = load i8*, i8** %extensions, align 8
  call void @g_free(i8* %23)
  %24 = load i8*, i8** %value, align 8
  %25 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %extensions39 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %25, i32 0, i32 15
  store i8* %24, i8** %extensions39, align 8
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.end.38
  %26 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prefixes = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %26, i32 0, i32 16
  %27 = load i8*, i8** %prefixes, align 8
  call void @g_free(i8* %27)
  %28 = load i8*, i8** %value, align 8
  %29 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %prefixes41 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %29, i32 0, i32 16
  store i8* %28, i8** %prefixes41, align 8
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.end.38
  %30 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %magics = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %30, i32 0, i32 17
  %31 = load i8*, i8** %magics, align 8
  call void @g_free(i8* %31)
  %32 = load i8*, i8** %value, align 8
  %33 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %magics43 = getelementptr inbounds %struct._GimpPlugInProcedure, %struct._GimpPlugInProcedure* %33, i32 0, i32 17
  store i8* %32, i8** %magics43, align 8
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.end.38
  %34 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %35 = load i8*, i8** %value, align 8
  call void @gimp_plug_in_procedure_set_mime_type(%struct._GimpPlugInProcedure* %34, i8* %35)
  %36 = load i8*, i8** %value, align 8
  call void @g_free(i8* %36)
  br label %sw.epilog

sw.bb.45:                                         ; preds = %if.end.38
  %37 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc.addr, align 8
  %38 = load i8*, i8** %value, align 8
  call void @gimp_plug_in_procedure_set_thumb_loader(%struct._GimpPlugInProcedure* %37, i8* %38)
  %39 = load i8*, i8** %value, align 8
  call void @g_free(i8* %39)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.38
  store i32 265, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.45, %sw.bb.44, %sw.bb.42, %sw.bb.40, %sw.bb
  %40 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call46 = call i32 @gimp_scanner_parse_token(%struct._GScanner* %40, i32 41)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %sw.epilog
  store i32 41, i32* %retval
  br label %return

if.end.49:                                        ; preds = %sw.epilog
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %41 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call50 = call i32 @gimp_scanner_parse_token(%struct._GScanner* %41, i32 41)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %while.end
  store i32 41, i32* %retval
  br label %return

if.end.53:                                        ; preds = %while.end
  %42 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call54 = call i32 @g_scanner_set_scope(%struct._GScanner* %42, i32 2)
  store i32 40, i32* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.52, %if.then.48, %sw.default, %if.then.36, %if.then.32, %if.then.22, %if.then.18, %if.then.9, %if.then.3, %if.then
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare void @gimp_plug_in_procedure_set_image_types(%struct._GimpPlugInProcedure*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @plug_in_proc_arg_deserialize(%struct._GScanner* %scanner, %struct._Gimp* %gimp, %struct._GimpProcedure* %procedure, i32 %return_value) #0 {
entry:
  %scanner.addr = alloca %struct._GScanner*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %procedure.addr = alloca %struct._GimpProcedure*, align 8
  %return_value.addr = alloca i32, align 4
  %token = alloca i32, align 4
  %arg_type = alloca i32, align 4
  %name = alloca i8*, align 8
  %desc = alloca i8*, align 8
  %pspec = alloca %struct._GParamSpec*, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpProcedure* %procedure, %struct._GimpProcedure** %procedure.addr, align 8
  store i32 %return_value, i32* %return_value.addr, align 4
  store i8* null, i8** %name, align 8
  store i8* null, i8** %desc, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @gimp_scanner_parse_token(%struct._GScanner* %0, i32 40)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 40, i32* %token, align 4
  br label %error

if.end:                                           ; preds = %entry
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @gimp_scanner_parse_token(%struct._GScanner* %1, i32 265)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %lor.lhs.false, label %if.then.4

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %2, i32 0, i32 7
  %v_symbol = bitcast %union._GTokenValue* %value to i8**
  %3 = load i8*, i8** %v_symbol, align 8
  %4 = ptrtoint i8* %3 to i64
  %conv = trunc i64 %4 to i32
  %cmp = icmp ne i32 %conv, 7
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  store i32 265, i32* %token, align 4
  br label %error

if.end.5:                                         ; preds = %lor.lhs.false
  %5 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call6 = call i32 @gimp_scanner_parse_int(%struct._GScanner* %5, i32* %arg_type)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  store i32 261, i32* %token, align 4
  br label %error

if.end.9:                                         ; preds = %if.end.5
  %6 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call10 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %6, i8** %name)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  store i32 264, i32* %token, align 4
  br label %error

if.end.13:                                        ; preds = %if.end.9
  %7 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call14 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %7, i8** %desc)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  store i32 264, i32* %token, align 4
  br label %error

if.end.17:                                        ; preds = %if.end.13
  %8 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call18 = call i32 @gimp_scanner_parse_token(%struct._GScanner* %8, i32 41)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  store i32 41, i32* %token, align 4
  br label %error

if.end.21:                                        ; preds = %if.end.17
  store i32 40, i32* %token, align 4
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %10 = load i32, i32* %arg_type, align 4
  %11 = load i8*, i8** %name, align 8
  %12 = load i8*, i8** %desc, align 8
  %call22 = call %struct._GParamSpec* @gimp_pdb_compat_param_spec(%struct._Gimp* %9, i32 %10, i8* %11, i8* %12)
  store %struct._GParamSpec* %call22, %struct._GParamSpec** %pspec, align 8
  %13 = load i32, i32* %return_value.addr, align 4
  %tobool23 = icmp ne i32 %13, 0
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end.21
  %14 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  call void @gimp_procedure_add_return_value(%struct._GimpProcedure* %14, %struct._GParamSpec* %15)
  br label %if.end.25

if.else:                                          ; preds = %if.end.21
  %16 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure.addr, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  call void @gimp_procedure_add_argument(%struct._GimpProcedure* %16, %struct._GParamSpec* %17)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.24
  br label %error

error:                                            ; preds = %if.end.25, %if.then.20, %if.then.16, %if.then.12, %if.then.8, %if.then.4, %if.then
  %18 = load i8*, i8** %name, align 8
  call void @g_free(i8* %18)
  %19 = load i8*, i8** %desc, align 8
  call void @g_free(i8* %19)
  %20 = load i32, i32* %token, align 4
  ret i32 %20
}

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #3

declare i8* @g_type_class_peek(i64) #3

declare %struct._GEnumValue* @g_enum_get_value_by_nick(%struct._GEnumClass*, i8*) #3

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #3

declare %struct._GEnumValue* @g_enum_get_value_by_name(%struct._GEnumClass*, i8*) #3

declare void @g_scanner_error(%struct._GScanner*, i8*, ...) #3

declare i32 @gimp_scanner_parse_string_no_validate(%struct._GScanner*, i8**) #3

declare i32 @gimp_scanner_parse_data(%struct._GScanner*, i32, i8**) #3

declare void @gimp_plug_in_procedure_set_mime_type(%struct._GimpPlugInProcedure*, i8*) #3

declare void @gimp_plug_in_procedure_set_thumb_loader(%struct._GimpPlugInProcedure*, i8*) #3

declare %struct._GParamSpec* @gimp_pdb_compat_param_spec(%struct._Gimp*, i32, i8*, i8*) #3

declare void @gimp_procedure_add_return_value(%struct._GimpProcedure*, %struct._GParamSpec*) #3

declare void @gimp_procedure_add_argument(%struct._GimpProcedure*, %struct._GParamSpec*) #3

declare void @gimp_plug_in_def_set_locale_domain(%struct._GimpPlugInDef*, i8*, i8*) #3

declare void @gimp_plug_in_def_set_help_domain(%struct._GimpPlugInDef*, i8*, i8*) #3

declare void @gimp_plug_in_def_set_has_init(%struct._GimpPlugInDef*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
