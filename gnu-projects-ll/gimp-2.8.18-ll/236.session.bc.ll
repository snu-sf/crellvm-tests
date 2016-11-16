; ModuleID = './app/gui/session.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { {}*, {}*, {}*, {}*, {}*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, {}* }
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
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpSessionInfo = type { %struct._GimpObject, %struct._GimpSessionInfoPrivate* }
%struct._GimpSessionInfoPrivate = type opaque
%struct._GimpDialogFactoryEntry = type { i8*, i8*, i8*, i8*, i8*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpConfig = type opaque
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpConfigWriter = type opaque

@.str = private unnamed_addr constant [9 x i8] c"Gimp-GUI\00", align 1
@__func__.session_init = private unnamed_addr constant [13 x i8] c"session_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"sessionrc\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Parsing '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"session-info\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"hide-docks\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"single-window-mode\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"last-tip-shown\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"dock\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"toolbox\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"gimp-toolbox-window\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"gimp-dock-window\00", align 1
@gimp_log_flags = external global i32, align 4
@.str.12 = private unnamed_addr constant [46 x i8] c"successfully parsed and added session info %p\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"failed to parse session info %p, not adding\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"fatal parse error\00", align 1
@__func__.session_exit = private unnamed_addr constant [13 x i8] c"session_exit\00", align 1
@__func__.session_restore = private unnamed_addr constant [16 x i8] c"session_restore\00", align 1
@__func__.session_save = private unnamed_addr constant [13 x i8] c"session_save\00", align 1
@sessionrc_deleted = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"Writing '%s'\0A\00", align 1
@.str.16 = private unnamed_addr constant [297 x i8] c"GIMP sessionrc\0A\0AThis file takes session-specific info (that is info, you want to keep between two GIMP sessions).  You are not supposed to edit it manually, but of course you can do.  The sessionrc will be entirely rewritten every time you quit GIMP.  If this file isn't found, defaults are used.\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"end of sessionrc\00", align 1
@__func__.session_clear = private unnamed_addr constant [14 x i8] c"session_clear\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"Deleting \22%s\22 failed: %s\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"GIMP_TESTING_SESSIONRC_NAME\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: nounwind uwtable
define void @session_init(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %filename = alloca i8*, align 8
  %scanner = alloca %struct._GScanner*, align 8
  %token = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %factory = alloca %struct._GimpDialogFactory*, align 8
  %info = alloca %struct._GimpSessionInfo*, align 8
  %factory_name = alloca i8*, align 8
  %entry_name = alloca i8*, align 8
  %entry39 = alloca %struct._GimpDialogFactoryEntry*, align 8
  %hide_docks = alloca i32, align 4
  %single_window_mode = alloca i32, align 4
  %last_tip_shown = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.session_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call i8* @session_filename(%struct._Gimp* %13)
  store i8* %call11, i8** %filename, align 8
  %14 = load i8*, i8** %filename, align 8
  %call12 = call %struct._GScanner* @gimp_scanner_new_file(i8* %14, %struct._GError** %error)
  store %struct._GScanner* %call12, %struct._GScanner** %scanner, align 8
  %15 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %tobool13 = icmp ne %struct._GScanner* %15, null
  br i1 %tobool13, label %if.end.20, label %land.lhs.true.14

land.lhs.true.14:                                 ; preds = %do.end
  %16 = load %struct._GError*, %struct._GError** %error, align 8
  %code = getelementptr inbounds %struct._GError, %struct._GError* %16, i32 0, i32 1
  %17 = load i32, i32* %code, align 4
  %cmp15 = icmp eq i32 %17, 1
  br i1 %cmp15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %land.lhs.true.14
  call void @g_clear_error(%struct._GError** %error)
  %18 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %18)
  %call17 = call i8* @gimp_sysconf_directory() #5
  %call18 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* null)
  store i8* %call18, i8** %filename, align 8
  %19 = load i8*, i8** %filename, align 8
  %call19 = call %struct._GScanner* @gimp_scanner_new_file(i8* %19, %struct._GError** null)
  store %struct._GScanner* %call19, %struct._GScanner** %scanner, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %land.lhs.true.14, %do.end
  %20 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %tobool21 = icmp ne %struct._GScanner* %20, null
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.20
  call void @g_clear_error(%struct._GError** %error)
  %21 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %21)
  br label %return

if.end.23:                                        ; preds = %if.end.20
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %22, i32 0, i32 4
  %23 = load i32, i32* %be_verbose, align 4
  %tobool24 = icmp ne i32 %23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.23
  %24 = load i8*, i8** %filename, align 8
  %call26 = call i8* @gimp_filename_to_utf8(i8* %24)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* %call26)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.23
  %25 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %25, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  %26 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %26, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* inttoptr (i64 2 to i8*))
  %27 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %27, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* inttoptr (i64 3 to i8*))
  %28 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %28, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* inttoptr (i64 4 to i8*))
  store i32 40, i32* %token, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.27
  %29 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call28 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %29)
  %30 = load i32, i32* %token, align 4
  %cmp29 = icmp eq i32 %call28, %30
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call30 = call i32 @g_scanner_get_next_token(%struct._GScanner* %31)
  store i32 %call30, i32* %token, align 4
  %32 = load i32, i32* %token, align 4
  switch i32 %32, label %sw.default [
    i32 40, label %sw.bb
    i32 265, label %sw.bb.31
    i32 41, label %sw.bb.121
  ]

sw.bb:                                            ; preds = %while.body
  store i32 265, i32* %token, align 4
  br label %sw.epilog

sw.bb.31:                                         ; preds = %while.body
  %33 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %33, i32 0, i32 7
  %v_symbol = bitcast %union._GTokenValue* %value to i8**
  %34 = load i8*, i8** %v_symbol, align 8
  %cmp32 = icmp eq i8* %34, inttoptr (i64 1 to i8*)
  br i1 %cmp32, label %if.then.33, label %if.else.85

if.then.33:                                       ; preds = %sw.bb.31
  store %struct._GimpDialogFactory* null, %struct._GimpDialogFactory** %factory, align 8
  store %struct._GimpSessionInfo* null, %struct._GimpSessionInfo** %info, align 8
  store i8* null, i8** %factory_name, align 8
  store i8* null, i8** %entry_name, align 8
  store %struct._GimpDialogFactoryEntry* null, %struct._GimpDialogFactoryEntry** %entry39, align 8
  store i32 264, i32* %token, align 4
  %35 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call40 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %35, i8** %factory_name)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %if.then.33
  br label %sw.epilog

if.end.43:                                        ; preds = %if.then.33
  %call44 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  store %struct._GimpDialogFactory* %call44, %struct._GimpDialogFactory** %factory, align 8
  %call45 = call %struct._GimpSessionInfo* @gimp_session_info_new()
  store %struct._GimpSessionInfo* %call45, %struct._GimpSessionInfo** %info, align 8
  %36 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call46 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %36, i8** %entry_name)
  %37 = load i8*, i8** %entry_name, align 8
  %tobool47 = icmp ne i8* %37, null
  br i1 %tobool47, label %if.then.48, label %if.end.58

if.then.48:                                       ; preds = %if.end.43
  %38 = load i8*, i8** %entry_name, align 8
  %call49 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #6
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then.51, label %if.else.55

if.then.51:                                       ; preds = %if.then.48
  %39 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %40 = load i8*, i8** %factory_name, align 8
  %call52 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #6
  %cmp53 = icmp eq i32 %call52, 0
  %cond = select i1 %cmp53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0)
  %call54 = call %struct._GimpDialogFactoryEntry* @gimp_dialog_factory_find_entry(%struct._GimpDialogFactory* %39, i8* %cond)
  store %struct._GimpDialogFactoryEntry* %call54, %struct._GimpDialogFactoryEntry** %entry39, align 8
  br label %if.end.57

if.else.55:                                       ; preds = %if.then.48
  %41 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %42 = load i8*, i8** %entry_name, align 8
  %call56 = call %struct._GimpDialogFactoryEntry* @gimp_dialog_factory_find_entry(%struct._GimpDialogFactory* %41, i8* %42)
  store %struct._GimpDialogFactoryEntry* %call56, %struct._GimpDialogFactoryEntry** %entry39, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.55, %if.then.51
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.43
  %43 = load i8*, i8** %factory_name, align 8
  call void @g_free(i8* %43)
  %44 = load i8*, i8** %entry_name, align 8
  call void @g_free(i8* %44)
  %45 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry39, align 8
  %tobool59 = icmp ne %struct._GimpDialogFactoryEntry* %45, null
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.58
  %46 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %47 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry39, align 8
  call void @gimp_session_info_set_factory_entry(%struct._GimpSessionInfo* %46, %struct._GimpDialogFactoryEntry* %47)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.58
  %48 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %49 = bitcast %struct._GimpSessionInfo* %48 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_config_interface_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call62)
  %50 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpConfig*
  %51 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call64 = call i32 @gimp_config_deserialize(%struct._GimpConfig* %50, %struct._GScanner* %51, i32 1, i8* null)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.66, label %if.else.83

if.then.66:                                       ; preds = %if.end.61
  %52 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %call67 = call %struct._GimpDialogFactoryEntry* @gimp_session_info_get_factory_entry(%struct._GimpSessionInfo* %52)
  %tobool68 = icmp ne %struct._GimpDialogFactoryEntry* %call67, null
  br i1 %tobool68, label %if.then.69, label %if.else.75

if.then.69:                                       ; preds = %if.then.66
  br label %do.body.70

do.body.70:                                       ; preds = %if.then.69
  %53 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %53, 16
  %tobool71 = icmp ne i32 %and, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %do.body.70
  %54 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.session_init, i32 0, i32 0), i32 205, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i32 0, i32 0), %struct._GimpSessionInfo* %54)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %do.body.70
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  %55 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  %56 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  call void @gimp_dialog_factory_add_session_info(%struct._GimpDialogFactory* %55, %struct._GimpSessionInfo* %56)
  br label %if.end.82

if.else.75:                                       ; preds = %if.then.66
  br label %do.body.76

do.body.76:                                       ; preds = %if.else.75
  %57 = load i32, i32* @gimp_log_flags, align 4
  %and77 = and i32 %57, 16
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %do.body.76
  %58 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.session_init, i32 0, i32 0), i32 213, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i32 0, i32 0), %struct._GimpSessionInfo* %58)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %do.body.76
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  br label %if.end.82

if.end.82:                                        ; preds = %do.end.81, %do.end.74
  %59 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %60 = bitcast %struct._GimpSessionInfo* %59 to i8*
  call void @g_object_unref(i8* %60)
  br label %if.end.84

if.else.83:                                       ; preds = %if.end.61
  %61 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %62 = bitcast %struct._GimpSessionInfo* %61 to i8*
  call void @g_object_unref(i8* %62)
  store i32 40, i32* %token, align 4
  br label %error.122

if.end.84:                                        ; preds = %if.end.82
  br label %if.end.120

if.else.85:                                       ; preds = %sw.bb.31
  %63 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %value86 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %63, i32 0, i32 7
  %v_symbol87 = bitcast %union._GTokenValue* %value86 to i8**
  %64 = load i8*, i8** %v_symbol87, align 8
  %cmp88 = icmp eq i8* %64, inttoptr (i64 2 to i8*)
  br i1 %cmp88, label %if.then.89, label %if.else.95

if.then.89:                                       ; preds = %if.else.85
  store i32 266, i32* %token, align 4
  %65 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call91 = call i32 @gimp_scanner_parse_boolean(%struct._GScanner* %65, i32* %hide_docks)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %if.then.89
  br label %sw.epilog

if.end.94:                                        ; preds = %if.then.89
  %66 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %66, i32 0, i32 1
  %67 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %68 = bitcast %struct._GimpCoreConfig* %67 to i8*
  %69 = load i32, i32* %hide_docks, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %69, i8* null)
  br label %if.end.119

if.else.95:                                       ; preds = %if.else.85
  %70 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %value96 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %70, i32 0, i32 7
  %v_symbol97 = bitcast %union._GTokenValue* %value96 to i8**
  %71 = load i8*, i8** %v_symbol97, align 8
  %cmp98 = icmp eq i8* %71, inttoptr (i64 3 to i8*)
  br i1 %cmp98, label %if.then.99, label %if.else.106

if.then.99:                                       ; preds = %if.else.95
  store i32 266, i32* %token, align 4
  %72 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call101 = call i32 @gimp_scanner_parse_boolean(%struct._GScanner* %72, i32* %single_window_mode)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.end.104, label %if.then.103

if.then.103:                                      ; preds = %if.then.99
  br label %sw.epilog

if.end.104:                                       ; preds = %if.then.99
  %73 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config105 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %73, i32 0, i32 1
  %74 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config105, align 8
  %75 = bitcast %struct._GimpCoreConfig* %74 to i8*
  %76 = load i32, i32* %single_window_mode, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i32 %76, i8* null)
  br label %if.end.118

if.else.106:                                      ; preds = %if.else.95
  %77 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %value107 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %77, i32 0, i32 7
  %v_symbol108 = bitcast %union._GTokenValue* %value107 to i8**
  %78 = load i8*, i8** %v_symbol108, align 8
  %cmp109 = icmp eq i8* %78, inttoptr (i64 4 to i8*)
  br i1 %cmp109, label %if.then.110, label %if.end.117

if.then.110:                                      ; preds = %if.else.106
  store i32 261, i32* %token, align 4
  %79 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call112 = call i32 @gimp_scanner_parse_int(%struct._GScanner* %79, i32* %last_tip_shown)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.end.115, label %if.then.114

if.then.114:                                      ; preds = %if.then.110
  br label %sw.epilog

if.end.115:                                       ; preds = %if.then.110
  %80 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config116 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %80, i32 0, i32 1
  %81 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config116, align 8
  %82 = bitcast %struct._GimpCoreConfig* %81 to i8*
  %83 = load i32, i32* %last_tip_shown, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 %83, i8* null)
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.115, %if.else.106
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end.104
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.end.94
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.84
  store i32 41, i32* %token, align 4
  br label %sw.epilog

sw.bb.121:                                        ; preds = %while.body
  store i32 40, i32* %token, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.121, %if.end.120, %if.then.114, %if.then.103, %if.then.93, %if.then.42, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %error.122

error.122:                                        ; preds = %while.end, %if.else.83
  %84 = load i32, i32* %token, align 4
  %cmp123 = icmp ne i32 %84, 40
  br i1 %cmp123, label %if.then.124, label %if.end.127

if.then.124:                                      ; preds = %error.122
  %85 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call125 = call i32 @g_scanner_get_next_token(%struct._GScanner* %85)
  %86 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %87 = load i32, i32* %token, align 4
  %call126 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0)) #7
  call void @g_scanner_unexp_token(%struct._GScanner* %86, i32 %87, i8* null, i8* null, i8* null, i8* %call126, i32 1)
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.124, %error.122
  %88 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool128 = icmp ne %struct._GError* %88, null
  br i1 %tobool128, label %if.then.129, label %if.end.131

if.then.129:                                      ; preds = %if.end.127
  %89 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %90 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %90, i32 0, i32 2
  %91 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %89, %struct._GObject* null, i32 2, i8* %91)
  call void @g_clear_error(%struct._GError** %error)
  %92 = load i8*, i8** %filename, align 8
  %call130 = call i32 @gimp_config_file_backup_on_error(i8* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), %struct._GError** null)
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.129, %if.end.127
  %93 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @gimp_scanner_destroy(%struct._GScanner* %93)
  %94 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %94)
  %95 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @dialogs_load_recent_docks(%struct._Gimp* %95)
  br label %return

return:                                           ; preds = %if.end.131, %if.then.22, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @session_filename(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %basename = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %call = call i8* @g_getenv(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i32 0, i32 0))
  store i8* %call, i8** %basename, align 8
  %0 = load i8*, i8** %basename, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8** %basename, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %basename, align 8
  %call1 = call noalias i8* @gimp_personal_rc_file(i8* %1)
  store i8* %call1, i8** %filename, align 8
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %session_name = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 3
  %3 = load i8*, i8** %session_name, align 8
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %4 = load i8*, i8** %filename, align 8
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %session_name4 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 3
  %6 = load i8*, i8** %session_name4, align 8
  %call5 = call noalias i8* (i8*, ...) @g_strconcat(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8* %6, i8* null)
  store i8* %call5, i8** %tmp, align 8
  %7 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %7)
  %8 = load i8*, i8** %tmp, align 8
  store i8* %8, i8** %filename, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %9 = load i8*, i8** %filename, align 8
  ret i8* %9
}

declare %struct._GScanner* @gimp_scanner_new_file(i8*, %struct._GError**) #3

declare void @g_clear_error(%struct._GError**) #3

declare void @g_free(i8*) #3

declare noalias i8* @g_build_filename(i8*, ...) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_sysconf_directory() #1

declare void @g_print(i8*, ...) #3

declare i8* @gimp_filename_to_utf8(i8*) #3

declare void @g_scanner_scope_add_symbol(%struct._GScanner*, i32, i8*, i8*) #3

declare i32 @g_scanner_peek_next_token(%struct._GScanner*) #3

declare i32 @g_scanner_get_next_token(%struct._GScanner*) #3

declare i32 @gimp_scanner_parse_string(%struct._GScanner*, i8**) #3

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #3

declare %struct._GimpSessionInfo* @gimp_session_info_new() #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %struct._GimpDialogFactoryEntry* @gimp_dialog_factory_find_entry(%struct._GimpDialogFactory*, i8*) #3

declare void @gimp_session_info_set_factory_entry(%struct._GimpSessionInfo*, %struct._GimpDialogFactoryEntry*) #3

declare i32 @gimp_config_deserialize(%struct._GimpConfig*, %struct._GScanner*, i32, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #1

declare %struct._GimpDialogFactoryEntry* @gimp_session_info_get_factory_entry(%struct._GimpSessionInfo*) #3

declare void @gimp_log(i32, i8*, i32, i8*, ...) #3

declare void @gimp_dialog_factory_add_session_info(%struct._GimpDialogFactory*, %struct._GimpSessionInfo*) #3

declare void @g_object_unref(i8*) #3

declare i32 @gimp_scanner_parse_boolean(%struct._GScanner*, i32*) #3

declare void @g_object_set(i8*, i8*, ...) #3

declare i32 @gimp_scanner_parse_int(%struct._GScanner*, i32*) #3

declare void @g_scanner_unexp_token(%struct._GScanner*, i32, i8*, i8*, i8*, i8*, i32) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #3

declare i32 @gimp_config_file_backup_on_error(i8*, i8*, %struct._GError**) #3

declare void @gimp_scanner_destroy(%struct._GScanner*) #3

declare void @dialogs_load_recent_docks(%struct._Gimp*) #3

; Function Attrs: nounwind uwtable
define void @session_exit(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.session_exit, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %do.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.else.9, %if.end.10
  ret void
}

; Function Attrs: nounwind uwtable
define void @session_restore(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.session_restore, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.23

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  call void @gimp_dialog_factory_restore(%struct._GimpDialogFactory* %call11)
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 1
  %14 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %15 = bitcast %struct._GimpCoreConfig* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_gui_config_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpGuiConfig*
  %single_window_mode = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %16, i32 0, i32 32
  %17 = load i32, i32* %single_window_mode, align 4
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.23

land.lhs.true.15:                                 ; preds = %do.end
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config16 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 1
  %19 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config16, align 8
  %20 = bitcast %struct._GimpCoreConfig* %19 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_gui_config_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call17)
  %21 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpGuiConfig*
  %hide_docks = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %21, i32 0, i32 31
  %22 = load i32, i32* %hide_docks, align 4
  %tobool19 = icmp ne i32 %22, 0
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %land.lhs.true.15
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config21 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %23, i32 0, i32 1
  %24 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config21, align 8
  %25 = bitcast %struct._GimpCoreConfig* %24 to %struct._GTypeInstance*
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call22 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.9, %if.then.20, %land.lhs.true.15, %do.end
  ret void
}

declare void @gimp_dialog_factory_restore(%struct._GimpDialogFactory*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #1

declare void @g_object_notify(%struct._GObject*, i8*) #3

; Function Attrs: nounwind uwtable
define void @session_save(%struct._Gimp* %gimp, i32 %always_save) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %always_save.addr = alloca i32, align 4
  %writer = alloca %struct._GimpConfigWriter*, align 8
  %filename = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %always_save, i32* %always_save.addr, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.session_save, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* @sessionrc_deleted, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.15

land.lhs.true.12:                                 ; preds = %do.end
  %14 = load i32, i32* %always_save.addr, align 4
  %tobool13 = icmp ne i32 %14, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true.12
  br label %return

if.end.15:                                        ; preds = %land.lhs.true.12, %do.end
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call16 = call i8* @session_filename(%struct._Gimp* %15)
  store i8* %call16, i8** %filename, align 8
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %16, i32 0, i32 4
  %17 = load i32, i32* %be_verbose, align 4
  %tobool17 = icmp ne i32 %17, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %18 = load i8*, i8** %filename, align 8
  %call19 = call i8* @gimp_filename_to_utf8(i8* %18)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* %call19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.15
  %19 = load i8*, i8** %filename, align 8
  %call21 = call %struct._GimpConfigWriter* @gimp_config_writer_new_file(i8* %19, i32 1, i8* getelementptr inbounds ([297 x i8], [297 x i8]* @.str.16, i32 0, i32 0), %struct._GError** null)
  store %struct._GimpConfigWriter* %call21, %struct._GimpConfigWriter** %writer, align 8
  %20 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %20)
  %21 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %tobool22 = icmp ne %struct._GimpConfigWriter* %21, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.20
  br label %return

if.end.24:                                        ; preds = %if.end.20
  %call25 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %22 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_dialog_factory_save(%struct._GimpDialogFactory* %call25, %struct._GimpConfigWriter* %22)
  %23 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %23)
  %24 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  %25 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %26, i32 0, i32 1
  %27 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %28 = bitcast %struct._GimpCoreConfig* %27 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_gui_config_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call26)
  %29 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpGuiConfig*
  %hide_docks = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %29, i32 0, i32 31
  %30 = load i32, i32* %hide_docks, align 4
  %tobool28 = icmp ne i32 %30, 0
  %cond = select i1 %tobool28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0)
  call void @gimp_config_writer_identifier(%struct._GimpConfigWriter* %25, i8* %cond)
  %31 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %31)
  %32 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0))
  %33 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config29 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %34, i32 0, i32 1
  %35 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config29, align 8
  %36 = bitcast %struct._GimpCoreConfig* %35 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_gui_config_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call30)
  %37 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpGuiConfig*
  %single_window_mode = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %37, i32 0, i32 32
  %38 = load i32, i32* %single_window_mode, align 4
  %tobool32 = icmp ne i32 %38, 0
  %cond33 = select i1 %tobool32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0)
  call void @gimp_config_writer_identifier(%struct._GimpConfigWriter* %33, i8* %cond33)
  %39 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %39)
  %40 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  %41 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %42 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config34 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %42, i32 0, i32 1
  %43 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config34, align 8
  %44 = bitcast %struct._GimpCoreConfig* %43 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_gui_config_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call35)
  %45 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpGuiConfig*
  %last_tip_shown = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %45, i32 0, i32 33
  %46 = load i32, i32* %last_tip_shown, align 4
  call void (%struct._GimpConfigWriter*, i8*, ...) @gimp_config_writer_printf(%struct._GimpConfigWriter* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 %46)
  %47 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %47)
  %48 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %call37 = call i32 @gimp_config_writer_finish(%struct._GimpConfigWriter* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), %struct._GError** %error)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.end.24
  %49 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %50 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %50, i32 0, i32 2
  %51 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %49, %struct._GObject* null, i32 2, i8* %51)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.24
  %52 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @dialogs_save_recent_docks(%struct._Gimp* %52)
  store i32 0, i32* @sessionrc_deleted, align 4
  br label %return

return:                                           ; preds = %if.end.40, %if.then.23, %if.then.14, %if.else.9
  ret void
}

declare %struct._GimpConfigWriter* @gimp_config_writer_new_file(i8*, i32, i8*, %struct._GError**) #3

declare void @gimp_dialog_factory_save(%struct._GimpDialogFactory*, %struct._GimpConfigWriter*) #3

declare void @gimp_config_writer_linefeed(%struct._GimpConfigWriter*) #3

declare void @gimp_config_writer_open(%struct._GimpConfigWriter*, i8*) #3

declare void @gimp_config_writer_identifier(%struct._GimpConfigWriter*, i8*) #3

declare void @gimp_config_writer_close(%struct._GimpConfigWriter*) #3

declare void @gimp_config_writer_printf(%struct._GimpConfigWriter*, i8*, ...) #3

declare i32 @gimp_config_writer_finish(%struct._GimpConfigWriter*, i8*, %struct._GError**) #3

declare void @dialogs_save_recent_docks(%struct._Gimp*) #3

; Function Attrs: nounwind uwtable
define i32 @session_clear(%struct._Gimp* %gimp, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %filename = alloca i8*, align 8
  %success = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.session_clear, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.session_clear, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call18 = call i8* @session_filename(%struct._Gimp* %16)
  store i8* %call18, i8** %filename, align 8
  %17 = load i8*, i8** %filename, align 8
  %call19 = call i32 @g_unlink(i8* %17)
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.32

land.lhs.true.21:                                 ; preds = %do.end.17
  %call22 = call i32* @__errno_location() #5
  %18 = load i32, i32* %call22, align 4
  %cmp23 = icmp ne i32 %18, 2
  br i1 %cmp23, label %if.then.24, label %if.else.32

if.then.24:                                       ; preds = %land.lhs.true.21
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call25 = call i32 @g_file_error_quark()
  %call26 = call i32* @__errno_location() #5
  %20 = load i32, i32* %call26, align 4
  %call27 = call i32 @g_file_error_from_errno(i32 %20)
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0)) #7
  %21 = load i8*, i8** %filename, align 8
  %call29 = call i8* @gimp_filename_to_utf8(i8* %21)
  %call30 = call i32* @__errno_location() #5
  %22 = load i32, i32* %call30, align 4
  %call31 = call i8* @g_strerror(i32 %22) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %19, i32 %call25, i32 %call27, i8* %call28, i8* %call29, i8* %call31)
  store i32 0, i32* %success, align 4
  br label %if.end.33

if.else.32:                                       ; preds = %land.lhs.true.21, %do.end.17
  store i32 1, i32* @sessionrc_deleted, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.24
  %23 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %23)
  %24 = load i32, i32* %success, align 4
  store i32 %24, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.else.15, %if.else.9
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i32 @g_unlink(i8*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #3

declare i32 @g_file_error_quark() #3

declare i32 @g_file_error_from_errno(i32) #3

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #1

declare i8* @g_getenv(i8*) #3

declare noalias i8* @gimp_personal_rc_file(i8*) #3

declare noalias i8* @g_strconcat(i8*, ...) #3

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
